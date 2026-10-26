# Orchestra adoption metrics → UI/UX changes (ElSuite pilot)

Companion to Nahla's question set (blocks A–D) and the internal Firestore data-pull
checklist (sections 1–5). Every metric below is paired with the app change that moves
it, and the number that proves the change worked. A metric with no lever is a report;
a change with no metric is a guess. This document removes both.

Conventions used:

- **Q#** = Nahla's question number. **§#** = data-pull checklist section.
- **Signal** = what the number looks like when adoption is failing.
- **Change** = the UI/UX change that addresses that failure mode.
- **Proof** = the metric, re-pulled 30 days after shipping, that shows the change landed.
- Roles assumed: worker, supervisor, site manager. Surfaces assumed: task list, task
  completion (photo evidence, voice note), audits, supervisor review, dashboards.

---

## 0. Ship-before-the-next-pull list

Five changes to ship first, because each one is tied to a metric we already pull and
each is small enough to land within one sprint. Shipping them *before* the second data
pull turns the pull into a before/after measurement instead of a snapshot.

| # | Change | Metric it moves | Target after 30 days |
|---|--------|-----------------|----------------------|
| 1 | Shift-start task feed as the home screen (today's tasks, nothing else) | §1 zero-activity days; Q4 | 0 zero-activity days on a working day |
| 2 | One-tap photo capture inside task completion, no separate upload step | §2 evidence attach rate | ≥ 80% of completed tasks carry a photo |
| 3 | Supervisor review queue with "awaiting your review" badge and push notification | §4 median time to review; Q7 | Median < 4 hours, ≥ 90% reviewed within the shift |
| 4 | Stock count and supply order flow (replaces the WhatsApp message) | Q3, Q6; §2 task-type breakdown | Next monthly order created in-app, not WhatsApp |
| 5 | Skip-reason prompt when a task is closed without evidence or stays open past shift end | Q13 (currently unmeasurable) | ≥ 70% of skipped tasks carry a reason code |

The remaining changes are sequenced in sections 1–5 below.

---

## 1. Activity volume (Block A, §1)

### Q1 / §1 — Tasks completed, last 30 days vs first 30 days

| Signal | Change | Proof |
|--------|--------|-------|
| Volume decaying after week 2 (novelty curve) | Recurring task templates per shift: cleaning rounds auto-generated daily so workers open the app to a populated list, not an empty one | Tasks *created* per day flat or rising; completion count tracks created count |
| Volume flat but low | Shift-start feed as home screen (change #1). Remove the dashboard/menu landing page for the worker role entirely | Tasks completed per active worker per day ≥ the paper checklist count for the same role |

### Q2 / §1 — Audits completed in-app

| Signal | Change | Proof |
|--------|--------|-------|
| Audits happening on paper, then typed in later (timestamps cluster at end of day) | Offline-first audit form: save progress per item, sync on reconnect. Item-by-item checkmarks instead of one long form | Audit `startedAt` to `completedAt` gap under 45 minutes; completion timestamps spread across the shift |
| Audits started but not finished | Progress indicator plus resume-from-last-item on reopen | Audit abandonment rate (started, never completed) < 10% |

### Q3 — Share of work logged in Orchestra vs paper / WhatsApp / verbal

This is the headline conversion metric and the hardest to pull from Firestore alone.
The repo already shows one gap: every stock count and supply order in
`inventory/firebase/seed.json` is tagged `source: WhatsApp`. Those are tasks that
happen monthly, involve numbers and signatures, and are exactly what the app should own.

| Signal | Change | Proof |
|--------|--------|-------|
| Entire task categories absent from Firestore (stock counts, orders, incidents) | Build the missing flow (change #4). Bilingual item names are already modelled in the seed data (`name` / `nameEn`); reuse them as the pick list | `orders` and `stockCounts` collections written by the app, `source` field reads `app` |
| Workers log in app *and* send WhatsApp photo to supervisor | Supervisor-side notification on completion (change #3), so the WhatsApp photo has no reason to exist | Supervisor interview: "I stopped asking for WhatsApp photos" |

### Q4 / §1 — Zero-activity days

| Signal | Change | Proof |
|--------|--------|-------|
| Zero days on working days | Change #1, plus a single daily reminder push at shift start for anyone with open tasks and no activity | Zero-activity working days: 0 |
| Zero days cluster on one shift (night, weekend) | See §3 adoption by shift. Likely a device or connectivity gap, not UX; confirm before building | Activity by hour-of-day shows the missing shift appearing |

### §1 — Activity by hour-of-day and day-of-week

| Signal | Change | Proof |
|--------|--------|-------|
| Spikes at shift end (batch entry from memory) | In-task timer or "start task" tap, so completion is logged at the moment of work. Make "complete" unavailable until "start" was tapped | Completion timestamps spread across the shift; `startedAt` present on ≥ 90% of tasks |
| Usage only on days a supervisor is on site | Remove supervisor as a gate for anything a worker needs to do. Worker can complete without supervisor assignment | Day-of-week activity flat |

---

## 2. Task coverage (Block B, §2)

### Q5 / §2 — Task types running through Orchestra today

| Signal | Change | Proof |
|--------|--------|-------|
| One domain dominates (e.g. cleaning only) | Domain-coloured task cards and a domain filter, so the other domains are visible and not buried | Task counts across ≥ 3 domains each month |

### Q6 — Task types expected but not adopted

Pull the list from §2, then for each missing domain ask whether it fails for one of
three reasons and apply the matching change:

| Reason the domain is missing | Change |
|------------------------------|--------|
| No way to create it (e.g. maintenance request from a worker who spots a fault) | Worker-initiated task button with photo first, text optional |
| Form is longer than the paper version | Cut to the fields the supervisor actually reviews. Everything else optional and collapsed |
| It needs someone outside the app (client sign-off, procurement) | Share-as-PDF / share-link from the task, so the external step pulls from the app instead of replacing it |

Proof: the domain appears in §2 counts in the following month.

### §2 — Evidence attach rate

| Signal | Change | Proof |
|--------|--------|-------|
| < 50% of completed tasks have a photo | Change #2: camera opens from the complete button; gallery upload secondary. Photo required for task types the supervisor marks as evidence-required | Attach rate ≥ 80% overall, ≥ 95% for evidence-required types |
| Photos attached but unusable (dark, blurry, wrong area) | Reference photo overlay ("this is what done looks like") on the capture screen | Supervisor rejection rate on evidence < 5% |

### §2 — Voice-note usage (justice-loop signal)

| Signal | Change | Proof |
|--------|--------|-------|
| Near zero | Voice note button visible on the completion screen and on the supervisor review screen, not hidden in a menu. Arabic prompt text, hold-to-record | Voice notes per 100 tasks rising month over month |
| Workers record, supervisors never play | Unplayed-note indicator in the review queue | Play rate ≥ 80% within 24 hours |

### Q7 / §4 — Supervisors reviewing vs only workers submitting

| Signal | Change | Proof |
|--------|--------|-------|
| Review actions ≈ 0 | Change #3: review queue, badge, push. Review = one tap (accept) or two (reject with reason) | Review actions ≥ 90% of completed tasks |
| Reviews happen days later | Review queue sorted by age, with "older than one shift" section highlighted | Median completion-to-review time < 4 hours |

### Q8 — Anyone outside operations looked at a dashboard

| Signal | Change | Proof |
|--------|--------|-------|
| No management or client logins | Weekly summary email or PDF generated from the dashboard, sent automatically. A dashboard nobody opens still has to reach the reader | Open rate on the summary; one client-side login per month as a stretch |
| Client has an account, never logs in | Read-only client role with a single page: site score, completed audits, open issues. No navigation | Client login ≥ 1 per month |

---

## 3. Accounts and penetration (Block C, §3)

### Q9 / §3 — Provisioned vs logged in last 30 days (MAU)

| Signal | Change | Proof |
|--------|--------|-------|
| Large gap between provisioned and active | First-login flow in Arabic, phone-number login (no email), PIN instead of password. Dormant accounts likely never got past login | Active / provisioned ≥ 70% |
| Accounts active once, then dormant | See Q10 below | — |

### Q10 / §3 — Daily vs weekly vs rare users

| Signal | Change | Proof |
|--------|--------|-------|
| Most actives are weekly or rarer | The app is being used for an occasional task (an audit), not the daily routine. Change #1 plus recurring daily templates | Accounts active ≥ 20 of 30 days: majority of workers |
| Daily users exist but only on one shift | Device availability per shift, not UX. Confirm with Q12 before building | — |

### §3 — Dormant > 14 days

| Signal | Change | Proof |
|--------|--------|-------|
| Dormant accounts are workers | Re-engagement push with the one open task nearest to them. If no response in 7 days, flag to supervisor in the review queue | Dormant count falling month over month |
| Dormant accounts are supervisors | Supervisor has nothing to do in the app. Change #3 gives them a job | Supervisor MAU = 100% |

### Q11 / §3 — Adoption by role

| Signal | Change | Proof |
|--------|--------|-------|
| Workers high, supervisors low | Change #3 | Supervisor active ratio ≥ worker active ratio |
| Supervisors high, workers low | Supervisors are logging on behalf of workers. Per-worker login on shared device: fast account switch on the task list (tap avatar, enter PIN) | Distinct worker accounts completing tasks ≥ 80% of roster |
| Site managers low | Site manager needs a one-screen summary, not the supervisor's queue. Role-specific home screen | Site manager weekly active |

### Q12 / §3 — Sites or shifts near zero

| Signal | Change | Proof |
|--------|--------|-------|
| Night shift or weekend near zero | Likely no device or no supervisor to prompt. If a device exists: offline-first (audits save locally, sync later) and a shift-start push | Hour-of-day chart shows the shift |
| One site near zero | Compare the §2 task-type mix at that site. If the site runs domains the app does not model (Q6), build those first | Site appears in volume counts |

---

## 4. Supervisor-side engagement (Block B Q7, §4)

Instrumentation gap: dashboard views and audit-review actions may not be logged.
Before promising the §4 numbers, confirm with Ghada whether these events exist. If not,
the first UX change in this section is an analytics one:

| Event to add | Fires when | Why |
|--------------|------------|-----|
| `review_action` | Supervisor accepts or rejects a task or audit | §4 review counts and time-to-review |
| `dashboard_view` | Any dashboard screen opened, with role | Q8, §4 |
| `evidence_viewed` | Supervisor opens a photo or plays a voice note | Distinguishes "reviewed" from "rubber-stamped" |
| `feedback_issued` | Score or comment sent to a worker | §4 feedback events; justice-loop closure |
| `task_skipped` with `reason` | Change #5 prompt answered | Q13, which is otherwise interview-only |

Each event carries `role`, `siteId`, `shiftId`, so §3 breakdowns by role and shift
come for free.

### §4 — Feedback / score events issued

| Signal | Change | Proof |
|--------|--------|-------|
| Reviews happen, feedback is zero | Feedback is a required step of reject, and a one-tap optional step of accept (thumbs up, preset phrases in Arabic) | Feedback events ≥ 30% of reviews |
| Feedback issued, workers never see it | Worker-side "your reviews" screen with unread badge | Feedback read rate ≥ 80% |

---

## 5. Trend signals (§5)

### §5 — Week-over-week active users, last 8 weeks

| Signal | Change | Proof |
|--------|--------|-------|
| Decaying | The novelty curve. Nothing in the app pulls people back on its own. Changes #1 and #3 create a daily reason for both roles | WAU flat or rising for 4 consecutive weeks |
| Flat below roster size | Onboarding gap (Q9 changes) | WAU approaches provisioned count |

### §5 — Cohort retention (pilot month 1 users still active)

| Signal | Change | Proof |
|--------|--------|-------|
| < 50% retained | Interview the churned half (Q13, Q15). Their reasons map to one of the rows above; do not build ahead of the interviews | Month-1 cohort retention ≥ 70% at next pull |

---

## 6. Friction and intent (Block D) — what the app can measure itself

### Q13 — Most common reason a worker skips the app

Today this is interview-only. Change #5 makes it a metric:

- When a task is closed without evidence, or stays open past shift end, the app asks
  one question with four large buttons: *no signal*, *no time*, *did it on paper*,
  *did not understand the task*, plus *other*.
- Each answer is a UX finding. *No signal* → offline-first. *No time* → the form is
  too long. *Did it on paper* → the paper form still exists; remove it with the
  supervisor. *Did not understand* → task description or reference photo missing.

Proof: reason distribution in Firestore, and the top reason shrinking after its
matching change ships.

### Q14 — What would make Orchestra the only way work is recorded

Not a UX metric. The answer typically names a task type (Q6) or a person who still
accepts paper (Q7). Route the answer to the matching row above.

### Q15 — If the pilot ended tomorrow, what would they lose

This predicts conversion and has no app lever. It does, however, tell you which
screen to protect: whatever they name (the photo trail, the review history, the
scores) is the surface that must never regress. Add it to the regression checklist.

---

## 7. How to run the loop

1. Pull §1, §3, §5 from Firestore now (baseline).
2. Ship the five changes in section 0.
3. Confirm §4 instrumentation with Ghada; add the five events if missing.
4. Hold the client conversation on blocks B and D only.
5. Re-pull 30 days after the last change ships. Compare against the Proof column.
6. Any Proof not met: the change did not land. Interview before building the next one.

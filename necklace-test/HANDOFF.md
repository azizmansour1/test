# Necklace test: handoff (2026-10-15)

Written at the end of the laptop session that linked Claude to Flow through Claude in Chrome. It replaces the cloud
session's handoff of 2026-10-13. Read this first, then [README.md](README.md) (runbook, rules, take log),
[PLAYBOOK.md](PLAYBOOK.md) (what works in Flow) and [prompts.md](prompts.md) (picks, instruction cards, ready-to-paste
messages).

## Where things are

- **Repo:** https://github.com/azizmansour1/test, branch `claude/laughing-hawking-cntm6r`, PR
  https://github.com/azizmansour1/test/pull/3. The repo is public: keep machine names, paths, account details and
  links to private files out of it. Videos are git-ignored: they exist only on the laptop (in `necklace-test/` and its
  Downloads folder).
- **Flow, old account:** project "Necklace v2", the account named in README. Balance **953** at the end of that work
  (1,003 on 2026-10-15 after daily credits). About 135 of its 150-credit budget used. Nothing is pending there. New work
  happens on the second account (next section).
- **Chrome:** Flow on the second account runs in its own Chrome profile, connected to Claude in Chrome as a separate
  browser. Do not switch browsers without asking.
- **References:** A3 Abeer, B1 Sally, C2 Zeinab, D5 necklace (carved-letter pendant), E2 room. In Flow the only room
  asset is named `refs/E_room_1.png`, and it is the one every take used.

## Move to a second Google account (decided 2026-10-15)

Drive and Flow work moves to a second Google account (named in chat, not here); Sameh drives it and does every sign-in.
- **Budget:** fresh hard stop at 150 credits used on the new account, counted from zero. The old account's count above
  no longer applies to new work.
- **Not carried over:** project "Necklace v2", its references, takes and the SceneBuilder scene stay on the old account.
  The new account needs a new Flow project, the references uploaded from the laptop's `refs/`, and instruction cards 1
  to 3 added again (only when asked).
- **Drive:** the Google Drive connector is reconnected to the new account by Sameh; then the repo docs go into a new
  "Necklace test" folder there. Videos and refs exist only on the laptop and go up from there.

Done on 2026-10-15:
- **Drive:** the connector is on the new account. Its "Necklace test" folder holds empty `refs` and `drafts`
  subfolders and HANDOFF.md, README.md, PLAYBOOK.md, prompts.md and assemble.sh, uploaded as plain files with LF line
  endings (no Google Docs conversion). README's "Mirror to Drive" link still points at the old account's folder.
- **Chrome:** the new account has its own Chrome profile. Its Claude extension is signed in with the paid Claude
  account; the new Google account has no Claude plan, so signing the extension in with it fails ("requires a paid plan").
  Switching Google accounts inside the old profile did not stick: Flow kept opening on the old account.
- **Flow:** the account chip shows the new account, PRO badge, no projects yet. **Starting balance 1,003 = credit zero.**
  Hard stop at 150 used. The old account read 1,003 the same evening, so the two may share a credit pool or it is a
  coincidence; count spend per take (15 per 10s 720p take), not from the balance.
- **Next:** create a new Flow project, upload the picked references from the laptop's `refs/`, add instruction cards 1
  to 3, all only when asked.

## Takes (all Omni 1.1 Flash, 720p, 10s, 9:16)

| File in `drafts/` | Flow name | Verdict | Use |
|---|---|---|---|
| P1_6.mp4 | Housekeeper speaking to seated w… | pass | line 2.29s to 2.74s |
| P2_1.mp4 | Housekeeper pointing at camera | accepted by Aziz, no look-up in the cut | line 1.66s to 3.25s |
| P3_1.mp4 | Two women talking on sofa | pass | speech 1.05s to 9.13s |
| P4_1.mp4 | Housekeeper pleading in room | line split by the model | sentence 1 at 1.24s to 4.45s; "أرجوكي قوليلي" at 7.75s to 8.67s (Aziz confirmed by ear) |

Also in `drafts/`: P1_1, P1_2, P1_5 (rejected takes), P4_1_spliceA/B (ffmpeg splices), P4_1_flowsplice (Flow splice).
P1_3 and P1_4 are not on the laptop.

## Finished cuts (in `necklace-test/`)

| File | How | Length | Trade-off |
|---|---|---|---|
| necklace_test_flow_scene.mp4 | Built and exported in Flow SceneBuilder, free | 15.78s | P4 at natural speed, one jump cut; 0.78s over 15.0s |
| necklace_test_15s_A.mp4 | ffmpeg, `assemble.sh` | 15.00s | P4 13% faster, one jump cut |
| necklace_test_15s_B.mp4 | ffmpeg, `assemble.sh` | 15.00s | P4 normal speed, two jump cuts |

The Flow scene is "Untitled Scene 10-12 23:10:37" in Necklace v2 (trims are in README Step 5). A test scene
"Untitled Scene 10-12 22:58:54" (two copies of P4) is also there; Aziz has not asked to remove it.

## Open items, in order

1. Done (confirmed 2026-10-15): the final cut is the Flow scene, `necklace_test_flow_scene.mp4` (15.78s). "Keep
   current" meant that one.
2. Aziz checks the Arabic wording by ear in P2 and P3 (not yet done).
3. Upload `drafts/` and the final cut to the Drive folder "Necklace test" on the new account (its `drafts` subfolder is
   ready; README's "Mirror to Drive" link is the old account's folder), then compare with the original together with
   Sameh.
4. Optional: tighten the Flow scene to 15.0s, or spend the last 15 credits on a P4 take 2 that says the whole line in
   one breath (needs his "approve").
5. The Drive doc "Necklace test – prompts v2 (2026-10-11)" is stale; prompts.md is current.

## Downloaded file names to repo names

Flow names downloads after the clip. Copy, never move, into `necklace-test/drafts/`:

| Flow download | Repo name |
|---|---|
| Two_women_talking_on_sofa_20261011160141.mp4 | drafts/P3_1.mp4 |
| Older_woman_listening_to_maid_20261011163116.mp4 | drafts/P1_1.mp4 (rejected) |
| Woman_sitting_on_sofa_listening_20261011164902.mp4 | drafts/P1_2.mp4 (rejected) |
| Woman_sitting_on_sofa_speaking_20261012021805.mp4 | drafts/P1_3.mp4 (rejected) |
| Woman_looking_at_tea_tray_20261012022414.mp4 | drafts/P1_4.mp4 (rejected, 360p) |
| Woman_and_housekeeper_in_living_20261012232721.mp4 | drafts/P1_5.mp4 (partial) |
| Housekeeper_speaking_to_seated_w…_20261013002234.mp4 | drafts/P1_6.mp4 (pass) |
| Housekeeper_pointing_at_camera_20261013005818.mp4 | drafts/P2_1.mp4 |
| Housekeeper_pleading_in_room_20261013012801.mp4 | drafts/P4_1.mp4 |
| Untitled_Scene_10-12_23_10_37_20261013021714.mp4 | necklace_test_flow_scene.mp4 |

## Review commands (ffmpeg is installed on the laptop)

Run these on every new clip before calling it a pass; the checklist is in PLAYBOOK.md. In drawtext on Windows, pass
`fontfile='C\:/Windows/Fonts/arial.ttf'`, or Fontconfig fails.

```
ffprobe -v error -show_entries format=duration:stream=codec_type,width,height,r_frame_rate -of compact drafts/P2_1.mp4
ffmpeg -hide_banner -nostats -i drafts/P2_1.mp4 -af silencedetect=noise=-30dB:d=0.25 -f null -
ffmpeg -y -i drafts/P2_1.mp4 -vf "fps=2,scale=270:-1,tile=5x4:padding=4:margin=4" sheet.png
ffmpeg -y -ss 2.0 -i drafts/P2_1.mp4 -frames:v 1 -vf "crop=300:300:420:120,scale=iw*1.5:ih*1.5" mouth_2s.png
```

The second command prints silence start and end times; speech is the gaps between them. Pick mouth crops from the full
frame first; a crop that misses the mouth proves nothing. `assemble.sh` is bash; on Windows run it from Git Bash.

## Driving Flow through Chrome: what bit us

- Typing a literal "@" in the composer opens the asset picker and swallows the rest. Insert text, then read the box back
  before sending.
- The viewport height changes; coordinate clicks then land on the wrong thing (once opened an image edit view, once
  Characters). Prefer `find` refs.
- Escape inside SceneBuilder leaves SceneBuilder (the scene is kept). Reopen by its `/scene/<id>` URL.
- The "Download batch" button on a scene's row in the media list does nothing; "Download scene" inside SceneBuilder works.
- SceneBuilder trims ripple, the total-duration readout can lag until you click the timeline, and the default zoom is
  about 102 px per second (one zoom-out step gives about 51).
- Agent instructions allow three active cards; cards 1 to 3 are on, card 6 is empty. Video default aspect shows 16:9;
  takes still come out 9:16 because every prompt says so. Leave settings as they are (Aziz's instruction).
- Read the balance from the account panel; close it with its "Close account panel" button, not Escape.

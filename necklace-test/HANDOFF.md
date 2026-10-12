# Handoff to the laptop session (2026-10-13)

Read this first, then README.md (runbook, rules, take log), PLAYBOOK.md (what works in Flow) and prompts.md (picks,
instruction cards, ready-to-paste messages). From now on the laptop session owns branch `claude/laughing-hawking-cntm6r`
and PR https://github.com/azizmansour1/test/pull/3. The cloud session that did the work so far will not push again.

## Where we are

| Item | State |
|---|---|
| Reference picks | A3 Abeer, B1 Sally, C2 Zeinab, D5 necklace (carved-letter pendant), E2 room. All in Flow project "Necklace v2". |
| P3 (two-shot) | Done: P3_1. Both lines on the right mouths. Still to confirm by ear: the Arabic is word for word. |
| P1 | Done: P1_6 passes every check. Takes 1 to 5 are rejected, kept as evidence. |
| P2 | v2 pre-flight PASSED (agent point 4 identical to prompts.md, 1,161 bytes). Waiting for the user's "approve", then the go message. Save as drafts/P2_1.mp4. |
| P4 | v2 written, not yet run. |
| Credits | About 105 used, counted at 15 per 720p take. Last balance read: 998 (2026-10-12). Plan: P2 15 + P4 15 + one spare 15 = 150 hard stop. Ask the user for the balance after every batch. |

## Downloaded file names to repo names

Flow names the downloads after the scene. Copy and rename into `necklace-test/drafts/` and `necklace-test/refs/`:

| Flow download | Repo name |
|---|---|
| Two_women_talking_on_sofa_20261011160141.mp4 | drafts/P3_1.mp4 |
| Older_woman_listening_to_maid_20261011163116.mp4 | drafts/P1_1.mp4 (rejected) |
| Woman_sitting_on_sofa_listening_20261011164902.mp4 | drafts/P1_2.mp4 (rejected) |
| Woman_sitting_on_sofa_speaking_20261012021805.mp4 | drafts/P1_3.mp4 (rejected) |
| Woman_looking_at_tea_tray_20261012022414.mp4 | drafts/P1_4.mp4 (rejected, 360p) |
| Woman_and_housekeeper_in_living_20261012232721.mp4 | drafts/P1_5.mp4 (partial) |
| Housekeeper_speaking_to_seated_w__20261013002234.mp4 | drafts/P1_6.mp4 (pass) |
| Necklace_v2.zip: refs/X_name_N.png_<timestamp>.jpg | refs/X_name_N.jpg |

A3 (Abeer with the carved-letter pendant) and D5 (the carved-letter necklace close-up) were generated later; save them
from the Flow project as refs/A_abeer_3.jpg and refs/D_necklace_5.jpg.

## Review commands (ffmpeg is installed on the laptop)

Run these on every new clip before calling it a pass; the checklist is in PLAYBOOK.md.

```
ffprobe -v error -show_entries format=duration:stream=codec_type,width,height,r_frame_rate -of compact drafts/P2_1.mp4
ffmpeg -hide_banner -nostats -i drafts/P2_1.mp4 -af silencedetect=noise=-30dB:d=0.25 -f null -
ffmpeg -y -i drafts/P2_1.mp4 -vf "fps=2,scale=270:-1,tile=5x4:padding=4:margin=4" sheet.png
ffmpeg -y -ss 2.0 -i drafts/P2_1.mp4 -frames:v 1 frame_2s.png
ffmpeg -y -ss 2.0 -i drafts/P2_1.mp4 -frames:v 1 -vf "crop=300:300:420:120,scale=iw*1.5:ih*1.5" mouth_2s.png
```

The second command prints silence start and end times; speech is the gaps between them. Pick mouth crops from the full
frame first; a crop that misses the mouth proves nothing.

## Final assembly

`assemble.sh` is bash; on Windows run it from Git Bash (installed with Git for Windows). With P2 and P4 done:

```
S1=1.95 S3=1.04 T3=1.015 S2=<P2 in-point> S4=<P4 in-point> ./necklace-test/assemble.sh \
  necklace-test/drafts/P1_6.mp4 necklace-test/drafts/P2_1.mp4 necklace-test/drafts/P3_1.mp4 necklace-test/drafts/P4_1.mp4
```

Pick each in-point so the whole line sits inside the slot (P2 2.2s, P4 3.8s). Output: necklace-test/necklace_test_15s.mp4,
exactly 15.0s, 1080x1920, 24 fps. Upload it to the Drive folder "Necklace test"
(https://drive.google.com/drive/folders/1DZxr0FLdEEC1wyLy9dBswTS0v0KaEFv9), then compare with the original together with
Sameh.

## Also open

- The Drive doc "Necklace test – prompts v2 (2026-10-11)" is stale; prompts.md is current.
- Contact sheet for Sameh: https://claude.ai/artifact/V2EH9qPnqDDzN6uvisHbcu (references only).
- After the last take, update PLAYBOOK.md with what P2 and P4 taught, and mark rules confirmed or refuted.

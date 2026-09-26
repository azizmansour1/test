# Necklace test — local runbook

Steps 1–5 of the brief run on your own computer. The cloud session can't do them because gflow-cli opens a Chrome window that you sign in to yourself.
Start a session in this folder with the Claude Desktop app or `claude remote-control`, then follow the brief from Step 1.

Output layout:

```
necklace-test/
  refs/     A1-3, B1-3, C1-3, D1-3, E1-3 (Nano Banana Pro)
  drafts/   P{n}_{take}.mp4 (Veo 3.1 Fast)
  finals/   P1.mp4 … P4.mp4 (Veo 3.1 Quality, 1080p)
  necklace_test_15s.mp4
```

## Step 6: assemble

Needs `ffmpeg` (`brew install ffmpeg` / `sudo apt install ffmpeg`).

```bash
./necklace-test/assemble.sh                       # uses finals/P1..P4.mp4
S2=0.4 ./necklace-test/assemble.sh a.mp4 b.mp4 c.mp4 d.mp4   # custom inputs, skip 0.4s at the start of P2
```

Cuts: P1 1.0s, P2 2.2s, P3 8.0s, P4 3.8s. The output is exactly 15.0s, 1080×1920, 24 fps, H.264 + AAC.
Each clip must have an audio track. Veo output always has one.

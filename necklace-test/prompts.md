# Necklace test — prompts v2 (2026-10-11)

Vertical 9:16. All faces fictional. Flow project: **Necklace v2**. Account: amjser@gmail.com.
The dialogue lines are exact and must not be changed.

These are written for pasting by hand into Flow's agent composer (the chat box at the bottom right).
References go in with **Add / @asset-name**. The `@Abeer`, `@Sally`, `@Zeinab`, `@Necklace`, `@Room`
names below are placeholders: type `@`, pick the asset Flow shows, and keep the sentence that says what
the reference is for. If Flow names an asset differently, use its name.

Paste the control line and the prompt together, as one message.

---

## Step 2 · Reference images

Settings first (Agent settings): aspect 9:16, count x2, model Nano Banana 2.1 (or Nano Banana Pro if listed),
Confirm before generating = Always. Images are expected to cost no credits; check the balance after.

Control line for every image prompt:

Generate exactly two images using the default image settings. Do not generate video and do not ask follow-up questions.

### A · Abeer

One photorealistic portrait photo, vertical 9:16. A fictional Egyptian woman, about 55, long dark wavy hair, glamorous evening makeup. She wears a black sheer long-sleeve top over a red-and-white vertical-striped dress, and a necklace of large round wooden beads with one round carved brown wooden pendant with a gold flower motif. Waist-up, facing the camera, neutral expression. Soft warm light, plain beige background. Invented face that does not resemble any real person. No text.

### B · Sally

One photorealistic portrait photo, vertical 9:16. A fictional Egyptian woman, about 35, shoulder-length curly brown hair, natural makeup. She wears a black top under a dress with a red and navy geometric print. Waist-up, facing the camera, neutral expression. Soft warm light, plain beige background. Invented face that does not resemble any real person. No text.

### C · Zeinab (maid, veiled)

One photorealistic portrait photo, vertical 9:16. A fictional Egyptian housekeeper, about 55, kind tired face. She wears a dark headscarf (hijab) fully covering her hair and neck, a mint-green button-up shirt, and a red apron tied at the waist. Waist-up, facing the camera, neutral expression. Soft warm light, plain beige background. Invented face that does not resemble any real person. No text.

### D · Necklace

One close-up product photo, vertical 9:16. A necklace of large round wooden beads with one round brown wooden pendant carved with a gold flower motif, laid flat on a plain white background. Sharp focus, soft even light. No people, no text.

### E · Room

One photorealistic photo, vertical 9:16, of an empty upper-class Cairo living room at eye level. A gilded sofa with burgundy upholstery against the back wall, heavy brown drapes behind it, a crystal chandelier above, and a marble coffee table in front with a white tray holding two glasses of tea. Warm side daylight. No people, no text.

Save the downloads as:
`refs/A_abeer_1.png`, `refs/A_abeer_2.png`, `refs/B_sally_1.png`, `refs/B_sally_2.png`, `refs/C_zeinab_1.png`,
`refs/C_zeinab_2.png`, `refs/D_necklace_1.png`, `refs/D_necklace_2.png`, `refs/E_room_1.png`, `refs/E_room_2.png`.

---

## Steps 3–4 · Shot prompts

One shot per prompt. Settings first (Agent settings → default video generation): 9:16, 360p, Omni 1.1 Flash,
duration and count as stated in the approval for that batch. Attach only the references named for the panel.
Nothing is generated before an "approve" in chat for that batch.

Control line for every video prompt:

Generate video only, using the default video settings and the attached references. Do not generate images and do not ask follow-up questions.

### P1 · references A (@Abeer) + D (@Necklace) · final cut uses 1.0s

One continuous shot, no cuts, vertical 9:16. Extreme close-up of the necklace on the older woman's chest: large round wooden beads and one round carved brown wooden pendant with a gold flower motif, lying over her black sheer long-sleeve top and her red-and-white vertical-striped dress. Her face stays out of frame. Static camera, shallow focus, soft warm light. @Abeer is the reference for the woman and her clothes; @Necklace is the reference for the necklace. From off-screen, an older woman's voice says in Egyptian Arabic: "إيه ده؟" Nobody on screen speaks. No music, no on-screen text, no subtitles.

### P2 · references C (@Zeinab) + E (@Room) · final cut uses 2.2s

One continuous shot, no cuts, vertical 9:16. Medium shot in the living room from @Room: gilded burgundy sofa, heavy brown drapes, crystal chandelier, marble coffee table. The veiled housekeeper from @Zeinab, in a dark headscarf covering her hair and neck, a mint-green button-up shirt and a red apron, is bent over the marble table holding the white tea tray with two glasses of tea. She freezes, stares toward the camera in surprise, and points at the camera. The woman in the dark headscarf and red apron says in Egyptian Arabic: "إنتي جبتي السلسلة دي منين؟" Warm side daylight, handheld feel. No music, no on-screen text, no subtitles.

### P3 · references A (@Abeer) + B (@Sally) + E (@Room) · final cut uses 8.0s · TEST THIS FIRST

One continuous shot, no cuts, vertical 9:16, static camera at eye level. Two women sit side by side on the gilded burgundy sofa from @Room, heavy brown drapes behind them, the marble table with the tea tray in the foreground. On the left sits the older woman from @Abeer: long dark wavy hair, glamorous evening makeup, a black sheer top over a red-and-white striped dress, and the large wooden bead necklace. On the right sits the younger woman from @Sally, the host: shoulder-length curly brown hair, a black top under a red-and-navy geometric print dress. The older woman on the left, in the striped dress, looks confused and says in Egyptian Arabic: "سلسلة؟ السلسلة إيه؟" She falls silent and glances at the younger woman. Then the younger woman on the right, in the red-and-navy dress, turns her head toward someone off-screen to the right, annoyed, and says quickly in Egyptian Arabic: "فيه إيه يا زينب؟ السلسلة اللي إنتي بتتكلمي عنها؟ هو إنتي هتقفي ترغي مع ضيوفي ولا إيه؟ اتفضلي يلا خشي جوه." Only the woman who is speaking moves her lips; the other one listens. Warm side daylight. No music, no on-screen text, no subtitles.

### P4 · references C (@Zeinab) + E (@Room) · final cut uses 3.8s

One continuous shot, no cuts, vertical 9:16. Medium close-up of the veiled housekeeper from @Zeinab, in a dark headscarf covering her hair and neck, a mint-green button-up shirt and a red apron, standing beside the gilded burgundy sofa from @Room and leaning forward toward the camera, pleading, hands pressed together. The woman in the dark headscarf and red apron says in Egyptian Arabic: "بقول لحضرتك إنتي جبتي السلسلة دي منين؟ أرجوكي قوليلي." Warm side daylight, slight handheld push-in. No music, no on-screen text, no subtitles.

Save the downloads as `drafts/P{n}_{take}.mp4`, for example `drafts/P3_1.mp4` and `drafts/P3_2.mp4`.

---

## Timing note for P3

Both P3 lines at a natural pace take roughly 8–9 seconds, and the final cut gives P3 exactly 8.0s.
If the clip is 8s and the end of the second line is cut, say so: the options are a 10s clip (if Flow offers 10s
with references attached) or splitting P3 into two shots, which changes the edit.

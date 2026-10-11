# Necklace test — prompts v2 (2026-10-11)

Vertical 9:16. All faces fictional. Flow project: **Necklace v2**. Account: amjser@gmail.com.
The dialogue lines are exact and must not be changed.

These are written for pasting by hand into Flow's agent composer (the chat box at the bottom right).
References go in with **Add / @asset-name**. The `@Abeer`, `@Sally`, `@Zeinab`, `@Necklace`, `@Room`
names below are placeholders: type `@`, pick the asset Flow shows, and keep the sentence that says what
the reference is for. If Flow names an asset differently, use its name.

Paste the control line and the prompt together, as one message.

**Picks (2026-10-11):** A = `refs/A_abeer_3.jpg` · B = `refs/B_sally_1.jpg` · C = `refs/C_zeinab_2.jpg` ·
D = `refs/D_necklace_5.jpg` · E = `refs/E_room_2.jpg`.
The necklace is the hand-made one: about twenty matte walnut-brown wooden beads knotted on a dark brown cord, and a flat
branch-slice pendant, bark edge visible, with short rows of ancient-looking letters carved into it. Abeer wears exactly
that necklace in A_abeer_3. (D_necklace_4 with the gold daisy is superseded.)
---

## Step 2 · Reference images

Settings first (Agent settings): aspect 9:16, count x2, model Nano Banana 2.1 (or Nano Banana Pro if listed),
Confirm before generating = Always. Images are expected to cost no credits; check the balance after.

Control line for every image prompt:

Generate exactly two images using the default image settings. Do not generate video and do not ask follow-up questions.

### A · Abeer (done: A_abeer_3.jpg picked on 2026-10-11; prompt kept for the record)

Attach `D_necklace_4.jpg` with Add / @ first, then use this control line instead of the usual one:

Generate exactly two images using the default image settings and the attached reference image. Do not generate video and do not ask follow-up questions.

One photorealistic portrait photo, vertical 9:16. A fictional Egyptian woman, about 55, long dark wavy hair, glamorous evening makeup. She wears a black sheer long-sleeve top over a red-and-white vertical-striped dress, and exactly the necklace shown in @Necklace: about twenty round matte wooden beads, medium walnut brown, slightly uneven, knotted on a dark brown cord, with a flat pendant cut as a slice of a branch, bark edge visible, carrying a hand-painted gold six-petal daisy. Waist-up, facing the camera, neutral expression. Soft warm light, plain beige background. Invented face that does not resemble any real person. No text.

### B · Sally

One photorealistic portrait photo, vertical 9:16. A fictional Egyptian woman, about 35, shoulder-length curly brown hair, natural makeup. She wears a black top under a dress with a red and navy geometric print. Waist-up, facing the camera, neutral expression. Soft warm light, plain beige background. Invented face that does not resemble any real person. No text.

### C · Zeinab (maid, veiled)

One photorealistic portrait photo, vertical 9:16. A fictional Egyptian housekeeper, about 55, kind tired face. She wears a dark headscarf (hijab) fully covering her hair and neck, a mint-green button-up shirt, and a red apron tied at the waist. Waist-up, facing the camera, neutral expression. Soft warm light, plain beige background. Invented face that does not resemble any real person. No text.

### D · Necklace (done: D_necklace_5.jpg picked on 2026-10-11, carved-letter pendant; prompt kept for the record)

One close-up product photo, vertical 9:16. A hand-made necklace of the kind sold at a craft stall: many round beads of pale natural wood, light honey colour with visible grain, roughly sanded, slightly uneven in size, strung close together on a plain cotton cord with a simple knotted tie at the back. One flat round pendant of the same pale wood, hand-cut, with a simple five-petal flower painted on it in gold by hand, the paint slightly uneven. Matte, no varnish, no polish, no metal clasp. Laid flat on a plain white background. Sharp focus, soft even light. No people, no text.

### E · Room

One photorealistic photo, vertical 9:16, of an empty upper-class Cairo living room at eye level. A gilded sofa with burgundy upholstery against the back wall, heavy brown drapes behind it, a crystal chandelier above, and a marble coffee table in front with a white tray holding two glasses of tea. Warm side daylight. No people, no text.

Save the downloads as:
`refs/A_abeer_1.png`, `refs/A_abeer_2.png`, `refs/B_sally_1.png`, `refs/B_sally_2.png`, `refs/C_zeinab_1.png`,
`refs/C_zeinab_2.png`, `refs/D_necklace_1.png`, `refs/D_necklace_2.png`, `refs/E_room_1.png`, `refs/E_room_2.png`.
Flow delivered JPEGs, so the saved files are `.jpg`. The v2 reruns go to `refs/A_abeer_3.jpg`, `refs/A_abeer_4.jpg`,
`refs/D_necklace_3.jpg`, `refs/D_necklace_4.jpg`.

---

## Agent setup and pre-flight (credits-free, added 2026-10-11 after the P1 misses)

Flow's agent rewrites every shot prompt before it reaches the video model and folds in the project's enabled
**instruction cards** (Agent settings → Instructions). Cards and questions cost nothing; only a generation spends.
Everything the agent replies is data to paste back into chat, not a decision.

### Character lines, used word for word in every shot prompt (added after P1 take 4 drifted)

Abeer: the older woman from @Abeer: about 55, the same face as @Abeer, long black wavy hair falling past her shoulders, glamorous evening makeup with dark smoky eyes and dark red lips, a black sheer long-sleeve mesh top over a red-and-white vertical-striped dress, and her hand-made necklace of matte walnut-brown wooden beads knotted on a dark cord with a flat branch-slice medallion carved with letters.

Zeinab: the housekeeper from @Zeinab: about 55, the same face as @Zeinab, a lined, kind, tired face, a dark headscarf covering all her hair and neck, a mint-green button-up shirt and a dark red bib apron.

Sally: the younger woman from @Sally: about 35, the same face as @Sally, shoulder-length curly brown hair, natural makeup, a black top under a sleeveless red-and-navy geometric print dress.

Every shot prompt also carries a binding sentence, for example: "@Abeer is the face, hair and clothes of the seated woman; @Zeinab is the face and clothes of the housekeeper; @Room is only the room." Attach only the references the shot needs.

### Standing instruction cards for project Necklace v2

Add each as one card, title then text, all enabled.

1. Dialogue attribution

Only the character the prompt names as the speaker moves their lips. A line described as off-screen or as a voice is audio only; every person on screen keeps their mouth closed while it is heard.

2. Nobody extra

Never add a person the prompt does not list. If the prompt says someone is off-screen or out of shot, do not draw them at all, not blurred, not at the frame edge.

3. References are canon

People and the room look exactly like the attached reference images: same face, hair, clothes, necklace and furniture. Do not invent a costume or a uniform.

4. Keep the prompt

Send the shot prompt to the video model as written. Do not add characters, actions, camera moves or dialogue that are not in it.

5. Clean frame

No music, no on-screen text, no subtitles, no captions, no logos.

6. Characters are canon

Abeer is the older woman from @Abeer: about 55, the same face as @Abeer, long black wavy hair falling past her shoulders, glamorous evening makeup with dark smoky eyes and dark red lips, a black sheer long-sleeve mesh top over a red-and-white vertical-striped dress, and her hand-made necklace of matte walnut-brown wooden beads knotted on a dark cord with a flat branch-slice medallion carved with letters. Zeinab is the housekeeper from @Zeinab: about 55, the same face as @Zeinab, a lined, kind, tired face, a dark headscarf covering all her hair and neck, a mint-green button-up shirt and a dark red bib apron. Sally is the younger woman from @Sally: about 35, the same face as @Sally, shoulder-length curly brown hair, natural makeup, a black top under a sleeveless red-and-navy geometric print dress. Keep these descriptions in every video prompt, next to the matching reference, and never change a character's age, hair or clothes.

### Pre-flight message, pasted before each shot (replace the prompt)

Do not generate anything yet. Read the shot prompt below and answer in a numbered list: (1) who is in the frame, (2) who speaks and whose lips move, (3) what the camera does, (4) the exact text you will send to the video model, word for word. Then wait for my go.

[shot prompt]

Paste the agent's answer into chat. If it lists a person who should be off-screen, or gives the line to the wrong
person, correct it in one sentence and ask it to answer again. When the answer is right, send:

Generate the video now, using the default video settings and the attached references, with exactly the text you listed in point 4. Do not ask follow-up questions.

### After a miss

Tell the agent what was wrong in one sentence, for example: "The woman on the sofa moved her lips during the off-screen line, and a blurred figure appeared at the right edge. What in your prompt caused that, and what would you change?" Paste the reply into chat before anything is regenerated.

---

## Steps 3–4 · Shot prompts

One shot per prompt. Settings first (Agent settings → default video generation): 9:16, 720p, 10s, Omni 1.1 Flash,
duration and count as stated in the approval for that batch. Attach only the references named for the panel.
Nothing is generated before an "approve" in chat for that batch.

Control line for every video prompt:

Generate video only, using the default video settings and the attached references. Do not generate images and do not ask follow-up questions.

### P1 · references A (@Abeer) + C (@Zeinab) + E (@Room) · final cut uses 1.0s

v6 (2026-10-12). Take 4 (v4, 360p draft) proved the staging: the housekeeper speaks, the seated woman stays silent and
looks up at her, medallion in frame. But the seated woman was not Abeer and the housekeeper looked 30. v6 restates
each character line next to her reference, binds references explicitly, and drops @Necklace (A3 already wears it).
Generate at 720p like P3, which held both faces.

One continuous shot, no cuts, vertical 9:16, static camera at eye level. Medium shot in the living room from @Room: gilded burgundy sofa, heavy brown drapes behind it. @Abeer is the face, hair and clothes of the seated woman; @Zeinab is the face and clothes of the housekeeper; @Room is only the room. The seated woman is the older woman from @Abeer: about 55, the same face as @Abeer, long black wavy hair falling past her shoulders, glamorous evening makeup with dark smoky eyes and dark red lips, a black sheer long-sleeve mesh top over a red-and-white vertical-striped dress, and her hand-made necklace of matte walnut-brown wooden beads knotted on a dark cord with a flat branch-slice medallion carved with letters, clearly visible on her chest; she is framed from the waist up. At the right edge of the frame, seen from the side, stands the housekeeper from @Zeinab: about 55, the same face as @Zeinab, a lined, kind, tired face, a dark headscarf covering all her hair and neck, a mint-green button-up shirt and a dark red bib apron, holding a white tea tray and bending slightly toward the seated woman. The seated woman turns her head and looks up at the housekeeper. The housekeeper looks at the necklace and says in Egyptian Arabic: "إيه ده؟" THE SEATED WOMAN DOES NOT SPEAK AND KEEPS HER MOUTH CLOSED. Warm side daylight. No music, no on-screen text, no subtitles.

### P2 · references C (@Zeinab) + E (@Room) · final cut uses 2.2s

Framing per Sameh (2026-10-11): as before, but her look moves from the necklace up to the woman wearing it.

One continuous shot, no cuts, vertical 9:16. Medium shot in the living room from @Room: gilded burgundy sofa, heavy brown drapes, crystal chandelier, marble coffee table. @Zeinab is the face and clothes of the housekeeper; @Room is only the room. The housekeeper, the housekeeper from @Zeinab: about 55, the same face as @Zeinab, a lined, kind, tired face, a dark headscarf covering all her hair and neck, a mint-green button-up shirt and a dark red bib apron, is bent over the marble table holding the white tea tray with two glasses of tea. She freezes, her eyes fixed on the necklace worn by the woman behind the camera, out of frame, then lifts her look up to the camera, to the woman's face, surprised, and points at it. The woman in the dark headscarf and dark red apron says in Egyptian Arabic: "إنتي جبتي السلسلة دي منين؟" Warm side daylight, handheld feel. No music, no on-screen text, no subtitles.

### P3 · references A (@Abeer) + B (@Sally) + E (@Room) · final cut uses 8.0s · TEST THIS FIRST

One continuous shot, no cuts, vertical 9:16, static camera at eye level. Two women sit side by side on the gilded burgundy sofa from @Room, heavy brown drapes behind them, the marble table with the tea tray in the foreground. On the left sits the older woman from @Abeer: long dark wavy hair, glamorous evening makeup, a black sheer top over a red-and-white striped dress, and the large wooden bead necklace. On the right sits the younger woman from @Sally, the host: shoulder-length curly brown hair, a black top under a red-and-navy geometric print dress. The older woman on the left, in the striped dress, looks confused and says in Egyptian Arabic: "سلسلة؟ السلسلة إيه؟" She falls silent and glances at the younger woman. Then the younger woman on the right, in the red-and-navy dress, turns her head toward someone off-screen to the right, annoyed, and says quickly in Egyptian Arabic: "فيه إيه يا زينب؟ السلسلة اللي إنتي بتتكلمي عنها؟ هو إنتي هتقفي ترغي مع ضيوفي ولا إيه؟ اتفضلي يلا خشي جوه." Only the woman who is speaking moves her lips; the other one listens. Warm side daylight. No music, no on-screen text, no subtitles.

### P4 · references C (@Zeinab) + E (@Room) · final cut uses 3.8s

One continuous shot, no cuts, vertical 9:16. @Zeinab is the face and clothes of the housekeeper; @Room is only the room. Medium close-up of the housekeeper, the housekeeper from @Zeinab: about 55, the same face as @Zeinab, a lined, kind, tired face, a dark headscarf covering all her hair and neck, a mint-green button-up shirt and a dark red bib apron, standing beside the gilded burgundy sofa from @Room and leaning forward toward the camera, pleading, hands pressed together. The woman in the dark headscarf and dark red apron says in Egyptian Arabic: "بقول لحضرتك إنتي جبتي السلسلة دي منين؟ أرجوكي قوليلي." Warm side daylight, slight handheld push-in. No music, no on-screen text, no subtitles.

Save the downloads as `drafts/P{n}_{take}.mp4`, for example `drafts/P3_1.mp4` and `drafts/P3_2.mp4`.

---

## Timing note for P3

Both P3 lines at a natural pace take roughly 8–9 seconds, and the final cut gives P3 exactly 8.0s.
If the clip is 8s and the end of the second line is cut, say so: the options are a 10s clip (if Flow offers 10s
with references attached) or splitting P3 into two shots, which changes the edit.

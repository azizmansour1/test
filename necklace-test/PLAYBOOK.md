# Flow video playbook (from the necklace test, 2026-10-11 to 2026-10-12)

What we learned about getting Google Flow to generate the shot we asked for. Every rule below comes from a take we
measured; the evidence is in [README.md](README.md) under "Tool findings". Add to it after every batch.

## Setup on this account

- Flow serves amjser@gmail.com an **agent-only composer**. gflow-cli cannot drive it (upstream issue #799) and cannot read
  the balance (#795). Work by hand in Flow; Claude prepares prompts and reviews files.
- **Instruction cards** ("Agent instructions" button next to the prompt box) are credits-free and apply to every request in
  the project. Flow allows three active cards at most; cards 1 to 3 of [prompts.md](prompts.md) are on. Whatever cards 4 to
  6 say has to be in the prompt itself.
- **One message per shot: pre-flight + prompt together.** The agent answers who is in frame, whose lips move, what the camera
  does, and the exact text it will send. Read point 4, then send the go message. In the necklace test the agent's text was
  our prompt word for word, so misses came from the video model, not the agent.
- "Unusual activity" means Flow's bot score tripped. Stop, wait 30 to 60 minutes, use an Incognito window.

## Cost

| Item | Measured |
|---|---|
| Images (Nano Banana 2.1, 2 per prompt) | 0 credits |
| Omni 1.1 Flash, 10s, 720p, with references | 15 credits per take |
| Resolution options shown | 270p draft or 720p original |
| Durations with references | 10s offered (gflow's 8s pin does not apply in the agent composer) |

The balance can rise on its own (a refill of +28 was seen overnight), so count spend per take, not from the balance.

## Prompt rules

1. **One shot per prompt.** Start with "One continuous shot, no cuts, vertical 9:16". A whole brief in one prompt made one
   muddled clip.
2. **Every person gets a fixed character line next to their reference**, in every prompt: age, "the same face as @X",
   hair, makeup, clothes. Plus one binding sentence: "@A is the face, hair and clothes of the seated woman; @B is the face
   and clothes of the housekeeper; @Room is only the room." Without this, a take kept the costumes and swapped both faces.
3. **Attach only the references the shot needs.** Extra references are extra things to blend.
4. **Dialogue goes to whoever is visible.** An off-screen voice over a solo shot failed three times, with three wordings,
   including capitalised "mouth remains closed, zero lip movement". If a line matters, put the speaker in frame.
5. **Anyone you name gets drawn.** Saying "the maid stands off-screen" put a maid in frame. Do not name people who must not
   appear.
6. **Role nouns pull stereotypes.** A bare "maid" became a Western black-and-white uniform. Always bind the role to the
   reference and the character line.
7. **Actions happen in the order written, and then stop.** "She looks up at her. The housekeeper says..." produced a look
   that ended before the line. Say what must hold during the line: "keeps her eyes on X's face for the rest of the shot,
   including while X speaks; she never looks down." Confirmed in P1 take 6: the gaze held from 1s to the end.
8. **Place the line in time.** Unplaced, a one-word line landed at 4.7s of a 10s clip. "About two seconds into the shot"
   gives a usable in-point. Confirmed in P1 take 6: asked for about 2s, the line landed at 2.3s.
9. **Two speakers in one shot work** when each line is attributed to a visible description and an action beat separates
   them ("She falls silent and glances at..."). Both lines landed on the right mouths in P3.
10. **Eye-line directions are followed loosely.** "Turns toward someone off-screen right" became a look toward the camera.
    Name what the eyes land on, and say it again at the moment that matters.
11. Always end with "No music, no on-screen text, no subtitles." Quote each line exactly and say "in Egyptian Arabic".
12. **A starting pose is dropped within half a second** (seen once, P2 take 1). "From the first frame her eyes are fixed
    on..., about one second in she lifts her eyes" gave eyes on the lens by 0.5s. If the opening state must last, give it a
    duration and a hold, as in rule 7: "for the first full second she does not move her eyes".
13. **Empty seconds after the line get filled with more speech** (seen once, P2 take 1: a second, unscripted burst at
    7.6s). Tried in P4 take 1: "After the line she stays silent with her mouth closed until the end of the shot" still
    gave a late burst at 7.75s. Not solved by wording yet; plan the cut so that everything after the line can be dropped.

## Shot prompt template

```
One continuous shot, no cuts, vertical 9:16, [camera: static / handheld / push-in], [framing].
[Location] from @Room: [two or three anchor details].
@A is the face, hair and clothes of [role A]; @B is the face and clothes of [role B]; @Room is only the room.
[Role A] is [character line A]. [Position in frame].
[Role B] is [character line B]. [Position in frame].
[What happens in the first second.] [What must hold for the rest of the shot, including during the line.]
About [N] seconds into the shot, [speaker by visible description] says in Egyptian Arabic: "[exact line]"
[NON-SPEAKER] DOES NOT SPEAK AND KEEPS HER MOUTH CLOSED.
[Light]. No music, no on-screen text, no subtitles.
```

## Reviewing a take (what Claude checks, about two minutes per clip)

1. Format: duration, resolution, frame rate, audio present.
2. Where speech sits: silence detection gives each spoken burst with start and end times.
3. Contact sheet at 2 frames a second: staging, framing, anyone extra at the edges.
4. Mouth strips for every visible person across each spoken burst: who actually speaks.
5. Identity against the reference images: face, hair, age, clothes, props.
6. The brief's own requirements for that shot, one by one. A take passes only when all of them hold; a crop or edit that
   hides a miss is not a pass for this test.
7. Log the result and the cause in README.md, and turn any new lesson into a rule here.

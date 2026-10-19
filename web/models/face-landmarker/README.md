# MediaPipe Face Landmarker

This is the unmodified Google MediaPipe Face Landmarker float16 model bundle,
version **1**, downloaded on 2026-10-19. It is used only to detect face framing
and head orientation before a photo is captured, not to assess hair or diagnose disease.

- Source: https://storage.googleapis.com/mediapipe-models/face_landmarker/face_landmarker/float16/1/face_landmarker.task
- SHA-256: `64184e229b263107bc2b804c6625db1341ff2bb731874b0bcc2fe6544e0bc9ff`
- Provider: Google / MediaPipe.
- License: Apache-2.0; full license text is included in `LICENSE`.
- Official model documentation: https://developers.google.com/edge/mediapipe/solutions/vision/face_landmarker
- FaceMesh model card (including license and limitations): https://storage.googleapis.com/mediapipe-assets/Model%20Card%20MediaPipe%20Face%20Mesh%20V2.pdf
- Detection model card: https://storage.googleapis.com/mediapipe-assets/MediaPipe%20BlazeFace%20Model%20Card%20(Short%20Range).pdf
- Blendshape model card: https://storage.googleapis.com/mediapipe-assets/Model%20Card%20Blendshape%20V2.pdf

The application serves this bundle and its WebAssembly runtime from its own origin.
Camera frames stay in the browser for this framing step. The separate hair report
uses the photos the user explicitly chooses to send after reviewing the capture set.

Orientation comes from the official column-major face transform matrix. Negative
yaw in the original camera frame means that the person turns their head right,
exposing the left temple. The mirrored selfie preview does not alter inference.
We accept 20–43° temple turns rather than requiring a full profile. Capture requires
one detected face, enough space around the forehead, moderate tilt and a continuous
second of stable, fresh model observations. This is a photo-taking aid, not identity
verification, liveness verification or an image-quality/health guarantee. Poor light,
occlusion and some devices may prevent detection; no timer-only capture is substituted.

# Self-hosted MediaPipe runtime

The six `vision_wasm_*` files are copied without modification from
`@mediapipe/tasks-vision` **1.1.1**, pinned in the project's npm lockfile.
Provider: Google / MediaPipe. License: Apache-2.0 (included in `LICENSE`).

Both SIMD and non-SIMD runtimes are retained for browser compatibility, together
with the package's ES-module runtime variant. The official FilesetResolver chooses
the compatible runtime. The app explicitly uses the CPU inference delegate.
The browser smoke test loaded the model and returned face landmarks; preprocessing
also initialized a graphics context. Actual device coverage still requires testing
on supported iPhone/Telegram versions.

- Package: https://www.npmjs.com/package/@mediapipe/tasks-vision/v/1.1.1
- Source: https://github.com/google-ai-edge/mediapipe/tree/master/mediapipe/tasks/web/vision
- API: https://developers.google.com/edge/mediapipe/solutions/vision/face_landmarker/web_js
- Official privacy note: https://github.com/google-ai-edge/mediapipe/blob/master/mediapipe/tasks/web/vision/README.md

No CDN request and no camera-frame upload is needed for the head-pose detector.
On a dependency update copy all matching runtime files again; do not mix package
JavaScript with another version's WASM binaries.

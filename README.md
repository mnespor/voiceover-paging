# Voiceover paging

I don't know how I expect paging view controllers to work with VoiceOver,
but I'm getting surprising results.

## Steps to reproduce

1. Turn VoiceOver oni
1. Launch the app
1. Focus "some caption"
1. Three-finger swipe to the second page
1. One-finger swipe right, focusing "some other label"
1. One-finger swipe left, focusing "some caption"

## Expected

Unsure, probably focus "some caption" on the second, orange page

## Actual

Focus jumps all the way to the sixth page on the one-finger swipe left

## Other unexpected flows

1. Launch the app
1. One-finger swipe right twice, focusing "some other label"
1. One-finger swipe left once, focusing "some caption"

Focus jumps to the sixth page.

1. Launch the app
1. Focus "some caption"
1. Three-finger swipe to the fifth page
1. One-finger swipe left, focusing "some label"
1. One-finger swipe right, focusing "some caption"

Focus jumps to the first page.

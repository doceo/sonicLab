
use_bpm 60
use_synth_defaults release: 0.5, amp: 0.7, cutoff: 90

in_thread do
  loop do
    sample :drum_cymbal_closed
    cue :tick
    #play 40
    sleep 0.5
  end
end

in_thread do
  sync :tick
  loop do
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_snare_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.5
  end
end

in_thread do
  loop do
    sample :bd_fat
    sync :tick
    #play 40
    sleep 1
    sample :drum_cymbal_closed
    #sample :ambi_soft_buzz
    #play 80
    sleep 0.5
    
  end
end

in_thread do
  use_synth :tb303
  loop do
    play choose(chord(:E3, :minor)), release: 0.3, cutoff: rrand(60, 120)
    sleep 0.25
  end
end


use_debug false
use_bpm 130

fadein = (ramp * range(0,1,0.01))


live_loop :kick do
  if (spread 1,4).tick then
    sample :bd_tek, amp: fadein.look, cutoff: 80
  end
  sleep 0.25
end

live_loop :snares do
  sleep 1
  sleep 1
end

live_loop :divergenze do
  use_synth :tb303
  play choose(chord(:E5, :minor)), release: 0.3, cutoff: rrand(50, 130)
  sleep 0.5
end


live_loop :divergenze1 do
  use_synth :piano
  play choose(chord(:E5, :minor)), release: 8, cutoff: rrand(50, 130)
  sleep 8
end

live_loop :divergenze2 do
  use_synth :tb303
  play choose(chord(:E2, :minor)), release: 0.3, cutoff: rrand(50, 130)
  sleep 0.5
end
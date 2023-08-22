class WordSynth
  def initailize
    @effects = []
  end
  
  def add_effect(effect)
    @effects << effect
  end
  
  def play(original_words)
    words = original_words
    @effects.each do |effect|
      words = effect.call(words)
    end
    words
  end
end



def greet(proc_1, proc_2, proc_3)
  puts proc_1.call('おはよう')
  puts proc_2.call('こんばんは')
  puts proc_3.call('こんにちは')
end

shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?" }

greet(shuffle_proc, repeat_proc, question_proc)



synth = WordSynth.new
synth.play("Ruby is fun!")

synth = WordSynth.new
synth.add_effect(Effects.reverse)
synth.play("Ruby is fun!")

synth = WordSynth.new
synth.add_effect(Effects.echo(2))
synth.add_effect(Effects.loud(3))
synth.add_effect(Effects.reverse)
synth.play("Ruby is fun!")
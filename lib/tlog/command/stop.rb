
class Tlog::Command::Stop < Tlog::Command

	def name 
		"stop"
	end 

	def execute(input, output)
		output.line("execute on stop command") #change to out
		#create_task(input.args[0])
		raise Tlog::Error::CommandInvalid, "Task not in progress" unless stop_task(input.args[0])
		#if input.args[0].nil?
			# no task name given
			#@storage.create_current
		#	create_task()
		#elsif input.args[1].nil?
		#	arg1 = input.args.shift
			# task name given
			#@storage.create_current(arg1)
		#	create_task(arg1)
		#else
		#	arg1 = input.args.shift
		#	arg2 = input.args.shift
			# invalid, can't have 2 
		#end
	end

	def options(parser, options)
		parser.banner = "usage: tlog stop <task_name>"
	end

	private

	def stop_task(task_name)
		@storage.delete_current(task_name)
	end

end
# *** This file is generated by InstructionParser ***

module Rubinius
  class InstructionSet

    CALL_FLAG_CONCAT = 2

    opcode  1, :add_scope,                   :stack => [1, 0],     :args => [],                               :control_flow => :next
    opcode  2, :allow_private,               :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode  3, :cast_array,                  :stack => [1, 1],     :args => [],                               :control_flow => :next
    opcode  4, :cast_for_multi_block_arg,    :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode  5, :cast_for_single_block_arg,   :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode  6, :cast_for_splat_block_arg,    :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode  7, :cast_multi_value,            :stack => [1, 1],     :args => [],                               :control_flow => :next
    opcode  8, :check_frozen,                :stack => [1, 1],     :args => [],                               :control_flow => :next
    opcode  9, :check_interrupts,            :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 10, :check_serial,                :stack => [1, 1],     :args => [:literal, :serial],              :control_flow => :next
    opcode 11, :check_serial_private,        :stack => [1, 1],     :args => [:literal, :serial],              :control_flow => :next
    opcode 12, :clear_exception,             :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 13, :create_block,                :stack => [0, 1],     :args => [:literal],                       :control_flow => :next
    opcode 14, :dup,                         :stack => [1, 2],     :args => [],                               :control_flow => :next
    opcode 15, :dup_many,                    :stack => [[0,1], [0, 1, 2]],:args => [:count],                         :control_flow => :next
    opcode 16, :ensure_return,               :stack => [1, 1],     :args => [],                               :control_flow => :raise
    opcode 17, :find_const,                  :stack => [1, 1],     :args => [:literal],                       :control_flow => :next
    opcode 18, :goto,                        :stack => [0, 0],     :args => [:location],                      :control_flow => :branch
    opcode 19, :goto_if_equal,               :stack => [2, 0],     :args => [:location],                      :control_flow => :branch
    opcode 20, :goto_if_false,               :stack => [1, 0],     :args => [:location],                      :control_flow => :branch
    opcode 21, :goto_if_nil,                 :stack => [1, 0],     :args => [:location],                      :control_flow => :branch
    opcode 22, :goto_if_not_equal,           :stack => [2, 0],     :args => [:location],                      :control_flow => :branch
    opcode 23, :goto_if_not_nil,             :stack => [1, 0],     :args => [:location],                      :control_flow => :branch
    opcode 24, :goto_if_not_undefined,       :stack => [1, 0],     :args => [:location],                      :control_flow => :branch
    opcode 25, :goto_if_true,                :stack => [1, 0],     :args => [:location],                      :control_flow => :branch
    opcode 26, :goto_if_undefined,           :stack => [1, 0],     :args => [:location],                      :control_flow => :branch
    opcode 27, :instance_of,                 :stack => [2, 1],     :args => [],                               :control_flow => :next
    opcode 28, :invoke_primitive,            :stack => [[0,2], 1], :args => [:literal, :count],               :control_flow => :next
    opcode 29, :kind_of,                     :stack => [2, 1],     :args => [],                               :control_flow => :next
    opcode 30, :make_array,                  :stack => [[0,1], 1], :args => [:count],                         :control_flow => :next
    opcode 31, :move_down,                   :stack => [[0,1], [0, 1, 1]],:args => [:positions],                     :control_flow => :next
    opcode 32, :noop,                        :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 33, :object_to_s,                 :stack => [1, 1],     :args => [:literal],                       :control_flow => :send
    opcode 34, :passed_arg,                  :stack => [0, 1],     :args => [:index],                         :control_flow => :next
    opcode 35, :passed_blockarg,             :stack => [0, 1],     :args => [:count],                         :control_flow => :next
    opcode 36, :pop,                         :stack => [1, 0],     :args => [],                               :control_flow => :next
    opcode 37, :pop_many,                    :stack => [[0,1], 0], :args => [:count],                         :control_flow => :next
    opcode 38, :pop_unwind,                  :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 39, :push_block,                  :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 40, :push_block_arg,              :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 41, :push_const,                  :stack => [0, 1],     :args => [:literal],                       :control_flow => :next
    opcode 42, :push_cpath_top,              :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 43, :push_current_exception,      :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 44, :push_exception_state,        :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 45, :push_false,                  :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 46, :push_has_block,              :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 47, :push_int,                    :stack => [0, 1],     :args => [:number],                        :control_flow => :next
    opcode 48, :push_ivar,                   :stack => [0, 1],     :args => [:literal],                       :control_flow => :next
    opcode 49, :push_literal,                :stack => [0, 1],     :args => [:literal],                       :control_flow => :next
    opcode 50, :push_local,                  :stack => [0, 1],     :args => [:local],                         :control_flow => :next
    opcode 51, :push_local_depth,            :stack => [0, 1],     :args => [:depth, :index],                 :control_flow => :next
    opcode 52, :push_memo,                   :stack => [1, 1],     :args => [:literal],                       :control_flow => :next
    opcode 53, :push_mirror,                 :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 54, :push_my_field,               :stack => [0, 1],     :args => [:index],                         :control_flow => :next
    opcode 55, :push_my_offset,              :stack => [0, 1],     :args => [:index],                         :control_flow => :next
    opcode 56, :push_nil,                    :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 57, :push_proc,                   :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 58, :push_rubinius,               :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 59, :push_scope,                  :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 60, :push_self,                   :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 61, :push_stack_local,            :stack => [0, 1],     :args => [:which],                         :control_flow => :next
    opcode 62, :push_true,                   :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 63, :push_type,                   :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 64, :push_undef,                  :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 65, :push_variables,              :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 66, :raise_break,                 :stack => [1, 1],     :args => [],                               :control_flow => :raise
    opcode 67, :raise_exc,                   :stack => [1, 0],     :args => [],                               :control_flow => :raise
    opcode 68, :raise_return,                :stack => [1, 1],     :args => [],                               :control_flow => :raise
    opcode 69, :reraise,                     :stack => [0, 0],     :args => [],                               :control_flow => :raise
    opcode 70, :restore_exception_state,     :stack => [1, 0],     :args => [],                               :control_flow => :next
    opcode 71, :ret,                         :stack => [1, 1],     :args => [],                               :control_flow => :return
    opcode 72, :rotate,                      :stack => [[0,1], [0, 1, 1]],:args => [:count],                         :control_flow => :next
    opcode 73, :run_exception,               :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 74, :send_method,                 :stack => [1, 1],     :args => [:literal],                       :control_flow => :send
    opcode 75, :send_stack,                  :stack => [[1,2], 1], :args => [:literal, :count],               :control_flow => :send
    opcode 76, :send_stack_with_block,       :stack => [[2,2], 1], :args => [:literal, :count],               :control_flow => :send
    opcode 77, :send_stack_with_splat,       :stack => [[3,2], 1], :args => [:literal, :count],               :control_flow => :send
    opcode 78, :send_super_stack_with_block, :stack => [[1,2], 1], :args => [:literal, :count],               :control_flow => :send
    opcode 79, :send_super_stack_with_splat, :stack => [[2,2], 1], :args => [:literal, :count],               :control_flow => :send
    opcode 80, :send_vcall,                  :stack => [0, 1],     :args => [:literal],                       :control_flow => :send
    opcode 81, :set_call_flags,              :stack => [0, 0],     :args => [:flags],                         :control_flow => :next
    opcode 82, :set_const,                   :stack => [1, 1],     :args => [:literal],                       :control_flow => :next
    opcode 83, :set_const_at,                :stack => [2, 1],     :args => [:literal],                       :control_flow => :next
    opcode 84, :set_ivar,                    :stack => [1, 1],     :args => [:literal],                       :control_flow => :next
    opcode 85, :set_local,                   :stack => [1, 1],     :args => [:local],                         :control_flow => :next
    opcode 86, :set_local_depth,             :stack => [1, 1],     :args => [:depth, :index],                 :control_flow => :next
    opcode 87, :set_stack_local,             :stack => [1, 1],     :args => [:which],                         :control_flow => :next
    opcode 88, :setup_unwind,                :stack => [0, 0],     :args => [:ip, :type],                     :control_flow => :handler
    opcode 89, :shift_array,                 :stack => [1, 2],     :args => [],                               :control_flow => :next
    opcode 90, :store_my_field,              :stack => [1, 1],     :args => [:index],                         :control_flow => :next
    opcode 91, :string_append,               :stack => [2, 1],     :args => [],                               :control_flow => :next
    opcode 92, :string_build,                :stack => [[0,1], 1], :args => [:count],                         :control_flow => :next
    opcode 93, :string_dup,                  :stack => [1, 1],     :args => [],                               :control_flow => :next
    opcode 94, :swap,                        :stack => [2, 2],     :args => [],                               :control_flow => :next
    opcode 95, :yield_debugger,              :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 96, :yield_splat,                 :stack => [[1,1], 1], :args => [:count],                         :control_flow => :yield
    opcode 97, :yield_stack,                 :stack => [[0,1], 1], :args => [:count],                         :control_flow => :yield
    opcode 98, :zsuper,                      :stack => [1, 1],     :args => [:literal],                       :control_flow => :next
  end
end

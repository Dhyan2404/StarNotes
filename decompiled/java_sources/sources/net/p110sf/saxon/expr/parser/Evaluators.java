package net.p110sf.saxon.expr.parser;

import net.p110sf.saxon.expr.parser.Evaluator;

/* loaded from: classes11.dex */
public class Evaluators {
    public static final int CALL_EVALUATE_OPTIONAL_ITEM = 7;
    public static final int CALL_EVALUATE_SINGLE_ITEM = 16;
    public static final int EVALUATE_AND_MATERIALIZE_VARIABLE = 6;
    public static final int EVALUATE_LITERAL = 0;
    public static final int EVALUATE_SUPPLIED_PARAMETER = 14;
    public static final int EVALUATE_VARIABLE = 1;
    public static final int ITERATE_AND_MATERIALIZE = 8;
    public static final int LAZY_TAIL_EXPRESSION = 10;
    public static final int MAKE_CLOSURE = 3;
    public static final int MAKE_INDEXED_VARIABLE = 12;
    public static final int MAKE_MEMO_CLOSURE = 4;
    public static final int MAKE_SINGLETON_CLOSURE = 13;
    public static final int PROCESS = 9;
    public static final int RETURN_EMPTY_SEQUENCE = 5;
    public static final int SHARED_APPEND_EXPRESSION = 11;
    public static final int STREAMING_ARGUMENT = 15;
    public static final int UNDECIDED = -1;

    public static Evaluator getEvaluator(int i) {
        switch (i) {
            case -1:
                return Evaluator.EagerSequence.INSTANCE;
            case 0:
                return Evaluator.Literal.INSTANCE;
            case 1:
                return Evaluator.Variable.INSTANCE;
            case 2:
            default:
                return Evaluator.EagerSequence.INSTANCE;
            case 3:
                return Evaluator.LazySequence.INSTANCE;
            case 4:
                return Evaluator.MemoClosureEvaluator.INSTANCE;
            case 5:
                return Evaluator.EmptySequenceEvaluator.INSTANCE;
            case 6:
                return Evaluator.Variable.INSTANCE;
            case 7:
                return Evaluator.OptionalItem.INSTANCE;
            case 8:
                return Evaluator.EagerSequence.INSTANCE;
            case 9:
                return Evaluator.Process.INSTANCE;
            case 10:
                return Evaluator.LazyTail.INSTANCE;
            case 11:
                return Evaluator.SharedAppend.INSTANCE;
            case 12:
                return Evaluator.MakeIndexedVariable.INSTANCE;
            case 13:
                return Evaluator.SingletonClosure.INSTANCE;
            case 14:
                return Evaluator.SuppliedParameter.INSTANCE;
            case 15:
                return Evaluator.StreamingArgument.INSTANCE;
            case 16:
                return Evaluator.SingleItem.INSTANCE;
        }
    }
}

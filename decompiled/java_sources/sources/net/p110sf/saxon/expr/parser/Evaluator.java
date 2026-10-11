package net.p110sf.saxon.expr.parser;

import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.SequenceCollector;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.SuppliedParameterReference;
import net.p110sf.saxon.expr.TailExpression;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.ma.zeno.ZenoSequence;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerRange;
import net.p110sf.saxon.value.MemoClosure;

/* loaded from: classes11.dex */
public abstract class Evaluator {

    /* loaded from: classes11.dex */
    public static final class EagerSequence extends Evaluator {
        public static EagerSequence INSTANCE = new EagerSequence();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            try {
                return SequenceTool.toGroundedValue(expression.iterate(xPathContext));
            } catch (UncheckedXPathException e) {
                throw e.getXPathException();
            }
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 8;
        }
    }

    /* loaded from: classes11.dex */
    public static final class EmptySequenceEvaluator extends Evaluator {
        public static final EmptySequenceEvaluator INSTANCE = new EmptySequenceEvaluator();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) {
            return EmptySequence.getInstance();
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 5;
        }
    }

    /* loaded from: classes11.dex */
    public static final class LazySequence extends Evaluator {
        public static final LazySequence INSTANCE = new LazySequence();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            return new net.p110sf.saxon.om.LazySequence(expression.iterate(xPathContext));
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 3;
        }
    }

    /* loaded from: classes11.dex */
    public static final class LazyTail extends Evaluator {
        public static final LazyTail INSTANCE = new LazyTail();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            TailExpression tailExpression = (TailExpression) expression;
            Sequence evaluate = Variable.INSTANCE.evaluate((VariableReference) tailExpression.getBaseExpression(), xPathContext);
            if (evaluate instanceof MemoClosure) {
                evaluate = SequenceTool.toGroundedValue(evaluate.iterate());
            }
            if (!(evaluate instanceof IntegerRange)) {
                if (!(evaluate instanceof GroundedValue)) {
                    return new MemoClosure(tailExpression, xPathContext);
                }
                GroundedValue groundedValue = (GroundedValue) evaluate;
                return groundedValue.subsequence(tailExpression.getStart() - 1, (groundedValue.getLength() - tailExpression.getStart()) + 1);
            }
            IntegerRange integerRange = (IntegerRange) evaluate;
            long step = integerRange.getStep();
            long start = integerRange.getStart() + ((tailExpression.getStart() - 1) * step);
            long end = integerRange.getEnd();
            return start == end ? Int64Value.makeIntegerValue(end) : start > end ? EmptySequence.getInstance() : new IntegerRange(start, step, end);
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 10;
        }
    }

    /* loaded from: classes11.dex */
    public static final class Literal extends Evaluator {
        public static Literal INSTANCE = new Literal();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) {
            return ((net.p110sf.saxon.expr.Literal) expression).getGroundedValue();
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 0;
        }
    }

    /* loaded from: classes11.dex */
    public static final class MakeIndexedVariable extends Evaluator {
        public static final MakeIndexedVariable INSTANCE = new MakeIndexedVariable();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            return xPathContext.getConfiguration().obtainOptimizer().makeIndexedValue(expression.iterate(xPathContext));
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 12;
        }
    }

    /* loaded from: classes11.dex */
    public static final class MemoClosureEvaluator extends Evaluator {
        public static final MemoClosureEvaluator INSTANCE = new MemoClosureEvaluator();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            return new MemoClosure(expression, xPathContext);
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 4;
        }
    }

    /* loaded from: classes11.dex */
    public static final class OptionalItem extends Evaluator {
        public static final OptionalItem INSTANCE = new OptionalItem();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            Item evaluateItem = expression.evaluateItem(xPathContext);
            return evaluateItem == null ? EmptySequence.getInstance() : evaluateItem;
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 7;
        }
    }

    /* loaded from: classes11.dex */
    public static final class Process extends Evaluator {
        public static final Process INSTANCE = new Process();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            SequenceCollector allocateSequenceOutputter = xPathContext.getController().allocateSequenceOutputter();
            ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(allocateSequenceOutputter);
            complexContentOutputter.open();
            expression.process(complexContentOutputter, xPathContext);
            complexContentOutputter.close();
            Sequence sequence = allocateSequenceOutputter.getSequence();
            allocateSequenceOutputter.reset();
            return sequence;
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 9;
        }
    }

    /* loaded from: classes11.dex */
    public static final class SharedAppend extends Evaluator {
        public static final SharedAppend INSTANCE = new SharedAppend();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            try {
                if (!(expression instanceof Block)) {
                    return SequenceTool.toGroundedValue(expression.iterate(xPathContext));
                }
                Operand[] operanda = ((Block) expression).getOperanda();
                ZenoSequence zenoSequence = new ZenoSequence();
                for (Operand operand : operanda) {
                    Expression childExpression = operand.getChildExpression();
                    if (childExpression instanceof VariableReference) {
                        zenoSequence = zenoSequence.appendSequence(((VariableReference) childExpression).evaluateVariable(xPathContext).materialize());
                    } else {
                        SequenceIterator iterate = childExpression.iterate(xPathContext);
                        while (true) {
                            Item next = iterate.next();
                            if (next != null) {
                                zenoSequence = zenoSequence.append(next);
                            }
                        }
                    }
                }
                return zenoSequence;
            } catch (UncheckedXPathException e) {
                throw e.getXPathException();
            }
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 11;
        }
    }

    /* loaded from: classes11.dex */
    public static final class SingleItem extends Evaluator {
        public static final SingleItem INSTANCE = new SingleItem();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 16;
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Item evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            return expression.evaluateItem(xPathContext);
        }
    }

    /* loaded from: classes11.dex */
    public static final class SingletonClosure extends Evaluator {
        public static final SingletonClosure INSTANCE = new SingletonClosure();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            return new net.p110sf.saxon.value.SingletonClosure(expression, xPathContext);
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 13;
        }
    }

    /* loaded from: classes11.dex */
    public static final class StreamingArgument extends Evaluator {
        public static final StreamingArgument INSTANCE = new StreamingArgument();

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            return xPathContext.getConfiguration().obtainOptimizer().evaluateStreamingArgument(expression, xPathContext);
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 15;
        }
    }

    /* loaded from: classes11.dex */
    public static final class SuppliedParameter extends Evaluator {
        public static final SuppliedParameter INSTANCE = new SuppliedParameter();

        /* renamed from: a */
        public static final /* synthetic */ boolean f99910a = false;

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            try {
                return ((SuppliedParameterReference) expression).evaluateVariable(xPathContext);
            } catch (ClassCastException unused) {
                return LazySequence.INSTANCE.evaluate(expression, xPathContext);
            }
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 14;
        }
    }

    /* loaded from: classes11.dex */
    public static final class Variable extends Evaluator {
        public static Variable INSTANCE = new Variable();

        /* renamed from: a */
        public static final /* synthetic */ boolean f99911a = false;

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException {
            try {
                return ((VariableReference) expression).evaluateVariable(xPathContext);
            } catch (ClassCastException unused) {
                return LazySequence.INSTANCE.evaluate(expression, xPathContext);
            }
        }

        @Override // net.p110sf.saxon.expr.parser.Evaluator
        public int getCode() {
            return 1;
        }
    }

    public abstract Sequence evaluate(Expression expression, XPathContext xPathContext) throws XPathException;

    public abstract int getCode();
}

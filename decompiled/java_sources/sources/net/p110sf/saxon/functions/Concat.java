package net.p110sf.saxon.functions;

import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Predicate;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.oper.OperandArray;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.functions.Concat;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.str.UniStringConsumer;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Concat extends SystemFunction implements PushableFunction {

    /* renamed from: net.sf.saxon.functions.Concat$a */
    /* loaded from: classes11.dex */
    public class C18346a extends SystemFunctionCall.Optimized {
        public C18346a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.Expression
        public UnicodeString evaluateAsString(XPathContext xPathContext) throws XPathException {
            UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
            Iterator<Operand> it2 = operands().iterator();
            while (it2.hasNext()) {
                SequenceIterator iterate = it2.next().getChildExpression().iterate(xPathContext);
                while (true) {
                    Item next = iterate.next();
                    if (next != null) {
                        unicodeBuilder.accept(next.getUnicodeStringValue());
                    }
                }
            }
            return unicodeBuilder.toUnicodeString();
        }

        @Override // net.p110sf.saxon.expr.Expression
        public Item evaluateItem(XPathContext xPathContext) throws XPathException {
            return new StringValue(evaluateAsString(xPathContext));
        }
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m62963b(Expression expression) {
        return expression.getCardinality() == 16384 && expression.getItemType() == BuiltInAtomicType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "ConcatCompiler";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction, net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        SequenceType[] sequenceTypeArr = new SequenceType[getArity()];
        Arrays.fill(sequenceTypeArr, SequenceType.ATOMIC_SEQUENCE);
        return new SpecificFunctionType(sequenceTypeArr, SequenceType.SINGLE_STRING);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public SequenceType getRequiredType(int i) {
        return getDetails().argumentTypes[0];
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        if (OperandArray.every(expressionArr, new Predicate() { // from class: com.sunia.HTREnginev2.x7e
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m62963b;
                m62963b = Concat.m62963b((Expression) obj);
                return m62963b;
            }
        })) {
            expressionVisitor.getStaticContext().issueWarning("Did you intend to apply string concatenation to boolean operands? Perhaps you intended 'or' rather than '||'. To suppress this warning, use string() on the arguments.", expressionArr[0].getLocation());
        }
        return new C18346a(this, expressionArr);
    }

    @Override // net.p110sf.saxon.functions.PushableFunction
    public void process(Outputter outputter, XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        UniStringConsumer stringReceiver = outputter.getStringReceiver(false, Loc.NONE);
        stringReceiver.open();
        for (Sequence sequence : sequenceArr) {
            SequenceIterator iterate = sequence.iterate();
            while (true) {
                Item next = iterate.next();
                if (next != null) {
                    stringReceiver.accept(next.getUnicodeStringValue());
                }
            }
        }
        stringReceiver.close();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Sequence resultIfEmpty(int i) {
        return null;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        for (Sequence sequence : sequenceArr) {
            SequenceIterator iterate = sequence.iterate();
            while (true) {
                Item next = iterate.next();
                if (next != null) {
                    unicodeBuilder.accept(next.getUnicodeStringValue());
                }
            }
        }
        return new StringValue(unicodeBuilder.toUnicodeString());
    }
}

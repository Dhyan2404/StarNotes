package net.p110sf.saxon.functions;

import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.CastExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UniStringConsumer;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class StringJoin extends FoldingFunction implements PushableFunction {

    /* renamed from: h */
    public boolean f100307h;

    /* renamed from: net.sf.saxon.functions.StringJoin$a */
    /* loaded from: classes11.dex */
    public static class C18373a implements Fold {

        /* renamed from: b */
        public final UnicodeString f100309b;

        /* renamed from: d */
        public final boolean f100311d;

        /* renamed from: a */
        public int f100308a = 0;

        /* renamed from: c */
        public final UnicodeBuilder f100310c = new UnicodeBuilder();

        public C18373a(UnicodeString unicodeString, boolean z) {
            this.f100309b = unicodeString;
            this.f100311d = z;
        }

        @Override // net.p110sf.saxon.functions.Fold
        public boolean isFinished() {
            return false;
        }

        @Override // net.p110sf.saxon.functions.Fold
        public void processItem(Item item) {
            if (this.f100308a != 0) {
                this.f100310c.accept(this.f100309b).accept(item.getUnicodeStringValue());
            } else {
                this.f100310c.append(item.getUnicodeStringValue());
                this.f100308a = 1;
            }
        }

        @Override // net.p110sf.saxon.functions.Fold
        public Sequence result() {
            return (this.f100308a == 0 && this.f100311d) ? EmptySequence.getInstance() : new StringValue(this.f100310c.toUnicodeString());
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public boolean equals(Object obj) {
        return (obj instanceof StringJoin) && super.equals(obj) && this.f100307h == ((StringJoin) obj).f100307h;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getCardinality(Expression[] expressionArr) {
        return this.f100307h ? 24576 : 16384;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "StringJoinCompiler";
    }

    @Override // net.p110sf.saxon.functions.FoldingFunction
    public Fold getFold(XPathContext xPathContext, Sequence... sequenceArr) throws XPathException {
        UnicodeString emptyUnicodeString = EmptyUnicodeString.getInstance();
        if (sequenceArr.length > 0) {
            emptyUnicodeString = sequenceArr[0].head().getUnicodeStringValue();
        }
        return new C18373a(emptyUnicodeString, this.f100307h);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int hashCode() {
        return (this.f100307h ? PointConstant.MAX_POINT_READ_LENGTH_V1 : 0) | super.hashCode();
    }

    public boolean isReturnEmptyIfEmpty() {
        return this.f100307h;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        Expression makeOptimizedFunctionCall = super.makeOptimizedFunctionCall(expressionVisitor, contextItemStaticInfo, expressionArr);
        if (makeOptimizedFunctionCall != null) {
            return makeOptimizedFunctionCall;
        }
        int cardinality = expressionArr[0].getCardinality();
        if (Cardinality.allowsMany(cardinality)) {
            return null;
        }
        return (Cardinality.allowsZero(cardinality) || expressionArr[0].getItemType().getPrimitiveItemType() != BuiltInAtomicType.STRING) ? this.f100307h ? new CastExpression(expressionArr[0], BuiltInAtomicType.STRING, true) : SystemFunction.makeCall("string", getRetainedStaticContext(), expressionArr[0]) : expressionArr[0];
    }

    @Override // net.p110sf.saxon.functions.PushableFunction
    public void process(Outputter outputter, XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        boolean z = true;
        UnicodeString unicodeStringValue = sequenceArr.length > 1 ? sequenceArr[1].head().getUnicodeStringValue() : EmptyUnicodeString.getInstance();
        UniStringConsumer stringReceiver = outputter.getStringReceiver(false, Loc.NONE);
        stringReceiver.open();
        SequenceIterator iterate = sequenceArr[0].iterate();
        while (true) {
            try {
                Item next = iterate.next();
                if (next == null) {
                    stringReceiver.close();
                    return;
                }
                if (z) {
                    z = false;
                } else {
                    stringReceiver.accept(unicodeStringValue);
                }
                stringReceiver.accept(next.getUnicodeStringValue());
            } catch (UncheckedXPathException e) {
                throw e.getXPathException();
            }
        }
    }

    public void setReturnEmptyIfEmpty(boolean z) {
        this.f100307h = z;
    }
}

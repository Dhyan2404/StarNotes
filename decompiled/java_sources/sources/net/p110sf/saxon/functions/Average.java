package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.ArithmeticExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.DayTimeDurationValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.DurationValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.YearMonthDurationValue;

/* loaded from: classes11.dex */
public class Average extends FoldingFunction {

    /* renamed from: net.sf.saxon.functions.Average$a */
    /* loaded from: classes11.dex */
    public class C18342a implements Fold {

        /* renamed from: a */
        public final XPathContext f100149a;

        /* renamed from: b */
        public AtomicValue f100150b;

        /* renamed from: d */
        public final ConversionRules f100152d;

        /* renamed from: e */
        public final StringConverter f100153e;

        /* renamed from: c */
        public boolean f100151c = true;

        /* renamed from: f */
        public int f100154f = 0;

        public C18342a(XPathContext xPathContext) {
            this.f100149a = xPathContext;
            ConversionRules conversionRules = xPathContext.getConfiguration().getConversionRules();
            this.f100152d = conversionRules;
            this.f100153e = BuiltInAtomicType.DOUBLE.getStringConverter(conversionRules);
        }

        @Override // net.p110sf.saxon.functions.Fold
        public boolean isFinished() {
            AtomicValue atomicValue = this.f100150b;
            return (atomicValue instanceof DoubleValue) && atomicValue.isNaN();
        }

        @Override // net.p110sf.saxon.functions.Fold
        public void processItem(Item item) throws XPathException {
            AtomicValue atomicValue = (AtomicValue) item;
            if (atomicValue.isUntypedAtomic()) {
                atomicValue = this.f100153e.convert(atomicValue).asAtomic();
            }
            this.f100154f++;
            if (this.f100151c) {
                if ((atomicValue instanceof NumericValue) || (atomicValue instanceof DayTimeDurationValue) || (atomicValue instanceof YearMonthDurationValue)) {
                    this.f100150b = atomicValue;
                    this.f100151c = false;
                    return;
                } else {
                    if (atomicValue instanceof DurationValue) {
                        throw new XPathException("Input to avg() contains a duration (" + Err.depict(atomicValue) + ") that is neither an xs:dayTimeDuration nor an xs:yearMonthDuration", "FORG0006");
                    }
                    throw new XPathException("Input to avg() contains a value (" + Err.depict(atomicValue) + ") that is neither numeric, nor a duration", "FORG0006");
                }
            }
            AtomicValue atomicValue2 = this.f100150b;
            if (atomicValue2 instanceof NumericValue) {
                if (!(atomicValue instanceof NumericValue)) {
                    throw new XPathException("Input to avg() contains a mix of numeric and non-numeric values", "FORG0006");
                }
                this.f100150b = ArithmeticExpression.compute(atomicValue2, 0, atomicValue, this.f100149a);
            } else {
                if (!(atomicValue2 instanceof DurationValue)) {
                    throw new XPathException("Input to avg() contains a value (" + Err.depict(this.f100150b) + ") that is neither numeric, nor a duration", "FORG0006");
                }
                if (!(atomicValue instanceof DurationValue)) {
                    throw new XPathException("Input to avg() contains a mix of duration and non-duration values", "FORG0006");
                }
                try {
                    this.f100150b = ((DurationValue) atomicValue2).add((DurationValue) atomicValue);
                } catch (XPathException e) {
                    if ("XPTY0004".equals(e.getErrorCodeLocalPart())) {
                        e.setErrorCode("FORG0006");
                    }
                    throw e;
                }
            }
        }

        @Override // net.p110sf.saxon.functions.Fold
        public Sequence result() throws XPathException {
            if (this.f100151c) {
                return EmptySequence.getInstance();
            }
            AtomicValue atomicValue = this.f100150b;
            return atomicValue instanceof NumericValue ? ArithmeticExpression.compute(atomicValue, 3, new Int64Value(this.f100154f), this.f100149a) : ((DurationValue) atomicValue).divide(this.f100154f);
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getCardinality(Expression[] expressionArr) {
        if (Cardinality.allowsZero(expressionArr[0].getCardinality())) {
            return super.getCardinality(expressionArr);
        }
        return 16384;
    }

    @Override // net.p110sf.saxon.functions.FoldingFunction
    public Fold getFold(XPathContext xPathContext, Sequence... sequenceArr) {
        return new C18342a(xPathContext);
    }
}

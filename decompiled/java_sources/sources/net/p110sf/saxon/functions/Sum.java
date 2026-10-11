package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.ArithmeticExpression;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.Sum;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.DayTimeDurationValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.DurationValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.YearMonthDurationValue;

/* loaded from: classes11.dex */
public class Sum extends FoldingFunction {

    /* renamed from: net.sf.saxon.functions.Sum$a */
    /* loaded from: classes11.dex */
    public static class C18374a implements Fold {

        /* renamed from: a */
        public final XPathContext f100312a;

        /* renamed from: b */
        public final AtomicValue f100313b;

        /* renamed from: c */
        public AtomicValue f100314c;

        /* renamed from: d */
        public boolean f100315d = true;

        /* renamed from: e */
        public final ConversionRules f100316e;

        /* renamed from: f */
        public final StringConverter f100317f;

        public C18374a(XPathContext xPathContext, AtomicValue atomicValue) {
            this.f100312a = xPathContext;
            this.f100313b = atomicValue;
            ConversionRules conversionRules = xPathContext.getConfiguration().getConversionRules();
            this.f100316e = conversionRules;
            this.f100317f = BuiltInAtomicType.DOUBLE.getStringConverter(conversionRules);
        }

        @Override // net.p110sf.saxon.functions.Fold
        public boolean isFinished() {
            AtomicValue atomicValue = this.f100314c;
            return (atomicValue instanceof DoubleValue) && atomicValue.isNaN();
        }

        @Override // net.p110sf.saxon.functions.Fold
        public void processItem(Item item) throws XPathException {
            AtomicValue atomicValue = (AtomicValue) item;
            if (this.f100315d) {
                this.f100315d = false;
                if (atomicValue.isUntypedAtomic()) {
                    this.f100314c = this.f100317f.convert(atomicValue).asAtomic();
                    return;
                }
                if ((atomicValue instanceof NumericValue) || (atomicValue instanceof DayTimeDurationValue) || (atomicValue instanceof YearMonthDurationValue)) {
                    this.f100314c = atomicValue;
                    return;
                }
                XPathException xPathException = new XPathException("Input to sum() contains a value of type " + atomicValue.getPrimitiveType().getDisplayName() + " which is neither numeric, nor a duration");
                xPathException.setXPathContext(this.f100312a);
                xPathException.setErrorCode("FORG0006");
                throw xPathException;
            }
            AtomicValue atomicValue2 = this.f100314c;
            if (atomicValue2 instanceof NumericValue) {
                if (atomicValue.isUntypedAtomic()) {
                    atomicValue = this.f100317f.convert(atomicValue).asAtomic();
                } else if (!(atomicValue instanceof NumericValue)) {
                    XPathException xPathException2 = new XPathException("Input to sum() contains a mix of numeric and non-numeric values");
                    xPathException2.setXPathContext(this.f100312a);
                    xPathException2.setErrorCode("FORG0006");
                    throw xPathException2;
                }
                this.f100314c = ArithmeticExpression.compute(this.f100314c, 0, atomicValue, this.f100312a);
                return;
            }
            if (!(atomicValue2 instanceof DurationValue)) {
                XPathException xPathException3 = new XPathException("Input to sum() contains a value of type " + this.f100314c.getPrimitiveType().getDisplayName() + " which is neither numeric, nor a duration");
                xPathException3.setXPathContext(this.f100312a);
                xPathException3.setErrorCode("FORG0006");
                throw xPathException3;
            }
            if (!(atomicValue2 instanceof DayTimeDurationValue) && !(atomicValue2 instanceof YearMonthDurationValue)) {
                XPathException xPathException4 = new XPathException("Input to sum() contains a duration that is neither a dayTimeDuration nor a yearMonthDuration");
                xPathException4.setXPathContext(this.f100312a);
                xPathException4.setErrorCode("FORG0006");
                throw xPathException4;
            }
            if (atomicValue instanceof DurationValue) {
                this.f100314c = ((DurationValue) atomicValue2).add((DurationValue) atomicValue);
                return;
            }
            XPathException xPathException5 = new XPathException("Input to sum() contains a mix of duration and non-duration values");
            xPathException5.setXPathContext(this.f100312a);
            xPathException5.setErrorCode("FORG0006");
            throw xPathException5;
        }

        @Override // net.p110sf.saxon.functions.Fold
        public Sequence result() {
            return this.f100315d ? SequenceTool.itemOrEmpty(this.f100313b) : this.f100314c;
        }
    }

    public static AtomicValue total(SequenceIterator sequenceIterator, XPathContext xPathContext, Location location) throws XPathException {
        try {
            final C18374a c18374a = new C18374a(xPathContext, null);
            SequenceTool.supply(sequenceIterator, new ItemConsumer() { // from class: com.sunia.HTREnginev2.s5n
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    Sum.C18374a.this.processItem(item);
                }
            });
            return (AtomicValue) c18374a.result().head();
        } catch (XPathException e) {
            e.maybeSetLocation(location);
            throw e;
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getCardinality(Expression[] expressionArr) {
        return (getArity() == 1 || expressionArr[1].getCardinality() == 1) ? 16384 : 24576;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "SumCompiler";
    }

    @Override // net.p110sf.saxon.functions.FoldingFunction
    public Fold getFold(XPathContext xPathContext, Sequence... sequenceArr) throws XPathException {
        return sequenceArr.length > 0 ? new C18374a(xPathContext, (AtomicValue) sequenceArr[0].head()) : new C18374a(xPathContext, Int64Value.ZERO);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public ItemType getResultItemType(Expression[] expressionArr) {
        TypeHierarchy typeHierarchy = getRetainedStaticContext().getConfiguration().getTypeHierarchy();
        ItemType atomizedItemType = Atomizer.getAtomizedItemType(expressionArr[0], false, typeHierarchy);
        if (atomizedItemType.equals(BuiltInAtomicType.UNTYPED_ATOMIC)) {
            atomizedItemType = BuiltInAtomicType.DOUBLE;
        }
        return Cardinality.allowsZero(expressionArr[0].getCardinality()) ? getArity() == 1 ? Type.getCommonSuperType(atomizedItemType, BuiltInAtomicType.INTEGER, typeHierarchy) : Type.getCommonSuperType(atomizedItemType, expressionArr[1].getItemType(), typeHierarchy) : atomizedItemType.getPrimitiveItemType();
    }
}

package net.p110sf.saxon.expr;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.motion.MotionUtils;
import com.miui.penengine.p015e.C6997f;
import java.math.BigDecimal;
import java.math.RoundingMode;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.CalendarValue;
import net.p110sf.saxon.value.DecimalValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.DurationValue;
import net.p110sf.saxon.value.FloatValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public abstract class Calculator {
    public static final Calculator[] DATETIME_DATETIME;
    public static final Calculator[] DATETIME_DURATION;
    public static final Calculator[] DECIMAL_DECIMAL;
    public static final Calculator[] DECIMAL_DOUBLE;
    public static final Calculator[] DECIMAL_FLOAT;
    public static final Calculator[] DECIMAL_INTEGER;
    public static final int DIV = 3;
    public static final Calculator[] DOUBLE_DECIMAL;
    public static final Calculator[] DOUBLE_DOUBLE;
    public static final Calculator[] DOUBLE_FLOAT;
    public static final Calculator[] DOUBLE_INTEGER;
    public static final Calculator[] DURATION_DATETIME;
    public static final Calculator[] DURATION_DURATION;
    public static final Calculator[] DURATION_NUMERIC;
    public static final Calculator[] FLOAT_DECIMAL;
    public static final Calculator[] FLOAT_DOUBLE;
    public static final Calculator[] FLOAT_FLOAT;
    public static final Calculator[] FLOAT_INTEGER;
    public static final int IDIV = 5;
    public static final Calculator[] INTEGER_DECIMAL;
    public static final Calculator[] INTEGER_DOUBLE;
    public static final Calculator[] INTEGER_FLOAT;
    public static final Calculator[] INTEGER_INTEGER;
    public static final int MINUS = 1;
    public static final int MOD = 4;
    public static final Calculator[] NUMERIC_DURATION;
    public static final int PLUS = 0;
    public static final int TIMES = 2;

    /* renamed from: b */
    public static final IntHashMap<Calculator[]> f99194b;

    /* renamed from: c */
    public static final IntHashMap<String> f99195c;

    /* renamed from: a */
    public static final int[] f99193a = {15, 16, 17, 18, 19, 56};
    public static final Calculator[] ANY_ANY = {new AnyPlusAny(), new AnyMinusAny(), new AnyTimesAny(), new AnyDivAny(), new AnyModAny(), new AnyIdivAny()};

    /* loaded from: classes11.dex */
    public static class AnyDivAny extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            Calculator calculator = Calculator.getCalculator(atomicValue.getItemType().getPrimitiveType(), atomicValue2.getItemType().getPrimitiveType(), 3, true);
            if (calculator != null) {
                return calculator.compute(atomicValue, atomicValue2, xPathContext);
            }
            throw new XPathException("Unsuitable types for div operation (" + Type.displayTypeName(atomicValue) + ", " + Type.displayTypeName(atomicValue2) + MotionUtils.f31762d, "XPTY0004", xPathContext);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.ANY_ATOMIC;
        }
    }

    /* loaded from: classes11.dex */
    public static class AnyIdivAny extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            Calculator calculator = Calculator.getCalculator(atomicValue.getItemType().getPrimitiveType(), atomicValue2.getItemType().getPrimitiveType(), 5, true);
            if (calculator != null) {
                return calculator.compute(atomicValue, atomicValue2, xPathContext);
            }
            throw new XPathException("Unsuitable types for idiv operation (" + Type.displayTypeName(atomicValue) + ", " + Type.displayTypeName(atomicValue2) + MotionUtils.f31762d, "XPTY0004", xPathContext);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.ANY_ATOMIC;
        }
    }

    /* loaded from: classes11.dex */
    public static class AnyMinusAny extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            Calculator calculator = Calculator.getCalculator(atomicValue.getItemType().getPrimitiveType(), atomicValue2.getItemType().getPrimitiveType(), 1, true);
            if (calculator != null) {
                return calculator.compute(atomicValue, atomicValue2, xPathContext);
            }
            throw new XPathException("Unsuitable types for - operation (" + Type.displayTypeName(atomicValue) + ", " + Type.displayTypeName(atomicValue2) + MotionUtils.f31762d, "XPTY0004", xPathContext);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.ANY_ATOMIC;
        }
    }

    /* loaded from: classes11.dex */
    public static class AnyModAny extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            Calculator calculator = Calculator.getCalculator(atomicValue.getItemType().getPrimitiveType(), atomicValue2.getItemType().getPrimitiveType(), 4, true);
            if (calculator != null) {
                return calculator.compute(atomicValue, atomicValue2, xPathContext);
            }
            throw new XPathException("Unsuitable types for mod operation (" + Type.displayTypeName(atomicValue) + ", " + Type.displayTypeName(atomicValue2) + MotionUtils.f31762d, "XPTY0004", xPathContext);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.ANY_ATOMIC;
        }
    }

    /* loaded from: classes11.dex */
    public static class AnyPlusAny extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            Calculator calculator = Calculator.getCalculator(atomicValue.getItemType().getPrimitiveType(), atomicValue2.getItemType().getPrimitiveType(), 0, true);
            if (calculator != null) {
                return calculator.compute(atomicValue, atomicValue2, xPathContext);
            }
            throw new XPathException("Unsuitable types for + operation (" + Type.displayTypeName(atomicValue) + ", " + Type.displayTypeName(atomicValue2) + MotionUtils.f31762d, "XPTY0004", xPathContext);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.ANY_ATOMIC;
        }
    }

    /* loaded from: classes11.dex */
    public static class AnyTimesAny extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            Calculator calculator = Calculator.getCalculator(atomicValue.getItemType().getPrimitiveType(), atomicValue2.getItemType().getPrimitiveType(), 2, true);
            if (calculator != null) {
                return calculator.compute(atomicValue, atomicValue2, xPathContext);
            }
            throw new XPathException("Unsuitable types for * operation (" + Type.displayTypeName(atomicValue) + ", " + Type.displayTypeName(atomicValue2) + MotionUtils.f31762d, "XPTY0004", xPathContext);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.ANY_ATOMIC;
        }
    }

    /* loaded from: classes11.dex */
    public static class DecimalDivDecimal extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return Calculator.decimalDivide((NumericValue) atomicValue, (NumericValue) atomicValue2);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DECIMAL;
        }
    }

    /* loaded from: classes11.dex */
    public static class DecimalIdivDecimal extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.INTEGER;
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public IntegerValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            if ((atomicValue instanceof IntegerValue) && (atomicValue2 instanceof IntegerValue)) {
                return ((IntegerValue) atomicValue).idiv((IntegerValue) atomicValue2);
            }
            BigDecimal decimalValue = ((NumericValue) atomicValue).getDecimalValue();
            BigDecimal decimalValue2 = ((NumericValue) atomicValue2).getDecimalValue();
            if (decimalValue2.signum() != 0) {
                return IntegerValue.makeIntegerValue(decimalValue.divideToIntegralValue(decimalValue2).toBigInteger());
            }
            throw new XPathException("Integer division by zero", "FOAR0001", xPathContext);
        }
    }

    /* loaded from: classes11.dex */
    public static class DecimalMinusDecimal extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((atomicValue instanceof IntegerValue) && (atomicValue2 instanceof IntegerValue)) ? ((IntegerValue) atomicValue).minus((IntegerValue) atomicValue2) : new BigDecimalValue(((NumericValue) atomicValue).getDecimalValue().subtract(((NumericValue) atomicValue2).getDecimalValue()));
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DECIMAL;
        }
    }

    /* loaded from: classes11.dex */
    public static class DecimalModDecimal extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            if ((atomicValue instanceof IntegerValue) && (atomicValue2 instanceof IntegerValue)) {
                return ((IntegerValue) atomicValue).mod((IntegerValue) atomicValue2);
            }
            NumericValue numericValue = (NumericValue) atomicValue2;
            if (numericValue.signum() != 0) {
                return new BigDecimalValue(((NumericValue) atomicValue).getDecimalValue().remainder(numericValue.getDecimalValue()));
            }
            throw new XPathException("Decimal modulo zero", "FOAR0001", xPathContext);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DECIMAL;
        }
    }

    /* loaded from: classes11.dex */
    public static class DecimalPlusDecimal extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((atomicValue instanceof IntegerValue) && (atomicValue2 instanceof IntegerValue)) ? ((IntegerValue) atomicValue).plus((IntegerValue) atomicValue2) : new BigDecimalValue(((NumericValue) atomicValue).getDecimalValue().add(((NumericValue) atomicValue2).getDecimalValue()));
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DECIMAL;
        }
    }

    /* loaded from: classes11.dex */
    public static class DecimalTimesDecimal extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((atomicValue instanceof IntegerValue) && (atomicValue2 instanceof IntegerValue)) ? ((IntegerValue) atomicValue).times((IntegerValue) atomicValue2) : new BigDecimalValue(((NumericValue) atomicValue).getDecimalValue().multiply(((NumericValue) atomicValue2).getDecimalValue()));
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DECIMAL;
        }
    }

    /* loaded from: classes11.dex */
    public static class DoubleDivDouble extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return new DoubleValue(((NumericValue) atomicValue).getDoubleValue() / ((NumericValue) atomicValue2).getDoubleValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DOUBLE;
        }
    }

    /* loaded from: classes11.dex */
    public static class DoubleMinusDouble extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return new DoubleValue(((NumericValue) atomicValue).getDoubleValue() - ((NumericValue) atomicValue2).getDoubleValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DOUBLE;
        }
    }

    /* loaded from: classes11.dex */
    public static class DoubleModDouble extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return new DoubleValue(((NumericValue) atomicValue).getDoubleValue() % ((NumericValue) atomicValue2).getDoubleValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DOUBLE;
        }
    }

    /* loaded from: classes11.dex */
    public static class DoublePlusDouble extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return new DoubleValue(((NumericValue) atomicValue).getDoubleValue() + ((NumericValue) atomicValue2).getDoubleValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DOUBLE;
        }
    }

    /* loaded from: classes11.dex */
    public static class DoubleTimesDouble extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return new DoubleValue(((NumericValue) atomicValue).getDoubleValue() * ((NumericValue) atomicValue2).getDoubleValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DOUBLE;
        }
    }

    /* loaded from: classes11.dex */
    public static class FloatDivFloat extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return new FloatValue(((NumericValue) atomicValue).getFloatValue() / ((NumericValue) atomicValue2).getFloatValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.FLOAT;
        }
    }

    /* loaded from: classes11.dex */
    public static class FloatIdivFloat extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.INTEGER;
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public IntegerValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            NumericValue numericValue = (NumericValue) atomicValue;
            float floatValue = numericValue.getFloatValue();
            NumericValue numericValue2 = (NumericValue) atomicValue2;
            float floatValue2 = numericValue2.getFloatValue();
            if (floatValue2 != 0.0d) {
                if (!Float.isNaN(floatValue) && !Float.isInfinite(floatValue)) {
                    if (!Float.isNaN(floatValue2)) {
                        float f = floatValue / floatValue2;
                        if (Float.isInfinite(f)) {
                            return new DecimalIdivDecimal().compute((AtomicValue) new BigDecimalValue(numericValue.getDecimalValue()), (AtomicValue) new BigDecimalValue(numericValue2.getDecimalValue()), xPathContext);
                        }
                        return (IntegerValue) Converter.FloatToInteger.INSTANCE.convert(new FloatValue(f)).asAtomic();
                    }
                    throw new XPathException("Second operand of idiv is NaN", "FOAR0002", xPathContext);
                }
                throw new XPathException("First operand of idiv is NaN or infinity", "FOAR0002", xPathContext);
            }
            throw new XPathException("Integer division by zero", "FOAR0001", xPathContext);
        }
    }

    /* loaded from: classes11.dex */
    public static class FloatMinusFloat extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return new FloatValue(((NumericValue) atomicValue).getFloatValue() - ((NumericValue) atomicValue2).getFloatValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.FLOAT;
        }
    }

    /* loaded from: classes11.dex */
    public static class FloatModFloat extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return new FloatValue(((NumericValue) atomicValue).getFloatValue() % ((NumericValue) atomicValue2).getFloatValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.FLOAT;
        }
    }

    /* loaded from: classes11.dex */
    public static class FloatPlusFloat extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return new FloatValue(((NumericValue) atomicValue).getFloatValue() + ((NumericValue) atomicValue2).getFloatValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.FLOAT;
        }
    }

    /* loaded from: classes11.dex */
    public static class FloatTimesFloat extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return new FloatValue(((NumericValue) atomicValue).getFloatValue() * ((NumericValue) atomicValue2).getFloatValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.FLOAT;
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerDivInteger extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((IntegerValue) atomicValue).div((IntegerValue) atomicValue2);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DECIMAL;
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerIdivInteger extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((IntegerValue) atomicValue).idiv((IntegerValue) atomicValue2);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.INTEGER;
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerMinusInteger extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((IntegerValue) atomicValue).minus((IntegerValue) atomicValue2);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.INTEGER;
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerModInteger extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((IntegerValue) atomicValue).mod((IntegerValue) atomicValue2);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.INTEGER;
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerPlusInteger extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((IntegerValue) atomicValue).plus((IntegerValue) atomicValue2);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.INTEGER;
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerTimesInteger extends Calculator {
        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((IntegerValue) atomicValue).times((IntegerValue) atomicValue2);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.INTEGER;
        }
    }

    /* renamed from: net.sf.saxon.expr.Calculator$b */
    /* loaded from: classes11.dex */
    public static class C18289b extends Calculator {
        public C18289b() {
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((CalendarValue) atomicValue).subtract((CalendarValue) atomicValue2, xPathContext);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DAY_TIME_DURATION;
        }
    }

    /* renamed from: net.sf.saxon.expr.Calculator$c */
    /* loaded from: classes11.dex */
    public static class C18290c extends Calculator {
        public C18290c() {
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((CalendarValue) atomicValue).add(((DurationValue) atomicValue2).negate());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return atomicType;
        }
    }

    /* renamed from: net.sf.saxon.expr.Calculator$d */
    /* loaded from: classes11.dex */
    public static class C18291d extends Calculator {
        public C18291d() {
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((CalendarValue) atomicValue).add((DurationValue) atomicValue2);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return atomicType;
        }
    }

    /* renamed from: net.sf.saxon.expr.Calculator$e */
    /* loaded from: classes11.dex */
    public static class C18292e extends Calculator {
        public C18292e() {
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            double doubleValue = ((NumericValue) atomicValue).getDoubleValue();
            double doubleValue2 = ((NumericValue) atomicValue2).getDoubleValue();
            if (doubleValue2 == 0.0d) {
                throw new XPathException("Integer division by zero", "FOAR0001", xPathContext);
            }
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new XPathException("First operand of idiv is NaN or infinity", "FOAR0002", xPathContext);
            }
            if (Double.isNaN(doubleValue2)) {
                throw new XPathException("Second operand of idiv is NaN", "FOAR0002", xPathContext);
            }
            return IntegerValue.fromDouble(doubleValue / doubleValue2).asAtomic();
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.INTEGER;
        }
    }

    /* renamed from: net.sf.saxon.expr.Calculator$f */
    /* loaded from: classes11.dex */
    public static class C18293f extends Calculator {
        public C18293f() {
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((DurationValue) atomicValue).divide((DurationValue) atomicValue2);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return BuiltInAtomicType.DECIMAL;
        }
    }

    /* renamed from: net.sf.saxon.expr.Calculator$g */
    /* loaded from: classes11.dex */
    public static class C18294g extends Calculator {
        public C18294g() {
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((DurationValue) atomicValue).multiply(1.0d / ((NumericValue) atomicValue2).getDoubleValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return atomicType;
        }
    }

    /* renamed from: net.sf.saxon.expr.Calculator$h */
    /* loaded from: classes11.dex */
    public static class C18295h extends Calculator {
        public C18295h() {
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((DurationValue) atomicValue).subtract((DurationValue) atomicValue2);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return atomicType;
        }
    }

    /* renamed from: net.sf.saxon.expr.Calculator$i */
    /* loaded from: classes11.dex */
    public static class C18296i extends Calculator {
        public C18296i() {
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((CalendarValue) atomicValue2).add((DurationValue) atomicValue);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return atomicType2;
        }
    }

    /* renamed from: net.sf.saxon.expr.Calculator$j */
    /* loaded from: classes11.dex */
    public static class C18297j extends Calculator {
        public C18297j() {
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return ((DurationValue) atomicValue).add((DurationValue) atomicValue2);
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return atomicType;
        }
    }

    /* renamed from: net.sf.saxon.expr.Calculator$k */
    /* loaded from: classes11.dex */
    public static class C18298k extends Calculator {
        public C18298k() {
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return atomicValue2 instanceof Int64Value ? ((DurationValue) atomicValue).multiply(((Int64Value) atomicValue2).longValue()) : atomicValue2 instanceof DecimalValue ? ((DurationValue) atomicValue).multiply(((DecimalValue) atomicValue2).getDecimalValue()) : ((DurationValue) atomicValue).multiply(((NumericValue) atomicValue2).getDoubleValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return atomicType;
        }
    }

    /* renamed from: net.sf.saxon.expr.Calculator$l */
    /* loaded from: classes11.dex */
    public static class C18299l extends Calculator {
        public C18299l() {
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
            return atomicValue instanceof Int64Value ? ((DurationValue) atomicValue2).multiply(((Int64Value) atomicValue).longValue()) : ((DurationValue) atomicValue2).multiply(((NumericValue) atomicValue).getDoubleValue());
        }

        @Override // net.p110sf.saxon.expr.Calculator
        public AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2) {
            return atomicType2;
        }
    }

    static {
        Calculator[] calculatorArr = {new DoublePlusDouble(), new DoubleMinusDouble(), new DoubleTimesDouble(), new DoubleDivDouble(), new DoubleModDouble(), new C18292e()};
        DOUBLE_DOUBLE = calculatorArr;
        DOUBLE_FLOAT = calculatorArr;
        DOUBLE_DECIMAL = calculatorArr;
        DOUBLE_INTEGER = calculatorArr;
        FLOAT_DOUBLE = calculatorArr;
        Calculator[] calculatorArr2 = {new FloatPlusFloat(), new FloatMinusFloat(), new FloatTimesFloat(), new FloatDivFloat(), new FloatModFloat(), new FloatIdivFloat()};
        FLOAT_FLOAT = calculatorArr2;
        FLOAT_DECIMAL = calculatorArr2;
        FLOAT_INTEGER = calculatorArr2;
        DECIMAL_DOUBLE = calculatorArr;
        DECIMAL_FLOAT = calculatorArr2;
        Calculator[] calculatorArr3 = {new DecimalPlusDecimal(), new DecimalMinusDecimal(), new DecimalTimesDecimal(), new DecimalDivDecimal(), new DecimalModDecimal(), new DecimalIdivDecimal()};
        DECIMAL_DECIMAL = calculatorArr3;
        DECIMAL_INTEGER = calculatorArr3;
        INTEGER_DOUBLE = calculatorArr;
        INTEGER_FLOAT = calculatorArr2;
        INTEGER_DECIMAL = calculatorArr3;
        Calculator[] calculatorArr4 = {new IntegerPlusInteger(), new IntegerMinusInteger(), new IntegerTimesInteger(), new IntegerDivInteger(), new IntegerModInteger(), new IntegerIdivInteger()};
        INTEGER_INTEGER = calculatorArr4;
        Calculator[] calculatorArr5 = {null, new C18289b(), null, null, null, null};
        DATETIME_DATETIME = calculatorArr5;
        Calculator[] calculatorArr6 = {new C18291d(), new C18290c(), null, null, null, null};
        DATETIME_DURATION = calculatorArr6;
        Calculator[] calculatorArr7 = {new C18296i(), null, null, null, null, null};
        DURATION_DATETIME = calculatorArr7;
        Calculator[] calculatorArr8 = {new C18297j(), new C18295h(), null, new C18293f(), null, null};
        DURATION_DURATION = calculatorArr8;
        Calculator[] calculatorArr9 = {null, null, new C18298k(), new C18294g(), null, null};
        DURATION_NUMERIC = calculatorArr9;
        Calculator[] calculatorArr10 = {null, null, new C18299l(), null, null, null};
        NUMERIC_DURATION = calculatorArr10;
        f99194b = new IntHashMap<>(100);
        f99195c = new IntHashMap<>(100);
        m62553a(517, 517, calculatorArr, "DOUBLE_DOUBLE");
        m62553a(517, 516, calculatorArr, "DOUBLE_FLOAT");
        m62553a(517, 515, calculatorArr, "DOUBLE_DECIMAL");
        m62553a(517, StandardNames.XS_INTEGER, calculatorArr, "DOUBLE_INTEGER");
        m62553a(516, 517, calculatorArr, "FLOAT_DOUBLE");
        m62553a(516, 516, calculatorArr2, "FLOAT_FLOAT");
        m62553a(516, 515, calculatorArr2, "FLOAT_DECIMAL");
        m62553a(516, StandardNames.XS_INTEGER, calculatorArr2, "FLOAT_INTEGER");
        m62553a(515, 517, calculatorArr, "DECIMAL_DOUBLE");
        m62553a(515, 516, calculatorArr2, "DECIMAL_FLOAT");
        m62553a(515, 515, calculatorArr3, "DECIMAL_DECIMAL");
        m62553a(515, StandardNames.XS_INTEGER, calculatorArr3, "DECIMAL_INTEGER");
        m62553a(StandardNames.XS_INTEGER, 517, calculatorArr, "INTEGER_DOUBLE");
        m62553a(StandardNames.XS_INTEGER, 516, calculatorArr2, "INTEGER_FLOAT");
        m62553a(StandardNames.XS_INTEGER, 515, calculatorArr3, "INTEGER_DECIMAL");
        m62553a(StandardNames.XS_INTEGER, StandardNames.XS_INTEGER, calculatorArr4, "INTEGER_INTEGER");
        m62553a(519, 519, calculatorArr5, "DATETIME_DATETIME");
        m62553a(519, 518, calculatorArr6, "DATETIME_DURATION");
        m62553a(518, 519, calculatorArr7, "DURATION_DATETIME");
        m62553a(518, 518, calculatorArr8, "DURATION_DURATION");
        m62553a(518, 517, calculatorArr9, "DURATION_NUMERIC");
        m62553a(518, 516, calculatorArr9, "DURATION_NUMERIC");
        m62553a(518, 515, calculatorArr9, "DURATION_NUMERIC");
        m62553a(518, StandardNames.XS_INTEGER, calculatorArr9, "DURATION_NUMERIC");
        m62553a(517, 518, calculatorArr10, "NUMERIC_DURATION");
        m62553a(516, 518, calculatorArr10, "NUMERIC_DURATION");
        m62553a(515, 518, calculatorArr10, "NUMERIC_DURATION");
        m62553a(StandardNames.XS_INTEGER, 518, calculatorArr10, "NUMERIC_DURATION");
    }

    /* renamed from: a */
    public static void m62553a(int i, int i2, Calculator[] calculatorArr, String str) {
        int i3 = (65535 & i2) | ((i & 65535) << 16);
        f99194b.put(i3, calculatorArr);
        f99195c.put(i3, str);
        if (i == 518) {
            m62553a(634, i2, calculatorArr, str);
            m62553a(StandardNames.XS_YEAR_MONTH_DURATION, i2, calculatorArr, str);
        }
        if (i2 == 518) {
            m62553a(i, 634, calculatorArr, str);
            m62553a(i, StandardNames.XS_YEAR_MONTH_DURATION, calculatorArr, str);
        }
        if (i == 519) {
            m62553a(521, i2, calculatorArr, str);
            m62553a(520, i2, calculatorArr, str);
        }
        if (i2 == 519) {
            m62553a(i, 521, calculatorArr, str);
            m62553a(i, 520, calculatorArr, str);
        }
        if (i == 517) {
            m62553a(StandardNames.XS_UNTYPED_ATOMIC, i2, calculatorArr, str);
        }
        if (i2 == 517) {
            m62553a(i, StandardNames.XS_UNTYPED_ATOMIC, calculatorArr, str);
        }
    }

    /* renamed from: b */
    public static BigDecimal m62554b(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return bigDecimal.divide(bigDecimal2, Math.max(18, (bigDecimal.scale() - bigDecimal2.scale()) + 18), RoundingMode.HALF_DOWN);
    }

    /* renamed from: c */
    public static int m62555c(char c) {
        if (c == 'a') {
            return 632;
        }
        if (c == 'f') {
            return 516;
        }
        if (c == 'i') {
            return StandardNames.XS_INTEGER;
        }
        if (c == 'n') {
            return 635;
        }
        if (c == 'c') {
            return 515;
        }
        if (c == 'd') {
            return 517;
        }
        if (c == 't') {
            return 519;
        }
        if (c == 'u') {
            return 518;
        }
        throw new AssertionError();
    }

    public static BigDecimalValue decimalDivide(NumericValue numericValue, NumericValue numericValue2) throws XPathException {
        if (numericValue2.signum() != 0) {
            return new BigDecimalValue(m62554b(numericValue.getDecimalValue(), numericValue2.getDecimalValue()));
        }
        throw new XPathException("Decimal divide by zero", "FOAR0001");
    }

    public static Calculator getCalculator(int i, int i2, int i3, boolean z) {
        Calculator[] calculatorArr = f99194b.get(((i & 65535) << 16) | (i2 & 65535));
        if (calculatorArr != null) {
            return calculatorArr[i3];
        }
        if (z) {
            return null;
        }
        return ANY_ANY[i3];
    }

    public static String getCalculatorSetName(int i, int i2) {
        return f99195c.get(((i & 65535) << 16) | (i2 & 65535));
    }

    public static int getTokenFromOperator(int i) {
        return f99193a[i];
    }

    public static int operatorFromCode(char c) {
        if (c == '%') {
            return 4;
        }
        if (c == '-') {
            return 1;
        }
        if (c == '/') {
            return 3;
        }
        if (c == '~') {
            return 5;
        }
        if (c == '*') {
            return 2;
        }
        if (c == '+') {
            return 0;
        }
        throw new AssertionError();
    }

    public static Calculator reconstructCalculator(String str) {
        return getCalculator(m62555c(str.charAt(0)), m62555c(str.charAt(2)), operatorFromCode(str.charAt(1)), false);
    }

    public String code() {
        return getClass().getSimpleName().replace("Any", "a").replace("Double", "d").replace("Float", C6997f.f39671c).replace("Decimal", "c").replace("Integer", "i").replace("Numeric", GoogleApiAvailabilityLight.f29016b).replace(ExifInterface.TAG_DATETIME, "t").replace(SsManifestParser.C4933d.f26659s, "u").replace("Plus", "+").replace("Minus", "-").replace("Times", "*").replace("Div", "/").replace("Idiv", "~").replace("Mod", "%");
    }

    public abstract AtomicValue compute(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException;

    public abstract AtomicType getResultType(AtomicType atomicType, AtomicType atomicType2);
}

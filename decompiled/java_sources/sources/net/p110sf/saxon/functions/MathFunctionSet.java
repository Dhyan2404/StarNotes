package net.p110sf.saxon.functions;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.NumericValue;
import org.apache.commons.math3.dfp.Dfp;
import org.apache.commons.math3.dfp.DfpMath;

/* loaded from: classes11.dex */
public class MathFunctionSet extends BuiltInFunctionSet {

    /* renamed from: c */
    public static final MathFunctionSet f100262c = new MathFunctionSet();

    /* loaded from: classes11.dex */
    public static class AcosFn extends TrigFn1 {
        @Override // net.sf.saxon.functions.MathFunctionSet.TrigFn1
        public double compute(double d) {
            return Math.acos(d);
        }
    }

    /* loaded from: classes11.dex */
    public static class AsinFn extends TrigFn1 {
        @Override // net.sf.saxon.functions.MathFunctionSet.TrigFn1
        public double compute(double d) {
            return Math.asin(d);
        }
    }

    /* loaded from: classes11.dex */
    public static class Atan2Fn extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100263h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public DoubleValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return new DoubleValue(Math.atan2(((DoubleValue) sequenceArr[0].head()).getDoubleValue(), ((DoubleValue) sequenceArr[1].head()).getDoubleValue()));
        }
    }

    /* loaded from: classes11.dex */
    public static class AtanFn extends TrigFn1 {
        @Override // net.sf.saxon.functions.MathFunctionSet.TrigFn1
        public double compute(double d) {
            return Math.atan(d);
        }
    }

    /* loaded from: classes11.dex */
    public static class CosFn extends TrigFn1 {
        @Override // net.sf.saxon.functions.MathFunctionSet.TrigFn1
        public double compute(double d) {
            return Math.cos(d);
        }
    }

    /* loaded from: classes11.dex */
    public static class Exp10Fn extends TrigFn1 {
        @Override // net.sf.saxon.functions.MathFunctionSet.TrigFn1
        public double compute(double d) {
            return Math.pow(10.0d, d);
        }
    }

    /* loaded from: classes11.dex */
    public static class ExpFn extends TrigFn1 {
        @Override // net.sf.saxon.functions.MathFunctionSet.TrigFn1
        public double compute(double d) {
            return Math.exp(d);
        }
    }

    /* loaded from: classes11.dex */
    public static class Log10Fn extends TrigFn1 {
        @Override // net.sf.saxon.functions.MathFunctionSet.TrigFn1
        public double compute(double d) {
            return Math.log10(d);
        }
    }

    /* loaded from: classes11.dex */
    public static class LogFn extends TrigFn1 {
        @Override // net.sf.saxon.functions.MathFunctionSet.TrigFn1
        public double compute(double d) {
            return Math.log(d);
        }
    }

    /* loaded from: classes11.dex */
    public static class PiFn extends SystemFunction {
        @Override // net.p110sf.saxon.functions.SystemFunction
        public Expression makeFunctionCall(Expression... expressionArr) {
            return Literal.makeLiteral(new DoubleValue(3.141592653589793d));
        }

        @Override // net.p110sf.saxon.expr.Callable
        public DoubleValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return new DoubleValue(3.141592653589793d);
        }
    }

    /* loaded from: classes11.dex */
    public static class PowFn extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100264h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public GroundedValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            DoubleValue doubleValue = (DoubleValue) sequenceArr[0].head();
            if (doubleValue == null) {
                return EmptySequence.getInstance();
            }
            double doubleValue2 = doubleValue.getDoubleValue();
            if (doubleValue2 == 1.0d) {
                return doubleValue;
            }
            double doubleValue3 = ((NumericValue) sequenceArr[1].head()).getDoubleValue();
            if (doubleValue2 == -1.0d && Double.isInfinite(doubleValue3)) {
                return new DoubleValue(1.0d);
            }
            return new DoubleValue(Math.pow(doubleValue2, doubleValue3));
        }
    }

    /* loaded from: classes11.dex */
    public static class SinFn extends TrigFn1 {
        @Override // net.sf.saxon.functions.MathFunctionSet.TrigFn1
        public double compute(double d) {
            return Math.sin(d);
        }
    }

    /* loaded from: classes11.dex */
    public static class SqrtFn extends TrigFn1 {
        @Override // net.sf.saxon.functions.MathFunctionSet.TrigFn1
        public double compute(double d) {
            return Math.sqrt(d);
        }
    }

    /* loaded from: classes11.dex */
    public static class TanFn extends TrigFn1 {
        @Override // net.sf.saxon.functions.MathFunctionSet.TrigFn1
        public double compute(double d) {
            return Math.tan(d);
        }
    }

    /* loaded from: classes11.dex */
    public static abstract class TrigFn1 extends SystemFunction {
        public abstract double compute(double d);

        @Override // net.p110sf.saxon.expr.Callable
        public GroundedValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            DoubleValue doubleValue = (DoubleValue) sequenceArr[0].head();
            if (doubleValue == null) {
                return EmptySequence.getInstance();
            }
            return new DoubleValue(compute(doubleValue.getDoubleValue()));
        }
    }

    public MathFunctionSet() {
        init();
    }

    public static MathFunctionSet getInstance() {
        return f100262c;
    }

    /* renamed from: c */
    public final void m63032c(String str, Class<? extends SystemFunction> cls) {
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.DOUBLE;
        register(str, 1, cls, builtInAtomicType, 24576, 32768).arg(0, builtInAtomicType, 24576, BuiltInFunctionSet.EMPTY);
    }

    @Override // net.p110sf.saxon.functions.registry.BuiltInFunctionSet
    public String getConventionalPrefix() {
        return "math";
    }

    @Override // net.p110sf.saxon.functions.registry.BuiltInFunctionSet
    public String getNamespace() {
        return NamespaceConstant.MATH;
    }

    public final void init() {
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.DOUBLE;
        register(Constants.ELEMNAME_PI_OLD_STRING, 0, PiFn.class, builtInAtomicType, 16384, 0);
        m63032c("sin", SinFn.class);
        m63032c("cos", CosFn.class);
        m63032c("tan", TanFn.class);
        m63032c("asin", AsinFn.class);
        m63032c("acos", AcosFn.class);
        m63032c("atan", AtanFn.class);
        m63032c(Dfp.f108012l, SqrtFn.class);
        m63032c("log", LogFn.class);
        m63032c("log10", Log10Fn.class);
        m63032c("exp", ExpFn.class);
        m63032c("exp10", Exp10Fn.class);
        register(DfpMath.f108051a, 2, PowFn.class, builtInAtomicType, 24576, 32768).arg(0, builtInAtomicType, 24576, BuiltInFunctionSet.EMPTY).arg(1, builtInAtomicType, 16384, null);
        register("atan2", 2, Atan2Fn.class, builtInAtomicType, 16384, 0).arg(0, builtInAtomicType, 16384, null).arg(1, builtInAtomicType, 16384, null);
    }
}

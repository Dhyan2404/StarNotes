package net.p110sf.saxon.functions;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.StringToDouble11;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Number_1 extends ScalarSystemFunction {
    public static DoubleValue convert(AtomicValue atomicValue, Configuration configuration) {
        try {
            if (atomicValue == null) {
                return DoubleValue.NaN;
            }
            if (atomicValue instanceof BooleanValue) {
                return new DoubleValue(((BooleanValue) atomicValue).getBooleanValue() ? 1.0d : 0.0d);
            }
            return atomicValue instanceof DoubleValue ? (DoubleValue) atomicValue : atomicValue instanceof NumericValue ? new DoubleValue(((NumericValue) atomicValue).getDoubleValue()) : (!(atomicValue instanceof StringValue) || (atomicValue instanceof AnyURIValue)) ? DoubleValue.NaN : new DoubleValue(configuration.getConversionRules().getStringToDoubleConverter().stringToNumber(atomicValue.getUnicodeStringValue()));
        } catch (NumberFormatException unused) {
            return DoubleValue.NaN;
        }
    }

    public static DoubleValue toNumber(AtomicValue atomicValue) {
        if (atomicValue instanceof BooleanValue) {
            return Converter.BooleanToDouble.INSTANCE.convert(atomicValue);
        }
        if (atomicValue instanceof NumericValue) {
            return (DoubleValue) Converter.NumericToDouble.INSTANCE.convert(atomicValue).asAtomic();
        }
        if (!(atomicValue instanceof StringValue) || (atomicValue instanceof AnyURIValue)) {
            return DoubleValue.NaN;
        }
        ConversionResult convert = StringToDouble11.getInstance().convert(atomicValue);
        return convert instanceof ValidationFailure ? DoubleValue.NaN : (DoubleValue) convert;
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AtomicValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
        return toNumber((AtomicValue) item);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "NumberFnCompiler";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression typeCheckCaller(FunctionCall functionCall, ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) {
        if (functionCall.getArg(0).isCallOn(Number_1.class)) {
            functionCall.setArg(0, ((FunctionCall) functionCall.getArg(0)).getArg(0));
        }
        return functionCall;
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public DoubleValue resultWhenEmpty() {
        return DoubleValue.NaN;
    }
}

package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FunctionCall;
import net.p110sf.saxon.expr.StaticFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Substring extends SystemFunction implements Callable {
    public static StringValue substring(StringValue stringValue, NumericValue numericValue) {
        long round;
        long length = stringValue.length();
        if (numericValue instanceof Int64Value) {
            round = ((Int64Value) numericValue).longValue();
            if (round > length) {
                return StringValue.EMPTY_STRING;
            }
            if (round <= 0) {
                round = 1;
            }
        } else {
            if (numericValue.isNaN()) {
                return StringValue.EMPTY_STRING;
            }
            if (numericValue.signum() <= 0) {
                return stringValue;
            }
            if (numericValue.compareTo(length) > 0) {
                return StringValue.EMPTY_STRING;
            }
            round = Math.round(numericValue.getDoubleValue());
        }
        if (round > length) {
            return StringValue.EMPTY_STRING;
        }
        return new StringValue(stringValue.getContent().substring(((int) round) - 1, length));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "SubstringCompiler";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression typeCheckCaller(FunctionCall functionCall, ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression typeCheckCaller = super.typeCheckCaller(functionCall, expressionVisitor, contextItemStaticInfo);
        if (typeCheckCaller != functionCall) {
            return typeCheckCaller;
        }
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        if (functionCall.getArg(1).isCallOn(Number_1.class)) {
            Expression arg = ((StaticFunctionCall) functionCall.getArg(1)).getArg(0);
            if (typeHierarchy.isSubType(arg.getItemType(), BuiltInAtomicType.INTEGER)) {
                functionCall.setArg(1, arg);
            }
        }
        if (getArity() > 2 && functionCall.getArg(2).isCallOn(Number_1.class)) {
            Expression arg2 = ((StaticFunctionCall) functionCall.getArg(2)).getArg(0);
            if (typeHierarchy.isSubType(arg2.getItemType(), BuiltInAtomicType.INTEGER)) {
                functionCall.setArg(2, arg2);
            }
        }
        return functionCall;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StringValue stringValue = (StringValue) sequenceArr[0].head();
        if (stringValue == null) {
            return StringValue.EMPTY_STRING;
        }
        NumericValue numericValue = (NumericValue) sequenceArr[1].head();
        if (sequenceArr.length == 2) {
            return substring(stringValue, numericValue);
        }
        return substring(stringValue, numericValue, (NumericValue) sequenceArr[2].head());
    }

    public static StringValue substring(StringValue stringValue, NumericValue numericValue, NumericValue numericValue2) {
        long round;
        long round2;
        long length = stringValue.length();
        if (numericValue instanceof Int64Value) {
            round = ((Int64Value) numericValue).longValue();
            if (round > length) {
                return StringValue.EMPTY_STRING;
            }
        } else {
            if (numericValue.isNaN()) {
                return StringValue.EMPTY_STRING;
            }
            if (numericValue.compareTo(length) > 0) {
                return StringValue.EMPTY_STRING;
            }
            double doubleValue = numericValue.getDoubleValue();
            round = Double.isInfinite(doubleValue) ? -2147483647L : Math.round(doubleValue);
        }
        if (numericValue2 instanceof Int64Value) {
            round2 = ((Int64Value) numericValue2).longValue();
            if (round2 <= 0) {
                return StringValue.EMPTY_STRING;
            }
        } else {
            if (numericValue2.isNaN()) {
                return StringValue.EMPTY_STRING;
            }
            if (numericValue2.signum() <= 0) {
                return StringValue.EMPTY_STRING;
            }
            round2 = Double.isInfinite(numericValue2.getDoubleValue()) ? 2147483647L : Math.round(numericValue2.getDoubleValue());
        }
        if (round2 + round < round) {
            return StringValue.EMPTY_STRING;
        }
        int i = ((int) round) - 1;
        if (i >= length) {
            return StringValue.EMPTY_STRING;
        }
        long min = Math.min(length, ((int) r9) - 1);
        if (i < 0) {
            if (min < 0) {
                return StringValue.EMPTY_STRING;
            }
            i = 0;
        }
        return new StringValue(stringValue.getContent().substring(i, min));
    }
}

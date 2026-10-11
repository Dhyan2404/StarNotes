package net.p110sf.saxon.functions;

import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.lib.EnvironmentVariableResolver;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class AvailableEnvironmentVariables extends SystemFunction {

    /* renamed from: net.sf.saxon.functions.AvailableEnvironmentVariables$a */
    /* loaded from: classes11.dex */
    public class C18340a extends SystemFunctionCall {
        public C18340a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.FunctionCall
        public Expression preEvaluate(ExpressionVisitor expressionVisitor) {
            return this;
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        EnvironmentVariableResolver environmentVariableResolver = (EnvironmentVariableResolver) xPathContext.getConfiguration().getConfigurationProperty(Feature.ENVIRONMENT_VARIABLE_RESOLVER);
        ArrayList arrayList = new ArrayList();
        if (xPathContext.getConfiguration().getBooleanProperty(Feature.ALLOW_EXTERNAL_FUNCTIONS)) {
            Iterator<String> it2 = environmentVariableResolver.getAvailableEnvironmentVariables().iterator();
            while (it2.hasNext()) {
                arrayList.add(new StringValue(it2.next()));
            }
        }
        return new SequenceExtent.C18571Of(arrayList);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return new C18340a(this, expressionArr);
    }
}

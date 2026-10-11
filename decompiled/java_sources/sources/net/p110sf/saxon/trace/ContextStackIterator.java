package net.p110sf.saxon.trace;

import java.util.Iterator;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.ApplyTemplates;
import net.p110sf.saxon.expr.instruct.CallTemplate;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.trace.ContextStackFrame;
import net.p110sf.saxon.trans.rules.BuiltInRuleSet;

/* loaded from: classes11.dex */
public class ContextStackIterator implements Iterator<ContextStackFrame> {

    /* renamed from: e */
    public XPathContextMajor f102178e;

    public ContextStackIterator(XPathContext xPathContext) {
        this.f102178e = (XPathContextMajor) (xPathContext instanceof XPathContextMajor ? xPathContext : m64075a(xPathContext));
    }

    /* renamed from: a */
    public static XPathContextMajor m64075a(XPathContext xPathContext) {
        XPathContext caller = xPathContext.getCaller();
        while (caller != null && !(caller instanceof XPathContextMajor)) {
            caller = caller.getCaller();
        }
        return (XPathContextMajor) caller;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f102178e != null;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public ContextStackFrame next() {
        XPathContextMajor xPathContextMajor = this.f102178e;
        if (xPathContextMajor == null) {
            return null;
        }
        ContextOriginator origin = xPathContextMajor.getOrigin();
        if (origin instanceof Controller) {
            this.f102178e = m64075a(xPathContextMajor);
            return new ContextStackFrame.CallingApplication();
        }
        if (origin instanceof BuiltInRuleSet) {
            this.f102178e = m64075a(xPathContextMajor);
            return new ContextStackFrame.BuiltInTemplateRule(xPathContextMajor);
        }
        if (origin instanceof UserFunction) {
            ContextStackFrame.FunctionCall functionCall = new ContextStackFrame.FunctionCall();
            UserFunction userFunction = (UserFunction) origin;
            functionCall.setLocation(userFunction.getLocation());
            functionCall.setFunctionName(userFunction.getFunctionName());
            functionCall.setContextItem(xPathContextMajor.getContextItem());
            functionCall.setContext(xPathContextMajor);
            this.f102178e = m64075a(xPathContextMajor);
            return functionCall;
        }
        if (origin instanceof UserFunctionCall) {
            ContextStackFrame.FunctionCall functionCall2 = new ContextStackFrame.FunctionCall();
            UserFunctionCall userFunctionCall = (UserFunctionCall) origin;
            functionCall2.setLocation(userFunctionCall.getLocation());
            functionCall2.setFunctionName(userFunctionCall.getFunctionName());
            functionCall2.setContextItem(xPathContextMajor.getContextItem());
            functionCall2.setContext(xPathContextMajor);
            this.f102178e = m64075a(xPathContextMajor);
            return functionCall2;
        }
        if (origin instanceof ApplyTemplates) {
            ContextStackFrame.ApplyTemplates applyTemplates = new ContextStackFrame.ApplyTemplates();
            applyTemplates.setLocation(((ApplyTemplates) origin).getLocation());
            applyTemplates.setContextItem(xPathContextMajor.getContextItem());
            applyTemplates.setContext(xPathContextMajor);
            this.f102178e = m64075a(xPathContextMajor);
            return applyTemplates;
        }
        if (origin instanceof CallTemplate) {
            ContextStackFrame.CallTemplate callTemplate = new ContextStackFrame.CallTemplate();
            CallTemplate callTemplate2 = (CallTemplate) origin;
            callTemplate.setLocation(callTemplate2.getLocation());
            callTemplate.setTemplateName(callTemplate2.getObjectName());
            callTemplate.setContextItem(xPathContextMajor.getContextItem());
            callTemplate.setContext(xPathContextMajor);
            this.f102178e = m64075a(xPathContextMajor);
            return callTemplate;
        }
        if (origin instanceof GlobalVariable) {
            ContextStackFrame.VariableEvaluation variableEvaluation = new ContextStackFrame.VariableEvaluation();
            GlobalVariable globalVariable = (GlobalVariable) origin;
            variableEvaluation.setLocation(globalVariable.getLocation());
            variableEvaluation.setContextItem(xPathContextMajor.getContextItem());
            variableEvaluation.setVariableName(globalVariable.getVariableQName());
            variableEvaluation.setComponent(globalVariable);
            variableEvaluation.setContext(xPathContextMajor);
            this.f102178e = m64075a(xPathContextMajor);
            return variableEvaluation;
        }
        this.f102178e = m64075a(xPathContextMajor);
        ContextStackFrame next = next();
        return next == null ? new ContextStackFrame.CallingApplication() : next;
    }
}

package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.Bindery;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public final class GlobalParam extends GlobalVariable {

    /* renamed from: x */
    public static final /* synthetic */ boolean f99735x = false;

    /* renamed from: w */
    public boolean f99736w;

    @Override // net.p110sf.saxon.expr.instruct.GlobalVariable
    public String getFlags() {
        String flags = super.getFlags();
        if (!isImplicitlyRequiredParam()) {
            return flags;
        }
        return flags + "i";
    }

    @Override // net.p110sf.saxon.expr.instruct.GlobalVariable, net.p110sf.saxon.expr.instruct.Actor, net.p110sf.saxon.trace.TraceableComponent
    public String getTracingTag() {
        return "xsl:param";
    }

    public boolean isImplicitlyRequiredParam() {
        return this.f99736w;
    }

    public void setImplicitlyRequiredParam(boolean z) {
        this.f99736w = z;
    }

    @Override // net.p110sf.saxon.expr.instruct.GlobalVariable
    public GroundedValue evaluateVariable(XPathContext xPathContext, Component component) throws XPathException {
        Controller controller = xPathContext.getController();
        Bindery bindery = controller.getBindery(getPackageData());
        GroundedValue globalVariableValue = bindery.getGlobalVariableValue(this);
        if (globalVariableValue != null) {
            if (globalVariableValue instanceof Bindery.FailureValue) {
                throw ((Bindery.FailureValue) globalVariableValue).getObject();
            }
            return globalVariableValue;
        }
        GroundedValue convertedParameter = controller.getConvertedParameter(getVariableQName(), getRequiredType(), xPathContext);
        if (convertedParameter != null) {
            return bindery.saveGlobalVariableValue(this, convertedParameter);
        }
        if (isRequiredParam()) {
            XPathException xPathException = new XPathException("No value supplied for required parameter $" + getVariableQName().getDisplayName());
            xPathException.setXPathContext(xPathContext);
            xPathException.setLocator(this);
            xPathException.setErrorCode(getPackageData().isXSLT() ? "XTDE0050" : "XPDY0002");
            throw xPathException;
        }
        if (!isImplicitlyRequiredParam()) {
            return actuallyEvaluate(xPathContext, component);
        }
        XPathException xPathException2 = new XPathException("A value must be supplied for parameter $" + getVariableQName().getDisplayName() + " because there is no default value for the required type");
        xPathException2.setXPathContext(xPathContext);
        xPathException2.setLocator(this);
        xPathException2.setErrorCode("XTDE0700");
        throw xPathException2;
    }

    @Override // net.p110sf.saxon.expr.instruct.GlobalVariable, net.p110sf.saxon.expr.Binding
    public GroundedValue evaluateVariable(XPathContext xPathContext) throws XPathException {
        return evaluateVariable(xPathContext, null);
    }
}

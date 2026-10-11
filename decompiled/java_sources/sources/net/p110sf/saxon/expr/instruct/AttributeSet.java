package net.p110sf.saxon.expr.instruct;

import java.util.Stack;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;

/* loaded from: classes11.dex */
public class AttributeSet extends Actor {

    /* renamed from: m */
    public StructuredQName f99629m;

    /* renamed from: n */
    public boolean f99630n;

    public void expand(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Stack<AttributeSet> attributeSetEvaluationStack = ((XsltController) xPathContext.getController()).getAttributeSetEvaluationStack();
        if (attributeSetEvaluationStack.contains(this)) {
            throw new XPathException("Attribute set " + getObjectName().getEQName() + " invokes itself recursively", "XTDE0640");
        }
        attributeSetEvaluationStack.push(this);
        getBody().process(outputter, xPathContext);
        attributeSetEvaluationStack.pop();
        if (attributeSetEvaluationStack.isEmpty()) {
            ((XsltController) xPathContext.getController()).releaseAttributeSetEvaluationStack();
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("attributeSet");
        expressionPresenter.emitAttribute("name", getObjectName());
        expressionPresenter.emitAttribute("line", getLineNumber() + "");
        expressionPresenter.emitAttribute("module", getSystemId());
        expressionPresenter.emitAttribute("slots", getStackFrameMap().getNumberOfVariables() + "");
        expressionPresenter.emitAttribute("binds", getDeclaringComponent().getComponentBindings().size() + "");
        if (isDeclaredStreamable()) {
            expressionPresenter.emitAttribute("flags", "s");
        }
        getBody().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public int getFocusDependencies() {
        return this.body.getDependencies() & 30;
    }

    public StructuredQName getObjectName() {
        return this.f99629m;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public SymbolicName getSymbolicName() {
        return new SymbolicName(138, this.f99629m);
    }

    public boolean isDeclaredStreamable() {
        return this.f99630n;
    }

    public void setDeclaredStreamable(boolean z) {
        this.f99630n = z;
    }

    public void setName(StructuredQName structuredQName) {
        this.f99629m = structuredQName;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public void setStackFrameMap(SlotManager slotManager) {
        if (slotManager != null) {
            super.setStackFrameMap(slotManager);
        }
    }
}

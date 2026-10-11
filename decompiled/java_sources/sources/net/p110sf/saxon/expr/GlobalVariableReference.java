package net.p110sf.saxon.expr;

import java.util.HashSet;
import java.util.Set;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class GlobalVariableReference extends VariableReference implements ComponentInvocation {

    /* renamed from: s */
    public int f99260s;

    public GlobalVariableReference(StructuredQName structuredQName) {
        super(structuredQName);
        this.f99260s = -1;
    }

    @Override // net.p110sf.saxon.expr.VariableReference, net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        if (this.binding == null) {
            throw new UnsupportedOperationException("Cannot copy a variable reference whose binding is unknown");
        }
        GlobalVariableReference globalVariableReference = new GlobalVariableReference(getVariableName());
        globalVariableReference.copyFrom(this);
        return globalVariableReference;
    }

    @Override // net.p110sf.saxon.expr.VariableReference, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("gVarRef", this);
        expressionPresenter.emitAttribute("name", getVariableName());
        expressionPresenter.emitAttribute("bSlot", "" + getBindingSlot());
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public int getBindingSlot() {
        return this.f99260s;
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public Component getFixedTarget() {
        Component target = getTarget();
        Visibility visibility = target.getVisibility();
        if (visibility == Visibility.PRIVATE || visibility == Visibility.FINAL) {
            return target;
        }
        return null;
    }

    public Set<Expression> getPreconditions() {
        return new HashSet();
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public SymbolicName getSymbolicName() {
        return new SymbolicName(218, getVariableName());
    }

    public Component getTarget() {
        return ((GlobalVariable) this.binding).getDeclaringComponent();
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public void setBindingSlot(int i) {
        if (this.f99260s != -1) {
            throw new AssertionError("Duplicate binding slot assignment");
        }
        this.f99260s = i;
    }

    public void setTarget(Component component) {
        this.binding = (GlobalVariable) component.getActor();
    }

    @Override // net.p110sf.saxon.expr.VariableReference
    public GroundedValue evaluateVariable(XPathContext xPathContext) throws XPathException {
        if (this.f99260s >= 0) {
            if (xPathContext.getCurrentComponent() != null) {
                Component targetComponent = xPathContext.getTargetComponent(this.f99260s);
                if (!targetComponent.isHiddenAbstractComponent()) {
                    return ((GlobalVariable) targetComponent.getActor()).evaluateVariable(xPathContext, targetComponent);
                }
                XPathException xPathException = new XPathException("Cannot evaluate an abstract variable (" + getVariableName().getDisplayName() + ") with no overriding declaration", "XTDE3052");
                xPathException.setLocation(getLocation());
                throw xPathException;
            }
            throw new AssertionError("No current component");
        }
        GlobalVariable globalVariable = (GlobalVariable) this.binding;
        return globalVariable.evaluateVariable(xPathContext, globalVariable.getDeclaringComponent());
    }

    public GlobalVariableReference(GlobalVariable globalVariable) {
        super(globalVariable);
        this.f99260s = -1;
    }
}

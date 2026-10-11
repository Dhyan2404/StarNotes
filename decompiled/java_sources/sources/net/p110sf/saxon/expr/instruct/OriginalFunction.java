package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.functions.AbstractFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;

/* loaded from: classes11.dex */
public class OriginalFunction extends AbstractFunction implements Function, ContextOriginator {

    /* renamed from: e */
    public final UserFunction f99797e;

    /* renamed from: f */
    public final Component f99798f;

    public OriginalFunction(Component component) {
        this.f99798f = component;
        this.f99797e = (UserFunction) component.getActor();
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        XPathContextMajor makeNewContext = this.f99797e.makeNewContext(xPathContext, (ContextOriginator) this);
        makeNewContext.setCurrentComponent(this.f99798f);
        return this.f99797e.call(makeNewContext, sequenceArr);
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        ExpressionPresenter.ExportOptions exportOptions = (ExpressionPresenter.ExportOptions) expressionPresenter.getOptions();
        expressionPresenter.startElement("origF");
        expressionPresenter.emitAttribute("name", getFunctionName());
        expressionPresenter.emitAttribute("arity", "" + getArity());
        expressionPresenter.emitAttribute("pack", exportOptions.packageMap.get(this.f99798f.getContainingPackage()) + "");
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.om.Function
    public int getArity() {
        return this.f99797e.getArity();
    }

    public Component getComponent() {
        return this.f99798f;
    }

    public String getContainingPackageName() {
        return this.f99798f.getContainingPackage().getPackageName();
    }

    @Override // net.p110sf.saxon.om.Function
    public String getDescription() {
        return this.f99797e.getDescription();
    }

    @Override // net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        return this.f99797e.getFunctionItemType();
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return this.f99797e.getFunctionName();
    }
}

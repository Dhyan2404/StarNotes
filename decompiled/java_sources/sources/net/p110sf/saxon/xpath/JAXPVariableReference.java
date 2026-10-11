package net.p110sf.saxon.xpath;

import javax.xml.xpath.XPathVariableResolver;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.JPConverter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class JAXPVariableReference extends Expression implements Callable {

    /* renamed from: n */
    public final StructuredQName f102954n;

    /* renamed from: o */
    public final XPathVariableResolver f102955o;

    public JAXPVariableReference(StructuredQName structuredQName, XPathVariableResolver xPathVariableResolver) {
        this.f102954n = structuredQName;
        this.f102955o = xPathVariableResolver;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Configuration configuration = xPathContext.getConfiguration();
        Object resolveVariable = this.f102955o.resolveVariable(this.f102954n.toJaxpQName());
        return resolveVariable == null ? EmptySequence.getInstance() : JPConverter.allocate(resolveVariable.getClass(), null, configuration).convert(resolveVariable, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f102954n.hashCode();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return 8388608;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        return new JAXPVariableReference(this.f102954n, this.f102955o);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof JAXPVariableReference) {
            JAXPVariableReference jAXPVariableReference = (JAXPVariableReference) obj;
            if (jAXPVariableReference.f102954n.equals(this.f102954n) && jAXPVariableReference.f102955o == this.f102955o) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("jaxpVar", this);
        expressionPresenter.emitAttribute("name", this.f102954n);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "$" + this.f102954n.getDisplayName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return AnyItemType.getInstance();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return call(xPathContext, null).iterate();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return getExpressionName();
    }
}

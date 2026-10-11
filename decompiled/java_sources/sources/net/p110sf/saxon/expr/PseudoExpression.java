package net.p110sf.saxon.expr;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public abstract class PseudoExpression extends Expression {
    @Override // net.p110sf.saxon.expr.Expression
    public final int computeCardinality() {
        return 57344;
    }

    /* renamed from: d */
    public final void m62629d() throws XPathException {
        throw new XPathException("Cannot evaluate " + getClass().getName());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        m62629d();
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final UnicodeString evaluateAsString(XPathContext xPathContext) throws XPathException {
        m62629d();
        return EmptyUnicodeString.getInstance();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final Item evaluateItem(XPathContext xPathContext) throws XPathException {
        m62629d();
        return null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return AnyItemType.getInstance();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        m62629d();
        return null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        m62629d();
    }
}

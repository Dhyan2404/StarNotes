package net.p110sf.saxon.value;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.SingletonIterator;

/* loaded from: classes11.dex */
public class SingletonClosure extends Closure implements Sequence {

    /* renamed from: e */
    public boolean f102919e = false;

    /* renamed from: f */
    public Item f102920f = null;

    public SingletonClosure(Expression expression, XPathContext xPathContext) throws XPathException {
        this.expression = expression;
        this.savedXPathContext = xPathContext.newContext();
        saveContext(expression, xPathContext);
    }

    public Item asItem() throws XPathException {
        if (!this.f102919e) {
            this.f102920f = this.expression.evaluateItem(this.savedXPathContext);
            this.f102919e = true;
            this.savedXPathContext = null;
        }
        return this.f102920f;
    }

    public int getLength() throws XPathException {
        return asItem() == null ? 0 : 1;
    }

    public Item itemAt(int i) throws XPathException {
        if (i != 0) {
            return null;
        }
        return asItem();
    }

    @Override // net.p110sf.saxon.value.Closure, net.p110sf.saxon.om.Sequence
    public SequenceIterator iterate() {
        try {
            return SingletonIterator.makeIterator(asItem());
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    @Override // net.p110sf.saxon.value.Closure, net.p110sf.saxon.om.Sequence
    public SingletonClosure makeRepeatable() {
        return this;
    }

    @Override // net.p110sf.saxon.om.Sequence
    public GroundedValue materialize() {
        try {
            return SequenceTool.itemOrEmpty(asItem());
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }
}

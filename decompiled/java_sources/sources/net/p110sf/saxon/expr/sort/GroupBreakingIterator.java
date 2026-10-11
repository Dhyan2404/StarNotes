package net.p110sf.saxon.expr.sort;

import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class GroupBreakingIterator implements LookaheadIterator, GroupIterator {

    /* renamed from: e */
    public final Expression f100054e;

    /* renamed from: f */
    public final FocusIterator f100055f;

    /* renamed from: g */
    public final Function f100056g;

    /* renamed from: h */
    public final XPathContext f100057h;

    /* renamed from: i */
    public final XPathContext f100058i;

    /* renamed from: j */
    public List<Item> f100059j;

    /* renamed from: k */
    public Item f100060k;

    /* renamed from: l */
    public Item f100061l = null;

    /* renamed from: m */
    public int f100062m = 0;

    public GroupBreakingIterator(Expression expression, Function function, XPathContext xPathContext) throws XPathException {
        this.f100054e = expression;
        this.f100056g = function;
        this.f100057h = xPathContext;
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        this.f100058i = newMinorContext;
        FocusIterator trackFocus = newMinorContext.trackFocus(expression.iterate(xPathContext));
        this.f100055f = trackFocus;
        this.f100060k = trackFocus.next();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f100055f.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f100055f.discharge();
    }

    /* renamed from: f */
    public final void m62901f() throws XPathException {
        ArrayList arrayList = new ArrayList(20);
        this.f100059j = arrayList;
        arrayList.add(this.f100061l);
        while (true) {
            Item next = this.f100055f.next();
            if (next == null) {
                this.f100060k = null;
                return;
            }
            try {
                if (((BooleanValue) this.f100056g.call(this.f100058i, new Sequence[]{SequenceExtent.makeSequenceExtent(this.f100059j), next})).getBooleanValue()) {
                    this.f100060k = next;
                    return;
                }
                this.f100059j.add(next);
            } catch (ClassCastException unused) {
                XPathException xPathException = new XPathException("Grouping key values are of non-comparable types");
                xPathException.setIsTypeError(true);
                xPathException.setXPathContext(this.f100058i);
                throw xPathException;
            }
        }
    }

    @Override // net.p110sf.saxon.expr.sort.GroupIterator
    public AtomicSequence getCurrentGroupingKey() {
        return null;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f100060k != null;
    }

    @Override // net.p110sf.saxon.expr.sort.GroupIterator
    public SequenceIterator iterateCurrentGroup() {
        return new ListIterator.C18538Of(this.f100059j);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        try {
            Item item = this.f100060k;
            if (item == null) {
                this.f100061l = null;
                this.f100062m = -1;
                return null;
            }
            this.f100061l = item;
            this.f100062m++;
            m62901f();
            return this.f100061l;
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }
}

package net.p110sf.saxon.expr.sort;

import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.functions.Count;
import net.p110sf.saxon.functions.DistinctValues;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.AtomicArray;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class GroupAdjacentIterator implements GroupIterator, LastPositionFinder, LookaheadIterator {

    /* renamed from: e */
    public final Expression f100039e;

    /* renamed from: f */
    public final FocusIterator f100040f;

    /* renamed from: g */
    public final Expression f100041g;

    /* renamed from: h */
    public final StringCollator f100042h;

    /* renamed from: i */
    public final XPathContext f100043i;

    /* renamed from: j */
    public final XPathContext f100044j;

    /* renamed from: k */
    public CompositeAtomicKey f100045k;

    /* renamed from: l */
    public AtomicSequence f100046l;

    /* renamed from: m */
    public List<Item> f100047m;

    /* renamed from: n */
    public CompositeAtomicKey f100048n;

    /* renamed from: o */
    public List<AtomicValue> f100049o;

    /* renamed from: p */
    public Item f100050p;

    /* renamed from: q */
    public Item f100051q = null;

    /* renamed from: r */
    public int f100052r = 0;

    /* renamed from: s */
    public boolean f100053s;

    public GroupAdjacentIterator(Expression expression, Expression expression2, XPathContext xPathContext, StringCollator stringCollator, boolean z) throws XPathException {
        this.f100049o = null;
        this.f100053s = false;
        this.f100039e = expression;
        this.f100041g = expression2;
        this.f100043i = xPathContext;
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        this.f100044j = newMinorContext;
        FocusIterator trackFocus = newMinorContext.trackFocus(expression.iterate(xPathContext));
        this.f100040f = trackFocus;
        this.f100042h = stringCollator;
        this.f100053s = z;
        Item next = trackFocus.next();
        this.f100050p = next;
        if (next != null) {
            List<AtomicValue> m62900w = m62900w(newMinorContext);
            this.f100049o = m62900w;
            this.f100048n = m62899j(m62900w, xPathContext);
        }
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f100040f.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f100040f.discharge();
    }

    /* renamed from: f */
    public final void m62898f() throws XPathException {
        ArrayList arrayList = new ArrayList(20);
        this.f100047m = arrayList;
        arrayList.add(this.f100051q);
        while (true) {
            Item next = this.f100040f.next();
            if (next == null) {
                this.f100050p = null;
                this.f100049o = null;
                return;
            }
            List<AtomicValue> m62900w = m62900w(this.f100044j);
            CompositeAtomicKey m62899j = m62899j(m62900w, this.f100043i);
            try {
                if (!m62899j.equals(this.f100045k)) {
                    this.f100050p = next;
                    this.f100048n = m62899j;
                    this.f100049o = m62900w;
                    return;
                }
                this.f100047m.add(next);
            } catch (ClassCastException unused) {
                XPathException xPathException = new XPathException("Grouping key values are of non-comparable types");
                xPathException.setIsTypeError(true);
                xPathException.setXPathContext(this.f100044j);
                throw xPathException;
            }
        }
    }

    @Override // net.p110sf.saxon.expr.sort.GroupIterator
    public AtomicSequence getCurrentGroupingKey() {
        return this.f100046l;
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        try {
            return Count.steppingCount(new GroupAdjacentIterator(this.f100039e, this.f100041g, this.f100043i, this.f100042h, this.f100053s));
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f100050p != null;
    }

    @Override // net.p110sf.saxon.expr.sort.GroupIterator
    public SequenceIterator iterateCurrentGroup() {
        return new ListIterator.C18538Of(this.f100047m);
    }

    /* renamed from: j */
    public final CompositeAtomicKey m62899j(List<AtomicValue> list, XPathContext xPathContext) throws XPathException {
        ArrayList arrayList = new ArrayList(list.size());
        for (AtomicValue atomicValue : list) {
            arrayList.add(atomicValue.isNaN() ? DistinctValues.NaN_MATCH_KEY : atomicValue.getXPathMatchKey(this.f100042h, xPathContext.getImplicitTimezone()));
        }
        return new CompositeAtomicKey(arrayList);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        try {
            Item item = this.f100050p;
            if (item == null) {
                this.f100051q = null;
                this.f100052r = -1;
                return null;
            }
            this.f100051q = item;
            if (this.f100049o.size() == 1) {
                this.f100046l = this.f100049o.get(0);
            } else {
                this.f100046l = new AtomicArray(this.f100049o);
            }
            this.f100045k = this.f100048n;
            this.f100052r++;
            m62898f();
            return this.f100051q;
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    /* renamed from: w */
    public final List<AtomicValue> m62900w(XPathContext xPathContext) throws XPathException {
        ArrayList arrayList = new ArrayList();
        SequenceIterator iterate = this.f100041g.iterate(xPathContext);
        while (true) {
            AtomicValue atomicValue = (AtomicValue) iterate.next();
            if (atomicValue == null) {
                return arrayList;
            }
            arrayList.add(atomicValue);
        }
    }
}

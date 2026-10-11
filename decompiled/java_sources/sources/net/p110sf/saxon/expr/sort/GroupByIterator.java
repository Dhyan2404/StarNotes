package net.p110sf.saxon.expr.sort;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.functions.DistinctValues;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.AtomicArray;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.EmptyAtomicSequence;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class GroupByIterator implements GroupIterator, LastPositionFinder, LookaheadIterator {
    protected boolean composite;

    /* renamed from: e */
    public SequenceIterator f100063e;

    /* renamed from: f */
    public StringCollator f100064f;

    /* renamed from: g */
    public XPathContext f100065g;
    protected Expression keyExpression;

    /* renamed from: h */
    public int f100066h = 0;
    protected List<List<Item>> groups = new ArrayList(40);
    protected List<AtomicSequence> groupKeys = new ArrayList(40);

    public GroupByIterator(SequenceIterator sequenceIterator, Expression expression, XPathContext xPathContext, StringCollator stringCollator, boolean z) throws XPathException {
        this.f100063e = sequenceIterator;
        this.keyExpression = expression;
        this.f100065g = xPathContext;
        this.f100064f = stringCollator;
        this.composite = z;
        if (z) {
            m62903j();
        } else {
            m62902f();
        }
    }

    public final Item current() {
        int i = this.f100066h;
        if (i < 1) {
            return null;
        }
        return this.groups.get(i - 1).get(0);
    }

    /* renamed from: f */
    public final void m62902f() throws XPathException {
        HashMap hashMap = new HashMap(40);
        XPathContextMinor newMinorContext = this.f100065g.newMinorContext();
        FocusIterator trackFocus = newMinorContext.trackFocus(this.f100063e);
        int implicitTimezone = newMinorContext.getImplicitTimezone();
        while (true) {
            Item next = trackFocus.next();
            if (next == null) {
                return;
            }
            SequenceIterator iterate = this.keyExpression.iterate(newMinorContext);
            boolean z = true;
            while (true) {
                AtomicValue atomicValue = (AtomicValue) iterate.next();
                if (atomicValue == null) {
                    break;
                }
                AtomicMatchKey xPathMatchKey = atomicValue.isNaN() ? DistinctValues.NaN_MATCH_KEY : atomicValue.getXPathMatchKey(this.f100064f, implicitTimezone);
                List list = (List) hashMap.get(xPathMatchKey);
                if (list == null) {
                    ArrayList arrayList = new ArrayList(20);
                    arrayList.add(next);
                    this.groups.add(arrayList);
                    this.groupKeys.add(atomicValue);
                    hashMap.put(xPathMatchKey, arrayList);
                } else if (z) {
                    list.add(next);
                } else if (list.get(list.size() - 1) != next) {
                    list.add(next);
                }
                z = false;
            }
        }
    }

    public List<Item> getCurrentGroup() {
        return this.groups.get(this.f100066h - 1);
    }

    @Override // net.p110sf.saxon.expr.sort.GroupIterator
    public synchronized AtomicSequence getCurrentGroupingKey() {
        AtomicSequence atomicSequence = this.groupKeys.get(this.f100066h - 1);
        if (atomicSequence != null) {
            return atomicSequence;
        }
        return EmptyAtomicSequence.getInstance();
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return this.groups.size();
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f100066h < this.groups.size();
    }

    @Override // net.p110sf.saxon.expr.sort.GroupIterator
    public SequenceIterator iterateCurrentGroup() {
        return new ListIterator.C18538Of(this.groups.get(this.f100066h - 1));
    }

    /* renamed from: j */
    public final void m62903j() throws XPathException {
        HashMap hashMap = new HashMap(40);
        XPathContextMinor newMinorContext = this.f100065g.newMinorContext();
        FocusIterator trackFocus = newMinorContext.trackFocus(this.f100063e);
        int implicitTimezone = newMinorContext.getImplicitTimezone();
        while (true) {
            Item next = trackFocus.next();
            if (next == null) {
                return;
            }
            SequenceIterator iterate = this.keyExpression.iterate(newMinorContext);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                AtomicValue atomicValue = (AtomicValue) iterate.next();
                if (atomicValue == null) {
                    break;
                }
                arrayList2.add(atomicValue);
                arrayList.add(atomicValue.isNaN() ? DistinctValues.NaN_MATCH_KEY : atomicValue.getXPathMatchKey(this.f100064f, implicitTimezone));
            }
            CompositeAtomicKey compositeAtomicKey = new CompositeAtomicKey(arrayList);
            List list = (List) hashMap.get(compositeAtomicKey);
            if (list == null) {
                ArrayList arrayList3 = new ArrayList(20);
                arrayList3.add(next);
                this.groups.add(arrayList3);
                this.groupKeys.add(new AtomicArray(arrayList2));
                hashMap.put(compositeAtomicKey, arrayList3);
            } else {
                list.add(next);
            }
        }
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        int i = this.f100066h;
        if (i < 0 || i >= this.groups.size()) {
            this.f100066h = -1;
            return null;
        }
        this.f100066h++;
        return current();
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    public GroupByIterator() {
    }
}

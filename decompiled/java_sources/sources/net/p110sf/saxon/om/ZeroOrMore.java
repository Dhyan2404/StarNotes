package net.p110sf.saxon.om;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.functions.Reverse;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class ZeroOrMore<T extends Item> implements GroundedValue, Iterable<T> {

    /* renamed from: e */
    public final List<T> f100871e;

    public ZeroOrMore(List<T> list) {
        this.f100871e = list;
    }

    public static <T extends Item> ZeroOrMore<T> fromSequenceIterator(SequenceIterator sequenceIterator) throws XPathException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            Item next = sequenceIterator.next();
            if (next == null) {
                return new ZeroOrMore<>(arrayList);
            }
            arrayList.add(next);
        }
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() throws XPathException {
        int length = getLength();
        if (length == 0) {
            return false;
        }
        T t = this.f100871e.get(0);
        if (t instanceof NodeInfo) {
            return true;
        }
        return (length == 1 && (t instanceof AtomicValue)) ? t.effectiveBooleanValue() : ExpressionTool.effectiveBooleanValue(iterate());
    }

    public int getCardinality() {
        int size = this.f100871e.size();
        if (size != 0) {
            return size != 1 ? 49152 : 16384;
        }
        return 8192;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public int getLength() {
        return this.f100871e.size();
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public String getStringValue() throws XPathException {
        return SequenceTool.stringify(this);
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() throws XPathException {
        return SequenceTool.getStringValue(this);
    }

    public List<T> getValue() {
        return this.f100871e;
    }

    @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public T head() {
        return itemAt(0);
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public T itemAt(int i) {
        if (i < 0 || i >= getLength()) {
            return null;
        }
        return this.f100871e.get(i);
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return this.f100871e.iterator();
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public GroundedValue reduce() {
        int length = getLength();
        return length == 0 ? EmptySequence.getInstance() : length == 1 ? itemAt(0) : this;
    }

    public SequenceIterator reverseIterate() {
        return Reverse.reverseIterator(this.f100871e);
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public GroundedValue subsequence(int i, int i2) {
        if (i < 0) {
            i = 0;
        }
        return i > this.f100871e.size() ? EmptySequence.getInstance() : new SequenceExtent.C18571Of(this.f100871e.subList(i, i2 + i)).reduce();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        int i = 0;
        while (i < this.f100871e.size()) {
            sb.append(i == 0 ? MotionUtils.f31761c : ", ");
            sb.append(this.f100871e.get(i).toString());
            i++;
        }
        sb.append(')');
        return sb.toString();
    }

    @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public ListIterator.C18538Of<T> iterate() {
        return new ListIterator.C18538Of<>(this.f100871e);
    }
}

package net.p110sf.saxon.om;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.om.AtomicArray;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class AtomicArray implements AtomicSequence {
    public static AtomicArray EMPTY_ATOMIC_ARRAY;

    /* renamed from: f */
    public static final List<AtomicValue> f100753f;

    /* renamed from: e */
    public final List<AtomicValue> f100754e;

    static {
        List<AtomicValue> emptyList = Collections.emptyList();
        f100753f = emptyList;
        EMPTY_ATOMIC_ARRAY = new AtomicArray(emptyList);
    }

    public AtomicArray(List<AtomicValue> list) {
        this.f100754e = list;
    }

    /* renamed from: b */
    public static /* synthetic */ void m63372b(ArrayList arrayList, Item item) throws XPathException {
        arrayList.add((AtomicValue) item);
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() throws XPathException {
        return ExpressionTool.effectiveBooleanValue(iterate());
    }

    @Override // net.p110sf.saxon.om.AtomicSequence
    public UnicodeString getCanonicalLexicalRepresentation() {
        return getUnicodeStringValue();
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue
    public int getLength() {
        return this.f100754e.size();
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public String getStringValue() {
        StringBuilder sb = new StringBuilder(64);
        boolean z = true;
        for (AtomicValue atomicValue : this.f100754e) {
            if (z) {
                z = false;
            } else {
                sb.append(' ');
            }
            sb.append(atomicValue.getStringValue());
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        boolean z = true;
        for (AtomicValue atomicValue : this.f100754e) {
            if (z) {
                z = false;
            } else {
                unicodeBuilder.append(' ');
            }
            unicodeBuilder.accept(atomicValue.getUnicodeStringValue());
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // java.lang.Iterable
    public Iterator<AtomicValue> iterator() {
        return this.f100754e.iterator();
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public GroundedValue reduce() {
        int length = getLength();
        return length == 0 ? EmptySequence.getInstance() : length == 1 ? itemAt(0) : this;
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public AtomicValue head() {
        if (this.f100754e.isEmpty()) {
            return null;
        }
        return this.f100754e.get(0);
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue
    public AtomicValue itemAt(int i) {
        if (i < 0 || i >= this.f100754e.size()) {
            return null;
        }
        return this.f100754e.get(i);
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public AtomicIterator iterate() {
        return new ListIterator.OfAtomic(this.f100754e);
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public AtomicArray subsequence(int i, int i2) {
        if (i < 0) {
            i = 0;
        }
        if (i + i2 > this.f100754e.size()) {
            i2 = this.f100754e.size() - i;
        }
        return new AtomicArray(this.f100754e.subList(i, i2 + i));
    }

    public AtomicArray(SequenceIterator sequenceIterator) throws XPathException {
        final ArrayList arrayList = new ArrayList(10);
        SequenceTool.supply(sequenceIterator, new ItemConsumer() { // from class: com.sunia.HTREnginev2.eg
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                AtomicArray.m63372b(arrayList, item);
            }
        });
        this.f100754e = arrayList;
    }
}

package net.p110sf.saxon.expr.sort;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.expr.sort.MergeGroupingIterator;
import net.p110sf.saxon.om.AtomicArray;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.ObjectValue;

/* loaded from: classes11.dex */
public class MergeGroupingIterator implements GroupIterator, LookaheadIterator, LastPositionFinder {

    /* renamed from: e */
    public final SequenceIterator f100076e;

    /* renamed from: g */
    public ObjectValue<ItemWithMergeKeys> f100078g;

    /* renamed from: h */
    public List<Item> f100079h;

    /* renamed from: i */
    public Map<String, List<Item>> f100080i;

    /* renamed from: j */
    public final Comparator<? super ObjectValue<ItemWithMergeKeys>> f100081j;

    /* renamed from: l */
    public List<AtomicValue> f100083l;

    /* renamed from: m */
    public final LastPositionFinder f100084m;

    /* renamed from: f */
    public ObjectValue<ItemWithMergeKeys> f100077f = null;

    /* renamed from: k */
    public int f100082k = 0;

    public MergeGroupingIterator(SequenceIterator sequenceIterator, Comparator<? super ObjectValue<ItemWithMergeKeys>> comparator, LastPositionFinder lastPositionFinder) throws XPathException {
        this.f100076e = sequenceIterator;
        ObjectValue<ItemWithMergeKeys> objectValue = (ObjectValue) sequenceIterator.next();
        this.f100078g = objectValue;
        if (objectValue != null) {
            this.f100083l = objectValue.getObject().f100069b;
        }
        this.f100081j = comparator;
        this.f100084m = lastPositionFinder;
    }

    /* renamed from: w */
    public static /* synthetic */ List m62909w(String str) {
        return new ArrayList();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f100076e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f100076e.discharge();
    }

    @Override // net.p110sf.saxon.expr.sort.GroupIterator
    public AtomicSequence getCurrentGroupingKey() {
        return new AtomicArray(this.f100083l);
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return this.f100084m.getLength();
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f100078g != null;
    }

    @Override // net.p110sf.saxon.expr.sort.GroupIterator
    public SequenceIterator iterateCurrentGroup() {
        return new ListIterator.C18538Of(this.f100079h);
    }

    /* renamed from: j */
    public final void m62910j() throws XPathException {
        this.f100079h = new ArrayList(20);
        this.f100080i = new HashMap(20);
        Item item = this.f100077f.getObject().f100068a;
        String str = this.f100077f.getObject().f100070c;
        this.f100079h.add(item);
        if (str != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(item);
            this.f100080i.put(str, arrayList);
        }
        while (true) {
            ObjectValue<ItemWithMergeKeys> objectValue = (ObjectValue) this.f100076e.next();
            if (objectValue == null) {
                this.f100078g = null;
                return;
            }
            try {
                int compare = this.f100081j.compare(this.f100077f, objectValue);
                if (compare != 0) {
                    if (compare <= 0) {
                        this.f100078g = objectValue;
                        return;
                    }
                    throw new XPathException("Merge input for source " + str + " is not ordered according to merge key, detected at key value: " + Arrays.toString(objectValue.getObject().f100069b.toArray()), "XTDE2220");
                }
                item = objectValue.getObject().f100068a;
                str = objectValue.getObject().f100070c;
                this.f100079h.add(item);
                if (str != null) {
                    this.f100080i.computeIfAbsent(str, new Function() { // from class: com.sunia.HTREnginev2.jmj
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            List m62909w;
                            m62909w = MergeGroupingIterator.m62909w((String) obj);
                            return m62909w;
                        }
                    }).add(item);
                }
            } catch (ClassCastException unused) {
                XPathException xPathException = new XPathException("Merge key values are of non-comparable types (" + Type.displayTypeName(item) + CloudStorageConstants.OPERATION_AND + Type.displayTypeName(objectValue.getObject().f100068a) + ')', "XTTE2230");
                xPathException.setIsTypeError(true);
                throw xPathException;
            }
        }
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        try {
            ObjectValue<ItemWithMergeKeys> objectValue = this.f100078g;
            if (objectValue == null) {
                this.f100077f = null;
                this.f100082k = -1;
                return null;
            }
            this.f100077f = objectValue;
            this.f100082k++;
            this.f100083l = objectValue.getObject().f100069b;
            m62910j();
            return this.f100077f.getObject().f100068a;
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

    public SequenceIterator iterateCurrentGroup(String str) {
        List<Item> list = this.f100080i.get(str);
        if (list == null) {
            return EmptyIterator.emptyIterator();
        }
        return new ListIterator.C18538Of(list);
    }
}

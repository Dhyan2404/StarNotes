package net.p110sf.saxon.expr.sort;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Comparator;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.ObjectValue;

/* loaded from: classes11.dex */
public class MergeIterator implements SequenceIterator, LookaheadIterator {

    /* renamed from: e */
    public final SequenceIterator f100098e;

    /* renamed from: f */
    public final SequenceIterator f100099f;

    /* renamed from: g */
    public ObjectValue<ItemWithMergeKeys> f100100g;

    /* renamed from: h */
    public ObjectValue<ItemWithMergeKeys> f100101h;

    /* renamed from: i */
    public final Comparator<ObjectValue<ItemWithMergeKeys>> f100102i;

    public MergeIterator(SequenceIterator sequenceIterator, SequenceIterator sequenceIterator2, Comparator<ObjectValue<ItemWithMergeKeys>> comparator) throws XPathException {
        this.f100100g = null;
        this.f100101h = null;
        this.f100098e = sequenceIterator;
        this.f100099f = sequenceIterator2;
        this.f100102i = comparator;
        this.f100100g = (ObjectValue) sequenceIterator.next();
        this.f100101h = (ObjectValue) sequenceIterator2.next();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f100098e.close();
        this.f100099f.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f100098e.discharge();
        this.f100099f.discharge();
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return (this.f100100g == null && this.f100101h == null) ? false : true;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public ObjectValue<ItemWithMergeKeys> next() {
        ObjectValue<ItemWithMergeKeys> objectValue;
        ObjectValue<ItemWithMergeKeys> objectValue2 = this.f100100g;
        if (objectValue2 == null || (objectValue = this.f100101h) == null) {
            if (objectValue2 != null) {
                this.f100100g = (ObjectValue) this.f100098e.next();
                return objectValue2;
            }
            ObjectValue<ItemWithMergeKeys> objectValue3 = this.f100101h;
            if (objectValue3 == null) {
                return null;
            }
            this.f100101h = (ObjectValue) this.f100099f.next();
            return objectValue3;
        }
        try {
            if (this.f100102i.compare(objectValue2, objectValue) <= 0) {
                ObjectValue<ItemWithMergeKeys> objectValue4 = this.f100100g;
                this.f100100g = (ObjectValue) this.f100098e.next();
                return objectValue4;
            }
            ObjectValue<ItemWithMergeKeys> objectValue5 = this.f100101h;
            this.f100101h = (ObjectValue) this.f100099f.next();
            return objectValue5;
        } catch (ClassCastException unused) {
            ItemWithMergeKeys object = this.f100100g.getObject();
            ItemWithMergeKeys object2 = this.f100101h.getObject();
            XPathException xPathException = new XPathException("Merge key values are of non-comparable types (" + Type.displayTypeName(object.f100069b.get(0)) + CloudStorageConstants.OPERATION_AND + Type.displayTypeName(object2.f100069b.get(0)) + MotionUtils.f31762d, "XTTE2230");
            xPathException.setIsTypeError(true);
            throw new UncheckedXPathException(xPathException);
        }
    }
}

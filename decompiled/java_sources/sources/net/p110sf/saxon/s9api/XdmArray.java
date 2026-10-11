package net.p110sf.saxon.s9api;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.ma.arrays.ArrayFunctionSet;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.arrays.SimpleArrayItem;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XdmArray extends XdmFunctionItem {
    public XdmArray() {
        this(SimpleArrayItem.EMPTY_ARRAY);
    }

    /* renamed from: c */
    public static SimpleArrayItem m63675c(XdmValue[] xdmValueArr) {
        ArrayList arrayList = new ArrayList();
        for (XdmValue xdmValue : xdmValueArr) {
            arrayList.add(xdmValue.getUnderlyingValue());
        }
        return new SimpleArrayItem(arrayList);
    }

    /* renamed from: d */
    public static SimpleArrayItem m63676d(Iterable<? extends XdmValue> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<? extends XdmValue> it2 = iterable.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getUnderlyingValue());
        }
        return new SimpleArrayItem(arrayList);
    }

    public static XdmArray makeArray(Object[] objArr) throws IllegalArgumentException {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(XdmValue.makeValue(obj));
        }
        return new XdmArray(arrayList);
    }

    public XdmArray addMember(XdmValue xdmValue) {
        try {
            return (XdmArray) XdmValue.wrap(ArrayFunctionSet.ArrayAppend.append(getUnderlyingValue(), xdmValue.getUnderlyingValue()));
        } catch (XPathException e) {
            throw new SaxonApiUncheckedException(e);
        }
    }

    public int arrayLength() {
        return getUnderlyingValue().arrayLength();
    }

    public List<XdmValue> asList() {
        Iterator<GroundedValue> it2 = getUnderlyingValue().members().iterator();
        ArrayList arrayList = new ArrayList(getUnderlyingValue().getLength());
        while (it2.hasNext()) {
            arrayList.add(XdmValue.wrap(it2.next()));
        }
        return arrayList;
    }

    public XdmArray concat(XdmArray xdmArray) {
        return (XdmArray) XdmValue.wrap(getUnderlyingValue().concat(xdmArray.getUnderlyingValue()));
    }

    public XdmValue get(int i) throws IndexOutOfBoundsException {
        return XdmValue.wrap(getUnderlyingValue().get(i));
    }

    public XdmArray put(int i, XdmValue xdmValue) throws IndexOutOfBoundsException {
        return (XdmArray) XdmValue.wrap(getUnderlyingValue().put(i, xdmValue.getUnderlyingValue()));
    }

    public XdmArray(ArrayItem arrayItem) {
        super(arrayItem);
    }

    public XdmArray(XdmValue[] xdmValueArr) {
        this(m63675c(xdmValueArr));
    }

    @Override // net.p110sf.saxon.s9api.XdmItem, net.p110sf.saxon.s9api.XdmValue
    public ArrayItem getUnderlyingValue() {
        return (ArrayItem) super.getUnderlyingValue();
    }

    public XdmArray(Iterable<? extends XdmValue> iterable) {
        this(m63676d(iterable));
    }

    public static XdmArray makeArray(boolean[] zArr) {
        ArrayList arrayList = new ArrayList(zArr.length);
        for (boolean z : zArr) {
            arrayList.add(new XdmAtomicValue(z));
        }
        return new XdmArray(arrayList);
    }

    public static XdmArray makeArray(long[] jArr) {
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j : jArr) {
            arrayList.add(new XdmAtomicValue(j));
        }
        return new XdmArray(arrayList);
    }

    public static XdmArray makeArray(int[] iArr) {
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(new XdmAtomicValue(i));
        }
        return new XdmArray(arrayList);
    }

    public static XdmArray makeArray(short[] sArr) {
        ArrayList arrayList = new ArrayList(sArr.length);
        for (short s : sArr) {
            arrayList.add(new XdmAtomicValue(s));
        }
        return new XdmArray(arrayList);
    }

    public static XdmArray makeArray(byte[] bArr) {
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte b : bArr) {
            arrayList.add(new XdmAtomicValue(b));
        }
        return new XdmArray(arrayList);
    }
}

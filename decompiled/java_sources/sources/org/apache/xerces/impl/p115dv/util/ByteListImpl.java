package org.apache.xerces.impl.p115dv.util;

import java.util.AbstractList;
import org.apache.xerces.p118xs.XSException;
import org.apache.xerces.p118xs.datatypes.ByteList;

/* loaded from: classes13.dex */
public class ByteListImpl extends AbstractList implements ByteList {
    protected String canonical;
    protected final byte[] data;

    public ByteListImpl(byte[] bArr) {
        this.data = bArr;
    }

    @Override // org.apache.xerces.p118xs.datatypes.ByteList
    public boolean contains(byte b) {
        int i = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i >= bArr.length) {
                return false;
            }
            if (bArr[i] == b) {
                return true;
            }
            i++;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        if (i >= 0) {
            byte[] bArr = this.data;
            if (i < bArr.length) {
                return new Byte(bArr[i]);
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Index: ");
        stringBuffer.append(i);
        throw new IndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // org.apache.xerces.p118xs.datatypes.ByteList
    public int getLength() {
        return this.data.length;
    }

    @Override // org.apache.xerces.p118xs.datatypes.ByteList
    public byte item(int i) throws XSException {
        if (i >= 0) {
            byte[] bArr = this.data;
            if (i <= bArr.length - 1) {
                return bArr[i];
            }
        }
        throw new XSException((short) 2, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return getLength();
    }

    @Override // org.apache.xerces.p118xs.datatypes.ByteList
    public byte[] toByteArray() {
        byte[] bArr = this.data;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}

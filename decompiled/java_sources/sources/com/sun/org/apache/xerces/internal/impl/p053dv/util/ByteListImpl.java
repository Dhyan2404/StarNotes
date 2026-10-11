package com.sun.org.apache.xerces.internal.impl.p053dv.util;

import com.sun.org.apache.xerces.internal.p056xs.XSException;
import com.sun.org.apache.xerces.internal.p056xs.datatypes.ByteList;

/* loaded from: classes10.dex */
public class ByteListImpl implements ByteList {
    protected String canonical;
    protected final byte[] data;

    public ByteListImpl(byte[] bArr) {
        this.data = bArr;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.ByteList
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

    @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.ByteList
    public int getLength() {
        return this.data.length;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.ByteList
    public byte item(int i) throws XSException {
        if (i >= 0) {
            byte[] bArr = this.data;
            if (i <= bArr.length - 1) {
                return bArr[i];
            }
        }
        throw new XSException((short) 2, null);
    }
}

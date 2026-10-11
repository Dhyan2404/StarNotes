package org.apache.poi.hwpf.model;

import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.types.TBDAbstractType;

/* loaded from: classes12.dex */
public class TabDescriptor extends TBDAbstractType implements Duplicatable {
    public TabDescriptor() {
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[TBDAbstractType.getSize()];
        serialize(bArr, 0);
        return bArr;
    }

    public TabDescriptor(TabDescriptor tabDescriptor) {
        super(tabDescriptor);
    }

    @Override // org.apache.poi.common.Duplicatable
    public TabDescriptor copy() {
        return new TabDescriptor(this);
    }

    public TabDescriptor(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}

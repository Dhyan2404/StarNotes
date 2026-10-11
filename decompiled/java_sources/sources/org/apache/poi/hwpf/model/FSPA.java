package org.apache.poi.hwpf.model;

import org.apache.poi.hwpf.model.types.FSPAAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class FSPA extends FSPAAbstractType {
    public FSPA(byte[] bArr, int i) {
        fillFields(bArr, i);
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[FSPAAbstractType.getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}

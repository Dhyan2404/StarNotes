package org.apache.poi.hwpf.model;

import org.apache.poi.hwpf.model.types.GrfhicAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class Grfhic extends GrfhicAbstractType {
    public Grfhic() {
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[GrfhicAbstractType.getSize()];
        serialize(bArr, 0);
        return bArr;
    }

    public Grfhic(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}

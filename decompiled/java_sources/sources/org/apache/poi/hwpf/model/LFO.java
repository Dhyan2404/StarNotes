package org.apache.poi.hwpf.model;

import org.apache.poi.hwpf.model.types.LFOAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class LFO extends LFOAbstractType {
    public LFO() {
    }

    public LFO(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}

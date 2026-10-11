package org.apache.poi.hwpf.model;

import org.apache.poi.hwpf.model.types.FFDataBaseAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class FFDataBase extends FFDataBaseAbstractType {
    public FFDataBase() {
    }

    public FFDataBase(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}

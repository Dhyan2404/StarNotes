package org.apache.poi.hsmf.datatypes;

import org.apache.poi.hsmf.datatypes.Types;

/* loaded from: classes12.dex */
public class ChunkBasedPropertyValue extends PropertyValue {
    public ChunkBasedPropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr) {
        super(mAPIProperty, j, bArr);
    }

    @Override // org.apache.poi.hsmf.datatypes.PropertyValue
    public Chunk getValue() {
        return null;
    }

    public void setValue(Chunk chunk) {
    }

    public ChunkBasedPropertyValue(MAPIProperty mAPIProperty, long j, byte[] bArr, Types.MAPIType mAPIType) {
        super(mAPIProperty, j, bArr, mAPIType);
    }
}

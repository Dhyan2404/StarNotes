package org.apache.poi.hwpf.model;

import java.util.Arrays;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class UnhandledDataStructure {
    private final byte[] _buf;

    public UnhandledDataStructure(byte[] bArr, int i, int i2) {
        int i3 = i + i2;
        if (i3 > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("Buffer Length is " + bArr.length + " but code is tried to read " + i2 + " from offset " + i + " to " + i3);
        }
        if (i >= 0 && i2 >= 0) {
            this._buf = Arrays.copyOfRange(bArr, i, i3);
            return;
        }
        throw new IndexOutOfBoundsException("Offset and Length must both be >= 0, negative indicies are not permitted - code is tried to read " + i2 + " from offset " + i);
    }

    public byte[] getBuf() {
        return this._buf;
    }
}

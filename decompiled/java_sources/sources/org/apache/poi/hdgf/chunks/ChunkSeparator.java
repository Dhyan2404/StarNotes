package org.apache.poi.hdgf.chunks;

import java.util.Arrays;

/* loaded from: classes12.dex */
public final class ChunkSeparator {
    final byte[] separatorData;

    public ChunkSeparator(byte[] bArr, int i) {
        this.separatorData = Arrays.copyOfRange(bArr, i, i + 4);
    }

    public String toString() {
        return "<ChunkSeparator of length " + this.separatorData.length + ">";
    }
}

package org.apache.poi.hdgf.chunks;

import java.util.Arrays;

/* loaded from: classes12.dex */
public final class ChunkTrailer {
    private final byte[] trailerData;

    public ChunkTrailer(byte[] bArr, int i) {
        this.trailerData = Arrays.copyOfRange(bArr, i, i + 8);
    }

    public byte[] getTrailerData() {
        return this.trailerData;
    }

    public String toString() {
        return "<ChunkTrailer of length " + this.trailerData.length + ">";
    }
}

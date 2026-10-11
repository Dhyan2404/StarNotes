package org.apache.poi.hdgf.chunks;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* loaded from: classes12.dex */
public class ChunkHeaderV6 extends ChunkHeader {
    private short unknown2;
    private short unknown3;

    public static int getHeaderSize() {
        return 19;
    }

    @Override // org.apache.poi.hdgf.chunks.ChunkHeader
    public Charset getChunkCharset() {
        return StandardCharsets.US_ASCII;
    }

    @Override // org.apache.poi.hdgf.chunks.ChunkHeader
    public int getSizeInBytes() {
        return getHeaderSize();
    }

    public short getUnknown2() {
        return this.unknown2;
    }

    public short getUnknown3() {
        return this.unknown3;
    }

    @Override // org.apache.poi.hdgf.chunks.ChunkHeader
    public boolean hasSeparator() {
        return false;
    }

    @Override // org.apache.poi.hdgf.chunks.ChunkHeader
    public boolean hasTrailer() {
        int type = getType();
        if (type == 44 || type == 101 || type == 102 || type == 112 || type == 113) {
            return true;
        }
        switch (type) {
            case 105:
            case 106:
            case 107:
                return true;
            default:
                return getUnknown1() != 0;
        }
    }

    public void setUnknown2(short s) {
        this.unknown2 = s;
    }

    public void setUnknown3(short s) {
        this.unknown3 = s;
    }
}

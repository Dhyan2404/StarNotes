package org.apache.poi.hdgf.chunks;

import java.nio.charset.Charset;
import org.apache.poi.hdgf.exceptions.OldVisioFormatException;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public abstract class ChunkHeader {

    /* renamed from: id */
    private int f111333id;
    private int length;
    private int type;
    private int unknown1;

    public static ChunkHeader createChunkHeader(int i, byte[] bArr, int i2) {
        if (i >= 6) {
            ChunkHeaderV6 chunkHeaderV11 = i > 6 ? new ChunkHeaderV11() : new ChunkHeaderV6();
            chunkHeaderV11.setType((int) LittleEndian.getUInt(bArr, i2));
            chunkHeaderV11.setId((int) LittleEndian.getUInt(bArr, i2 + 4));
            chunkHeaderV11.setUnknown1((int) LittleEndian.getUInt(bArr, i2 + 8));
            chunkHeaderV11.setLength((int) LittleEndian.getUInt(bArr, i2 + 12));
            chunkHeaderV11.setUnknown2(LittleEndian.getShort(bArr, i2 + 16));
            chunkHeaderV11.setUnknown3(LittleEndian.getUByte(bArr, i2 + 18));
            return chunkHeaderV11;
        }
        if (i != 5 && i != 4) {
            throw new OldVisioFormatException("Visio files with versions below 4 are not supported, yours was " + i);
        }
        ChunkHeaderV4V5 chunkHeaderV4V5 = new ChunkHeaderV4V5();
        chunkHeaderV4V5.setType(LittleEndian.getShort(bArr, i2));
        chunkHeaderV4V5.setId(LittleEndian.getShort(bArr, i2 + 2));
        chunkHeaderV4V5.setUnknown2(LittleEndian.getUByte(bArr, i2 + 4));
        chunkHeaderV4V5.setUnknown3(LittleEndian.getUByte(bArr, i2 + 5));
        chunkHeaderV4V5.setUnknown1(LittleEndian.getShort(bArr, i2 + 6));
        chunkHeaderV4V5.setLength(Math.toIntExact(LittleEndian.getUInt(bArr, i2 + 8)));
        return chunkHeaderV4V5;
    }

    public static int getHeaderSize(int i) {
        return i >= 6 ? ChunkHeaderV6.getHeaderSize() : ChunkHeaderV4V5.getHeaderSize();
    }

    public abstract Charset getChunkCharset();

    public int getId() {
        return this.f111333id;
    }

    public int getLength() {
        return this.length;
    }

    public abstract int getSizeInBytes();

    public int getType() {
        return this.type;
    }

    public int getUnknown1() {
        return this.unknown1;
    }

    public abstract boolean hasSeparator();

    public abstract boolean hasTrailer();

    public void setId(int i) {
        this.f111333id = i;
    }

    public void setLength(int i) {
        this.length = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setUnknown1(int i) {
        this.unknown1 = i;
    }
}

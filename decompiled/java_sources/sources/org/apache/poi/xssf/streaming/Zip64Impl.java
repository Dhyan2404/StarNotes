package org.apache.poi.xssf.streaming;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;

/* loaded from: classes13.dex */
class Zip64Impl {
    private static final int DATA_DESCRIPTOR_USED = 8;
    private static final long MAX32 = 4294967295L;
    private static final long PK0102 = 33639248;
    private static final long PK0304 = 67324752;
    private static final long PK0506 = 101010256;
    private static final long PK0708 = 134695760;
    private static final int VERSION_20 = 20;
    private static final int VERSION_45 = 45;
    private static final int ZIP64_FIELD = 1;
    private final OutputStream out;
    private int written = 0;

    /* loaded from: classes13.dex */
    public static class Entry {
        int compressedSize;
        long crc;
        final String filename;
        int offset;
        long size;

        public Entry(String str) {
            this.filename = str;
        }
    }

    public Zip64Impl(OutputStream outputStream) {
        this.out = outputStream;
    }

    private void writeInt(long j) throws IOException {
        OutputStream outputStream = this.out;
        outputStream.write((int) ((j >>> 0) & 255));
        outputStream.write((int) ((j >>> 8) & 255));
        outputStream.write((int) ((j >>> 16) & 255));
        outputStream.write((int) ((j >>> 24) & 255));
        this.written += 4;
    }

    private void writeLong(long j) throws IOException {
        OutputStream outputStream = this.out;
        outputStream.write((int) ((j >>> 0) & 255));
        outputStream.write((int) ((j >>> 8) & 255));
        outputStream.write((int) ((j >>> 16) & 255));
        outputStream.write((int) ((j >>> 24) & 255));
        outputStream.write((int) ((j >>> 32) & 255));
        outputStream.write((int) ((j >>> 40) & 255));
        outputStream.write((int) ((j >>> 48) & 255));
        outputStream.write((int) ((j >>> 56) & 255));
        this.written += 8;
    }

    private void writeShort(int i) throws IOException {
        OutputStream outputStream = this.out;
        outputStream.write((i >>> 0) & 255);
        outputStream.write((i >>> 8) & 255);
        this.written += 2;
    }

    public int writeCEN(Entry entry) throws IOException {
        this.written = 0;
        boolean z = entry.size > 4294967295L;
        writeInt(PK0102);
        writeShort(45);
        writeShort(z ? 45 : 20);
        writeShort(8);
        writeShort(8);
        writeInt(0L);
        writeInt(entry.crc);
        writeInt(entry.compressedSize);
        writeInt(z ? 4294967295L : entry.size);
        writeShort(entry.filename.length());
        writeShort(z ? 12 : 0);
        writeShort(0);
        writeShort(0);
        writeShort(0);
        writeInt(0L);
        writeInt(entry.offset);
        byte[] bytes = entry.filename.getBytes(StandardCharsets.US_ASCII);
        this.out.write(bytes);
        if (z) {
            writeShort(1);
            writeShort(8);
            writeLong(entry.size);
        }
        return this.written + bytes.length;
    }

    public int writeDAT(Entry entry) throws IOException {
        this.written = 0;
        writeInt(PK0708);
        writeInt(entry.crc);
        writeLong(entry.compressedSize);
        writeLong(entry.size);
        return this.written;
    }

    public int writeEND(int i, int i2, int i3) throws IOException {
        this.written = 0;
        writeInt(PK0506);
        writeShort(0);
        writeShort(0);
        writeShort(i);
        writeShort(i);
        writeInt(i3);
        writeInt(i2);
        writeShort(0);
        return this.written;
    }

    public int writeLFH(Entry entry) throws IOException {
        this.written = 0;
        writeInt(PK0304);
        writeShort(45);
        writeShort(8);
        writeShort(8);
        writeInt(0L);
        writeInt(entry.crc);
        writeInt(0L);
        writeInt(0L);
        writeShort(entry.filename.length());
        writeShort(0);
        byte[] bytes = entry.filename.getBytes(StandardCharsets.US_ASCII);
        this.out.write(bytes);
        return this.written + bytes.length;
    }
}

package org.apache.commons.compress.compressors.p113z;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.apache.commons.compress.compressors.lzw.LZWInputStream;

/* loaded from: classes12.dex */
public class ZCompressorInputStream extends LZWInputStream {

    /* renamed from: s */
    public static final int f106388s = 31;

    /* renamed from: t */
    public static final int f106389t = 157;

    /* renamed from: u */
    public static final int f106390u = 128;

    /* renamed from: v */
    public static final int f106391v = 31;

    /* renamed from: p */
    public final boolean f106392p;

    /* renamed from: q */
    public final int f106393q;

    /* renamed from: r */
    public long f106394r;

    public ZCompressorInputStream(InputStream inputStream, int i) throws IOException {
        super(inputStream, ByteOrder.LITTLE_ENDIAN);
        int readBits = (int) this.f106308in.readBits(8);
        int readBits2 = (int) this.f106308in.readBits(8);
        int readBits3 = (int) this.f106308in.readBits(8);
        if (readBits == 31 && readBits2 == 157 && readBits3 >= 0) {
            boolean z = (readBits3 & 128) != 0;
            this.f106392p = z;
            int i2 = readBits3 & 31;
            this.f106393q = i2;
            if (z) {
                setClearCode(9);
            }
            initializeTables(i2, i);
            m66827j();
            return;
        }
        throw new IOException("Input is not in .Z format");
    }

    public static boolean matches(byte[] bArr, int i) {
        return i > 3 && bArr[0] == 31 && bArr[1] == -99;
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    public int addEntry(int i, byte b) throws IOException {
        int codeSize = 1 << getCodeSize();
        int addEntry = addEntry(i, b, codeSize);
        if (getTableSize() == codeSize && getCodeSize() < this.f106393q) {
            m66828w();
            incrementCodeSize();
        }
        return addEntry;
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    public int decompressNextSymbol() throws IOException {
        int readNextCode = readNextCode();
        if (readNextCode < 0) {
            return -1;
        }
        boolean z = false;
        if (this.f106392p && readNextCode == getClearCode()) {
            m66827j();
            m66828w();
            resetCodeSize();
            resetPreviousCode();
            return 0;
        }
        if (readNextCode == getTableSize()) {
            addRepeatOfPreviousCode();
            z = true;
        } else if (readNextCode > getTableSize()) {
            throw new IOException(String.format("Invalid %d bit code 0x%x", Integer.valueOf(getCodeSize()), Integer.valueOf(readNextCode)));
        }
        return expandCodeToOutputStack(readNextCode, z);
    }

    /* renamed from: j */
    public final void m66827j() {
        setTableSize((this.f106392p ? 1 : 0) + 256);
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    public int readNextCode() throws IOException {
        int readNextCode = super.readNextCode();
        if (readNextCode >= 0) {
            this.f106394r++;
        }
        return readNextCode;
    }

    /* renamed from: w */
    public final void m66828w() throws IOException {
        long j = 8 - (this.f106394r % 8);
        if (j == 8) {
            j = 0;
        }
        for (long j2 = 0; j2 < j; j2++) {
            readNextCode();
        }
        this.f106308in.clearBitCache();
    }

    public ZCompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, -1);
    }
}

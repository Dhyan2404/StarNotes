package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.apache.commons.compress.compressors.lzw.LZWInputStream;

/* loaded from: classes12.dex */
public class eun extends LZWInputStream {

    /* renamed from: q */
    public static final int f69359q = 13;

    /* renamed from: r */
    public static final int f69360r = 8192;

    /* renamed from: p */
    public final boolean[] f69361p;

    public eun(InputStream inputStream) {
        super(inputStream, ByteOrder.LITTLE_ENDIAN);
        setClearCode(9);
        initializeTables(13);
        this.f69361p = new boolean[getPrefixesLength()];
        for (int i = 0; i < 256; i++) {
            this.f69361p[i] = true;
        }
        setTableSize(getClearCode() + 1);
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    public int addEntry(int i, byte b) throws IOException {
        int tableSize = getTableSize();
        while (tableSize < 8192 && this.f69361p[tableSize]) {
            tableSize++;
        }
        setTableSize(tableSize);
        int addEntry = addEntry(i, b, 8192);
        if (addEntry >= 0) {
            this.f69361p[addEntry] = true;
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
        if (readNextCode != getClearCode()) {
            if (!this.f69361p[readNextCode]) {
                readNextCode = addRepeatOfPreviousCode();
                z = true;
            }
            return expandCodeToOutputStack(readNextCode, z);
        }
        int readNextCode2 = readNextCode();
        if (readNextCode2 < 0) {
            throw new IOException("Unexpected EOF;");
        }
        if (readNextCode2 == 1) {
            if (getCodeSize() >= 13) {
                throw new IOException("Attempt to increase code size beyond maximum");
            }
            incrementCodeSize();
        } else {
            if (readNextCode2 != 2) {
                throw new IOException("Invalid clear code subcode " + readNextCode2);
            }
            m54040j();
            setTableSize(getClearCode() + 1);
        }
        return 0;
    }

    /* renamed from: j */
    public final void m54040j() {
        boolean[] zArr = new boolean[8192];
        int i = 0;
        while (true) {
            boolean[] zArr2 = this.f69361p;
            if (i >= zArr2.length) {
                break;
            }
            if (zArr2[i] && getPrefix(i) != -1) {
                zArr[getPrefix(i)] = true;
            }
            i++;
        }
        for (int clearCode = getClearCode() + 1; clearCode < 8192; clearCode++) {
            if (!zArr[clearCode]) {
                this.f69361p[clearCode] = false;
                setPrefix(clearCode, -1);
            }
        }
    }
}

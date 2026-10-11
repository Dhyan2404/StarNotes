package org.apache.poi.xssf.binary;

import com.zaxxer.sparsebits.SparseBitSet;
import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInputStream;

@Internal
/* loaded from: classes13.dex */
public abstract class XSSFBParser {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private static int MAX_RECORD_LENGTH = 1000000;

    /* renamed from: is */
    private final LittleEndianInputStream f111821is;
    private final SparseBitSet records;

    public XSSFBParser(InputStream inputStream) {
        this.f111821is = new LittleEndianInputStream(inputStream);
        this.records = null;
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    private void readNext(byte b) throws IOException {
        int i = (b >> 7) & 1;
        int i2 = b;
        if (i == 1) {
            i2 = ((byte) (b & (-129))) + (((byte) (this.f111821is.readByte() & (-129))) << 7);
        }
        long j = 0;
        int i3 = 0;
        boolean z = false;
        while (i3 < 4 && !z) {
            j += ((byte) (r5 & (-129))) << (i3 * 7);
            i3++;
            z = ((this.f111821is.readByte() >> 7) & 1) == 0;
        }
        SparseBitSet sparseBitSet = this.records;
        if (sparseBitSet == null || sparseBitSet.get(i2)) {
            byte[] safelyAllocate = IOUtils.safelyAllocate(j, MAX_RECORD_LENGTH);
            this.f111821is.readFully(safelyAllocate);
            handleRecord(i2, safelyAllocate);
            return;
        }
        long skipFully = IOUtils.skipFully(this.f111821is, j);
        if (skipFully == j) {
            return;
        }
        throw new XSSFBParseException("End of file reached before expected.\tTried to skip " + j + ", but only skipped " + skipFully);
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public abstract void handleRecord(int i, byte[] bArr) throws XSSFBParseException;

    public void parse() throws IOException {
        while (true) {
            int read = this.f111821is.read();
            if (read == -1) {
                return;
            } else {
                readNext((byte) read);
            }
        }
    }

    public XSSFBParser(InputStream inputStream, SparseBitSet sparseBitSet) {
        this.f111821is = new LittleEndianInputStream(inputStream);
        this.records = sparseBitSet;
    }
}

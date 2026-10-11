package org.apache.poi.hdgf.streams;

import java.io.IOException;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.poi.hdgf.HDGFLZW;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public final class CompressedStreamStore extends StreamStore {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 64000000;
    private static int MAX_RECORD_LENGTH = 64000000;
    private final byte[] blockHeader;
    private boolean blockHeaderInContents;
    private byte[] compressedContents;

    public CompressedStreamStore(byte[] bArr, int i, int i2) throws IOException {
        this(decompress(bArr, i, i2));
        this.compressedContents = IOUtils.safelyClone(bArr, i, i2, MAX_RECORD_LENGTH);
    }

    public static byte[][] decompress(byte[] bArr, int i, int i2) throws IOException {
        UnsynchronizedByteArrayInputStream unsynchronizedByteArrayInputStream = new UnsynchronizedByteArrayInputStream(bArr, i, i2);
        try {
            byte[] decompress = new HDGFLZW().decompress(unsynchronizedByteArrayInputStream);
            if (decompress.length < 4) {
                throw new IllegalArgumentException("Could not read enough data to decompress: " + decompress.length);
            }
            byte[] bArr2 = new byte[4];
            byte[][] bArr3 = {bArr2, new byte[decompress.length - 4]};
            System.arraycopy(decompress, 0, bArr2, 0, 4);
            byte[] bArr4 = bArr3[1];
            System.arraycopy(decompress, 4, bArr4, 0, bArr4.length);
            unsynchronizedByteArrayInputStream.close();
            return bArr3;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    unsynchronizedByteArrayInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public byte[] _getBlockHeader() {
        return this.blockHeader;
    }

    public byte[] _getCompressedContents() {
        return this.compressedContents;
    }

    @Override // org.apache.poi.hdgf.streams.StreamStore
    public void copyBlockHeaderToContents() {
        if (this.blockHeaderInContents) {
            return;
        }
        prependContentsWith(this.blockHeader);
        this.blockHeaderInContents = true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private CompressedStreamStore(byte[][] r4) {
        /*
            r3 = this;
            r0 = 1
            r0 = r4[r0]
            int r1 = r0.length
            r2 = 0
            r3.<init>(r0, r2, r1)
            r4 = r4[r2]
            r3.blockHeader = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hdgf.streams.CompressedStreamStore.<init>(byte[][]):void");
    }
}

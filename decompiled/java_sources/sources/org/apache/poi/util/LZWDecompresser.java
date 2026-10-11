package org.apache.poi.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;

/* loaded from: classes13.dex */
public abstract class LZWDecompresser {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    public static final int DICT_MASK = 4095;
    public static final int DICT_SIZE = 4096;
    private static int MAX_RECORD_LENGTH = 1000000;
    private final int codeLengthIncrease;
    private final boolean maskMeansCompressed;
    private final boolean positionIsBigEndian;

    public LZWDecompresser(boolean z, int i, boolean z2) {
        this.maskMeansCompressed = z;
        this.codeLengthIncrease = i;
        this.positionIsBigEndian = z2;
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public abstract int adjustDictionaryOffset(int i);

    public byte[] decompress(InputStream inputStream) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        decompress(inputStream, unsynchronizedByteArrayOutputStream);
        return unsynchronizedByteArrayOutputStream.toByteArray();
    }

    public abstract int populateDictionary(byte[] bArr);

    public void decompress(InputStream inputStream, OutputStream outputStream) throws IOException {
        int i;
        byte[] bArr = new byte[4096];
        int populateDictionary = populateDictionary(bArr);
        byte[] safelyAllocate = IOUtils.safelyAllocate(this.codeLengthIncrease + 16, MAX_RECORD_LENGTH);
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                return;
            }
            for (int i2 = 1; i2 < 256; i2 <<= 1) {
                if (((read & i2) > 0) ^ this.maskMeansCompressed) {
                    int read2 = inputStream.read();
                    if (read2 != -1) {
                        bArr[populateDictionary & 4095] = (byte) read2;
                        outputStream.write(read2);
                        populateDictionary++;
                    }
                } else {
                    int read3 = inputStream.read();
                    int read4 = inputStream.read();
                    if (read3 != -1 && read4 != -1) {
                        int i3 = (read4 & 15) + this.codeLengthIncrease;
                        if (this.positionIsBigEndian) {
                            read3 <<= 4;
                            i = read4 >>> 4;
                        } else {
                            i = (read4 & 240) << 4;
                        }
                        int adjustDictionaryOffset = adjustDictionaryOffset(read3 + i);
                        for (int i4 = 0; i4 < i3; i4++) {
                            byte b = bArr[(adjustDictionaryOffset + i4) & 4095];
                            safelyAllocate[i4] = b;
                            bArr[(populateDictionary + i4) & 4095] = b;
                        }
                        outputStream.write(safelyAllocate, 0, i3);
                        populateDictionary += i3;
                    }
                }
            }
        }
    }
}

package org.apache.xmlbeans.impl.util;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UTFDataFormatException;

/* loaded from: classes13.dex */
public class LongUTFDataInputStream extends DataInputStream {

    /* loaded from: classes13.dex */
    public interface IOCall {
        byte onebyte(int[] iArr, int[] iArr2, int[] iArr3) throws IOException;
    }

    public LongUTFDataInputStream(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ byte lambda$readLongUTF$0(int i, byte[] bArr, int[] iArr, int[] iArr2, int[] iArr3) throws IOException {
        int i2 = iArr3[0];
        if (i2 + 1 > i) {
            throw new UTFDataFormatException("malformed input: partial character at end");
        }
        if (iArr[0] >= iArr2[0]) {
            int min = Math.min(bArr.length, i - i2);
            iArr2[0] = min;
            readFully(bArr, 0, min);
            iArr[0] = 0;
        }
        iArr3[0] = iArr3[0] + 1;
        int i3 = iArr[0];
        iArr[0] = i3 + 1;
        return bArr[i3];
    }

    public String readLongUTF() throws IOException {
        final int readUnsignedShortOrInt = readUnsignedShortOrInt();
        StringBuilder sb = new StringBuilder(readUnsignedShortOrInt / 2);
        final byte[] bArr = new byte[4096];
        IOCall iOCall = new IOCall() { // from class: org.apache.xmlbeans.impl.util.a
            @Override // org.apache.xmlbeans.impl.util.LongUTFDataInputStream.IOCall
            public final byte onebyte(int[] iArr, int[] iArr2, int[] iArr3) {
                byte lambda$readLongUTF$0;
                lambda$readLongUTF$0 = LongUTFDataInputStream.this.lambda$readLongUTF$0(readUnsignedShortOrInt, bArr, iArr, iArr2, iArr3);
                return lambda$readLongUTF$0;
            }
        };
        int[] iArr = {0};
        int[] iArr2 = {0};
        int[] iArr3 = {0};
        while (iArr[0] < readUnsignedShortOrInt) {
            int onebyte = iOCall.onebyte(iArr2, iArr3, iArr) & 255;
            switch (onebyte >> 4) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    sb.append((char) onebyte);
                    break;
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    throw new UTFDataFormatException("malformed input around byte " + iArr[0]);
                case 12:
                case 13:
                    byte onebyte2 = iOCall.onebyte(iArr2, iArr3, iArr);
                    if ((onebyte2 & 192) != 128) {
                        throw new UTFDataFormatException("malformed input around byte " + iArr[0]);
                    }
                    sb.append((char) (((onebyte & 31) << 6) | (onebyte2 & 63)));
                    break;
                case 14:
                    byte onebyte3 = iOCall.onebyte(iArr2, iArr3, iArr);
                    byte onebyte4 = iOCall.onebyte(iArr2, iArr3, iArr);
                    if ((onebyte3 & 192) != 128 || (onebyte4 & 192) != 128) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("malformed input around byte ");
                        sb2.append(iArr[0] - 1);
                        throw new UTFDataFormatException(sb2.toString());
                    }
                    sb.append((char) (((onebyte & 15) << 12) | ((onebyte3 & 63) << 6) | (onebyte4 & 63)));
                    break;
            }
        }
        return sb.toString();
    }

    public int readUnsignedShortOrInt() throws IOException {
        return readUnsignedShortOrInt(this);
    }

    public static int readUnsignedShortOrInt(DataInputStream dataInputStream) throws IOException {
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        return readUnsignedShort == 65534 ? dataInputStream.readInt() : readUnsignedShort;
    }
}

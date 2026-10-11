package org.apache.poi.util;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import okhttp3.internal.ws.WebSocketProtocol;

@Internal
/* loaded from: classes13.dex */
public final class HexDump {
    public static final String EOL = System.getProperty("line.separator");
    public static final Charset UTF8 = StandardCharsets.UTF_8;

    private HexDump() {
    }

    public static String byteToHex(int i) {
        StringBuilder sb = new StringBuilder(4);
        writeHex(sb, i & 255, 2, "0x");
        return sb.toString();
    }

    public static void dump(byte[] bArr, long j, OutputStream outputStream, int i, int i2) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException {
        if (outputStream != null) {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, UTF8);
            outputStreamWriter.write(dump(bArr, j, i, i2));
            outputStreamWriter.flush();
            return;
        }
        throw new IllegalArgumentException("cannot write to nullstream");
    }

    public static String intToHex(int i) {
        StringBuilder sb = new StringBuilder(10);
        writeHex(sb, i & 4294967295L, 8, "0x");
        return sb.toString();
    }

    public static String longToHex(long j) {
        StringBuilder sb = new StringBuilder(18);
        writeHex(sb, j, 16, "0x");
        return sb.toString();
    }

    public static String shortToHex(int i) {
        StringBuilder sb = new StringBuilder(6);
        writeHex(sb, i & WebSocketProtocol.PAYLOAD_SHORT_MAX, 4, "0x");
        return sb.toString();
    }

    public static char toAscii(int i) {
        char c = (char) (i & 255);
        if (Character.isISOControl(c)) {
            return '.';
        }
        if (c == 221 || c == 255) {
            return '.';
        }
        return c;
    }

    public static String toHex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        if (bArr != null && bArr.length > 0) {
            for (int i = 0; i < bArr.length; i++) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(toHex(bArr[i]));
            }
        }
        sb.append(']');
        return sb.toString();
    }

    private static void writeHex(StringBuilder sb, long j, int i, String str) {
        sb.append(str);
        char[] cArr = new char[i];
        for (int i2 = i - 1; i2 >= 0; i2--) {
            int intExact = Math.toIntExact(15 & j);
            cArr[i2] = (char) (intExact < 10 ? intExact + 48 : (intExact + 65) - 10);
            j >>>= 4;
        }
        sb.append(cArr);
    }

    public static synchronized void dump(byte[] bArr, long j, OutputStream outputStream, int i) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException {
        synchronized (HexDump.class) {
            dump(bArr, j, outputStream, i, Integer.MAX_VALUE);
        }
    }

    public static String dump(byte[] bArr, long j, int i) {
        return dump(bArr, j, i, Integer.MAX_VALUE);
    }

    public static String dump(byte[] bArr, long j, int i, int i2) {
        int length;
        int i3;
        if (bArr != null && bArr.length != 0) {
            if (i2 != Integer.MAX_VALUE && i2 >= 0 && (i3 = i2 + i) >= 0) {
                length = Math.min(bArr.length, i3);
            } else {
                length = bArr.length;
            }
            if (i >= 0 && i < bArr.length) {
                long j2 = j + i;
                StringBuilder sb = new StringBuilder(74);
                while (i < length) {
                    int i4 = length - i;
                    if (i4 > 16) {
                        i4 = 16;
                    }
                    writeHex(sb, j2, 8, "");
                    for (int i5 = 0; i5 < 16; i5++) {
                        if (i5 < i4) {
                            writeHex(sb, bArr[i5 + i], 2, " ");
                        } else {
                            sb.append("   ");
                        }
                    }
                    sb.append(' ');
                    for (int i6 = 0; i6 < i4; i6++) {
                        sb.append(toAscii(bArr[i6 + i]));
                    }
                    sb.append(EOL);
                    j2 += i4;
                    i += 16;
                }
                return sb.toString();
            }
            throw new ArrayIndexOutOfBoundsException("illegal index: " + i + " into array of length " + bArr.length);
        }
        return "No Data" + EOL;
    }

    public static String toHex(short s) {
        StringBuilder sb = new StringBuilder(4);
        writeHex(sb, s & 65535, 4, "");
        return sb.toString();
    }

    public static String toHex(byte b) {
        StringBuilder sb = new StringBuilder(2);
        writeHex(sb, b & 255, 2, "");
        return sb.toString();
    }

    public static String toHex(int i) {
        StringBuilder sb = new StringBuilder(8);
        writeHex(sb, i & 4294967295L, 8, "");
        return sb.toString();
    }

    public static String toHex(long j) {
        StringBuilder sb = new StringBuilder(16);
        writeHex(sb, j, 16, "");
        return sb.toString();
    }
}

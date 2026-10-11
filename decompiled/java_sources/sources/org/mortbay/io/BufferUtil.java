package org.mortbay.io;

import com.alibaba.fastjson2.JSONB;
import java.io.UnsupportedEncodingException;
import okhttp3.internal.connection.RealConnection;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.poi.hwmf.usermodel.HwmfPicture;
import org.mortbay.util.StringUtil;

/* loaded from: classes13.dex */
public class BufferUtil {

    /* renamed from: a */
    public static final byte f114460a = 32;

    /* renamed from: b */
    public static final byte f114461b = 45;

    /* renamed from: c */
    public static final byte[] f114462c = {48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 65, 66, 67, JSONB.Constants.BC_INT32_SHORT_ZERO, 69, 70};

    /* renamed from: d */
    public static int[] f114463d = {1000000000, HwmfPicture.DEFAULT_MAX_RECORD_LENGTH, 10000000, 1000000, 100000, 10000, 1000, 100, 10, 1};

    /* renamed from: e */
    public static int[] f114464e = {268435456, 16777216, 1048576, 65536, 4096, 256, 16, 1};

    /* renamed from: f */
    public static final long[] f114465f = {1000000000000000000L, 100000000000000000L, 10000000000000000L, 1000000000000000L, 100000000000000L, 10000000000000L, 1000000000000L, 100000000000L, RealConnection.IDLE_CONNECTION_HEALTHY_NS, 1000000000, 100000000, 10000000, 1000000, 100000, 10000, 1000, 100, 10, 1};

    public static boolean isPrefix(Buffer buffer, Buffer buffer2) {
        if (buffer.length() > buffer2.length()) {
            return false;
        }
        int index = buffer2.getIndex();
        int index2 = buffer.getIndex();
        while (index2 < buffer.putIndex()) {
            int i = index + 1;
            if (buffer.peek(index2) != buffer2.peek(index)) {
                return false;
            }
            index2++;
            index = i;
        }
        return true;
    }

    public static void prependHexInt(Buffer buffer, int i) {
        boolean z;
        if (i == 0) {
            int index = buffer.getIndex() - 1;
            buffer.poke(index, (byte) 48);
            buffer.setGetIndex(index);
            return;
        }
        if (i < 0) {
            i = -i;
            z = true;
        } else {
            z = false;
        }
        int index2 = buffer.getIndex();
        while (i > 0) {
            int i2 = i & 15;
            i >>= 4;
            index2--;
            buffer.poke(index2, f114462c[i2]);
        }
        if (z) {
            index2--;
            buffer.poke(index2, (byte) 45);
        }
        buffer.setGetIndex(index2);
    }

    public static void putCRLF(Buffer buffer) {
        buffer.put((byte) 13);
        buffer.put((byte) 10);
    }

    public static void putDecInt(Buffer buffer, int i) {
        if (i < 0) {
            buffer.put((byte) 45);
            if (i == Integer.MIN_VALUE) {
                buffer.put(TarConstants.LF_SYMLINK);
                i = 147483648;
            } else {
                i = -i;
            }
        }
        if (i < 10) {
            buffer.put(f114462c[i]);
            return;
        }
        int i2 = 0;
        boolean z = false;
        while (true) {
            int[] iArr = f114463d;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = iArr[i2];
            if (i >= i3) {
                int i4 = i / i3;
                buffer.put(f114462c[i4]);
                i -= i4 * f114463d[i2];
                z = true;
            } else if (z) {
                buffer.put((byte) 48);
            }
            i2++;
        }
    }

    public static void putDecLong(Buffer buffer, long j) {
        if (j < 0) {
            buffer.put((byte) 45);
            if (j == Long.MIN_VALUE) {
                buffer.put((byte) 57);
                j = 223372036854775808L;
            } else {
                j = -j;
            }
        }
        if (j < 10) {
            buffer.put(f114462c[(int) j]);
            return;
        }
        int i = 0;
        boolean z = false;
        while (true) {
            long[] jArr = f114465f;
            if (i >= jArr.length) {
                return;
            }
            long j2 = jArr[i];
            if (j >= j2) {
                long j3 = j / j2;
                buffer.put(f114462c[(int) j3]);
                j -= j3 * jArr[i];
                z = true;
            } else if (z) {
                buffer.put((byte) 48);
            }
            i++;
        }
    }

    public static void putHexInt(Buffer buffer, int i) {
        if (i < 0) {
            buffer.put((byte) 45);
            if (i == Integer.MIN_VALUE) {
                buffer.put((byte) 56);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                return;
            }
            i = -i;
        }
        if (i < 16) {
            buffer.put(f114462c[i]);
            return;
        }
        int i2 = 0;
        boolean z = false;
        while (true) {
            int[] iArr = f114464e;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = iArr[i2];
            if (i >= i3) {
                int i4 = i / i3;
                buffer.put(f114462c[i4]);
                i -= i4 * f114464e[i2];
                z = true;
            } else if (z) {
                buffer.put((byte) 48);
            }
            i2++;
        }
    }

    public static String to8859_1_String(Buffer buffer) {
        if (buffer.isImmutable()) {
            return buffer.toString();
        }
        try {
            byte[] array = buffer.array();
            if (array != null) {
                return new String(array, buffer.getIndex(), buffer.length(), StringUtil.__ISO_8859_1);
            }
            StringBuffer stringBuffer = new StringBuffer(buffer.length());
            int index = buffer.getIndex();
            for (int i = 0; i < buffer.length(); i++) {
                stringBuffer.append((char) (buffer.peek(index) & Byte.MAX_VALUE));
                index++;
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return buffer.toString();
        }
    }

    public static Buffer toBuffer(long j) {
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(16);
        putDecLong(byteArrayBuffer, j);
        return byteArrayBuffer;
    }

    public static int toInt(Buffer buffer) {
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        for (int index = buffer.getIndex(); index < buffer.putIndex(); index++) {
            byte peek = buffer.peek(index);
            if (peek > 32) {
                if (peek >= 48 && peek <= 57) {
                    i = (i * 10) + peek + JSONB.Constants.BC_INT64_BYTE_ZERO;
                    z = true;
                } else {
                    if (peek != 45 || z) {
                        break;
                    }
                    z2 = true;
                }
            } else {
                if (z) {
                    break;
                }
            }
        }
        if (z) {
            return z2 ? -i : i;
        }
        throw new NumberFormatException(buffer.toString());
    }

    public static long toLong(Buffer buffer) {
        long j = 0;
        boolean z = false;
        boolean z2 = false;
        for (int index = buffer.getIndex(); index < buffer.putIndex(); index++) {
            byte peek = buffer.peek(index);
            if (peek > 32) {
                if (peek >= 48 && peek <= 57) {
                    j = (j * 10) + peek + JSONB.Constants.BC_INT64_BYTE_ZERO;
                    z = true;
                } else {
                    if (peek != 45 || z) {
                        break;
                    }
                    z2 = true;
                }
            } else {
                if (z) {
                    break;
                }
            }
        }
        if (z) {
            return z2 ? -j : j;
        }
        throw new NumberFormatException(buffer.toString());
    }
}

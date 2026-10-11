package org.apache.commons.compress.archivers.tar;

import com.alibaba.fastjson2.JSONB;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class TarUtils {

    /* renamed from: a */
    public static final int f105764a = 255;

    /* renamed from: b */
    public static final ZipEncoding f105765b = ZipEncodingHelper.getZipEncoding(null);

    /* renamed from: c */
    public static final ZipEncoding f105766c = new C18849a();

    /* renamed from: org.apache.commons.compress.archivers.tar.TarUtils$a */
    /* loaded from: classes12.dex */
    public static class C18849a implements ZipEncoding {
        @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
        public boolean canEncode(String str) {
            return true;
        }

        @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
        public String decode(byte[] bArr) {
            StringBuilder sb = new StringBuilder(bArr.length);
            for (byte b : bArr) {
                if (b == 0) {
                    break;
                }
                sb.append((char) (b & 255));
            }
            return sb.toString();
        }

        @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
        public ByteBuffer encode(String str) {
            int length = str.length();
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                bArr[i] = (byte) str.charAt(i);
            }
            return ByteBuffer.wrap(bArr);
        }
    }

    /* renamed from: a */
    public static String m66388a(byte[] bArr, int i, int i2, int i3, byte b) {
        return "Invalid byte " + ((int) b) + " at offset " + (i3 - i) + " in '" + new String(bArr, i, i2, Charset.defaultCharset()).replace("\u0000", "{NUL}") + "' len=" + i2;
    }

    /* renamed from: b */
    public static void m66389b(long j, byte[] bArr, int i, int i2, boolean z) {
        byte[] byteArray = BigInteger.valueOf(j).toByteArray();
        int length = byteArray.length;
        if (length > i2 - 1) {
            throw new IllegalArgumentException("Value " + j + " is too large for " + i2 + " byte field.");
        }
        int i3 = (i2 + i) - length;
        System.arraycopy(byteArray, 0, bArr, i3, length);
        byte b = (byte) (z ? 255 : 0);
        while (true) {
            i++;
            if (i >= i3) {
                return;
            } else {
                bArr[i] = b;
            }
        }
    }

    /* renamed from: c */
    public static void m66390c(long j, byte[] bArr, int i, int i2, boolean z) {
        int i3 = (i2 - 1) * 8;
        long j2 = 1 << i3;
        long abs = Math.abs(j);
        if (abs < 0 || abs >= j2) {
            throw new IllegalArgumentException("Value " + j + " is too large for " + i2 + " byte field.");
        }
        if (z) {
            abs = ((abs ^ (j2 - 1)) + 1) | (255 << i3);
        }
        for (int i4 = (i2 + i) - 1; i4 >= i; i4--) {
            bArr[i4] = (byte) abs;
            abs >>= 8;
        }
    }

    public static long computeCheckSum(byte[] bArr) {
        long j = 0;
        for (byte b : bArr) {
            j += b & 255;
        }
        return j;
    }

    /* renamed from: d */
    public static long m66391d(byte[] bArr, int i, int i2, boolean z) {
        int i3 = i2 - 1;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i + 1, bArr2, 0, i3);
        BigInteger bigInteger = new BigInteger(bArr2);
        if (z) {
            bigInteger = bigInteger.add(BigInteger.valueOf(-1L)).not();
        }
        if (bigInteger.bitLength() <= 63) {
            long longValue = bigInteger.longValue();
            return z ? -longValue : longValue;
        }
        throw new IllegalArgumentException("At offset " + i + ", " + i2 + " byte binary number exceeds maximum signed long value");
    }

    /* renamed from: e */
    public static long m66392e(byte[] bArr, int i, int i2, boolean z) {
        if (i2 >= 9) {
            throw new IllegalArgumentException("At offset " + i + ", " + i2 + " byte binary number exceeds maximum signed long value");
        }
        long j = 0;
        for (int i3 = 1; i3 < i2; i3++) {
            j = (j << 8) + (bArr[i + i3] & 255);
        }
        if (z) {
            j = (j - 1) ^ (((long) Math.pow(2.0d, (i2 - 1) * 8.0d)) - 1);
        }
        return z ? -j : j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0028, code lost:
    
        throw new java.io.IOException("Corrupted TAR archive. Non-numeric value in sparse headers block");
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long[] m66393f(java.io.InputStream r8) throws java.io.IOException {
        /*
            r0 = 0
            r2 = r0
        L3:
            int r4 = r8.read()
            r5 = 10
            r6 = 1
            if (r4 == r5) goto L31
            long r0 = r0 + r6
            r5 = -1
            if (r4 == r5) goto L29
            r5 = 48
            if (r4 < r5) goto L21
            r5 = 57
            if (r4 > r5) goto L21
            r5 = 10
            long r2 = r2 * r5
            int r4 = r4 + (-48)
            long r4 = (long) r4
            long r2 = r2 + r4
            goto L3
        L21:
            java.io.IOException r8 = new java.io.IOException
            java.lang.String r0 = "Corrupted TAR archive. Non-numeric value in sparse headers block"
            r8.<init>(r0)
            throw r8
        L29:
            java.io.IOException r8 = new java.io.IOException
            java.lang.String r0 = "Unexpected EOF when reading parse information of 1.X PAX format"
            r8.<init>(r0)
            throw r8
        L31:
            long r0 = r0 + r6
            r8 = 2
            long[] r8 = new long[r8]
            r4 = 0
            r8[r4] = r2
            r2 = 1
            r8[r2] = r0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.tar.TarUtils.m66393f(java.io.InputStream):long[]");
    }

    public static int formatCheckSumOctalBytes(long j, byte[] bArr, int i, int i2) {
        int i3 = i2 - 2;
        formatUnsignedOctalString(j, bArr, i, i3);
        bArr[i3 + i] = 0;
        bArr[i3 + 1 + i] = 32;
        return i + i2;
    }

    public static int formatLongOctalBytes(long j, byte[] bArr, int i, int i2) {
        int i3 = i2 - 1;
        formatUnsignedOctalString(j, bArr, i, i3);
        bArr[i3 + i] = 32;
        return i + i2;
    }

    public static int formatLongOctalOrBinaryBytes(long j, byte[] bArr, int i, int i2) {
        long j2 = i2 == 8 ? 2097151L : TarConstants.MAXSIZE;
        boolean z = j < 0;
        if (!z && j <= j2) {
            return formatLongOctalBytes(j, bArr, i, i2);
        }
        if (i2 < 9) {
            m66390c(j, bArr, i, i2, z);
        } else {
            m66389b(j, bArr, i, i2, z);
        }
        bArr[i] = (byte) (z ? 255 : 128);
        return i + i2;
    }

    public static int formatNameBytes(String str, byte[] bArr, int i, int i2) {
        try {
            try {
                return formatNameBytes(str, bArr, i, i2, f105765b);
            } catch (IOException unused) {
                return formatNameBytes(str, bArr, i, i2, f105766c);
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    public static int formatOctalBytes(long j, byte[] bArr, int i, int i2) {
        int i3 = i2 - 2;
        formatUnsignedOctalString(j, bArr, i, i3);
        bArr[i3 + i] = 32;
        bArr[i3 + 1 + i] = 0;
        return i + i2;
    }

    public static void formatUnsignedOctalString(long j, byte[] bArr, int i, int i2) {
        int i3;
        int i4 = i2 - 1;
        if (j == 0) {
            i3 = i4 - 1;
            bArr[i4 + i] = 48;
        } else {
            long j2 = j;
            while (i4 >= 0 && j2 != 0) {
                bArr[i + i4] = (byte) (((byte) (7 & j2)) + 48);
                j2 >>>= 3;
                i4--;
            }
            if (j2 != 0) {
                throw new IllegalArgumentException(j + "=" + Long.toOctalString(j) + " will not fit in octal number buffer of length " + i2);
            }
            i3 = i4;
        }
        while (i3 >= 0) {
            bArr[i + i3] = 48;
            i3--;
        }
    }

    /* renamed from: g */
    public static List<TarArchiveStructSparse> m66394g(byte[] bArr, int i, int i2) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < i2; i3++) {
            try {
                TarArchiveStructSparse parseSparse = parseSparse(bArr, (i3 * 24) + i);
                if (parseSparse.getOffset() < 0) {
                    throw new IOException("Corrupted TAR archive, sparse entry with negative offset");
                }
                if (parseSparse.getNumbytes() < 0) {
                    throw new IOException("Corrupted TAR archive, sparse entry with negative numbytes");
                }
                arrayList.add(parseSparse);
            } catch (IllegalArgumentException e) {
                throw new IOException("Corrupted TAR archive, sparse entry is invalid", e);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static boolean parseBoolean(byte[] bArr, int i) {
        return bArr[i] == 1;
    }

    public static List<TarArchiveStructSparse> parseFromPAX01SparseHeaders(String str) throws IOException {
        ArrayList arrayList = new ArrayList();
        String[] split = str.split(",");
        if (split.length % 2 == 1) {
            throw new IOException("Corrupted TAR archive. Bad format in GNU.sparse.map PAX Header");
        }
        for (int i = 0; i < split.length; i += 2) {
            try {
                long parseLong = Long.parseLong(split[i]);
                if (parseLong < 0) {
                    throw new IOException("Corrupted TAR archive. Sparse struct offset contains negative value");
                }
                try {
                    long parseLong2 = Long.parseLong(split[i + 1]);
                    if (parseLong2 < 0) {
                        throw new IOException("Corrupted TAR archive. Sparse struct numbytes contains negative value");
                    }
                    arrayList.add(new TarArchiveStructSparse(parseLong, parseLong2));
                } catch (NumberFormatException unused) {
                    throw new IOException("Corrupted TAR archive. Sparse struct numbytes contains a non-numeric value");
                }
            } catch (NumberFormatException unused2) {
                throw new IOException("Corrupted TAR archive. Sparse struct offset contains a non-numeric value");
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static String parseName(byte[] bArr, int i, int i2) {
        try {
            try {
                return parseName(bArr, i, i2, f105765b);
            } catch (IOException unused) {
                return parseName(bArr, i, i2, f105766c);
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    public static long parseOctal(byte[] bArr, int i, int i2) {
        int i3 = i + i2;
        if (i2 < 2) {
            throw new IllegalArgumentException("Length " + i2 + " must be at least 2");
        }
        long j = 0;
        if (bArr[i] == 0) {
            return 0L;
        }
        int i4 = i;
        while (i4 < i3 && bArr[i4] == 32) {
            i4++;
        }
        byte b = bArr[i3 - 1];
        while (i4 < i3 && (b == 0 || b == 32)) {
            i3--;
            b = bArr[i3 - 1];
        }
        while (i4 < i3) {
            byte b2 = bArr[i4];
            if (b2 < 48 || b2 > 55) {
                throw new IllegalArgumentException(m66388a(bArr, i, i2, i4, b2));
            }
            j = (j << 3) + b2 + JSONB.Constants.BC_INT64_BYTE_ZERO;
            i4++;
        }
        return j;
    }

    public static long parseOctalOrBinary(byte[] bArr, int i, int i2) {
        byte b = bArr[i];
        if ((b & 128) == 0) {
            return parseOctal(bArr, i, i2);
        }
        boolean z = b == -1;
        return i2 < 9 ? m66392e(bArr, i, i2, z) : m66391d(bArr, i, i2, z);
    }

    @Deprecated
    public static List<TarArchiveStructSparse> parsePAX01SparseHeaders(String str) {
        try {
            return parseFromPAX01SparseHeaders(str);
        } catch (IOException e) {
            throw new UncheckedIOException(e.getMessage(), e);
        }
    }

    public static List<TarArchiveStructSparse> parsePAX1XSparseHeaders(InputStream inputStream, int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        long[] m66393f = m66393f(inputStream);
        long j = m66393f[0];
        if (j < 0) {
            throw new IOException("Corrupted TAR archive. Negative value in sparse headers block");
        }
        long j2 = m66393f[1] + 0;
        while (true) {
            long j3 = j - 1;
            if (j <= 0) {
                long j4 = i;
                IOUtils.skip(inputStream, j4 - (j2 % j4));
                return arrayList;
            }
            long[] m66393f2 = m66393f(inputStream);
            long j5 = m66393f2[0];
            if (j5 < 0) {
                throw new IOException("Corrupted TAR archive. Sparse header block offset contains negative value");
            }
            long j6 = j2 + m66393f2[1];
            long[] m66393f3 = m66393f(inputStream);
            long j7 = m66393f3[0];
            if (j7 < 0) {
                throw new IOException("Corrupted TAR archive. Sparse header block numbytes contains negative value");
            }
            j2 = j6 + m66393f3[1];
            arrayList.add(new TarArchiveStructSparse(j5, j7));
            j = j3;
        }
    }

    @Deprecated
    public static Map<String, String> parsePaxHeaders(InputStream inputStream, List<TarArchiveStructSparse> list, Map<String, String> map) throws IOException {
        return parsePaxHeaders(inputStream, list, map, -1L);
    }

    public static TarArchiveStructSparse parseSparse(byte[] bArr, int i) {
        return new TarArchiveStructSparse(parseOctalOrBinary(bArr, i, 12), parseOctalOrBinary(bArr, i + 12, 12));
    }

    public static boolean verifyCheckSum(byte[] bArr) {
        long parseOctal = parseOctal(bArr, 148, 8);
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            if (148 <= i && i < 156) {
                b = 32;
            }
            j += b & 255;
            j2 += b;
        }
        return parseOctal == j || parseOctal == j2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0158, code lost:
    
        throw new java.io.IOException("Failed to read Paxheader. Encountered a non-number while reading length");
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x015b, code lost:
    
        r2 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> parsePaxHeaders(java.io.InputStream r16, java.util.List<org.apache.commons.compress.archivers.tar.TarArchiveStructSparse> r17, java.util.Map<java.lang.String, java.lang.String> r18, long r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.tar.TarUtils.parsePaxHeaders(java.io.InputStream, java.util.List, java.util.Map, long):java.util.Map");
    }

    public static int formatNameBytes(String str, byte[] bArr, int i, int i2, ZipEncoding zipEncoding) throws IOException {
        int length = str.length();
        ByteBuffer encode = zipEncoding.encode(str);
        while (encode.limit() > i2 && length > 0) {
            length--;
            encode = zipEncoding.encode(str.substring(0, length));
        }
        int limit = encode.limit() - encode.position();
        System.arraycopy(encode.array(), encode.arrayOffset(), bArr, i, limit);
        while (limit < i2) {
            bArr[i + limit] = 0;
            limit++;
        }
        return i + i2;
    }

    public static String parseName(byte[] bArr, int i, int i2, ZipEncoding zipEncoding) throws IOException {
        int i3 = 0;
        for (int i4 = i; i3 < i2 && bArr[i4] != 0; i4++) {
            i3++;
        }
        if (i3 <= 0) {
            return "";
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, i3);
        return zipEncoding.decode(bArr2);
    }
}

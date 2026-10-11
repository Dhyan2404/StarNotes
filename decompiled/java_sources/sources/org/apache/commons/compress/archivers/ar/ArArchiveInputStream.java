package org.apache.commons.compress.archivers.ar;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class ArArchiveInputStream extends ArchiveInputStream {

    /* renamed from: J */
    public static final String f105368J = "#1/";

    /* renamed from: O */
    public static final int f105369O = 3;

    /* renamed from: Q */
    public static final String f105370Q = "^#1/\\d+";

    /* renamed from: Z */
    public static final String f105371Z = "//";

    /* renamed from: k0 */
    public static final String f105372k0 = "^/\\d+";

    /* renamed from: o */
    public static final int f105373o = 0;

    /* renamed from: p */
    public static final int f105374p = 16;

    /* renamed from: q */
    public static final int f105375q = 16;

    /* renamed from: r */
    public static final int f105376r = 12;

    /* renamed from: s */
    public static final int f105377s = 28;

    /* renamed from: t */
    public static final int f105378t = 6;

    /* renamed from: u */
    public static final int f105379u = 34;

    /* renamed from: v */
    public static final int f105380v = 6;

    /* renamed from: w */
    public static final int f105381w = 40;

    /* renamed from: x */
    public static final int f105382x = 8;

    /* renamed from: y */
    public static final int f105383y = 48;

    /* renamed from: z */
    public static final int f105384z = 10;

    /* renamed from: h */
    public final InputStream f105385h;

    /* renamed from: i */
    public long f105386i;

    /* renamed from: k */
    public ArArchiveEntry f105388k;

    /* renamed from: l */
    public byte[] f105389l;

    /* renamed from: m */
    public long f105390m = -1;

    /* renamed from: n */
    public final byte[] f105391n = new byte[58];

    /* renamed from: j */
    public boolean f105387j = false;

    public ArArchiveInputStream(InputStream inputStream) {
        this.f105385h = inputStream;
    }

    /* renamed from: f0 */
    public static boolean m66087f0(String str) {
        return str != null && str.matches(f105370Q);
    }

    /* renamed from: h0 */
    public static boolean m66088h0(String str) {
        return "//".equals(str);
    }

    public static boolean matches(byte[] bArr, int i) {
        return i >= 8 && bArr[0] == 33 && bArr[1] == 60 && bArr[2] == 97 && bArr[3] == 114 && bArr[4] == 99 && bArr[5] == 104 && bArr[6] == 62 && bArr[7] == 10;
    }

    /* renamed from: H */
    public final int m66089H(byte[] bArr, int i, int i2, boolean z) {
        return m66098w(bArr, i, i2, 10, z);
    }

    /* renamed from: I */
    public final long m66090I(byte[] bArr, int i, int i2) {
        return Long.parseLong(ArchiveUtils.toAsciiString(bArr, i, i2).trim());
    }

    /* renamed from: M */
    public final String m66091M(String str) throws IOException {
        int parseInt = Integer.parseInt(str.substring(f105369O));
        byte[] readRange = IOUtils.readRange(this.f105385h, parseInt);
        int length = readRange.length;
        m66097j0(length);
        if (length == parseInt) {
            return ArchiveUtils.toAsciiString(readRange);
        }
        throw new EOFException();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f105387j) {
            this.f105387j = true;
            this.f105385h.close();
        }
        this.f105388k = null;
    }

    /* renamed from: e0 */
    public final String m66092e0(int i) throws IOException {
        byte[] bArr;
        if (this.f105389l == null) {
            throw new IOException("Cannot process GNU long filename as no // record was found");
        }
        int i2 = i;
        while (true) {
            bArr = this.f105389l;
            if (i2 >= bArr.length) {
                throw new IOException("Failed to read entry: " + i);
            }
            byte b = bArr[i2];
            if (b == 10 || b == 0) {
                break;
            }
            i2++;
        }
        if (bArr[i2 - 1] == 47) {
            i2--;
        }
        return ArchiveUtils.toAsciiString(bArr, i, i2 - i);
    }

    /* renamed from: f */
    public final int m66093f(byte[] bArr, int i, int i2) {
        return m66098w(bArr, i, i2, 10, false);
    }

    /* renamed from: g0 */
    public final boolean m66094g0(String str) {
        return str != null && str.matches(f105372k0);
    }

    public ArArchiveEntry getNextArEntry() throws IOException {
        ArArchiveEntry arArchiveEntry = this.f105388k;
        if (arArchiveEntry != null) {
            m66097j0(IOUtils.skip(this.f105385h, (this.f105390m + arArchiveEntry.getLength()) - this.f105386i));
            this.f105388k = null;
        }
        if (this.f105386i == 0) {
            byte[] asciiBytes = ArchiveUtils.toAsciiBytes(ArArchiveEntry.HEADER);
            byte[] readRange = IOUtils.readRange(this.f105385h, asciiBytes.length);
            int length = readRange.length;
            m66097j0(length);
            if (length != asciiBytes.length) {
                throw new IOException("Failed to read header. Occurred at byte: " + getBytesRead());
            }
            if (!Arrays.equals(asciiBytes, readRange)) {
                throw new IOException("Invalid header " + ArchiveUtils.toAsciiString(readRange));
            }
        }
        if (this.f105386i % 2 != 0) {
            if (this.f105385h.read() < 0) {
                return null;
            }
            m66097j0(1L);
        }
        int readFully = IOUtils.readFully(this.f105385h, this.f105391n);
        m66097j0(readFully);
        if (readFully == 0) {
            return null;
        }
        if (readFully < this.f105391n.length) {
            throw new IOException("Truncated ar archive");
        }
        byte[] asciiBytes2 = ArchiveUtils.toAsciiBytes(ArArchiveEntry.TRAILER);
        byte[] readRange2 = IOUtils.readRange(this.f105385h, asciiBytes2.length);
        int length2 = readRange2.length;
        m66097j0(length2);
        if (length2 != asciiBytes2.length) {
            throw new IOException("Failed to read entry trailer. Occurred at byte: " + getBytesRead());
        }
        if (!Arrays.equals(asciiBytes2, readRange2)) {
            throw new IOException("Invalid entry trailer. not read the content? Occurred at byte: " + getBytesRead());
        }
        this.f105390m = this.f105386i;
        String trim = ArchiveUtils.toAsciiString(this.f105391n, 0, 16).trim();
        if (m66088h0(trim)) {
            this.f105388k = m66095i0(this.f105391n, 48, 10);
            return getNextArEntry();
        }
        long m66090I = m66090I(this.f105391n, 48, 10);
        if (trim.endsWith("/")) {
            trim = trim.substring(0, trim.length() - 1);
        } else if (m66094g0(trim)) {
            trim = m66092e0(Integer.parseInt(trim.substring(1)));
        } else if (m66087f0(trim)) {
            trim = m66091M(trim);
            long length3 = trim.length();
            m66090I -= length3;
            this.f105390m += length3;
        }
        String str = trim;
        long j = m66090I;
        if (j < 0) {
            throw new IOException("broken archive, entry with negative size");
        }
        ArArchiveEntry arArchiveEntry2 = new ArArchiveEntry(str, j, m66089H(this.f105391n, 28, 6, true), m66089H(this.f105391n, 34, 6, true), m66096j(this.f105391n, 40, 8, 8), m66090I(this.f105391n, 16, 12));
        this.f105388k = arArchiveEntry2;
        return arArchiveEntry2;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public ArchiveEntry getNextEntry() throws IOException {
        return getNextArEntry();
    }

    /* renamed from: i0 */
    public final ArArchiveEntry m66095i0(byte[] bArr, int i, int i2) throws IOException {
        int m66093f = m66093f(bArr, i, i2);
        byte[] readRange = IOUtils.readRange(this.f105385h, m66093f);
        this.f105389l = readRange;
        int length = readRange.length;
        m66097j0(length);
        if (length == m66093f) {
            return new ArArchiveEntry("//", m66093f);
        }
        throw new IOException("Failed to read complete // record: expected=" + m66093f + " read=" + length);
    }

    /* renamed from: j */
    public final int m66096j(byte[] bArr, int i, int i2, int i3) {
        return m66098w(bArr, i, i2, i3, false);
    }

    /* renamed from: j0 */
    public final void m66097j0(long j) {
        count(j);
        if (j > 0) {
            this.f105386i += j;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        ArArchiveEntry arArchiveEntry = this.f105388k;
        if (arArchiveEntry == null) {
            throw new IllegalStateException("No current ar entry");
        }
        long length = this.f105390m + arArchiveEntry.getLength();
        if (i2 < 0) {
            return -1;
        }
        long j = this.f105386i;
        if (j >= length) {
            return -1;
        }
        int read = this.f105385h.read(bArr, i, (int) Math.min(i2, length - j));
        m66097j0(read);
        return read;
    }

    /* renamed from: w */
    public final int m66098w(byte[] bArr, int i, int i2, int i3, boolean z) {
        String trim = ArchiveUtils.toAsciiString(bArr, i, i2).trim();
        if (trim.isEmpty() && z) {
            return 0;
        }
        return Integer.parseInt(trim, i3);
    }
}

package org.apache.commons.compress.archivers.cpio;

import com.sunia.HTREnginev2.bge;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class CpioArchiveInputStream extends ArchiveInputStream implements CpioConstants {

    /* renamed from: h */
    public boolean f105502h;

    /* renamed from: i */
    public CpioArchiveEntry f105503i;

    /* renamed from: j */
    public long f105504j;

    /* renamed from: k */
    public boolean f105505k;

    /* renamed from: l */
    public final byte[] f105506l;

    /* renamed from: m */
    public long f105507m;

    /* renamed from: n */
    public final InputStream f105508n;

    /* renamed from: o */
    public final byte[] f105509o;

    /* renamed from: p */
    public final byte[] f105510p;

    /* renamed from: q */
    public final byte[] f105511q;

    /* renamed from: r */
    public final int f105512r;

    /* renamed from: s */
    public final ZipEncoding f105513s;

    /* renamed from: t */
    public final String f105514t;

    public CpioArchiveInputStream(InputStream inputStream) {
        this(inputStream, 512, "US-ASCII");
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i < 6) {
            return false;
        }
        byte b = bArr[0];
        if (b == 113 && (bArr[1] & 255) == 199) {
            return true;
        }
        byte b2 = bArr[1];
        if (b2 == 113 && (b & 255) == 199) {
            return true;
        }
        if (b != 48 || b2 != 55 || bArr[2] != 48 || bArr[3] != 55 || bArr[4] != 48) {
            return false;
        }
        byte b3 = bArr[5];
        return b3 == 49 || b3 == 50 || b3 == 55;
    }

    /* renamed from: H */
    public final long m66115H(int i, boolean z) throws IOException {
        return bge.m53266a(m66122h0(i), z);
    }

    /* renamed from: I */
    public final String m66116I(int i) throws IOException {
        byte[] m66122h0 = m66122h0(i - 1);
        if (this.f105508n.read() != -1) {
            return this.f105513s.decode(m66122h0);
        }
        throw new EOFException();
    }

    /* renamed from: M */
    public final int m66117M(byte[] bArr, int i, int i2) throws IOException {
        int readFully = IOUtils.readFully(this.f105508n, bArr, i, i2);
        count(readFully);
        if (readFully >= i2) {
            return readFully;
        }
        throw new EOFException();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        m66124j();
        return this.f105505k ? 0 : 1;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f105502h) {
            return;
        }
        this.f105508n.close();
        this.f105502h = true;
    }

    /* renamed from: e0 */
    public final CpioArchiveEntry m66118e0(boolean z) throws IOException {
        CpioArchiveEntry cpioArchiveEntry = z ? new CpioArchiveEntry((short) 2) : new CpioArchiveEntry((short) 1);
        cpioArchiveEntry.setInode(m66126w(8, 16));
        long m66126w = m66126w(8, 16);
        if (bge.m53267b(m66126w) != 0) {
            cpioArchiveEntry.setMode(m66126w);
        }
        cpioArchiveEntry.setUID(m66126w(8, 16));
        cpioArchiveEntry.setGID(m66126w(8, 16));
        cpioArchiveEntry.setNumberOfLinks(m66126w(8, 16));
        cpioArchiveEntry.setTime(m66126w(8, 16));
        cpioArchiveEntry.setSize(m66126w(8, 16));
        if (cpioArchiveEntry.getSize() < 0) {
            throw new IOException("Found illegal entry with negative length");
        }
        cpioArchiveEntry.setDeviceMaj(m66126w(8, 16));
        cpioArchiveEntry.setDeviceMin(m66126w(8, 16));
        cpioArchiveEntry.setRemoteDeviceMaj(m66126w(8, 16));
        cpioArchiveEntry.setRemoteDeviceMin(m66126w(8, 16));
        long m66126w2 = m66126w(8, 16);
        if (m66126w2 < 0) {
            throw new IOException("Found illegal entry with negative name length");
        }
        cpioArchiveEntry.setChksum(m66126w(8, 16));
        String m66116I = m66116I((int) m66126w2);
        cpioArchiveEntry.setName(m66116I);
        if (bge.m53267b(m66126w) != 0 || m66116I.equals(CpioConstants.CPIO_TRAILER)) {
            m66123i0(cpioArchiveEntry.getHeaderPadCount(m66126w2 - 1));
            return cpioArchiveEntry;
        }
        throw new IOException("Mode 0 only allowed in the trailer. Found entry name: " + ArchiveUtils.sanitize(m66116I) + " Occurred at byte: " + getBytesRead());
    }

    /* renamed from: f */
    public final void m66119f() throws IOException {
        do {
        } while (skip(2147483647L) == 2147483647L);
    }

    /* renamed from: f0 */
    public final CpioArchiveEntry m66120f0() throws IOException {
        CpioArchiveEntry cpioArchiveEntry = new CpioArchiveEntry((short) 4);
        cpioArchiveEntry.setDevice(m66126w(6, 8));
        cpioArchiveEntry.setInode(m66126w(6, 8));
        long m66126w = m66126w(6, 8);
        if (bge.m53267b(m66126w) != 0) {
            cpioArchiveEntry.setMode(m66126w);
        }
        cpioArchiveEntry.setUID(m66126w(6, 8));
        cpioArchiveEntry.setGID(m66126w(6, 8));
        cpioArchiveEntry.setNumberOfLinks(m66126w(6, 8));
        cpioArchiveEntry.setRemoteDevice(m66126w(6, 8));
        cpioArchiveEntry.setTime(m66126w(11, 8));
        long m66126w2 = m66126w(6, 8);
        if (m66126w2 < 0) {
            throw new IOException("Found illegal entry with negative name length");
        }
        cpioArchiveEntry.setSize(m66126w(11, 8));
        if (cpioArchiveEntry.getSize() < 0) {
            throw new IOException("Found illegal entry with negative length");
        }
        String m66116I = m66116I((int) m66126w2);
        cpioArchiveEntry.setName(m66116I);
        if (bge.m53267b(m66126w) != 0 || m66116I.equals(CpioConstants.CPIO_TRAILER)) {
            return cpioArchiveEntry;
        }
        throw new IOException("Mode 0 only allowed in the trailer. Found entry: " + ArchiveUtils.sanitize(m66116I) + " Occurred at byte: " + getBytesRead());
    }

    /* renamed from: g0 */
    public final CpioArchiveEntry m66121g0(boolean z) throws IOException {
        CpioArchiveEntry cpioArchiveEntry = new CpioArchiveEntry((short) 8);
        cpioArchiveEntry.setDevice(m66115H(2, z));
        cpioArchiveEntry.setInode(m66115H(2, z));
        long m66115H = m66115H(2, z);
        if (bge.m53267b(m66115H) != 0) {
            cpioArchiveEntry.setMode(m66115H);
        }
        cpioArchiveEntry.setUID(m66115H(2, z));
        cpioArchiveEntry.setGID(m66115H(2, z));
        cpioArchiveEntry.setNumberOfLinks(m66115H(2, z));
        cpioArchiveEntry.setRemoteDevice(m66115H(2, z));
        cpioArchiveEntry.setTime(m66115H(4, z));
        long m66115H2 = m66115H(2, z);
        if (m66115H2 < 0) {
            throw new IOException("Found illegal entry with negative name length");
        }
        cpioArchiveEntry.setSize(m66115H(4, z));
        if (cpioArchiveEntry.getSize() < 0) {
            throw new IOException("Found illegal entry with negative length");
        }
        String m66116I = m66116I((int) m66115H2);
        cpioArchiveEntry.setName(m66116I);
        if (bge.m53267b(m66115H) != 0 || m66116I.equals(CpioConstants.CPIO_TRAILER)) {
            m66123i0(cpioArchiveEntry.getHeaderPadCount(m66115H2 - 1));
            return cpioArchiveEntry;
        }
        throw new IOException("Mode 0 only allowed in the trailer. Found entry: " + ArchiveUtils.sanitize(m66116I) + "Occurred at byte: " + getBytesRead());
    }

    public CpioArchiveEntry getNextCPIOEntry() throws IOException {
        m66124j();
        if (this.f105503i != null) {
            m66119f();
        }
        byte[] bArr = this.f105509o;
        m66117M(bArr, 0, bArr.length);
        if (bge.m53266a(this.f105509o, false) == 29127) {
            this.f105503i = m66121g0(false);
        } else if (bge.m53266a(this.f105509o, true) == 29127) {
            this.f105503i = m66121g0(true);
        } else {
            byte[] bArr2 = this.f105509o;
            System.arraycopy(bArr2, 0, this.f105511q, 0, bArr2.length);
            m66117M(this.f105511q, this.f105509o.length, this.f105510p.length);
            String asciiString = ArchiveUtils.toAsciiString(this.f105511q);
            asciiString.hashCode();
            char c = 65535;
            switch (asciiString.hashCode()) {
                case 1426477263:
                    if (asciiString.equals(CpioConstants.MAGIC_NEW)) {
                        c = 0;
                        break;
                    }
                    break;
                case 1426477264:
                    if (asciiString.equals(CpioConstants.MAGIC_NEW_CRC)) {
                        c = 1;
                        break;
                    }
                    break;
                case 1426477269:
                    if (asciiString.equals(CpioConstants.MAGIC_OLD_ASCII)) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this.f105503i = m66118e0(false);
                    break;
                case 1:
                    this.f105503i = m66118e0(true);
                    break;
                case 2:
                    this.f105503i = m66120f0();
                    break;
                default:
                    throw new IOException("Unknown magic [" + asciiString + "]. Occurred at byte: " + getBytesRead());
            }
        }
        this.f105504j = 0L;
        this.f105505k = false;
        this.f105507m = 0L;
        if (!this.f105503i.getName().equals(CpioConstants.CPIO_TRAILER)) {
            return this.f105503i;
        }
        this.f105505k = true;
        m66125j0();
        return null;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public ArchiveEntry getNextEntry() throws IOException {
        return getNextCPIOEntry();
    }

    /* renamed from: h0 */
    public final byte[] m66122h0(int i) throws IOException {
        byte[] readRange = IOUtils.readRange(this.f105508n, i);
        count(readRange.length);
        if (readRange.length >= i) {
            return readRange;
        }
        throw new EOFException();
    }

    /* renamed from: i0 */
    public final void m66123i0(int i) throws IOException {
        if (i > 0) {
            m66117M(this.f105510p, 0, i);
        }
    }

    /* renamed from: j */
    public final void m66124j() throws IOException {
        if (this.f105502h) {
            throw new IOException("Stream closed");
        }
    }

    /* renamed from: j0 */
    public final void m66125j0() throws IOException {
        long bytesRead = getBytesRead();
        int i = this.f105512r;
        long j = bytesRead % i;
        long j2 = j == 0 ? 0L : i - j;
        while (j2 > 0) {
            long skip = skip(this.f105512r - j);
            if (skip <= 0) {
                return;
            } else {
                j2 -= skip;
            }
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        m66124j();
        if (i < 0 || i2 < 0 || i > bArr.length - i2) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        CpioArchiveEntry cpioArchiveEntry = this.f105503i;
        if (cpioArchiveEntry == null || this.f105505k) {
            return -1;
        }
        if (this.f105504j == cpioArchiveEntry.getSize()) {
            m66123i0(this.f105503i.getDataPadCount());
            this.f105505k = true;
            if (this.f105503i.getFormat() != 2 || this.f105507m == this.f105503i.getChksum()) {
                return -1;
            }
            throw new IOException("CRC Error. Occurred at byte: " + getBytesRead());
        }
        int min = (int) Math.min(i2, this.f105503i.getSize() - this.f105504j);
        if (min < 0) {
            return -1;
        }
        int m66117M = m66117M(bArr, i, min);
        if (this.f105503i.getFormat() == 2) {
            for (int i3 = 0; i3 < m66117M; i3++) {
                this.f105507m = (this.f105507m + (bArr[i3] & 255)) & 4294967295L;
            }
        }
        if (m66117M > 0) {
            this.f105504j += m66117M;
        }
        return m66117M;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("Negative skip length");
        }
        m66124j();
        int min = (int) Math.min(j, 2147483647L);
        int i = 0;
        while (true) {
            if (i >= min) {
                break;
            }
            int i2 = min - i;
            byte[] bArr = this.f105506l;
            if (i2 > bArr.length) {
                i2 = bArr.length;
            }
            int read = read(bArr, 0, i2);
            if (read == -1) {
                this.f105505k = true;
                break;
            }
            i += read;
        }
        return i;
    }

    /* renamed from: w */
    public final long m66126w(int i, int i2) throws IOException {
        return Long.parseLong(ArchiveUtils.toAsciiString(m66122h0(i)), i2);
    }

    public CpioArchiveInputStream(InputStream inputStream, String str) {
        this(inputStream, 512, str);
    }

    public CpioArchiveInputStream(InputStream inputStream, int i) {
        this(inputStream, i, "US-ASCII");
    }

    public CpioArchiveInputStream(InputStream inputStream, int i, String str) {
        this.f105506l = new byte[4096];
        this.f105509o = new byte[2];
        this.f105510p = new byte[4];
        this.f105511q = new byte[6];
        this.f105508n = inputStream;
        if (i > 0) {
            this.f105512r = i;
            this.f105514t = str;
            this.f105513s = ZipEncodingHelper.getZipEncoding(str);
            return;
        }
        throw new IllegalArgumentException("blockSize must be bigger than 0");
    }
}

package org.apache.commons.compress.archivers.cpio;

import com.sunia.HTREnginev2.bge;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.HashMap;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.ArchiveUtils;

/* loaded from: classes12.dex */
public class CpioArchiveOutputStream extends ArchiveOutputStream implements CpioConstants {

    /* renamed from: e */
    public CpioArchiveEntry f105515e;

    /* renamed from: f */
    public boolean f105516f;

    /* renamed from: g */
    public boolean f105517g;

    /* renamed from: h */
    public final short f105518h;

    /* renamed from: i */
    public final HashMap<String, CpioArchiveEntry> f105519i;

    /* renamed from: j */
    public long f105520j;

    /* renamed from: k */
    public long f105521k;

    /* renamed from: l */
    public final OutputStream f105522l;

    /* renamed from: m */
    public final int f105523m;

    /* renamed from: n */
    public long f105524n;

    /* renamed from: o */
    public final ZipEncoding f105525o;

    /* renamed from: p */
    public final String f105526p;

    public CpioArchiveOutputStream(OutputStream outputStream, short s) {
        this(outputStream, s, 512, "US-ASCII");
    }

    /* renamed from: H */
    public final void m66127H(long j, int i, int i2) throws IOException {
        String substring;
        StringBuilder sb = new StringBuilder();
        if (i2 == 16) {
            sb.append(Long.toHexString(j));
        } else if (i2 == 8) {
            sb.append(Long.toOctalString(j));
        } else {
            sb.append(j);
        }
        if (sb.length() <= i) {
            int length = i - sb.length();
            for (int i3 = 0; i3 < length; i3++) {
                sb.insert(0, "0");
            }
            substring = sb.toString();
        } else {
            substring = sb.substring(sb.length() - i);
        }
        byte[] asciiBytes = ArchiveUtils.toAsciiBytes(substring);
        this.f105522l.write(asciiBytes);
        count(asciiBytes.length);
    }

    /* renamed from: I */
    public final void m66128I(long j, int i, boolean z) throws IOException {
        byte[] m53268c = bge.m53268c(j, i, z);
        this.f105522l.write(m53268c);
        count(m53268c.length);
    }

    /* renamed from: M */
    public final void m66129M(byte[] bArr) throws IOException {
        this.f105522l.write(bArr);
        this.f105522l.write(0);
        count(bArr.length + 1);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            if (!this.f105517g) {
                finish();
            }
        } finally {
            if (!this.f105516f) {
                this.f105522l.close();
                this.f105516f = true;
            }
        }
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void closeArchiveEntry() throws IOException {
        if (this.f105517g) {
            throw new IOException("Stream has already been finished");
        }
        m66135j();
        CpioArchiveEntry cpioArchiveEntry = this.f105515e;
        if (cpioArchiveEntry == null) {
            throw new IOException("Trying to close non-existent entry");
        }
        if (cpioArchiveEntry.getSize() != this.f105521k) {
            throw new IOException("Invalid entry size (expected " + this.f105515e.getSize() + " but got " + this.f105521k + " bytes)");
        }
        m66136w(this.f105515e.getDataPadCount());
        if (this.f105515e.getFormat() == 2 && this.f105520j != this.f105515e.getChksum()) {
            throw new IOException("CRC Error");
        }
        this.f105515e = null;
        this.f105520j = 0L;
        this.f105521k = 0L;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public ArchiveEntry createArchiveEntry(File file, String str) throws IOException {
        if (!this.f105517g) {
            return new CpioArchiveEntry(file, str);
        }
        throw new IOException("Stream has already been finished");
    }

    /* renamed from: e0 */
    public final void m66130e0(CpioArchiveEntry cpioArchiveEntry) throws IOException {
        short format = cpioArchiveEntry.getFormat();
        if (format == 1) {
            this.f105522l.write(ArchiveUtils.toAsciiBytes(CpioConstants.MAGIC_NEW));
            count(6);
            m66132f0(cpioArchiveEntry);
            return;
        }
        if (format == 2) {
            this.f105522l.write(ArchiveUtils.toAsciiBytes(CpioConstants.MAGIC_NEW_CRC));
            count(6);
            m66132f0(cpioArchiveEntry);
        } else if (format == 4) {
            this.f105522l.write(ArchiveUtils.toAsciiBytes(CpioConstants.MAGIC_OLD_ASCII));
            count(6);
            m66133g0(cpioArchiveEntry);
        } else if (format == 8) {
            m66128I(29127L, 2, true);
            m66134h0(cpioArchiveEntry, true);
        } else {
            throw new IOException("Unknown format " + ((int) cpioArchiveEntry.getFormat()));
        }
    }

    /* renamed from: f */
    public final byte[] m66131f(String str) throws IOException {
        ByteBuffer encode = this.f105525o.encode(str);
        return Arrays.copyOfRange(encode.array(), encode.arrayOffset(), encode.arrayOffset() + (encode.limit() - encode.position()));
    }

    /* renamed from: f0 */
    public final void m66132f0(CpioArchiveEntry cpioArchiveEntry) throws IOException {
        long inode = cpioArchiveEntry.getInode();
        long deviceMin = cpioArchiveEntry.getDeviceMin();
        if (CpioConstants.CPIO_TRAILER.equals(cpioArchiveEntry.getName())) {
            inode = 0;
            deviceMin = 0;
        } else if (inode == 0 && deviceMin == 0) {
            long j = this.f105524n;
            this.f105524n = j + 1;
            deviceMin = (-1) & (j >> 32);
            inode = j & (-1);
        } else {
            this.f105524n = Math.max(this.f105524n, (4294967296L * deviceMin) + inode) + 1;
        }
        m66127H(inode, 8, 16);
        m66127H(cpioArchiveEntry.getMode(), 8, 16);
        m66127H(cpioArchiveEntry.getUID(), 8, 16);
        m66127H(cpioArchiveEntry.getGID(), 8, 16);
        m66127H(cpioArchiveEntry.getNumberOfLinks(), 8, 16);
        m66127H(cpioArchiveEntry.getTime(), 8, 16);
        m66127H(cpioArchiveEntry.getSize(), 8, 16);
        m66127H(cpioArchiveEntry.getDeviceMaj(), 8, 16);
        m66127H(deviceMin, 8, 16);
        m66127H(cpioArchiveEntry.getRemoteDeviceMaj(), 8, 16);
        m66127H(cpioArchiveEntry.getRemoteDeviceMin(), 8, 16);
        byte[] m66131f = m66131f(cpioArchiveEntry.getName());
        m66127H(m66131f.length + 1, 8, 16);
        m66127H(cpioArchiveEntry.getChksum(), 8, 16);
        m66129M(m66131f);
        m66136w(cpioArchiveEntry.getHeaderPadCount(m66131f.length));
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void finish() throws IOException {
        m66135j();
        if (this.f105517g) {
            throw new IOException("This archive has already been finished");
        }
        if (this.f105515e != null) {
            throw new IOException("This archive contains unclosed entries.");
        }
        CpioArchiveEntry cpioArchiveEntry = new CpioArchiveEntry(this.f105518h);
        this.f105515e = cpioArchiveEntry;
        cpioArchiveEntry.setName(CpioConstants.CPIO_TRAILER);
        this.f105515e.setNumberOfLinks(1L);
        m66130e0(this.f105515e);
        closeArchiveEntry();
        long bytesWritten = getBytesWritten();
        int i = this.f105523m;
        int i2 = (int) (bytesWritten % i);
        if (i2 != 0) {
            m66136w(i - i2);
        }
        this.f105517g = true;
    }

    /* renamed from: g0 */
    public final void m66133g0(CpioArchiveEntry cpioArchiveEntry) throws IOException {
        long inode = cpioArchiveEntry.getInode();
        long device = cpioArchiveEntry.getDevice();
        if (CpioConstants.CPIO_TRAILER.equals(cpioArchiveEntry.getName())) {
            inode = 0;
            device = 0;
        } else if (inode == 0 && device == 0) {
            long j = this.f105524n;
            this.f105524n = j + 1;
            device = 262143 & (j >> 18);
            inode = j & 262143;
        } else {
            this.f105524n = Math.max(this.f105524n, (262144 * device) + inode) + 1;
        }
        m66127H(device, 6, 8);
        m66127H(inode, 6, 8);
        m66127H(cpioArchiveEntry.getMode(), 6, 8);
        m66127H(cpioArchiveEntry.getUID(), 6, 8);
        m66127H(cpioArchiveEntry.getGID(), 6, 8);
        m66127H(cpioArchiveEntry.getNumberOfLinks(), 6, 8);
        m66127H(cpioArchiveEntry.getRemoteDevice(), 6, 8);
        m66127H(cpioArchiveEntry.getTime(), 11, 8);
        byte[] m66131f = m66131f(cpioArchiveEntry.getName());
        m66127H(m66131f.length + 1, 6, 8);
        m66127H(cpioArchiveEntry.getSize(), 11, 8);
        m66129M(m66131f);
    }

    /* renamed from: h0 */
    public final void m66134h0(CpioArchiveEntry cpioArchiveEntry, boolean z) throws IOException {
        long inode = cpioArchiveEntry.getInode();
        long device = cpioArchiveEntry.getDevice();
        if (CpioConstants.CPIO_TRAILER.equals(cpioArchiveEntry.getName())) {
            inode = 0;
            device = 0;
        } else if (inode == 0 && device == 0) {
            long j = this.f105524n;
            long j2 = j & WebSocketProtocol.PAYLOAD_SHORT_MAX;
            this.f105524n = j + 1;
            device = WebSocketProtocol.PAYLOAD_SHORT_MAX & (j >> 16);
            inode = j2;
        } else {
            this.f105524n = Math.max(this.f105524n, (65536 * device) + inode) + 1;
        }
        m66128I(device, 2, z);
        m66128I(inode, 2, z);
        m66128I(cpioArchiveEntry.getMode(), 2, z);
        m66128I(cpioArchiveEntry.getUID(), 2, z);
        m66128I(cpioArchiveEntry.getGID(), 2, z);
        m66128I(cpioArchiveEntry.getNumberOfLinks(), 2, z);
        m66128I(cpioArchiveEntry.getRemoteDevice(), 2, z);
        m66128I(cpioArchiveEntry.getTime(), 4, z);
        byte[] m66131f = m66131f(cpioArchiveEntry.getName());
        m66128I(m66131f.length + 1, 2, z);
        m66128I(cpioArchiveEntry.getSize(), 4, z);
        m66129M(m66131f);
        m66136w(cpioArchiveEntry.getHeaderPadCount(m66131f.length));
    }

    /* renamed from: j */
    public final void m66135j() throws IOException {
        if (this.f105516f) {
            throw new IOException("Stream closed");
        }
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void putArchiveEntry(ArchiveEntry archiveEntry) throws IOException {
        if (this.f105517g) {
            throw new IOException("Stream has already been finished");
        }
        CpioArchiveEntry cpioArchiveEntry = (CpioArchiveEntry) archiveEntry;
        m66135j();
        if (this.f105515e != null) {
            closeArchiveEntry();
        }
        if (cpioArchiveEntry.getTime() == -1) {
            cpioArchiveEntry.setTime(System.currentTimeMillis() / 1000);
        }
        short format = cpioArchiveEntry.getFormat();
        if (format != this.f105518h) {
            throw new IOException("Header format: " + ((int) format) + " does not match existing format: " + ((int) this.f105518h));
        }
        if (this.f105519i.put(cpioArchiveEntry.getName(), cpioArchiveEntry) == null) {
            m66130e0(cpioArchiveEntry);
            this.f105515e = cpioArchiveEntry;
            this.f105521k = 0L;
        } else {
            throw new IOException("Duplicate entry: " + cpioArchiveEntry.getName());
        }
    }

    /* renamed from: w */
    public final void m66136w(int i) throws IOException {
        if (i > 0) {
            this.f105522l.write(new byte[i]);
            count(i);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        m66135j();
        if (i < 0 || i2 < 0 || i > bArr.length - i2) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return;
        }
        CpioArchiveEntry cpioArchiveEntry = this.f105515e;
        if (cpioArchiveEntry == null) {
            throw new IOException("No current CPIO entry");
        }
        long j = i2;
        if (this.f105521k + j > cpioArchiveEntry.getSize()) {
            throw new IOException("Attempt to write past end of STORED entry");
        }
        this.f105522l.write(bArr, i, i2);
        this.f105521k += j;
        if (this.f105515e.getFormat() == 2) {
            for (int i3 = 0; i3 < i2; i3++) {
                this.f105520j = (this.f105520j + (bArr[i3] & 255)) & 4294967295L;
            }
        }
        count(i2);
    }

    public CpioArchiveOutputStream(OutputStream outputStream, short s, int i) {
        this(outputStream, s, i, "US-ASCII");
    }

    public CpioArchiveOutputStream(OutputStream outputStream, short s, int i, String str) {
        this.f105519i = new HashMap<>();
        this.f105524n = 1L;
        this.f105522l = outputStream;
        if (s != 1 && s != 2 && s != 4 && s != 8) {
            throw new IllegalArgumentException("Unknown format: " + ((int) s));
        }
        this.f105518h = s;
        this.f105523m = i;
        this.f105526p = str;
        this.f105525o = ZipEncodingHelper.getZipEncoding(str);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public ArchiveEntry createArchiveEntry(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        if (!this.f105517g) {
            return new CpioArchiveEntry(path, str, linkOptionArr);
        }
        throw new IOException("Stream has already been finished");
    }

    public CpioArchiveOutputStream(OutputStream outputStream) {
        this(outputStream, (short) 1);
    }

    public CpioArchiveOutputStream(OutputStream outputStream, String str) {
        this(outputStream, (short) 1, 512, str);
    }
}

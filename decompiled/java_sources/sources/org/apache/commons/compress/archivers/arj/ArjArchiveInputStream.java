package org.apache.commons.compress.archivers.arj;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.zip.CRC32;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveException;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.CRC32VerifyingInputStream;
import org.apache.commons.compress.utils.Charsets;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class ArjArchiveInputStream extends ArchiveInputStream {

    /* renamed from: m */
    public static final int f105399m = 96;

    /* renamed from: n */
    public static final int f105400n = 234;

    /* renamed from: h */
    public final DataInputStream f105401h;

    /* renamed from: i */
    public final String f105402i;

    /* renamed from: j */
    public final C18827b f105403j;

    /* renamed from: k */
    public C18826a f105404k;

    /* renamed from: l */
    public InputStream f105405l;

    public ArjArchiveInputStream(InputStream inputStream, String str) throws ArchiveException {
        this.f105401h = new DataInputStream(inputStream);
        this.f105402i = str;
        try {
            C18827b m66107e0 = m66107e0();
            this.f105403j = m66107e0;
            int i = m66107e0.f105449d;
            if ((i & 1) != 0) {
                throw new ArchiveException("Encrypted ARJ files are unsupported");
            }
            if ((i & 4) != 0) {
                throw new ArchiveException("Multi-volume ARJ files are unsupported");
            }
        } catch (IOException e) {
            throw new ArchiveException(e.getMessage(), e);
        }
    }

    public static boolean matches(byte[] bArr, int i) {
        return i >= 2 && (bArr[0] & 255) == 96 && (bArr[1] & 255) == 234;
    }

    /* renamed from: H */
    public final void m66104H(int i, DataInputStream dataInputStream, C18826a c18826a) throws IOException {
        if (i >= 33) {
            c18826a.f105421p = m66111j(dataInputStream);
            if (i >= 45) {
                c18826a.f105422q = m66111j(dataInputStream);
                c18826a.f105423r = m66111j(dataInputStream);
                c18826a.f105424s = m66111j(dataInputStream);
                pushedBackBytes(12L);
            }
            pushedBackBytes(4L);
        }
    }

    /* renamed from: I */
    public final byte[] m66105I() throws IOException {
        boolean z = false;
        byte[] bArr = null;
        do {
            int m66112w = m66112w(this.f105401h);
            while (true) {
                int m66112w2 = m66112w(this.f105401h);
                if (m66112w == 96 || m66112w2 == 234) {
                    break;
                }
                m66112w = m66112w2;
            }
            int m66108f = m66108f(this.f105401h);
            if (m66108f == 0) {
                return null;
            }
            if (m66108f <= 2600) {
                bArr = m66109f0(this.f105401h, m66108f);
                long m66111j = m66111j(this.f105401h) & 4294967295L;
                CRC32 crc32 = new CRC32();
                crc32.update(bArr);
                if (m66111j == crc32.getValue()) {
                    z = true;
                }
            }
        } while (!z);
        return bArr;
    }

    /* renamed from: M */
    public final C18826a m66106M() throws IOException {
        byte[] m66105I = m66105I();
        if (m66105I == null) {
            return null;
        }
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(m66105I));
        try {
            int readUnsignedByte = dataInputStream.readUnsignedByte();
            byte[] m66109f0 = m66109f0(dataInputStream, readUnsignedByte - 1);
            pushedBackBytes(m66109f0.length);
            DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream(m66109f0));
            try {
                C18826a c18826a = new C18826a();
                c18826a.f105406a = dataInputStream2.readUnsignedByte();
                c18826a.f105407b = dataInputStream2.readUnsignedByte();
                c18826a.f105408c = dataInputStream2.readUnsignedByte();
                c18826a.f105409d = dataInputStream2.readUnsignedByte();
                c18826a.f105410e = dataInputStream2.readUnsignedByte();
                c18826a.f105411f = dataInputStream2.readUnsignedByte();
                c18826a.f105412g = dataInputStream2.readUnsignedByte();
                c18826a.f105413h = m66111j(dataInputStream2);
                c18826a.f105414i = m66111j(dataInputStream2) & 4294967295L;
                c18826a.f105415j = m66111j(dataInputStream2) & 4294967295L;
                c18826a.f105416k = m66111j(dataInputStream2) & 4294967295L;
                c18826a.f105417l = m66108f(dataInputStream2);
                c18826a.f105418m = m66108f(dataInputStream2);
                pushedBackBytes(20L);
                c18826a.f105419n = dataInputStream2.readUnsignedByte();
                c18826a.f105420o = dataInputStream2.readUnsignedByte();
                m66104H(readUnsignedByte, dataInputStream2, c18826a);
                c18826a.f105425t = m66110g0(dataInputStream);
                c18826a.f105426u = m66110g0(dataInputStream);
                ArrayList arrayList = new ArrayList();
                while (true) {
                    int m66108f = m66108f(this.f105401h);
                    if (m66108f <= 0) {
                        c18826a.f105427v = (byte[][]) arrayList.toArray(new byte[0]);
                        dataInputStream2.close();
                        dataInputStream.close();
                        return c18826a;
                    }
                    byte[] m66109f02 = m66109f0(this.f105401h, m66108f);
                    long m66111j = m66111j(this.f105401h) & 4294967295L;
                    CRC32 crc32 = new CRC32();
                    crc32.update(m66109f02);
                    if (m66111j != crc32.getValue()) {
                        throw new IOException("Extended header CRC32 verification failure");
                    }
                    arrayList.add(m66109f02);
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    dataInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public boolean canReadEntryData(ArchiveEntry archiveEntry) {
        return (archiveEntry instanceof ArjArchiveEntry) && ((ArjArchiveEntry) archiveEntry).m66103a() == 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f105401h.close();
    }

    /* renamed from: e0 */
    public final C18827b m66107e0() throws IOException {
        byte[] m66105I = m66105I();
        if (m66105I == null) {
            throw new IOException("Archive ends without any headers");
        }
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(m66105I));
        int readUnsignedByte = dataInputStream.readUnsignedByte();
        byte[] m66109f0 = m66109f0(dataInputStream, readUnsignedByte - 1);
        pushedBackBytes(m66109f0.length);
        DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream(m66109f0));
        C18827b c18827b = new C18827b();
        c18827b.f105446a = dataInputStream2.readUnsignedByte();
        c18827b.f105447b = dataInputStream2.readUnsignedByte();
        c18827b.f105448c = dataInputStream2.readUnsignedByte();
        c18827b.f105449d = dataInputStream2.readUnsignedByte();
        c18827b.f105450e = dataInputStream2.readUnsignedByte();
        c18827b.f105451f = dataInputStream2.readUnsignedByte();
        c18827b.f105452g = dataInputStream2.readUnsignedByte();
        c18827b.f105453h = m66111j(dataInputStream2);
        c18827b.f105454i = m66111j(dataInputStream2);
        c18827b.f105455j = m66111j(dataInputStream2) & 4294967295L;
        c18827b.f105456k = m66111j(dataInputStream2);
        c18827b.f105457l = m66108f(dataInputStream2);
        c18827b.f105458m = m66108f(dataInputStream2);
        pushedBackBytes(20L);
        c18827b.f105459n = dataInputStream2.readUnsignedByte();
        c18827b.f105460o = dataInputStream2.readUnsignedByte();
        if (readUnsignedByte >= 33) {
            c18827b.f105461p = dataInputStream2.readUnsignedByte();
            c18827b.f105462q = dataInputStream2.readUnsignedByte();
            dataInputStream2.readUnsignedByte();
            dataInputStream2.readUnsignedByte();
        }
        c18827b.f105463r = m66110g0(dataInputStream);
        c18827b.f105464s = m66110g0(dataInputStream);
        int m66108f = m66108f(this.f105401h);
        if (m66108f > 0) {
            c18827b.f105465t = m66109f0(this.f105401h, m66108f);
            long m66111j = m66111j(this.f105401h) & 4294967295L;
            CRC32 crc32 = new CRC32();
            crc32.update(c18827b.f105465t);
            if (m66111j != crc32.getValue()) {
                throw new IOException("Extended header CRC32 verification failure");
            }
        }
        return c18827b;
    }

    /* renamed from: f */
    public final int m66108f(DataInputStream dataInputStream) throws IOException {
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        count(2);
        return Integer.reverseBytes(readUnsignedShort) >>> 16;
    }

    /* renamed from: f0 */
    public final byte[] m66109f0(InputStream inputStream, int i) throws IOException {
        byte[] readRange = IOUtils.readRange(inputStream, i);
        count(readRange.length);
        if (readRange.length >= i) {
            return readRange;
        }
        throw new EOFException();
    }

    /* renamed from: g0 */
    public final String m66110g0(DataInputStream dataInputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int readUnsignedByte = dataInputStream.readUnsignedByte();
                if (readUnsignedByte == 0) {
                    String byteArrayOutputStream2 = byteArrayOutputStream.toString(Charsets.toCharset(this.f105402i).name());
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream2;
                }
                byteArrayOutputStream.write(readUnsignedByte);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
    }

    public String getArchiveComment() {
        return this.f105403j.f105464s;
    }

    public String getArchiveName() {
        return this.f105403j.f105463r;
    }

    /* renamed from: j */
    public final int m66111j(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        count(4);
        return Integer.reverseBytes(readInt);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        C18826a c18826a = this.f105404k;
        if (c18826a == null) {
            throw new IllegalStateException("No current arj entry");
        }
        if (c18826a.f105410e == 0) {
            return this.f105405l.read(bArr, i, i2);
        }
        throw new IOException("Unsupported compression method " + this.f105404k.f105410e);
    }

    /* renamed from: w */
    public final int m66112w(DataInputStream dataInputStream) throws IOException {
        int readUnsignedByte = dataInputStream.readUnsignedByte();
        count(1);
        return readUnsignedByte;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public ArjArchiveEntry getNextEntry() throws IOException {
        InputStream inputStream = this.f105405l;
        if (inputStream != null) {
            IOUtils.skip(inputStream, Long.MAX_VALUE);
            this.f105405l.close();
            this.f105404k = null;
            this.f105405l = null;
        }
        C18826a m66106M = m66106M();
        this.f105404k = m66106M;
        if (m66106M != null) {
            BoundedInputStream boundedInputStream = new BoundedInputStream(this.f105401h, m66106M.f105414i);
            this.f105405l = boundedInputStream;
            C18826a c18826a = this.f105404k;
            if (c18826a.f105410e == 0) {
                this.f105405l = new CRC32VerifyingInputStream(boundedInputStream, c18826a.f105415j, c18826a.f105416k);
            }
            return new ArjArchiveEntry(this.f105404k);
        }
        this.f105405l = null;
        return null;
    }

    public ArjArchiveInputStream(InputStream inputStream) throws ArchiveException {
        this(inputStream, "CP437");
    }
}

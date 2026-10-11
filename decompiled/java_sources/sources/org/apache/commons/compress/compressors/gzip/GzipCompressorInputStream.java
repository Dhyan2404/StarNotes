package org.apache.commons.compress.compressors.gzip;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.CountingInputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public class GzipCompressorInputStream extends CompressorInputStream implements InputStreamStatistics {

    /* renamed from: p */
    public static final int f106141p = 2;

    /* renamed from: q */
    public static final int f106142q = 4;

    /* renamed from: r */
    public static final int f106143r = 8;

    /* renamed from: s */
    public static final int f106144s = 16;

    /* renamed from: t */
    public static final int f106145t = 224;

    /* renamed from: u */
    public static final /* synthetic */ boolean f106146u = false;

    /* renamed from: f */
    public final CountingInputStream f106147f;

    /* renamed from: g */
    public final InputStream f106148g;

    /* renamed from: h */
    public final boolean f106149h;

    /* renamed from: i */
    public final byte[] f106150i;

    /* renamed from: j */
    public int f106151j;

    /* renamed from: k */
    public Inflater f106152k;

    /* renamed from: l */
    public final CRC32 f106153l;

    /* renamed from: m */
    public boolean f106154m;

    /* renamed from: n */
    public final byte[] f106155n;

    /* renamed from: o */
    public final GzipParameters f106156o;

    public GzipCompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    /* renamed from: j */
    public static byte[] m66704j(DataInput dataInput) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int readUnsignedByte = dataInput.readUnsignedByte();
                if (readUnsignedByte == 0) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
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

    public static boolean matches(byte[] bArr, int i) {
        return i >= 2 && bArr[0] == 31 && bArr[1] == -117;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Inflater inflater = this.f106152k;
        if (inflater != null) {
            inflater.end();
            this.f106152k = null;
        }
        InputStream inputStream = this.f106148g;
        if (inputStream != System.in) {
            inputStream.close();
        }
    }

    /* renamed from: f */
    public final boolean m66705f(boolean z) throws IOException {
        int read = this.f106148g.read();
        if (read == -1 && !z) {
            return false;
        }
        if (read != 31 || this.f106148g.read() != 139) {
            throw new IOException(z ? "Input is not in the .gz format" : "Garbage after a valid .gz stream");
        }
        DataInputStream dataInputStream = new DataInputStream(this.f106148g);
        int readUnsignedByte = dataInputStream.readUnsignedByte();
        if (readUnsignedByte != 8) {
            throw new IOException("Unsupported compression method " + readUnsignedByte + " in the .gz header");
        }
        int readUnsignedByte2 = dataInputStream.readUnsignedByte();
        if ((readUnsignedByte2 & 224) != 0) {
            throw new IOException("Reserved flags are set in the .gz header");
        }
        this.f106156o.setModificationTime(ByteUtils.fromLittleEndian((DataInput) dataInputStream, 4) * 1000);
        int readUnsignedByte3 = dataInputStream.readUnsignedByte();
        if (readUnsignedByte3 == 2) {
            this.f106156o.setCompressionLevel(9);
        } else if (readUnsignedByte3 == 4) {
            this.f106156o.setCompressionLevel(1);
        }
        this.f106156o.setOperatingSystem(dataInputStream.readUnsignedByte());
        if ((readUnsignedByte2 & 4) != 0) {
            int readUnsignedByte4 = (dataInputStream.readUnsignedByte() << 8) | dataInputStream.readUnsignedByte();
            while (true) {
                int i = readUnsignedByte4 - 1;
                if (readUnsignedByte4 <= 0) {
                    break;
                }
                dataInputStream.readUnsignedByte();
                readUnsignedByte4 = i;
            }
        }
        if ((readUnsignedByte2 & 8) != 0) {
            this.f106156o.setFilename(new String(m66704j(dataInputStream), StandardCharsets.ISO_8859_1));
        }
        if ((readUnsignedByte2 & 16) != 0) {
            this.f106156o.setComment(new String(m66704j(dataInputStream), StandardCharsets.ISO_8859_1));
        }
        if ((readUnsignedByte2 & 2) != 0) {
            dataInputStream.readShort();
        }
        this.f106152k.reset();
        this.f106153l.reset();
        return true;
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f106147f.getBytesRead();
    }

    public GzipParameters getMetaData() {
        return this.f106156o;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f106155n, 0, 1) == -1) {
            return -1;
        }
        return this.f106155n[0] & 255;
    }

    public GzipCompressorInputStream(InputStream inputStream, boolean z) throws IOException {
        this.f106150i = new byte[8192];
        this.f106152k = new Inflater(true);
        this.f106153l = new CRC32();
        this.f106155n = new byte[1];
        this.f106156o = new GzipParameters();
        CountingInputStream countingInputStream = new CountingInputStream(inputStream);
        this.f106147f = countingInputStream;
        if (countingInputStream.markSupported()) {
            this.f106148g = countingInputStream;
        } else {
            this.f106148g = new BufferedInputStream(countingInputStream);
        }
        this.f106149h = z;
        m66705f(true);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f106154m) {
            return -1;
        }
        int i3 = 0;
        while (i2 > 0) {
            if (this.f106152k.needsInput()) {
                this.f106148g.mark(this.f106150i.length);
                int read = this.f106148g.read(this.f106150i);
                this.f106151j = read;
                if (read != -1) {
                    this.f106152k.setInput(this.f106150i, 0, read);
                } else {
                    throw new EOFException();
                }
            }
            try {
                int inflate = this.f106152k.inflate(bArr, i, i2);
                this.f106153l.update(bArr, i, inflate);
                i += inflate;
                i2 -= inflate;
                i3 += inflate;
                count(inflate);
                if (this.f106152k.finished()) {
                    this.f106148g.reset();
                    long remaining = this.f106151j - this.f106152k.getRemaining();
                    if (IOUtils.skip(this.f106148g, remaining) == remaining) {
                        this.f106151j = 0;
                        DataInputStream dataInputStream = new DataInputStream(this.f106148g);
                        if (ByteUtils.fromLittleEndian((DataInput) dataInputStream, 4) != this.f106153l.getValue()) {
                            throw new IOException("Gzip-compressed data is corrupt (CRC32 error)");
                        }
                        if (ByteUtils.fromLittleEndian((DataInput) dataInputStream, 4) == (this.f106152k.getBytesWritten() & 4294967295L)) {
                            if (!this.f106149h || !m66705f(false)) {
                                this.f106152k.end();
                                this.f106152k = null;
                                this.f106154m = true;
                                if (i3 == 0) {
                                    return -1;
                                }
                                return i3;
                            }
                        } else {
                            throw new IOException("Gzip-compressed data is corrupt(uncompressed size mismatch)");
                        }
                    } else {
                        throw new IOException();
                    }
                }
            } catch (DataFormatException unused) {
                throw new IOException("Gzip-compressed data is corrupt");
            }
        }
        return i3;
    }
}

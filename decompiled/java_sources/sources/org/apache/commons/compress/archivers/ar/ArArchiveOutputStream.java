package org.apache.commons.compress.archivers.ar;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.utils.ArchiveUtils;

/* loaded from: classes12.dex */
public class ArArchiveOutputStream extends ArchiveOutputStream {
    public static final int LONGFILE_BSD = 1;
    public static final int LONGFILE_ERROR = 0;

    /* renamed from: e */
    public final OutputStream f105392e;

    /* renamed from: f */
    public long f105393f;

    /* renamed from: g */
    public ArArchiveEntry f105394g;

    /* renamed from: h */
    public boolean f105395h;

    /* renamed from: i */
    public int f105396i = 0;

    /* renamed from: j */
    public boolean f105397j;

    public ArArchiveOutputStream(OutputStream outputStream) {
        this.f105392e = outputStream;
    }

    /* renamed from: H */
    public final void m66099H(ArArchiveEntry arArchiveEntry) throws IOException {
        long m66101j;
        boolean z;
        String name = arArchiveEntry.getName();
        int length = name.length();
        int i = this.f105396i;
        if (i == 0 && length > 16) {
            throw new IOException("File name too long, > 16 chars: " + name);
        }
        if (1 != i || (length <= 16 && !name.contains(" "))) {
            m66101j = 0 + m66101j(name);
            z = false;
        } else {
            z = true;
            m66101j = 0 + m66101j(ArArchiveInputStream.f105368J + length);
        }
        long m66100f = m66100f(m66101j, 16L, ' ');
        String str = "" + arArchiveEntry.getLastModified();
        if (str.length() > 12) {
            throw new IOException("Last modified too long");
        }
        long m66100f2 = m66100f(m66100f + m66101j(str), 28L, ' ');
        String str2 = "" + arArchiveEntry.getUserId();
        if (str2.length() > 6) {
            throw new IOException("User id too long");
        }
        long m66100f3 = m66100f(m66100f2 + m66101j(str2), 34L, ' ');
        String str3 = "" + arArchiveEntry.getGroupId();
        if (str3.length() > 6) {
            throw new IOException("Group id too long");
        }
        long m66100f4 = m66100f(m66100f3 + m66101j(str3), 40L, ' ');
        String str4 = "" + Integer.toString(arArchiveEntry.getMode(), 8);
        if (str4.length() > 8) {
            throw new IOException("Filemode too long");
        }
        long m66100f5 = m66100f(m66100f4 + m66101j(str4), 48L, ' ');
        long length2 = arArchiveEntry.getLength();
        if (!z) {
            length = 0;
        }
        String valueOf = String.valueOf(length2 + length);
        if (valueOf.length() > 10) {
            throw new IOException("Size too long");
        }
        m66100f(m66100f5 + m66101j(valueOf), 58L, ' ');
        m66101j(ArArchiveEntry.TRAILER);
        if (z) {
            m66101j(name);
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            if (!this.f105397j) {
                finish();
            }
        } finally {
            this.f105392e.close();
            this.f105394g = null;
        }
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void closeArchiveEntry() throws IOException {
        if (this.f105397j) {
            throw new IOException("Stream has already been finished");
        }
        if (this.f105394g == null || !this.f105395h) {
            throw new IOException("No current entry to close");
        }
        if (this.f105393f % 2 != 0) {
            this.f105392e.write(10);
        }
        this.f105395h = false;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public ArchiveEntry createArchiveEntry(File file, String str) throws IOException {
        if (!this.f105397j) {
            return new ArArchiveEntry(file, str);
        }
        throw new IOException("Stream has already been finished");
    }

    /* renamed from: f */
    public final long m66100f(long j, long j2, char c) throws IOException {
        long j3 = j2 - j;
        if (j3 > 0) {
            for (int i = 0; i < j3; i++) {
                write(c);
            }
        }
        return j2;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void finish() throws IOException {
        if (this.f105395h) {
            throw new IOException("This archive contains unclosed entries.");
        }
        if (this.f105397j) {
            throw new IOException("This archive has already been finished");
        }
        this.f105397j = true;
    }

    /* renamed from: j */
    public final long m66101j(String str) throws IOException {
        write(str.getBytes(StandardCharsets.US_ASCII));
        return r2.length;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void putArchiveEntry(ArchiveEntry archiveEntry) throws IOException {
        if (this.f105397j) {
            throw new IOException("Stream has already been finished");
        }
        ArArchiveEntry arArchiveEntry = (ArArchiveEntry) archiveEntry;
        ArArchiveEntry arArchiveEntry2 = this.f105394g;
        if (arArchiveEntry2 == null) {
            m66102w();
        } else {
            if (arArchiveEntry2.getLength() != this.f105393f) {
                throw new IOException("Length does not match entry (" + this.f105394g.getLength() + CloudStorageConstants.OPERATION_NOT_EQUAL + this.f105393f);
            }
            if (this.f105395h) {
                closeArchiveEntry();
            }
        }
        this.f105394g = arArchiveEntry;
        m66099H(arArchiveEntry);
        this.f105393f = 0L;
        this.f105395h = true;
    }

    public void setLongFileMode(int i) {
        this.f105396i = i;
    }

    /* renamed from: w */
    public final void m66102w() throws IOException {
        this.f105392e.write(ArchiveUtils.toAsciiBytes(ArArchiveEntry.HEADER));
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f105392e.write(bArr, i, i2);
        count(i2);
        this.f105393f += i2;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public ArchiveEntry createArchiveEntry(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        if (!this.f105397j) {
            return new ArArchiveEntry(path, str, linkOptionArr);
        }
        throw new IOException("Stream has already been finished");
    }
}

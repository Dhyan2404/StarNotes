package com.twelvemonkeys.io.ole2;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson2.JSONB;
import com.google.common.base.Ascii;
import com.sunia.HTREnginev2.hyl;
import com.twelvemonkeys.io.FileCacheSeekableStream;
import com.twelvemonkeys.io.FileUtil;
import com.twelvemonkeys.io.LittleEndianDataInputStream;
import com.twelvemonkeys.io.LittleEndianRandomAccessFile;
import com.twelvemonkeys.io.MemoryCacheSeekableStream;
import com.twelvemonkeys.io.Seekable;
import com.twelvemonkeys.io.SeekableInputStream;
import com.twelvemonkeys.lang.StringUtil;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.UUID;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public final class CompoundDocument {
    public static final long EPOCH_OFFSET = -11644477200000L;
    public static final int HEADER_SIZE = 512;

    /* renamed from: o */
    public static final byte[] f94279o = {JSONB.Constants.BC_INT64_BYTE_ZERO, ExifInterface.f7153E1, 17, -32, -95, JSONB.Constants.BC_TRUE, Ascii.SUB, ExifInterface.f7159G1};

    /* renamed from: p */
    public static final int f94280p = -1;

    /* renamed from: q */
    public static final int f94281q = -2;

    /* renamed from: r */
    public static final int f94282r = -3;

    /* renamed from: s */
    public static final int f94283s = -4;

    /* renamed from: a */
    public final DataInput f94284a;

    /* renamed from: b */
    public UUID f94285b;

    /* renamed from: c */
    public int f94286c;

    /* renamed from: d */
    public int f94287d;

    /* renamed from: e */
    public int f94288e;

    /* renamed from: f */
    public int f94289f;

    /* renamed from: g */
    public int f94290g;

    /* renamed from: h */
    public int f94291h;

    /* renamed from: i */
    public int[] f94292i;

    /* renamed from: j */
    public int[] f94293j;

    /* renamed from: k */
    public int[] f94294k;

    /* renamed from: l */
    public Entry f94295l;

    /* renamed from: m */
    public hyl f94296m;

    /* renamed from: n */
    public hyl f94297n;

    /* renamed from: com.twelvemonkeys.io.ole2.CompoundDocument$a */
    /* loaded from: classes10.dex */
    public static class C16981a extends LittleEndianDataInputStream implements Seekable {

        /* renamed from: e */
        public final SeekableInputStream f94298e;

        public C16981a(SeekableInputStream seekableInputStream) {
            super(seekableInputStream);
            this.f94298e = seekableInputStream;
        }

        @Override // com.twelvemonkeys.io.Seekable
        public void flush() throws IOException {
            this.f94298e.flush();
        }

        @Override // com.twelvemonkeys.io.Seekable
        public void flushBefore(long j) throws IOException {
            this.f94298e.flushBefore(j);
        }

        @Override // com.twelvemonkeys.io.Seekable
        public long getFlushedPosition() throws IOException {
            return this.f94298e.getFlushedPosition();
        }

        @Override // com.twelvemonkeys.io.Seekable
        public long getStreamPosition() throws IOException {
            return this.f94298e.getStreamPosition();
        }

        @Override // com.twelvemonkeys.io.Seekable
        public boolean isCached() {
            return this.f94298e.isCached();
        }

        @Override // com.twelvemonkeys.io.Seekable
        public boolean isCachedFile() {
            return this.f94298e.isCachedFile();
        }

        @Override // com.twelvemonkeys.io.Seekable
        public boolean isCachedMemory() {
            return this.f94298e.isCachedMemory();
        }

        @Override // com.twelvemonkeys.io.Seekable
        public void mark() {
            this.f94298e.mark();
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, com.twelvemonkeys.io.Seekable
        public void reset() throws IOException {
            this.f94298e.reset();
        }

        @Override // com.twelvemonkeys.io.Seekable
        public void seek(long j) throws IOException {
            this.f94298e.seek(j);
        }
    }

    public CompoundDocument(File file) throws IOException {
        this.f94284a = new LittleEndianRandomAccessFile(FileUtil.resolve(file), "r");
        m60712l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static boolean m60703c(DataInput dataInput, boolean z) {
        long j = -1;
        if (z) {
            if ((dataInput instanceof InputStream) && ((InputStream) dataInput).markSupported()) {
                ((InputStream) dataInput).mark(8);
            } else if (dataInput instanceof ImageInputStream) {
                ((ImageInputStream) dataInput).mark();
            } else {
                if (!(dataInput instanceof RandomAccessFile)) {
                    if (dataInput instanceof LittleEndianRandomAccessFile) {
                        j = ((LittleEndianRandomAccessFile) dataInput).getFilePointer();
                    }
                    return false;
                }
                j = ((RandomAccessFile) dataInput).getFilePointer();
            }
        }
        try {
            byte[] bArr = new byte[8];
            dataInput.readFully(bArr);
            boolean equals = Arrays.equals(bArr, f94279o);
            if (z) {
                try {
                    if ((dataInput instanceof InputStream) && ((InputStream) dataInput).markSupported()) {
                        ((InputStream) dataInput).reset();
                    } else if (dataInput instanceof ImageInputStream) {
                        ((ImageInputStream) dataInput).reset();
                    } else if (dataInput instanceof RandomAccessFile) {
                        ((RandomAccessFile) dataInput).seek(j);
                    } else if (dataInput instanceof LittleEndianRandomAccessFile) {
                        ((LittleEndianRandomAccessFile) dataInput).seek(j);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return equals;
        } catch (IOException unused) {
            if (z) {
                try {
                    if ((dataInput instanceof InputStream) && ((InputStream) dataInput).markSupported()) {
                        ((InputStream) dataInput).reset();
                    } else if (dataInput instanceof ImageInputStream) {
                        ((ImageInputStream) dataInput).reset();
                    } else if (dataInput instanceof RandomAccessFile) {
                        ((RandomAccessFile) dataInput).seek(j);
                    } else if (dataInput instanceof LittleEndianRandomAccessFile) {
                        ((LittleEndianRandomAccessFile) dataInput).seek(j);
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            return false;
        } catch (Throwable th) {
            if (z) {
                try {
                    if ((dataInput instanceof InputStream) && ((InputStream) dataInput).markSupported()) {
                        ((InputStream) dataInput).reset();
                    }
                    if (dataInput instanceof ImageInputStream) {
                        ((ImageInputStream) dataInput).reset();
                    } else if (dataInput instanceof RandomAccessFile) {
                        ((RandomAccessFile) dataInput).seek(j);
                    } else if (dataInput instanceof LittleEndianRandomAccessFile) {
                        ((LittleEndianRandomAccessFile) dataInput).seek(j);
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static boolean canRead(DataInput dataInput) {
        return m60703c(dataInput, true);
    }

    public static long toJavaTimeInMillis(long j) {
        if (j == 0) {
            return 0L;
        }
        return ((j >> 1) / 5000) + EPOCH_OFFSET;
    }

    /* renamed from: d */
    public final InputStream m60704d(int i) throws IOException {
        byte[] bArr = new byte[128];
        m60714n(i);
        this.f94284a.readFully(bArr);
        return new ByteArrayInputStream(bArr);
    }

    /* renamed from: e */
    public SortedSet<Entry> m60705e(int i, Entry entry) throws IOException {
        return m60706f(i, entry, new TreeSet());
    }

    /* renamed from: f */
    public final SortedSet<Entry> m60706f(int i, Entry entry, SortedSet<Entry> sortedSet) throws IOException {
        Entry m60707g = m60707g(i, entry);
        if (!sortedSet.add(m60707g)) {
            throw new CorruptDocumentException("Cyclic chain reference for entry: " + i);
        }
        int i2 = m60707g.f94316h;
        if (i2 != -1) {
            m60706f(i2, entry, sortedSet);
        }
        int i3 = m60707g.f94317i;
        if (i3 != -1) {
            m60706f(i3, entry, sortedSet);
        }
        return sortedSet;
    }

    /* renamed from: g */
    public Entry m60707g(int i, Entry entry) throws IOException {
        Entry m60718b = Entry.m60718b(new LittleEndianDataInputStream(m60704d(i)));
        m60718b.f94324p = entry;
        m60718b.f94323o = this;
        return m60718b;
    }

    public Entry getRootEntry() throws IOException {
        if (this.f94295l == null) {
            m60713m();
            Entry m60707g = m60707g(0, null);
            this.f94295l = m60707g;
            if (m60707g.f94314f != 5) {
                throw new CorruptDocumentException("Invalid root storage type: " + ((int) this.f94295l.f94314f));
            }
        }
        return this.f94295l;
    }

    /* renamed from: h */
    public Entry m60708h(String str) throws IOException {
        if (StringUtil.isEmpty(str) || !str.startsWith("/")) {
            throw new IllegalArgumentException("Path must be absolute, and contain a valid path: " + str);
        }
        Entry rootEntry = getRootEntry();
        if (str.equals("/")) {
            return rootEntry;
        }
        for (String str2 : StringUtil.toStringArray(str, "/")) {
            rootEntry = rootEntry.getChildEntry(str2);
            if (rootEntry == null) {
                break;
            }
        }
        return rootEntry;
    }

    /* renamed from: i */
    public SeekableInputStream m60709i(int i, int i2) throws IOException {
        return new MemoryCacheSeekableStream(new C16982b(m60710j(i, i2), i2, i2 < this.f94289f ? this.f94287d : this.f94286c, this));
    }

    /* renamed from: j */
    public final hyl m60710j(int i, long j) throws IOException {
        hyl hylVar = new hyl();
        int[] iArr = m60711k(j) ? this.f94294k : this.f94293j;
        while (i != -2 && i != -1) {
            hylVar.m54644a(i);
            i = iArr[i];
        }
        return hylVar;
    }

    /* renamed from: k */
    public final boolean m60711k(long j) {
        return j != -1 && j < ((long) this.f94289f);
    }

    /* renamed from: l */
    public final void m60712l() throws IOException {
        if (this.f94292i != null) {
            return;
        }
        if (!m60703c(this.f94284a, false)) {
            throw new CorruptDocumentException("Not an OLE 2 Compound Document");
        }
        this.f94285b = new UUID(this.f94284a.readLong(), this.f94284a.readLong());
        this.f94284a.readUnsignedShort();
        this.f94284a.readUnsignedShort();
        int readUnsignedShort = this.f94284a.readUnsignedShort();
        if (readUnsignedShort == 65535) {
            throw new CorruptDocumentException("Cannot read big endian OLE 2 Compound Documents");
        }
        if (readUnsignedShort != 65534) {
            throw new CorruptDocumentException(String.format("Unknown byte order marker: 0x%04x, expected 0xfffe or 0xffff", Integer.valueOf(readUnsignedShort)));
        }
        this.f94286c = 1 << this.f94284a.readUnsignedShort();
        this.f94287d = 1 << this.f94284a.readUnsignedShort();
        if (m60716p(10) != 10) {
            throw new CorruptDocumentException();
        }
        int readInt = this.f94284a.readInt();
        this.f94288e = this.f94284a.readInt();
        if (m60716p(4) != 4) {
            throw new CorruptDocumentException();
        }
        this.f94289f = this.f94284a.readInt();
        this.f94290g = this.f94284a.readInt();
        this.f94291h = this.f94284a.readInt();
        int readInt2 = this.f94284a.readInt();
        int readInt3 = this.f94284a.readInt();
        this.f94292i = new int[readInt];
        int min = Math.min(readInt, 109);
        for (int i = 0; i < min; i++) {
            this.f94292i[i] = this.f94284a.readInt();
        }
        if (readInt2 == -2) {
            int i2 = 436 - (readInt * 4);
            if (m60716p(i2) != i2) {
                throw new CorruptDocumentException();
            }
            return;
        }
        m60715o(readInt2, -1L);
        for (int i3 = 0; i3 < readInt3; i3++) {
            for (int i4 = 0; i4 < 127; i4++) {
                int readInt4 = this.f94284a.readInt();
                if (readInt4 != -1) {
                    this.f94292i[min] = readInt4;
                    min++;
                }
            }
            int readInt5 = this.f94284a.readInt();
            if (readInt5 == -2) {
                return;
            }
            m60715o(readInt5, -1L);
        }
    }

    /* renamed from: m */
    public final void m60713m() throws IOException {
        if (this.f94293j != null) {
            return;
        }
        int i = this.f94286c / 4;
        this.f94293j = new int[this.f94292i.length * i];
        int i2 = 0;
        while (true) {
            int[] iArr = this.f94292i;
            if (i2 >= iArr.length) {
                break;
            }
            m60715o(iArr[i2], -1L);
            for (int i3 = 0; i3 < i; i3++) {
                this.f94293j[(i2 * i) + i3] = this.f94284a.readInt();
            }
            i2++;
        }
        hyl m60710j = m60710j(this.f94290g, -1L);
        this.f94294k = new int[this.f94291h * i];
        for (int i4 = 0; i4 < this.f94291h; i4++) {
            m60715o(m60710j.m54646c(i4), -1L);
            for (int i5 = 0; i5 < i; i5++) {
                this.f94294k[(i4 * i) + i5] = this.f94284a.readInt();
            }
        }
    }

    /* renamed from: n */
    public final void m60714n(int i) throws IOException {
        if (this.f94297n == null) {
            this.f94297n = m60710j(this.f94288e, -1L);
        }
        int i2 = this.f94286c / 128;
        int i3 = i / i2;
        int i4 = i - (i2 * i3);
        m60715o(this.f94297n.m54646c(i3), -1L);
        DataInput dataInput = this.f94284a;
        if (dataInput instanceof LittleEndianRandomAccessFile) {
            LittleEndianRandomAccessFile littleEndianRandomAccessFile = (LittleEndianRandomAccessFile) dataInput;
            littleEndianRandomAccessFile.seek(littleEndianRandomAccessFile.getFilePointer() + (i4 * 128));
        } else if (dataInput instanceof ImageInputStream) {
            ImageInputStream imageInputStream = (ImageInputStream) dataInput;
            imageInputStream.seek(imageInputStream.getStreamPosition() + (i4 * 128));
        } else {
            C16981a c16981a = (C16981a) dataInput;
            c16981a.seek(c16981a.getStreamPosition() + (i4 * 128));
        }
    }

    /* renamed from: o */
    public final void m60715o(int i, long j) throws IOException {
        long j2;
        if (m60711k(j)) {
            Entry rootEntry = getRootEntry();
            if (this.f94296m == null) {
                this.f94296m = m60710j(rootEntry.f94321m, rootEntry.f94322n);
            }
            int i2 = i / (this.f94286c / this.f94287d);
            j2 = (this.f94296m.m54646c(i2) * this.f94286c) + 512 + ((i - (r6 * i2)) * this.f94287d);
        } else {
            j2 = (i * this.f94286c) + 512;
        }
        DataInput dataInput = this.f94284a;
        if (dataInput instanceof LittleEndianRandomAccessFile) {
            ((LittleEndianRandomAccessFile) dataInput).seek(j2);
        } else if (dataInput instanceof ImageInputStream) {
            ((ImageInputStream) dataInput).seek(j2);
        } else {
            ((C16981a) dataInput).seek(j2);
        }
    }

    /* renamed from: p */
    public final int m60716p(int i) throws IOException {
        int i2 = i;
        while (i2 > 0) {
            int skipBytes = this.f94284a.skipBytes(i);
            if (skipBytes <= 0) {
                break;
            }
            i2 -= skipBytes;
        }
        return i - i2;
    }

    public String toString() {
        return String.format("%s[uuid: %s, sector size: %d/%d bytes, directory SID: %d, master SAT: %s entries]", CompoundDocument.class.getSimpleName(), this.f94285b, Integer.valueOf(this.f94286c), Integer.valueOf(this.f94287d), Integer.valueOf(this.f94288e), Integer.valueOf(this.f94292i.length));
    }

    /* renamed from: com.twelvemonkeys.io.ole2.CompoundDocument$b */
    /* loaded from: classes10.dex */
    public static class C16982b extends InputStream {

        /* renamed from: e */
        public final hyl f94299e;

        /* renamed from: f */
        public final CompoundDocument f94300f;

        /* renamed from: g */
        public final long f94301g;

        /* renamed from: h */
        public long f94302h;

        /* renamed from: i */
        public int f94303i;

        /* renamed from: j */
        public byte[] f94304j;

        /* renamed from: k */
        public int f94305k;

        public C16982b(hyl hylVar, int i, int i2, CompoundDocument compoundDocument) {
            this.f94299e = hylVar;
            this.f94301g = i;
            byte[] bArr = new byte[i2];
            this.f94304j = bArr;
            this.f94305k = bArr.length;
            this.f94300f = compoundDocument;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return (int) Math.min(this.f94304j.length - this.f94305k, this.f94301g - this.f94302h);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f94304j = null;
        }

        /* renamed from: f */
        public final boolean m60717f() throws IOException {
            if (this.f94302h >= this.f94301g || this.f94303i >= this.f94299e.m54649f()) {
                return false;
            }
            synchronized (this.f94300f) {
                this.f94300f.m60715o(this.f94299e.m54646c(this.f94303i), this.f94301g);
                this.f94300f.f94284a.readFully(this.f94304j);
            }
            this.f94303i++;
            this.f94305k = 0;
            return true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (available() <= 0 && !m60717f()) {
                return -1;
            }
            this.f94302h++;
            byte[] bArr = this.f94304j;
            int i = this.f94305k;
            this.f94305k = i + 1;
            return bArr[i] & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (available() <= 0 && !m60717f()) {
                return -1;
            }
            int min = Math.min(i2, available());
            System.arraycopy(this.f94304j, this.f94305k, bArr, i, min);
            this.f94305k += min;
            this.f94302h += min;
            return min;
        }
    }

    public CompoundDocument(InputStream inputStream) throws IOException {
        this((SeekableInputStream) new FileCacheSeekableStream(inputStream));
    }

    public CompoundDocument(SeekableInputStream seekableInputStream) throws IOException {
        this.f94284a = new C16981a(seekableInputStream);
        m60712l();
    }

    public CompoundDocument(ImageInputStream imageInputStream) throws IOException {
        this.f94284a = imageInputStream;
        m60712l();
    }
}

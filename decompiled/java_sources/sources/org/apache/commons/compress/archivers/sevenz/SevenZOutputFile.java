package org.apache.commons.compress.archivers.sevenz;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.IntToLongFunction;
import java.util.function.Predicate;
import java.util.zip.CRC32;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.sevenz.SevenZArchiveEntry;
import org.apache.commons.compress.archivers.sevenz.SevenZOutputFile;
import org.apache.commons.compress.utils.CountingOutputStream;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class SevenZOutputFile implements Closeable {

    /* renamed from: e */
    public final SeekableByteChannel f105660e;

    /* renamed from: f */
    public final List<SevenZArchiveEntry> f105661f;

    /* renamed from: g */
    public int f105662g;

    /* renamed from: h */
    public final CRC32 f105663h;

    /* renamed from: i */
    public final CRC32 f105664i;

    /* renamed from: j */
    public long f105665j;

    /* renamed from: k */
    public boolean f105666k;

    /* renamed from: l */
    public CountingOutputStream f105667l;

    /* renamed from: m */
    public CountingOutputStream[] f105668m;

    /* renamed from: n */
    public Iterable<? extends SevenZMethodConfiguration> f105669n;

    /* renamed from: o */
    public final Map<SevenZArchiveEntry, long[]> f105670o;

    public SevenZOutputFile(File file) throws IOException {
        this(Files.newByteChannel(file.toPath(), EnumSet.of(StandardOpenOption.CREATE, StandardOpenOption.WRITE, StandardOpenOption.TRUNCATE_EXISTING), new FileAttribute[0]));
    }

    /* renamed from: f0 */
    public static /* synthetic */ long m66283f0(SevenZOutputFile sevenZOutputFile) {
        long j = sevenZOutputFile.f105665j;
        sevenZOutputFile.f105665j = 1 + j;
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i0 */
    public /* synthetic */ long m66284i0(int i) {
        return this.f105668m[i].getBytesWritten();
    }

    /* renamed from: j0 */
    public static /* synthetic */ boolean m66286j0(SevenZArchiveEntry sevenZArchiveEntry) {
        return !sevenZArchiveEntry.hasStream();
    }

    /* renamed from: k0 */
    public static <T> Iterable<T> m66287k0(Iterable<T> iterable) {
        LinkedList linkedList = new LinkedList();
        Iterator<T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            linkedList.addFirst(it2.next());
        }
        return linkedList;
    }

    /* renamed from: A0 */
    public final void m66289A0(DataOutput dataOutput) throws IOException {
        if (this.f105662g > 0) {
            m66308y0(dataOutput);
            m66292D0(dataOutput);
        }
        m66290B0(dataOutput);
        dataOutput.write(0);
    }

    /* renamed from: B0 */
    public final void m66290B0(DataOutput dataOutput) throws IOException {
        dataOutput.write(8);
        dataOutput.write(0);
    }

    /* renamed from: C0 */
    public final void m66291C0(DataOutput dataOutput, long j) throws IOException {
        int i = 0;
        int i2 = 128;
        int i3 = 0;
        while (true) {
            if (i >= 8) {
                break;
            }
            int i4 = i + 1;
            if (j < (1 << (i4 * 7))) {
                i3 = (int) (i3 | (j >>> (i * 8)));
                break;
            } else {
                i3 |= i2;
                i2 >>>= 1;
                i = i4;
            }
        }
        dataOutput.write(i3);
        while (i > 0) {
            dataOutput.write((int) (255 & j));
            j >>>= 8;
            i--;
        }
    }

    /* renamed from: D0 */
    public final void m66292D0(DataOutput dataOutput) throws IOException {
        dataOutput.write(7);
        dataOutput.write(11);
        m66291C0(dataOutput, this.f105662g);
        dataOutput.write(0);
        for (SevenZArchiveEntry sevenZArchiveEntry : this.f105661f) {
            if (sevenZArchiveEntry.hasStream()) {
                m66306w0(dataOutput, sevenZArchiveEntry);
            }
        }
        dataOutput.write(12);
        for (SevenZArchiveEntry sevenZArchiveEntry2 : this.f105661f) {
            if (sevenZArchiveEntry2.hasStream()) {
                long[] jArr = this.f105670o.get(sevenZArchiveEntry2);
                if (jArr != null) {
                    for (long j : jArr) {
                        m66291C0(dataOutput, j);
                    }
                }
                m66291C0(dataOutput, sevenZArchiveEntry2.getSize());
            }
        }
        dataOutput.write(10);
        dataOutput.write(1);
        for (SevenZArchiveEntry sevenZArchiveEntry3 : this.f105661f) {
            if (sevenZArchiveEntry3.hasStream()) {
                dataOutput.writeInt(Integer.reverseBytes((int) sevenZArchiveEntry3.getCrcValue()));
            }
        }
        dataOutput.write(0);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            if (!this.f105666k) {
                finish();
            }
        } finally {
            this.f105660e.close();
        }
    }

    public void closeArchiveEntry() throws IOException {
        CountingOutputStream countingOutputStream = this.f105667l;
        if (countingOutputStream != null) {
            countingOutputStream.flush();
            this.f105667l.close();
        }
        List<SevenZArchiveEntry> list = this.f105661f;
        SevenZArchiveEntry sevenZArchiveEntry = list.get(list.size() - 1);
        if (this.f105665j > 0) {
            sevenZArchiveEntry.setHasStream(true);
            this.f105662g++;
            sevenZArchiveEntry.setSize(this.f105667l.getBytesWritten());
            sevenZArchiveEntry.m66206g(this.f105665j);
            sevenZArchiveEntry.setCrcValue(this.f105663h.getValue());
            sevenZArchiveEntry.m66205f(this.f105664i.getValue());
            sevenZArchiveEntry.setHasCrc(true);
            CountingOutputStream[] countingOutputStreamArr = this.f105668m;
            if (countingOutputStreamArr != null) {
                long[] jArr = new long[countingOutputStreamArr.length];
                Arrays.setAll(jArr, new IntToLongFunction() { // from class: com.sunia.HTREnginev2.olm
                    @Override // java.util.function.IntToLongFunction
                    public final long applyAsLong(int i) {
                        long m66284i0;
                        m66284i0 = SevenZOutputFile.this.m66284i0(i);
                        return m66284i0;
                    }
                });
                this.f105670o.put(sevenZArchiveEntry, jArr);
            }
        } else {
            sevenZArchiveEntry.setHasStream(false);
            sevenZArchiveEntry.setSize(0L);
            sevenZArchiveEntry.m66206g(0L);
            sevenZArchiveEntry.setHasCrc(false);
        }
        this.f105667l = null;
        this.f105668m = null;
        this.f105663h.reset();
        this.f105664i.reset();
        this.f105665j = 0L;
    }

    public SevenZArchiveEntry createArchiveEntry(File file, String str) {
        SevenZArchiveEntry sevenZArchiveEntry = new SevenZArchiveEntry();
        sevenZArchiveEntry.setDirectory(file.isDirectory());
        sevenZArchiveEntry.setName(str);
        sevenZArchiveEntry.setLastModifiedDate(new Date(file.lastModified()));
        return sevenZArchiveEntry;
    }

    public void finish() throws IOException {
        if (this.f105666k) {
            throw new IOException("This archive has already been finished");
        }
        this.f105666k = true;
        long position = this.f105660e.position();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        m66307x0(dataOutputStream);
        dataOutputStream.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        this.f105660e.write(ByteBuffer.wrap(byteArray));
        CRC32 crc32 = new CRC32();
        crc32.update(byteArray);
        byte[] bArr = SevenZFile.f105625r;
        ByteBuffer order = ByteBuffer.allocate(bArr.length + 2 + 4 + 8 + 8 + 4).order(ByteOrder.LITTLE_ENDIAN);
        this.f105660e.position(0L);
        order.put(bArr);
        order.put((byte) 0).put((byte) 2);
        order.putInt(0);
        order.putLong(position - 32).putLong(byteArray.length & 4294967295L).putInt((int) crc32.getValue());
        crc32.reset();
        crc32.update(order.array(), bArr.length + 6, 20);
        order.putInt(bArr.length + 2, (int) crc32.getValue());
        order.flip();
        this.f105660e.write(order);
    }

    /* renamed from: g0 */
    public final Iterable<? extends SevenZMethodConfiguration> m66293g0(SevenZArchiveEntry sevenZArchiveEntry) {
        Iterable<? extends SevenZMethodConfiguration> contentMethods = sevenZArchiveEntry.getContentMethods();
        return contentMethods == null ? this.f105669n : contentMethods;
    }

    /* renamed from: h0 */
    public final OutputStream m66294h0() throws IOException {
        if (this.f105667l == null) {
            this.f105667l = m66295l0();
        }
        return this.f105667l;
    }

    /* renamed from: l0 */
    public final CountingOutputStream m66295l0() throws IOException {
        if (this.f105661f.isEmpty()) {
            throw new IllegalStateException("No current 7z entry");
        }
        OutputStream c18847b = new C18847b(this, null);
        ArrayList arrayList = new ArrayList();
        List<SevenZArchiveEntry> list = this.f105661f;
        boolean z = true;
        for (SevenZMethodConfiguration sevenZMethodConfiguration : m66293g0(list.get(list.size() - 1))) {
            if (!z) {
                CountingOutputStream countingOutputStream = new CountingOutputStream(c18847b);
                arrayList.add(countingOutputStream);
                c18847b = countingOutputStream;
            }
            c18847b = Coders.m66198b(c18847b, sevenZMethodConfiguration.getMethod(), sevenZMethodConfiguration.getOptions());
            z = false;
        }
        if (!arrayList.isEmpty()) {
            this.f105668m = (CountingOutputStream[]) arrayList.toArray(new CountingOutputStream[0]);
        }
        return new C18846a(c18847b);
    }

    /* renamed from: m0 */
    public final void m66296m0(DataOutput dataOutput, BitSet bitSet, int i) throws IOException {
        int i2 = 0;
        int i3 = 7;
        for (int i4 = 0; i4 < i; i4++) {
            i2 |= (bitSet.get(i4) ? 1 : 0) << i3;
            i3--;
            if (i3 < 0) {
                dataOutput.write(i2);
                i2 = 0;
                i3 = 7;
            }
        }
        if (i3 != 7) {
            dataOutput.write(i2);
        }
    }

    /* renamed from: n0 */
    public final void m66297n0(DataOutput dataOutput) throws IOException {
        Iterator<SevenZArchiveEntry> it2 = this.f105661f.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().getHasAccessDate()) {
                i++;
            }
        }
        if (i > 0) {
            dataOutput.write(19);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            if (i != this.f105661f.size()) {
                dataOutputStream.write(0);
                BitSet bitSet = new BitSet(this.f105661f.size());
                for (int i2 = 0; i2 < this.f105661f.size(); i2++) {
                    bitSet.set(i2, this.f105661f.get(i2).getHasAccessDate());
                }
                m66296m0(dataOutputStream, bitSet, this.f105661f.size());
            } else {
                dataOutputStream.write(1);
            }
            dataOutputStream.write(0);
            for (SevenZArchiveEntry sevenZArchiveEntry : this.f105661f) {
                if (sevenZArchiveEntry.getHasAccessDate()) {
                    dataOutputStream.writeLong(Long.reverseBytes(SevenZArchiveEntry.javaTimeToNtfsTime(sevenZArchiveEntry.getAccessDate())));
                }
            }
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            m66291C0(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    /* renamed from: o0 */
    public final void m66298o0(DataOutput dataOutput) throws IOException {
        boolean z = false;
        BitSet bitSet = new BitSet(0);
        int i = 0;
        for (SevenZArchiveEntry sevenZArchiveEntry : this.f105661f) {
            if (!sevenZArchiveEntry.hasStream()) {
                boolean isAntiItem = sevenZArchiveEntry.isAntiItem();
                bitSet.set(i, isAntiItem);
                z |= isAntiItem;
                i++;
            }
        }
        if (z) {
            dataOutput.write(16);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            m66296m0(dataOutputStream, bitSet, i);
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            m66291C0(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    /* renamed from: p0 */
    public final void m66299p0(DataOutput dataOutput) throws IOException {
        Iterator<SevenZArchiveEntry> it2 = this.f105661f.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().getHasCreationDate()) {
                i++;
            }
        }
        if (i > 0) {
            dataOutput.write(18);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            if (i != this.f105661f.size()) {
                dataOutputStream.write(0);
                BitSet bitSet = new BitSet(this.f105661f.size());
                for (int i2 = 0; i2 < this.f105661f.size(); i2++) {
                    bitSet.set(i2, this.f105661f.get(i2).getHasCreationDate());
                }
                m66296m0(dataOutputStream, bitSet, this.f105661f.size());
            } else {
                dataOutputStream.write(1);
            }
            dataOutputStream.write(0);
            for (SevenZArchiveEntry sevenZArchiveEntry : this.f105661f) {
                if (sevenZArchiveEntry.getHasCreationDate()) {
                    dataOutputStream.writeLong(Long.reverseBytes(SevenZArchiveEntry.javaTimeToNtfsTime(sevenZArchiveEntry.getCreationDate())));
                }
            }
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            m66291C0(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    public void putArchiveEntry(ArchiveEntry archiveEntry) {
        this.f105661f.add((SevenZArchiveEntry) archiveEntry);
    }

    /* renamed from: q0 */
    public final void m66300q0(DataOutput dataOutput) throws IOException {
        boolean z = false;
        BitSet bitSet = new BitSet(0);
        int i = 0;
        for (SevenZArchiveEntry sevenZArchiveEntry : this.f105661f) {
            if (!sevenZArchiveEntry.hasStream()) {
                boolean isDirectory = sevenZArchiveEntry.isDirectory();
                bitSet.set(i, !isDirectory);
                z |= !isDirectory;
                i++;
            }
        }
        if (z) {
            dataOutput.write(15);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            m66296m0(dataOutputStream, bitSet, i);
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            m66291C0(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    /* renamed from: r0 */
    public final void m66301r0(DataOutput dataOutput) throws IOException {
        if (this.f105661f.stream().anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.plm
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m66286j0;
                m66286j0 = SevenZOutputFile.m66286j0((SevenZArchiveEntry) obj);
                return m66286j0;
            }
        })) {
            dataOutput.write(14);
            BitSet bitSet = new BitSet(this.f105661f.size());
            for (int i = 0; i < this.f105661f.size(); i++) {
                bitSet.set(i, !this.f105661f.get(i).hasStream());
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            m66296m0(dataOutputStream, bitSet, this.f105661f.size());
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            m66291C0(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    /* renamed from: s0 */
    public final void m66302s0(DataOutput dataOutput) throws IOException {
        Iterator<SevenZArchiveEntry> it2 = this.f105661f.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().getHasLastModifiedDate()) {
                i++;
            }
        }
        if (i > 0) {
            dataOutput.write(20);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            if (i != this.f105661f.size()) {
                dataOutputStream.write(0);
                BitSet bitSet = new BitSet(this.f105661f.size());
                for (int i2 = 0; i2 < this.f105661f.size(); i2++) {
                    bitSet.set(i2, this.f105661f.get(i2).getHasLastModifiedDate());
                }
                m66296m0(dataOutputStream, bitSet, this.f105661f.size());
            } else {
                dataOutputStream.write(1);
            }
            dataOutputStream.write(0);
            for (SevenZArchiveEntry sevenZArchiveEntry : this.f105661f) {
                if (sevenZArchiveEntry.getHasLastModifiedDate()) {
                    dataOutputStream.writeLong(Long.reverseBytes(SevenZArchiveEntry.javaTimeToNtfsTime(sevenZArchiveEntry.getLastModifiedDate())));
                }
            }
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            m66291C0(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    public void setContentCompression(SevenZMethod sevenZMethod) {
        setContentMethods(Collections.singletonList(new SevenZMethodConfiguration(sevenZMethod)));
    }

    public void setContentMethods(Iterable<? extends SevenZMethodConfiguration> iterable) {
        this.f105669n = m66287k0(iterable);
    }

    /* renamed from: t0 */
    public final void m66303t0(DataOutput dataOutput) throws IOException {
        dataOutput.write(17);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.write(0);
        Iterator<SevenZArchiveEntry> it2 = this.f105661f.iterator();
        while (it2.hasNext()) {
            dataOutputStream.write(it2.next().getName().getBytes(StandardCharsets.UTF_16LE));
            dataOutputStream.writeShort(0);
        }
        dataOutputStream.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        m66291C0(dataOutput, byteArray.length);
        dataOutput.write(byteArray);
    }

    /* renamed from: u0 */
    public final void m66304u0(DataOutput dataOutput) throws IOException {
        Iterator<SevenZArchiveEntry> it2 = this.f105661f.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().getHasWindowsAttributes()) {
                i++;
            }
        }
        if (i > 0) {
            dataOutput.write(21);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            if (i != this.f105661f.size()) {
                dataOutputStream.write(0);
                BitSet bitSet = new BitSet(this.f105661f.size());
                for (int i2 = 0; i2 < this.f105661f.size(); i2++) {
                    bitSet.set(i2, this.f105661f.get(i2).getHasWindowsAttributes());
                }
                m66296m0(dataOutputStream, bitSet, this.f105661f.size());
            } else {
                dataOutputStream.write(1);
            }
            dataOutputStream.write(0);
            for (SevenZArchiveEntry sevenZArchiveEntry : this.f105661f) {
                if (sevenZArchiveEntry.getHasWindowsAttributes()) {
                    dataOutputStream.writeInt(Integer.reverseBytes(sevenZArchiveEntry.getWindowsAttributes()));
                }
            }
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            m66291C0(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    /* renamed from: v0 */
    public final void m66305v0(DataOutput dataOutput) throws IOException {
        dataOutput.write(5);
        m66291C0(dataOutput, this.f105661f.size());
        m66301r0(dataOutput);
        m66300q0(dataOutput);
        m66298o0(dataOutput);
        m66303t0(dataOutput);
        m66299p0(dataOutput);
        m66297n0(dataOutput);
        m66302s0(dataOutput);
        m66304u0(dataOutput);
        dataOutput.write(0);
    }

    /* renamed from: w0 */
    public final void m66306w0(DataOutput dataOutput, SevenZArchiveEntry sevenZArchiveEntry) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Iterator<? extends SevenZMethodConfiguration> it2 = m66293g0(sevenZArchiveEntry).iterator();
        int i = 0;
        while (it2.hasNext()) {
            i++;
            m66309z0(it2.next(), byteArrayOutputStream);
        }
        m66291C0(dataOutput, i);
        dataOutput.write(byteArrayOutputStream.toByteArray());
        long j = 0;
        while (j < i - 1) {
            long j2 = 1 + j;
            m66291C0(dataOutput, j2);
            m66291C0(dataOutput, j);
            j = j2;
        }
    }

    public void write(int i) throws IOException {
        m66294h0().write(i);
    }

    /* renamed from: x0 */
    public final void m66307x0(DataOutput dataOutput) throws IOException {
        dataOutput.write(1);
        dataOutput.write(4);
        m66289A0(dataOutput);
        m66305v0(dataOutput);
        dataOutput.write(0);
    }

    /* renamed from: y0 */
    public final void m66308y0(DataOutput dataOutput) throws IOException {
        dataOutput.write(6);
        m66291C0(dataOutput, 0L);
        m66291C0(dataOutput, this.f105662g & 4294967295L);
        dataOutput.write(9);
        for (SevenZArchiveEntry sevenZArchiveEntry : this.f105661f) {
            if (sevenZArchiveEntry.hasStream()) {
                m66291C0(dataOutput, sevenZArchiveEntry.m66203d());
            }
        }
        dataOutput.write(10);
        dataOutput.write(1);
        for (SevenZArchiveEntry sevenZArchiveEntry2 : this.f105661f) {
            if (sevenZArchiveEntry2.hasStream()) {
                dataOutput.writeInt(Integer.reverseBytes((int) sevenZArchiveEntry2.m66202c()));
            }
        }
        dataOutput.write(0);
    }

    /* renamed from: z0 */
    public final void m66309z0(SevenZMethodConfiguration sevenZMethodConfiguration, OutputStream outputStream) throws IOException {
        byte[] id = sevenZMethodConfiguration.getMethod().getId();
        byte[] mo56160d = Coders.m66199c(sevenZMethodConfiguration.getMethod()).mo56160d(sevenZMethodConfiguration.getOptions());
        int length = id.length;
        if (mo56160d.length > 0) {
            length |= 32;
        }
        outputStream.write(length);
        outputStream.write(id);
        if (mo56160d.length > 0) {
            outputStream.write(mo56160d.length);
            outputStream.write(mo56160d);
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.sevenz.SevenZOutputFile$a */
    /* loaded from: classes12.dex */
    public class C18846a extends CountingOutputStream {
        public C18846a(OutputStream outputStream) {
            super(outputStream);
        }

        @Override // org.apache.commons.compress.utils.CountingOutputStream, java.io.FilterOutputStream, java.io.OutputStream
        public void write(int i) throws IOException {
            super.write(i);
            SevenZOutputFile.this.f105663h.update(i);
        }

        @Override // org.apache.commons.compress.utils.CountingOutputStream, java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            super.write(bArr);
            SevenZOutputFile.this.f105663h.update(bArr);
        }

        @Override // org.apache.commons.compress.utils.CountingOutputStream, java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            super.write(bArr, i, i2);
            SevenZOutputFile.this.f105663h.update(bArr, i, i2);
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.sevenz.SevenZOutputFile$b */
    /* loaded from: classes12.dex */
    public class C18847b extends OutputStream {

        /* renamed from: g */
        public static final int f105672g = 8192;

        /* renamed from: e */
        public final ByteBuffer f105673e;

        public C18847b() {
            this.f105673e = ByteBuffer.allocate(8192);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.f105673e.clear();
            this.f105673e.put((byte) i).flip();
            SevenZOutputFile.this.f105660e.write(this.f105673e);
            SevenZOutputFile.this.f105664i.update(i);
            SevenZOutputFile.m66283f0(SevenZOutputFile.this);
        }

        public /* synthetic */ C18847b(SevenZOutputFile sevenZOutputFile, C18846a c18846a) {
            this();
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            write(bArr, 0, bArr.length);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            if (i2 > 8192) {
                SevenZOutputFile.this.f105660e.write(ByteBuffer.wrap(bArr, i, i2));
            } else {
                this.f105673e.clear();
                this.f105673e.put(bArr, i, i2).flip();
                SevenZOutputFile.this.f105660e.write(this.f105673e);
            }
            SevenZOutputFile.this.f105664i.update(bArr, i, i2);
            SevenZOutputFile.this.f105665j += i2;
        }
    }

    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (i2 > 0) {
            m66294h0().write(bArr, i, i2);
        }
    }

    public SevenZOutputFile(SeekableByteChannel seekableByteChannel) throws IOException {
        this.f105661f = new ArrayList();
        this.f105663h = new CRC32();
        this.f105664i = new CRC32();
        this.f105669n = Collections.singletonList(new SevenZMethodConfiguration(SevenZMethod.LZMA2));
        this.f105670o = new HashMap();
        this.f105660e = seekableByteChannel;
        seekableByteChannel.position(32L);
    }

    public void write(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[IOUtils.f107327a];
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 == read) {
                return;
            } else {
                write(bArr, 0, read);
            }
        }
    }

    public SevenZArchiveEntry createArchiveEntry(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        SevenZArchiveEntry sevenZArchiveEntry = new SevenZArchiveEntry();
        sevenZArchiveEntry.setDirectory(Files.isDirectory(path, linkOptionArr));
        sevenZArchiveEntry.setName(str);
        sevenZArchiveEntry.setLastModifiedDate(new Date(Files.getLastModifiedTime(path, linkOptionArr).toMillis()));
        return sevenZArchiveEntry;
    }

    public void write(Path path, OpenOption... openOptionArr) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(Files.newInputStream(path, openOptionArr));
        try {
            write(bufferedInputStream);
            bufferedInputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}

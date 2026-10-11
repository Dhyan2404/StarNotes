package com.twelvemonkeys.imageio.metadata.exif;

import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.sunia.HTREnginev2.bci;
import com.sunia.HTREnginev2.fkf;
import com.twelvemonkeys.imageio.metadata.CompoundDirectory;
import com.twelvemonkeys.imageio.metadata.Directory;
import com.twelvemonkeys.imageio.metadata.Entry;
import com.twelvemonkeys.imageio.metadata.MetadataWriter;
import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import javax.imageio.IIOException;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes10.dex */
public final class EXIFWriter extends MetadataWriter {

    /* renamed from: a */
    public static final int f94045a = 2;

    /* renamed from: b */
    public static final int f94046b = 4;

    /* renamed from: c */
    public static final int f94047c = 12;

    /* renamed from: com.twelvemonkeys.imageio.metadata.exif.EXIFWriter$a */
    /* loaded from: classes10.dex */
    public class C16950a implements Comparator<Entry> {
        public C16950a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Entry entry, Entry entry2) {
            return ((Integer) entry.getIdentifier()).intValue() - ((Integer) entry2.getIdentifier()).intValue();
        }
    }

    /* renamed from: a */
    public final int m60462a(long j) throws IIOException {
        if (j <= 4294967295L) {
            return (int) j;
        }
        throw new IIOException("Integer overflow for TIFF stream");
    }

    /* renamed from: b */
    public final long m60463b(Directory directory) {
        long j = 0;
        for (Entry entry : directory) {
            int m60454c = EXIFReader.m60454c(m60466e(entry), m60465d(entry));
            if (m60454c < 0) {
                throw new IllegalArgumentException(String.format("Unknown size for entry %s", entry));
            }
            if (m60454c > 4) {
                j += m60454c;
            }
            if (entry.getValue() instanceof Directory) {
                j += (r2.size() * 12) + 2 + m60463b((Directory) entry.getValue());
            }
        }
        return j;
    }

    /* renamed from: c */
    public final Directory m60464c(Directory directory) {
        if (m60467f(directory)) {
            return directory;
        }
        ArrayList arrayList = new ArrayList(directory.size());
        Iterator<Entry> it2 = directory.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        Collections.sort(arrayList, new C16950a());
        return new bci(arrayList);
    }

    public long computeIFDOffsetSize(Collection<Entry> collection) {
        return m60463b(new bci(collection)) + 4;
    }

    public long computeIFDSize(Collection<Entry> collection) {
        return m60463b(new bci(collection)) + 2 + (collection.size() * 12);
    }

    /* renamed from: d */
    public final int m60465d(Entry entry) {
        Object value = entry.getValue();
        return value instanceof String ? ((String) value).getBytes(Charset.forName("UTF-8")).length + 1 : entry.valueCount();
    }

    /* renamed from: e */
    public final short m60466e(Entry entry) {
        if (entry instanceof fkf) {
            return ((fkf) entry).m54126d();
        }
        String typeName = entry.getTypeName();
        if (typeName != null) {
            int i = 1;
            while (true) {
                String[] strArr = TIFF.TYPE_NAMES;
                if (i >= strArr.length) {
                    break;
                }
                if (typeName.equals(strArr[i])) {
                    return (short) i;
                }
                i++;
            }
        }
        Object notNull = Validate.notNull(entry.getValue());
        boolean isArray = notNull.getClass().isArray();
        if (isArray) {
            notNull = Array.get(notNull, 0);
        }
        if (notNull instanceof Byte) {
            return (short) 1;
        }
        if (notNull instanceof Short) {
            return (isArray || ((Short) notNull).shortValue() >= 127) ? (short) 3 : (short) 1;
        }
        if (notNull instanceof Integer) {
            return (isArray || ((Integer) notNull).intValue() >= 32767) ? (short) 4 : (short) 3;
        }
        if ((notNull instanceof Long) && !isArray && ((Long) notNull).longValue() < 2147483647L) {
            return (short) 4;
        }
        if (notNull instanceof Rational) {
            return (short) 5;
        }
        if (notNull instanceof String) {
            return (short) 2;
        }
        throw new UnsupportedOperationException(String.format("Method getType not implemented for entry of type %s/value of type %s", entry.getClass(), notNull.getClass()));
    }

    /* renamed from: f */
    public final boolean m60467f(Directory directory) {
        Iterator<Entry> it2 = directory.iterator();
        int i = 0;
        while (it2.hasNext()) {
            int intValue = ((Integer) it2.next().getIdentifier()).intValue() & 65535;
            if (intValue < i) {
                return false;
            }
            i = intValue;
        }
        return true;
    }

    /* renamed from: g */
    public final long m60468g(Directory directory, ImageOutputStream imageOutputStream, boolean z) throws IOException {
        long size;
        Directory m60464c = m60464c(directory);
        long streamPosition = imageOutputStream.getStreamPosition();
        long streamPosition2 = imageOutputStream.getStreamPosition() + m60463b(m60464c) + 4;
        if (z) {
            size = streamPosition + (m60464c.size() * 12) + 2;
        } else {
            imageOutputStream.writeInt(m60462a(streamPosition2));
            size = streamPosition + 4;
            imageOutputStream.seek(streamPosition2);
        }
        imageOutputStream.writeShort(m60464c.size());
        for (Entry entry : m60464c) {
            imageOutputStream.writeShort(((Integer) entry.getIdentifier()).intValue());
            imageOutputStream.writeShort(m60466e(entry));
            imageOutputStream.writeInt(m60465d(entry));
            if (entry.getValue() instanceof Directory) {
                imageOutputStream.writeInt(m60462a(size));
                long streamPosition3 = imageOutputStream.getStreamPosition();
                imageOutputStream.seek(size);
                Directory directory2 = (Directory) entry.getValue();
                m60468g(directory2, imageOutputStream, true);
                size += m60463b(directory2);
                imageOutputStream.seek(streamPosition3);
            } else {
                size += m60469h(entry, size, imageOutputStream);
            }
        }
        return streamPosition2;
    }

    /* renamed from: h */
    public final long m60469h(Entry entry, long j, ImageOutputStream imageOutputStream) throws IOException {
        short m60466e = m60466e(entry);
        int m60454c = EXIFReader.m60454c(m60466e, m60465d(entry));
        if (m60454c > 4) {
            m60470i(j, entry.getValue(), m60466e, imageOutputStream);
            return m60454c;
        }
        m60471j(entry.getValue(), m60466e, imageOutputStream);
        while (m60454c < 4) {
            imageOutputStream.write(0);
            m60454c++;
        }
        return 0L;
    }

    /* renamed from: i */
    public final void m60470i(long j, Object obj, short s, ImageOutputStream imageOutputStream) throws IOException {
        imageOutputStream.writeInt(m60462a(j));
        long streamPosition = imageOutputStream.getStreamPosition();
        imageOutputStream.seek(j);
        m60471j(obj, s, imageOutputStream);
        imageOutputStream.seek(streamPosition);
    }

    /* renamed from: j */
    public final void m60471j(Object obj, short s, ImageOutputStream imageOutputStream) throws IOException {
        short[] sArr;
        short[] sArr2;
        int[] iArr;
        if (!obj.getClass().isArray()) {
            switch (s) {
                case 1:
                case 6:
                case 7:
                    imageOutputStream.writeByte(((Number) obj).intValue());
                    return;
                case 2:
                    imageOutputStream.write(((String) obj).getBytes(StandardCharsets.UTF_8));
                    imageOutputStream.write(0);
                    return;
                case 3:
                case 8:
                    imageOutputStream.writeShort(((Number) obj).intValue());
                    return;
                case 4:
                case 9:
                    imageOutputStream.writeInt(((Number) obj).intValue());
                    return;
                case 5:
                case 10:
                    Rational rational = (Rational) obj;
                    imageOutputStream.writeInt((int) rational.numerator());
                    imageOutputStream.writeInt((int) rational.denominator());
                    return;
                case 11:
                    imageOutputStream.writeFloat(((Number) obj).floatValue());
                    return;
                case 12:
                    imageOutputStream.writeDouble(((Number) obj).doubleValue());
                    return;
                default:
                    throw new IllegalArgumentException("Unsupported TIFF type: " + ((int) s));
            }
        }
        switch (s) {
            case 1:
            case 6:
            case 7:
                imageOutputStream.write((byte[]) obj);
                return;
            case 2:
            default:
                throw new IllegalArgumentException("Unsupported TIFF type: " + ((int) s));
            case 3:
            case 8:
                if (obj instanceof short[]) {
                    sArr2 = (short[]) obj;
                } else {
                    if (obj instanceof int[]) {
                        int[] iArr2 = (int[]) obj;
                        sArr = new short[iArr2.length];
                        for (int i = 0; i < iArr2.length; i++) {
                            sArr[i] = (short) iArr2[i];
                        }
                    } else {
                        if (!(obj instanceof long[])) {
                            throw new IllegalArgumentException("Unsupported type for TIFF SHORT: " + obj.getClass());
                        }
                        long[] jArr = (long[]) obj;
                        sArr = new short[jArr.length];
                        for (int i2 = 0; i2 < jArr.length; i2++) {
                            sArr[i2] = (short) jArr[i2];
                        }
                    }
                    sArr2 = sArr;
                }
                imageOutputStream.writeShorts(sArr2, 0, sArr2.length);
                return;
            case 4:
            case 9:
                if (obj instanceof int[]) {
                    iArr = (int[]) obj;
                } else {
                    if (!(obj instanceof long[])) {
                        throw new IllegalArgumentException("Unsupported type for TIFF LONG: " + obj.getClass());
                    }
                    long[] jArr2 = (long[]) obj;
                    int[] iArr3 = new int[jArr2.length];
                    for (int i3 = 0; i3 < jArr2.length; i3++) {
                        iArr3[i3] = (int) jArr2[i3];
                    }
                    iArr = iArr3;
                }
                imageOutputStream.writeInts(iArr, 0, iArr.length);
                return;
            case 5:
            case 10:
                for (Rational rational2 : (Rational[]) obj) {
                    imageOutputStream.writeInt((int) rational2.numerator());
                    imageOutputStream.writeInt((int) rational2.denominator());
                }
                return;
            case 11:
                if (!(obj instanceof float[])) {
                    throw new IllegalArgumentException("Unsupported type for TIFF FLOAT: " + obj.getClass());
                }
                float[] fArr = (float[]) obj;
                imageOutputStream.writeFloats(fArr, 0, fArr.length);
                return;
            case 12:
                if (!(obj instanceof double[])) {
                    throw new IllegalArgumentException("Unsupported type for TIFF FLOAT: " + obj.getClass());
                }
                double[] dArr = (double[]) obj;
                imageOutputStream.writeDoubles(dArr, 0, dArr.length);
                return;
        }
    }

    public boolean write(Collection<Entry> collection, ImageOutputStream imageOutputStream) throws IOException {
        return write(new bci(collection), imageOutputStream);
    }

    public long writeIFD(Collection<Entry> collection, ImageOutputStream imageOutputStream) throws IOException {
        return m60468g(new bci(collection), imageOutputStream, false);
    }

    public void writeTIFFHeader(ImageOutputStream imageOutputStream) throws IOException {
        imageOutputStream.writeShort(imageOutputStream.getByteOrder() == ByteOrder.BIG_ENDIAN ? DefaultImageHeaderParser.f15007e : DefaultImageHeaderParser.f15008f);
        imageOutputStream.writeShort(42);
    }

    @Override // com.twelvemonkeys.imageio.metadata.MetadataWriter
    public boolean write(Directory directory, ImageOutputStream imageOutputStream) throws IOException {
        Validate.notNull(directory);
        Validate.notNull(imageOutputStream);
        writeTIFFHeader(imageOutputStream);
        if (directory instanceof CompoundDirectory) {
            CompoundDirectory compoundDirectory = (CompoundDirectory) directory;
            for (int i = 0; i < compoundDirectory.directoryCount(); i++) {
                m60468g(compoundDirectory.getDirectory(i), imageOutputStream, false);
            }
        } else {
            m60468g(directory, imageOutputStream, false);
        }
        imageOutputStream.writeInt(0);
        return true;
    }
}

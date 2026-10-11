package com.twelvemonkeys.imageio.metadata.exif;

import com.bumptech.glide.load.engine.GlideException;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.sunia.HTREnginev2.bci;
import com.sunia.HTREnginev2.ekf;
import com.sunia.HTREnginev2.fkf;
import com.twelvemonkeys.imageio.metadata.CompoundDirectory;
import com.twelvemonkeys.imageio.metadata.Directory;
import com.twelvemonkeys.imageio.metadata.Entry;
import com.twelvemonkeys.imageio.metadata.MetadataReader;
import com.twelvemonkeys.lang.StringUtil;
import com.twelvemonkeys.lang.Validate;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.ImageIO;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public final class EXIFReader extends MetadataReader {

    /* renamed from: a */
    public static final boolean f94042a = "true".equalsIgnoreCase(System.getProperty("com.twelvemonkeys.imageio.metadata.exif.debug"));

    /* renamed from: b */
    public static final Collection<Integer> f94043b = Collections.unmodifiableCollection(Arrays.asList(34665, 34853, 40965, 330));

    /* loaded from: classes10.dex */
    public static class HexDump {

        /* renamed from: a */
        public static final int f94044a = 32;

        /* renamed from: a */
        public static String m60461a(byte[] bArr, int i, int i2) {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, i, i2);
            for (int i3 = 0; i3 < copyOfRange.length; i3++) {
                byte b = copyOfRange[i3];
                if (b < 32 || b > 126) {
                    copyOfRange[i3] = Cea608Decoder.f26822e0;
                }
            }
            return new String(copyOfRange, Charset.forName("ascii"));
        }

        public static String dump(byte[] bArr) {
            return dump(0L, bArr, 0, bArr.length);
        }

        public static String dump(long j, byte[] bArr, int i, int i2) {
            StringBuilder sb = new StringBuilder();
            int i3 = 0;
            while (i3 < i2) {
                if (i3 % 32 == 0) {
                    if (i3 > 0) {
                        sb.append("\n");
                    }
                    sb.append(String.format("%08x: ", Long.valueOf(i3 + i + j)));
                } else if (i3 > 0 && i3 % 2 == 0) {
                    sb.append(" ");
                }
                sb.append(String.format("%02x", Byte.valueOf(bArr[i3 + i])));
                i3++;
                int i4 = i3 % 32;
                if (i4 == 0 || i3 == i2) {
                    int i5 = (32 - i4) % 32;
                    if (i5 != 0) {
                        int i6 = i5 / 2;
                        if (i2 % 2 != 0) {
                            sb.append(GlideException.C1935a.f14609h);
                        }
                        for (int i7 = 0; i7 < i6; i7++) {
                            sb.append("     ");
                        }
                    }
                    sb.append(GlideException.C1935a.f14609h);
                    sb.append(m60461a(bArr, (i3 - (32 - i5)) + i, i3 + i));
                }
            }
            return sb.toString();
        }
    }

    /* renamed from: a */
    public static Rational m60453a(long j, long j2) throws IOException {
        return j2 == 0 ? Rational.NaN : new Rational(j, j2);
    }

    /* renamed from: c */
    public static int m60454c(int i, int i2) {
        if (i <= 0) {
            return -1;
        }
        int[] iArr = TIFF.TYPE_LENGTHS;
        if (i < iArr.length) {
            return iArr[i] * i2;
        }
        return -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0147  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m60455f(javax.imageio.stream.ImageInputStream r7, short r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.imageio.metadata.exif.EXIFReader.m60455f(javax.imageio.stream.ImageInputStream, short, int):java.lang.Object");
    }

    public static void main(String[] strArr) throws IOException {
        long j;
        EXIFReader eXIFReader = new EXIFReader();
        ImageInputStream createImageInputStream = ImageIO.createImageInputStream(new File(strArr[0]));
        if (strArr.length > 1) {
            long parseInt = strArr[1].startsWith("0x") ? Integer.parseInt(strArr[1].substring(2), 16) : Long.parseLong(strArr[1]);
            createImageInputStream.setByteOrder(parseInt < 0 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
            j = Math.abs(parseInt);
            createImageInputStream.seek(j);
        } else {
            j = 0;
        }
        try {
            for (Entry entry : strArr.length > 1 ? eXIFReader.readDirectory(createImageInputStream, j, false) : eXIFReader.read(createImageInputStream)) {
                System.err.println(entry);
                Object value = entry.getValue();
                if (value instanceof byte[]) {
                    byte[] bArr = (byte[]) value;
                    System.err.println(HexDump.dump(0L, bArr, 0, Math.min(bArr.length, 128)));
                }
            }
        } finally {
            createImageInputStream.close();
        }
    }

    /* renamed from: b */
    public final long[] m60456b(Entry entry) throws IIOException {
        Object value = entry.getValue();
        if (value instanceof Byte) {
            return new long[]{((Byte) value).byteValue() & 255};
        }
        if (value instanceof Short) {
            return new long[]{((Short) value).shortValue() & 65535};
        }
        if (value instanceof Integer) {
            return new long[]{((Integer) value).intValue() & 4294967295L};
        }
        if (value instanceof Long) {
            return new long[]{((Long) value).longValue()};
        }
        if (value instanceof long[]) {
            return (long[]) value;
        }
        Object[] objArr = new Object[1];
        objArr[0] = value != null ? value.getClass() : null;
        throw new IIOException(String.format("Unknown pointer type: %s", objArr));
    }

    /* renamed from: d */
    public final fkf m60457d(ImageInputStream imageInputStream) throws IOException {
        Object m60459g;
        int readUnsignedShort = imageInputStream.readUnsignedShort();
        short readShort = imageInputStream.readShort();
        int readInt = imageInputStream.readInt();
        if (readInt < 0) {
            throw new IIOException(String.format("Illegal count %d for tag %s type %s @%08x", Integer.valueOf(readInt), Integer.valueOf(readUnsignedShort), Short.valueOf(readShort), Long.valueOf(imageInputStream.getStreamPosition())));
        }
        if (readShort > 0 && readShort <= 13) {
            int m60454c = m60454c(readShort, readInt);
            if (m60454c <= 0 || m60454c > 4) {
                m60459g = m60459g(imageInputStream, imageInputStream.readUnsignedInt(), readShort, readInt);
            } else {
                m60459g = m60460h(imageInputStream, readShort, readInt);
                imageInputStream.skipBytes(4 - m60454c);
            }
            return new fkf(readUnsignedShort, m60459g, readShort);
        }
        imageInputStream.skipBytes(4);
        long streamPosition = imageInputStream.getStreamPosition() - 12;
        boolean z = f94042a;
        if (!z) {
            return null;
        }
        System.err.printf("Bad EXIF data @%08x\n", Long.valueOf(imageInputStream.getStreamPosition()));
        PrintStream printStream = System.err;
        StringBuilder sb = new StringBuilder();
        sb.append("tagId: ");
        sb.append(readUnsignedShort);
        sb.append(readUnsignedShort <= 0 ? " (INVALID)" : "");
        printStream.println(sb.toString());
        System.err.println("type: " + ((int) readShort) + " (INVALID)");
        System.err.println("count: " + readInt);
        imageInputStream.mark();
        imageInputStream.seek(streamPosition);
        try {
            byte[] bArr = new byte[Math.min(120, Math.max(24, readInt)) + 8];
            int read = imageInputStream.read(bArr);
            if (z) {
                System.err.print(HexDump.dump(streamPosition, bArr, 0, read));
                System.err.println(read < readInt ? "[...]" : "");
            }
            return null;
        } finally {
            imageInputStream.reset();
        }
    }

    /* renamed from: e */
    public final void m60458e(ImageInputStream imageInputStream, List<Entry> list, List<Integer> list2) throws IOException {
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            fkf fkfVar = (fkf) list.get(i);
            int intValue = ((Integer) fkfVar.getIdentifier()).intValue();
            if (list2.contains(Integer.valueOf(intValue))) {
                try {
                    if (f94043b.contains(Integer.valueOf(intValue))) {
                        long[] m60456b = m60456b(fkfVar);
                        ArrayList arrayList = new ArrayList(m60456b.length);
                        for (long j : m60456b) {
                            CompoundDirectory compoundDirectory = (CompoundDirectory) readDirectory(imageInputStream, j, false);
                            for (int i2 = 0; i2 < compoundDirectory.directoryCount(); i2++) {
                                arrayList.add((bci) compoundDirectory.getDirectory(i2));
                            }
                        }
                        if (arrayList.size() == 1) {
                            list.set(i, new fkf(intValue, arrayList.get(0), fkfVar.m54126d()));
                        } else {
                            list.set(i, new fkf(intValue, arrayList.toArray(new bci[arrayList.size()]), fkfVar.m54126d()));
                        }
                    }
                } catch (IIOException e) {
                    if (f94042a) {
                        System.err.println("Error parsing sub-IFD: " + intValue);
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /* renamed from: g */
    public final Object m60459g(ImageInputStream imageInputStream, long j, short s, int i) throws IOException {
        long streamPosition = imageInputStream.getStreamPosition();
        try {
            imageInputStream.seek(j);
            return m60455f(imageInputStream, s, i);
        } finally {
            imageInputStream.seek(streamPosition);
        }
    }

    /* renamed from: h */
    public final Object m60460h(ImageInputStream imageInputStream, short s, int i) throws IOException {
        return m60455f(imageInputStream, s, i);
    }

    @Override // com.twelvemonkeys.imageio.metadata.MetadataReader
    public Directory read(ImageInputStream imageInputStream) throws IOException {
        Validate.notNull(imageInputStream, "input");
        byte[] bArr = new byte[2];
        imageInputStream.readFully(bArr);
        byte b = bArr[0];
        if (b == 73 && bArr[1] == 73) {
            imageInputStream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        } else {
            if (b != 77 || bArr[1] != 77) {
                throw new IIOException(String.format("Invalid TIFF byte order mark '%s', expected: 'II' or 'MM'", StringUtil.decode(bArr, 0, 2, "ASCII")));
            }
            imageInputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        }
        int readUnsignedShort = imageInputStream.readUnsignedShort();
        if (readUnsignedShort == 42) {
            return readDirectory(imageInputStream, imageInputStream.readUnsignedInt(), true);
        }
        throw new IIOException(String.format("Wrong TIFF magic in EXIF data: %04x, expected: %04x", Integer.valueOf(readUnsignedShort), 42));
    }

    public Directory readDirectory(ImageInputStream imageInputStream, long j, boolean z) throws IOException {
        int i;
        long j2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        imageInputStream.seek(j);
        try {
            i = imageInputStream.readUnsignedShort();
        } catch (EOFException unused) {
            i = 0;
        }
        for (int i2 = 0; i2 < i; i2++) {
            try {
                fkf m60457d = m60457d(imageInputStream);
                if (m60457d != null) {
                    arrayList2.add(m60457d);
                }
            } catch (IIOException unused2) {
            }
        }
        if (z) {
            try {
                j2 = imageInputStream.readUnsignedInt();
            } catch (EOFException unused3) {
                j2 = 0;
            }
            if (j2 != 0) {
                CompoundDirectory compoundDirectory = (CompoundDirectory) readDirectory(imageInputStream, j2, true);
                for (int i3 = 0; i3 < compoundDirectory.directoryCount(); i3++) {
                    arrayList.add((bci) compoundDirectory.getDirectory(i3));
                }
            }
        }
        m60458e(imageInputStream, arrayList2, Arrays.asList(34665, 34853, 40965, 330));
        arrayList.add(0, new bci(arrayList2));
        return new ekf(arrayList);
    }
}

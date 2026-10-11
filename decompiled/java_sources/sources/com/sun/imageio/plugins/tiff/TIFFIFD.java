package com.sun.imageio.plugins.tiff;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Sets;
import java.util.SortedSet;
import javax.imageio.IIOException;
import javax.imageio.plugins.tiff.BaselineTIFFTagSet;
import javax.imageio.plugins.tiff.TIFFDirectory;
import javax.imageio.plugins.tiff.TIFFField;
import javax.imageio.plugins.tiff.TIFFTag;
import javax.imageio.plugins.tiff.TIFFTagSet;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes9.dex */
public class TIFFIFD extends TIFFDirectory {
    private static final long MAX_ASCII_SIZE = 65535;
    private static final long MAX_SAMPLES_PER_PIXEL = 65535;
    private static volatile Set<Integer> essentialTags;
    private long lastPosition;
    private long stripOrTileByteCountsPosition;
    private long stripOrTileOffsetsPosition;

    /* loaded from: classes9.dex */
    public static class TIFFIFDEntry {
        public final int count;
        public final long offset;
        public final TIFFTag tag;
        public final int type;

        public TIFFIFDEntry(TIFFTag tIFFTag, int i, int i2, long j) {
            this.tag = tIFFTag;
            this.type = i;
            this.count = i2;
            this.offset = j;
        }
    }

    public TIFFIFD(List<TIFFTagSet> list, TIFFTag tIFFTag) {
        super((TIFFTagSet[]) list.toArray(new TIFFTagSet[list.size()]), tIFFTag);
        this.stripOrTileByteCountsPosition = -1L;
        this.stripOrTileOffsetsPosition = -1L;
        this.lastPosition = -1L;
    }

    private boolean calculateByteCounts(int i, List<TIFFField> list) {
        int[] iArr;
        if (!list.isEmpty()) {
            throw new IllegalArgumentException("byteCounts is not empty");
        }
        if (getFieldAsInt(284) == 2 || getFieldAsInt(259) != 1) {
            return false;
        }
        long fieldAsLong = getFieldAsLong(256);
        if (fieldAsLong < 0) {
            return false;
        }
        long fieldAsLong2 = getFieldAsLong(257);
        if (fieldAsLong2 < 0) {
            return false;
        }
        long fieldAsLong3 = getFieldAsLong(322);
        if (fieldAsLong3 < 0) {
            fieldAsLong3 = fieldAsLong;
        }
        long fieldAsLong4 = getFieldAsLong(323);
        if (fieldAsLong4 < 0) {
            fieldAsLong4 = getFieldAsLong(278);
            if (fieldAsLong4 < 0) {
                fieldAsLong4 = fieldAsLong2;
            }
        }
        TIFFField tIFFField = getTIFFField(258);
        if (tIFFField != null) {
            iArr = tIFFField.getAsInts();
        } else {
            int fieldAsInt = getFieldAsInt(277);
            if (fieldAsInt < 0) {
                fieldAsInt = 1;
            }
            iArr = new int[fieldAsInt];
            Arrays.fill(iArr, 8);
        }
        int i2 = 0;
        for (int i3 : iArr) {
            i2 += i3;
        }
        int i4 = ((int) fieldAsLong4) * (((int) ((i2 * fieldAsLong3) + 7)) / 8);
        long j = (((fieldAsLong + fieldAsLong3) - 1) / fieldAsLong3) * (((fieldAsLong2 + fieldAsLong4) - 1) / fieldAsLong4);
        if (j != i) {
            return false;
        }
        int i5 = getTIFFField(325) != null ? 325 : 279;
        TIFFTag tag = BaselineTIFFTagSet.getInstance().getTag(i5);
        if (getTIFFField(i5) != null) {
            removeTIFFField(i5);
        }
        int i6 = (int) j;
        long[] jArr = new long[i6];
        Arrays.fill(jArr, i4);
        if (fieldAsLong3 <= fieldAsLong && fieldAsLong2 % fieldAsLong4 != 0) {
            jArr[i6 - 1] = ((int) (fieldAsLong2 - ((r16 - 1) * fieldAsLong4))) * r1;
        }
        TIFFField tIFFField2 = new TIFFField(tag, 4, i6, jArr);
        addTIFFField(tIFFField2);
        list.add(tIFFField2);
        return true;
    }

    private void checkFieldOffsets(long j) throws IIOException {
        int i;
        TIFFField tIFFField;
        if (j < 0) {
            return;
        }
        ArrayList<TIFFField> arrayList = new ArrayList();
        TIFFField tIFFField2 = getTIFFField(273);
        if (tIFFField2 != null) {
            i = tIFFField2.getCount();
            arrayList.add(tIFFField2);
        } else {
            i = 0;
        }
        TIFFField tIFFField3 = getTIFFField(324);
        if (tIFFField3 != null) {
            int size = arrayList.size();
            int count = tIFFField3.getCount();
            if (size > 0 && count != i) {
                throw new IIOException("StripOffsets count != TileOffsets count");
            }
            if (size == 0) {
                i = count;
            }
            arrayList.add(tIFFField3);
        }
        ArrayList arrayList2 = new ArrayList();
        if (arrayList.size() > 0) {
            TIFFField tIFFField4 = getTIFFField(279);
            if (tIFFField4 != null) {
                if (tIFFField4.getCount() != i) {
                    throw new IIOException("StripByteCounts count != number of offsets");
                }
                arrayList2.add(tIFFField4);
            }
            TIFFField tIFFField5 = getTIFFField(325);
            if (tIFFField5 != null) {
                if (tIFFField5.getCount() != i) {
                    throw new IIOException("TileByteCounts count != number of offsets");
                }
                arrayList2.add(tIFFField5);
            }
            if (arrayList2.size() > 0) {
                for (TIFFField tIFFField6 : arrayList) {
                    for (TIFFField tIFFField7 : arrayList2) {
                        for (int i2 = 0; i2 < i; i2++) {
                            if (tIFFField6.getAsLong(i2) + tIFFField7.getAsLong(i2) > j) {
                                throw new IIOException("Data segment out of stream");
                            }
                        }
                    }
                }
            }
        }
        TIFFField tIFFField8 = getTIFFField(513);
        if (tIFFField8 != null && (tIFFField = getTIFFField(514)) != null && tIFFField8.getAsLong(0) + tIFFField.getAsLong(0) > j) {
            throw new IIOException("JPEGInterchangeFormat data out of stream");
        }
        if (tIFFField8 == null && (arrayList.size() == 0 || arrayList2.size() == 0)) {
            boolean z = true;
            if (arrayList.size() != 0 && arrayList2.size() == 0) {
                z = true ^ calculateByteCounts(((TIFFField) arrayList.get(0)).getCount(), arrayList2);
            }
            if (z) {
                throw new IIOException("Insufficient data offsets or byte counts");
            }
        }
        TIFFField tIFFField9 = getTIFFField(519);
        if (tIFFField9 != null) {
            for (long j2 : tIFFField9.getAsLongs()) {
                if (j2 + 64 > j) {
                    throw new IIOException("JPEGQTables data out of stream");
                }
            }
        }
        TIFFField tIFFField10 = getTIFFField(520);
        if (tIFFField10 != null) {
            for (long j3 : tIFFField10.getAsLongs()) {
                if (j3 + 16 > j) {
                    throw new IIOException("JPEGDCTables data out of stream");
                }
            }
        }
        TIFFField tIFFField11 = getTIFFField(521);
        if (tIFFField11 != null) {
            for (long j4 : tIFFField11.getAsLongs()) {
                if (j4 + 16 > j) {
                    throw new IIOException("JPEGACTables data out of stream");
                }
            }
        }
    }

    public static TIFFIFD getDirectoryAsIFD(TIFFDirectory tIFFDirectory) {
        if (tIFFDirectory instanceof TIFFIFD) {
            return (TIFFIFD) tIFFDirectory;
        }
        TIFFIFD tiffifd = new TIFFIFD(Arrays.asList(tIFFDirectory.getTagSets()), tIFFDirectory.getParentTag());
        for (TIFFField tIFFField : tIFFDirectory.getTIFFFields()) {
            TIFFTag tag = tIFFField.getTag();
            if (tag.isIFDPointer()) {
                TIFFDirectory directory = tIFFField.hasDirectory() ? tIFFField.getDirectory() : tIFFField.getData() instanceof TIFFDirectory ? (TIFFDirectory) tIFFField.getData() : null;
                tIFFField = directory != null ? new TIFFField(tag, tIFFField.getType(), tIFFField.getCount(), getDirectoryAsIFD(directory)) : null;
            }
            if (tIFFField != null) {
                tiffifd.addTIFFField(tIFFField);
            }
        }
        return tiffifd;
    }

    private int getFieldAsInt(int i) {
        TIFFField tIFFField = getTIFFField(i);
        if (tIFFField == null) {
            return -1;
        }
        return tIFFField.getAsInt(0);
    }

    private long getFieldAsLong(int i) {
        TIFFField tIFFField = getTIFFField(i);
        if (tIFFField == null) {
            return -1L;
        }
        return tIFFField.getAsLong(0);
    }

    public static TIFFTag getTag(int i, List<TIFFTagSet> list) {
        Iterator<TIFFTagSet> it2 = list.iterator();
        while (it2.hasNext()) {
            TIFFTag tag = it2.next().getTag(i);
            if (tag != null) {
                return tag;
            }
        }
        return null;
    }

    private static void initializeEssentialTags() {
        if (essentialTags == null) {
            essentialTags = Sets.m61441of(258, 320, 259, 338, 266, 34675, 257, 256, 521, 520, 513, 514, 512, 519, 515, 347, 262, 284, 317, 532, 278, 277, 339, 279, 273, 292, 293, 325, 323, 324, 322, 529, 530);
        }
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [char[], short[]], vars: [r1v3 ??, r1v53 ??, r1v12 char[], r1v17 ??, r1v24 ??, r1v29 short[], r1v34 ??, r1v41 ??, r1v46 ??, r1v47 ??, r1v52 ??, r1v54 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.rerun(InitCodeVariables.java:36)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryInsertAdditionalMove(FixTypesVisitor.java:553)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:91)
        */
    private static int readFieldValue(javax.imageio.stream.ImageInputStream r15, int r16, int r17, java.lang.Object[] r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 900
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFIFD.readFieldValue(javax.imageio.stream.ImageInputStream, int, int, java.lang.Object[]):int");
    }

    private static void writeTIFFFieldToStream(TIFFField tIFFField, ImageOutputStream imageOutputStream) throws IOException {
        int count = tIFFField.getCount();
        Object data = tIFFField.getData();
        switch (tIFFField.getType()) {
            case 1:
            case 6:
            case 7:
                imageOutputStream.write((byte[]) data);
                return;
            case 2:
                for (int i = 0; i < count; i++) {
                    String str = ((String[]) data)[i];
                    int length = str.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        imageOutputStream.writeByte(str.charAt(i2) & 255);
                    }
                    imageOutputStream.writeByte(0);
                }
                return;
            case 3:
                char[] cArr = (char[]) data;
                imageOutputStream.writeChars(cArr, 0, cArr.length);
                return;
            case 4:
                break;
            case 5:
                for (int i3 = 0; i3 < count; i3++) {
                    long[] jArr = ((long[][]) data)[i3];
                    long j = jArr[0];
                    long j2 = jArr[1];
                    imageOutputStream.writeInt((int) j);
                    imageOutputStream.writeInt((int) j2);
                }
                return;
            case 8:
                short[] sArr = (short[]) data;
                imageOutputStream.writeShorts(sArr, 0, sArr.length);
                return;
            case 9:
                int[] iArr = (int[]) data;
                imageOutputStream.writeInts(iArr, 0, iArr.length);
                return;
            case 10:
                for (int i4 = 0; i4 < count; i4++) {
                    int[][] iArr2 = (int[][]) data;
                    imageOutputStream.writeInt(iArr2[i4][0]);
                    imageOutputStream.writeInt(iArr2[i4][1]);
                }
                return;
            case 11:
                float[] fArr = (float[]) data;
                imageOutputStream.writeFloats(fArr, 0, fArr.length);
                return;
            case 12:
                double[] dArr = (double[]) data;
                imageOutputStream.writeDoubles(dArr, 0, dArr.length);
                return;
            case 13:
                imageOutputStream.writeInt(0);
                return;
            default:
                return;
        }
        for (int i5 = 0; i5 < count; i5++) {
            imageOutputStream.writeInt((int) ((long[]) data)[i5]);
        }
    }

    public long getLastPosition() {
        return this.lastPosition;
    }

    public TIFFIFD getShallowClone() {
        BaselineTIFFTagSet baselineTIFFTagSet = BaselineTIFFTagSet.getInstance();
        List<TIFFTagSet> tagSetList = getTagSetList();
        if (!tagSetList.contains(baselineTIFFTagSet)) {
            return this;
        }
        TIFFIFD tiffifd = new TIFFIFD(tagSetList, getParentTag());
        SortedSet<Integer> tagNumbers = baselineTIFFTagSet.getTagNumbers();
        Iterator<TIFFField> it2 = iterator();
        while (it2.hasNext()) {
            TIFFField next = it2.next();
            if (tagNumbers.contains(Integer.valueOf(next.getTagNumber()))) {
                Object data = next.getData();
                int type = next.getType();
                switch (type) {
                    case 1:
                    case 6:
                    case 7:
                        data = ((byte[]) data).clone();
                        break;
                    case 2:
                        data = ((String[]) data).clone();
                        break;
                    case 3:
                        data = ((char[]) data).clone();
                        break;
                    case 4:
                    case 13:
                        data = ((long[]) data).clone();
                        break;
                    case 5:
                        data = ((long[][]) data).clone();
                        break;
                    case 8:
                        data = ((short[]) data).clone();
                        break;
                    case 9:
                        data = ((int[]) data).clone();
                        break;
                    case 10:
                        data = ((int[][]) data).clone();
                        break;
                    case 11:
                        data = ((float[]) data).clone();
                        break;
                    case 12:
                        try {
                            data = ((double[]) data).clone();
                            break;
                        } catch (Exception unused) {
                            break;
                        }
                }
                next = new TIFFField(next.getTag(), type, next.getCount(), data);
            }
            tiffifd.addTIFFField(next);
        }
        tiffifd.setPositions(this.stripOrTileOffsetsPosition, this.stripOrTileByteCountsPosition, this.lastPosition);
        return tiffifd;
    }

    public long getStripOrTileByteCountsPosition() {
        return this.stripOrTileByteCountsPosition;
    }

    public long getStripOrTileOffsetsPosition() {
        return this.stripOrTileOffsetsPosition;
    }

    public List<TIFFTagSet> getTagSetList() {
        return Arrays.asList(getTagSets());
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x008c, code lost:
    
        if (com.sun.imageio.plugins.tiff.TIFFIFD.essentialTags.contains(java.lang.Integer.valueOf(r8)) != false) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x024d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initialize(javax.imageio.stream.ImageInputStream r31, boolean r32, boolean r33, boolean r34) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFIFD.initialize(javax.imageio.stream.ImageInputStream, boolean, boolean, boolean):void");
    }

    public Iterator<TIFFField> iterator() {
        return Arrays.asList(getTIFFFields()).iterator();
    }

    public void setPositions(long j, long j2, long j3) {
        this.stripOrTileOffsetsPosition = j;
        this.stripOrTileByteCountsPosition = j2;
        this.lastPosition = j3;
    }

    public void writeToStream(ImageOutputStream imageOutputStream) throws IOException {
        long streamPosition;
        long j;
        imageOutputStream.writeShort(getNumTIFFFields());
        long streamPosition2 = imageOutputStream.getStreamPosition() + (r0 * 12) + 4;
        Iterator<TIFFField> it2 = iterator();
        while (it2.hasNext()) {
            TIFFField next = it2.next();
            TIFFTag tag = next.getTag();
            int type = next.getType();
            int count = next.getCount();
            if (type == 0) {
                type = 7;
            }
            int sizeOfType = TIFFTag.getSizeOfType(type) * count;
            if (type == 2) {
                sizeOfType = 0;
                for (int i = 0; i < count; i++) {
                    sizeOfType += next.getAsString(i).length() + 1;
                }
                count = sizeOfType;
            }
            int tagNumber = next.getTagNumber();
            imageOutputStream.writeShort(tagNumber);
            imageOutputStream.writeShort(type);
            imageOutputStream.writeInt(count);
            imageOutputStream.writeInt(0);
            imageOutputStream.mark();
            imageOutputStream.skipBytes(-4);
            if (sizeOfType > 4 || tag.isIFDPointer()) {
                long j2 = (streamPosition2 + 3) & (-4);
                imageOutputStream.writeInt((int) j2);
                imageOutputStream.seek(j2);
                if (tag.isIFDPointer() && next.hasDirectory()) {
                    TIFFIFD directoryAsIFD = getDirectoryAsIFD(next.getDirectory());
                    directoryAsIFD.writeToStream(imageOutputStream);
                    streamPosition = directoryAsIFD.lastPosition;
                } else {
                    writeTIFFFieldToStream(next, imageOutputStream);
                    streamPosition = imageOutputStream.getStreamPosition();
                }
                streamPosition2 = streamPosition;
                j = j2;
            } else {
                j = imageOutputStream.getStreamPosition();
                writeTIFFFieldToStream(next, imageOutputStream);
            }
            if (tagNumber == 279 || tagNumber == 325 || tagNumber == 514) {
                this.stripOrTileByteCountsPosition = j;
            } else if (tagNumber == 273 || tagNumber == 324 || tagNumber == 513) {
                this.stripOrTileOffsetsPosition = j;
            }
            imageOutputStream.reset();
        }
        this.lastPosition = streamPosition2;
    }

    public TIFFIFD(List<TIFFTagSet> list) {
        this(list, null);
    }

    public static TIFFTag getTag(String str, List<TIFFTagSet> list) {
        Iterator<TIFFTagSet> it2 = list.iterator();
        while (it2.hasNext()) {
            TIFFTag tag = it2.next().getTag(str);
            if (tag != null) {
                return tag;
            }
        }
        return null;
    }
}

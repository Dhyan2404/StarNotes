package org.apache.poi.hpsf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.EmptyFileException;
import org.apache.poi.hpsf.wellknown.PropertyIDMap;
import org.apache.poi.poifs.filesystem.DirectoryEntry;
import org.apache.poi.util.CodePageUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianByteArrayInputStream;
import org.apache.poi.util.LittleEndianOutputStream;
import org.apache.poi.util.NotImplemented;

/* loaded from: classes12.dex */
public class PropertySet {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int BYTE_ORDER_ASSERTION = 65534;
    static final int FORMAT_ASSERTION = 0;
    static final int OFFSET_HEADER = 28;
    public static final int OS_MACINTOSH = 1;
    public static final int OS_WIN16 = 0;
    public static final int OS_WIN32 = 2;
    private int byteOrder;
    private ClassID classID;
    private int format;
    private int osVersion;
    private final List<Section> sections;

    public PropertySet() {
        this.sections = new ArrayList();
        this.byteOrder = 65534;
        this.format = 0;
        this.osVersion = 133636;
        this.classID = new ClassID();
        addSection(new Section());
    }

    private void init(byte[] bArr, int i, int i2) throws UnsupportedEncodingException {
        this.byteOrder = LittleEndian.getUShort(bArr, i);
        int i3 = i + 2;
        this.format = LittleEndian.getUShort(bArr, i3);
        int i4 = i3 + 2;
        this.osVersion = (int) LittleEndian.getUInt(bArr, i4);
        int i5 = i4 + 4;
        this.classID = new ClassID(bArr, i5);
        int i6 = i5 + 16;
        int i7 = LittleEndian.getInt(bArr, i6);
        int i8 = i6 + 4;
        if (i7 < 0) {
            throw new HPSFRuntimeException("Section count " + i7 + " is negative.");
        }
        for (int i9 = 0; i9 < i7; i9++) {
            Section section = new Section(bArr, i8);
            i8 += 20;
            this.sections.add(section);
        }
    }

    public static boolean isPropertySetStream(InputStream inputStream) throws IOException {
        try {
            byte[] peekFirstNBytes = IOUtils.peekFirstNBytes(inputStream, 50);
            return isPropertySetStream(peekFirstNBytes, 0, peekFirstNBytes.length);
        } catch (EmptyFileException unused) {
            return false;
        }
    }

    public static boolean matchesSummary(ClassID classID, ClassID... classIDArr) {
        for (ClassID classID2 : classIDArr) {
            if (classID2.equals(classID) || classID2.equalsInverted(classID)) {
                return true;
            }
        }
        return false;
    }

    private static void putClassId(UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream, ClassID classID) {
        byte[] bArr = new byte[16];
        classID.write(bArr, 0);
        unsynchronizedByteArrayOutputStream.write(bArr, 0, 16);
    }

    private byte[] toBytes() throws WritingNotSupportedException, IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            LittleEndianOutputStream littleEndianOutputStream = new LittleEndianOutputStream(unsynchronizedByteArrayOutputStream);
            try {
                int sectionCount = getSectionCount();
                littleEndianOutputStream.writeShort(getByteOrder());
                littleEndianOutputStream.writeShort(getFormat());
                littleEndianOutputStream.writeInt(getOSVersion());
                putClassId(unsynchronizedByteArrayOutputStream, getClassID());
                littleEndianOutputStream.writeInt(sectionCount);
                int[][] iArr = (int[][]) java.lang.reflect.Array.newInstance((Class<?>) Integer.TYPE, getSectionCount(), 2);
                Iterator<Section> it2 = getSections().iterator();
                int i = 0;
                while (it2.hasNext()) {
                    ClassID formatID = it2.next().getFormatID();
                    if (formatID == null) {
                        throw new NoFormatIDException();
                    }
                    putClassId(unsynchronizedByteArrayOutputStream, formatID);
                    iArr[i][0] = unsynchronizedByteArrayOutputStream.size();
                    littleEndianOutputStream.writeInt(-1);
                    i++;
                }
                int i2 = 0;
                for (Section section : getSections()) {
                    iArr[i2][1] = unsynchronizedByteArrayOutputStream.size();
                    section.write(unsynchronizedByteArrayOutputStream);
                    i2++;
                }
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                for (int[] iArr2 : iArr) {
                    LittleEndian.putInt(byteArray, iArr2[0], iArr2[1]);
                }
                littleEndianOutputStream.close();
                unsynchronizedByteArrayOutputStream.close();
                return byteArray;
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    unsynchronizedByteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public void addSection(Section section) {
        this.sections.add(section);
    }

    public void clearSections() {
        this.sections.clear();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PropertySet)) {
            return false;
        }
        PropertySet propertySet = (PropertySet) obj;
        int byteOrder = propertySet.getByteOrder();
        int byteOrder2 = getByteOrder();
        ClassID classID = propertySet.getClassID();
        ClassID classID2 = getClassID();
        int format = propertySet.getFormat();
        int format2 = getFormat();
        int oSVersion = propertySet.getOSVersion();
        int oSVersion2 = getOSVersion();
        int sectionCount = propertySet.getSectionCount();
        int sectionCount2 = getSectionCount();
        if (byteOrder == byteOrder2 && classID.equals(classID2) && format == format2 && oSVersion == oSVersion2 && sectionCount == sectionCount2) {
            return getSections().containsAll(propertySet.getSections());
        }
        return false;
    }

    public int getByteOrder() {
        return this.byteOrder;
    }

    public ClassID getClassID() {
        return this.classID;
    }

    public Section getFirstSection() {
        if (this.sections.isEmpty()) {
            throw new MissingSectionException("Property set does not contain any sections.");
        }
        return this.sections.get(0);
    }

    public int getFormat() {
        return this.format;
    }

    public int getOSVersion() {
        return this.osVersion;
    }

    public Property[] getProperties() throws NoSingleSectionException {
        return getFirstSection().getProperties();
    }

    public Object getProperty(int i) throws NoSingleSectionException {
        return getFirstSection().getProperty(i);
    }

    public boolean getPropertyBooleanValue(int i) throws NoSingleSectionException {
        return getFirstSection().getPropertyBooleanValue(i);
    }

    public int getPropertyIntValue(int i) throws NoSingleSectionException {
        return getFirstSection().getPropertyIntValue(i);
    }

    public PropertyIDMap getPropertySetIDMap() {
        return null;
    }

    public String getPropertyStringValue(int i) {
        return getPropertyStringValue(getProperty(i));
    }

    public int getSectionCount() {
        return this.sections.size();
    }

    public List<Section> getSections() {
        return Collections.unmodifiableList(this.sections);
    }

    @NotImplemented
    public int hashCode() {
        throw new UnsupportedOperationException("FIXME: Not yet implemented.");
    }

    public boolean isDocumentSummaryInformation() {
        return !this.sections.isEmpty() && matchesSummary(getFirstSection().getFormatID(), DocumentSummaryInformation.FORMAT_ID);
    }

    public boolean isSummaryInformation() {
        return !this.sections.isEmpty() && matchesSummary(getFirstSection().getFormatID(), SummaryInformation.FORMAT_ID);
    }

    public void remove1stProperty(long j) {
        getFirstSection().removeProperty(j);
    }

    public void set1stProperty(long j, String str) {
        getFirstSection().setProperty((int) j, str);
    }

    public void setByteOrder(int i) {
        this.byteOrder = i;
    }

    public void setClassID(ClassID classID) {
        this.classID = classID;
    }

    public void setFormat(int i) {
        this.format = i;
    }

    public void setOSVersion(int i) {
        this.osVersion = i;
    }

    public InputStream toInputStream() throws WritingNotSupportedException, IOException {
        return new UnsynchronizedByteArrayInputStream(toBytes());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int sectionCount = getSectionCount();
        sb.append(getClass().getName());
        sb.append('[');
        sb.append("byteOrder: ");
        sb.append(getByteOrder());
        sb.append(", classID: ");
        sb.append(getClassID());
        sb.append(", format: ");
        sb.append(getFormat());
        sb.append(", OSVersion: ");
        sb.append(getOSVersion());
        sb.append(", sectionCount: ");
        sb.append(sectionCount);
        sb.append(", sections: [\n");
        Iterator<Section> it2 = getSections().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().toString(getPropertySetIDMap()));
        }
        sb.append(']');
        sb.append(']');
        return sb.toString();
    }

    public boolean wasNull() throws NoSingleSectionException {
        return getFirstSection().wasNull();
    }

    public void write(OutputStream outputStream) throws IOException, WritingNotSupportedException {
        outputStream.write(toBytes());
        outputStream.close();
    }

    public void set1stProperty(long j, int i) {
        getFirstSection().setProperty((int) j, i);
    }

    public static String getPropertyStringValue(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length;
            if (length == 0) {
                return "";
            }
            if (length == 1) {
                return Byte.toString(bArr[0]);
            }
            if (length == 2) {
                return Integer.toString(LittleEndian.getUShort(bArr));
            }
            if (length != 4) {
                try {
                    return CodePageUtil.getStringFromCodePage(bArr, 1252);
                } catch (UnsupportedEncodingException unused) {
                    return "";
                }
            }
            return Long.toString(LittleEndian.getUInt(bArr));
        }
        return obj.toString();
    }

    public static boolean isPropertySetStream(byte[] bArr, int i, int i2) {
        LittleEndianByteArrayInputStream littleEndianByteArrayInputStream = new LittleEndianByteArrayInputStream(bArr, i, i2);
        try {
            if (littleEndianByteArrayInputStream.readUShort() != 65534 || littleEndianByteArrayInputStream.readUShort() != 0) {
                return false;
            }
            littleEndianByteArrayInputStream.readUInt();
            if (littleEndianByteArrayInputStream.skip(16L) != 16) {
                return false;
            }
            return littleEndianByteArrayInputStream.readUInt() >= 0;
        } catch (RuntimeException unused) {
            return false;
        }
    }

    public void set1stProperty(long j, boolean z) {
        getFirstSection().setProperty((int) j, z);
    }

    public void write(DirectoryEntry directoryEntry, String str) throws WritingNotSupportedException, IOException {
        if (directoryEntry.hasEntry(str)) {
            directoryEntry.getEntry(str).delete();
        }
        directoryEntry.createDocument(str, toInputStream());
    }

    public void set1stProperty(long j, byte[] bArr) {
        getFirstSection().setProperty((int) j, bArr);
    }

    public PropertySet(InputStream inputStream) throws NoPropertySetStreamException, IOException {
        this.sections = new ArrayList();
        if (isPropertySetStream(inputStream)) {
            byte[] byteArray = IOUtils.toByteArray(inputStream);
            init(byteArray, 0, byteArray.length);
            return;
        }
        throw new NoPropertySetStreamException();
    }

    public PropertySet(byte[] bArr, int i, int i2) throws NoPropertySetStreamException, UnsupportedEncodingException {
        this.sections = new ArrayList();
        if (isPropertySetStream(bArr, i, i2)) {
            init(bArr, i, i2);
            return;
        }
        throw new NoPropertySetStreamException();
    }

    public PropertySet(byte[] bArr) throws NoPropertySetStreamException, UnsupportedEncodingException {
        this(bArr, 0, bArr.length);
    }

    public PropertySet(PropertySet propertySet) {
        this.sections = new ArrayList();
        setByteOrder(propertySet.getByteOrder());
        setFormat(propertySet.getFormat());
        setOSVersion(propertySet.getOSVersion());
        setClassID(propertySet.getClassID());
        Iterator<Section> it2 = propertySet.getSections().iterator();
        while (it2.hasNext()) {
            this.sections.add(new Section(it2.next()));
        }
    }
}

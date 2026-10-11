package org.apache.poi.hpsf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.collections4.bidimap.TreeBidiMap;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hpsf.wellknown.PropertyIDMap;
import org.apache.poi.util.CodePageUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianByteArrayInputStream;
import org.apache.poi.util.LittleEndianOutputStream;

/* loaded from: classes12.dex */
public class Section {
    private static final Logger LOG = LogManager.getLogger((Class<?>) Section.class);
    private final long _offset;
    private Map<Long, String> dictionary;
    private ClassID formatID;
    private final Map<Long, Property> properties;
    private final UnsynchronizedByteArrayOutputStream sectionBytes;
    private transient boolean wasNull;

    public Section() {
        this.sectionBytes = new UnsynchronizedByteArrayOutputStream();
        this.properties = new LinkedHashMap();
        this._offset = -1L;
    }

    private int calcSize() throws WritingNotSupportedException, IOException {
        this.sectionBytes.reset();
        write(this.sectionBytes);
        padSectionBytes();
        return this.sectionBytes.size();
    }

    private void padSectionBytes() {
        int size = 3 & (4 - (this.sectionBytes.size() & 3));
        this.sectionBytes.write(new byte[]{0, 0, 0}, 0, size);
    }

    private static int propLen(TreeBidiMap<Long, Long> treeBidiMap, Long l, long j) {
        Long nextKey = treeBidiMap.nextKey((TreeBidiMap<Long, Long>) l);
        long longValue = l.longValue();
        if (nextKey != null) {
            j = nextKey.longValue();
        }
        return Math.toIntExact(j - longValue);
    }

    private boolean readDictionary(LittleEndianByteArrayInputStream littleEndianByteArrayInputStream, int i, int i2) {
        HashMap hashMap = new HashMap();
        long readUInt = littleEndianByteArrayInputStream.readUInt();
        long j = -1;
        boolean z = false;
        int i3 = 0;
        while (i3 < readUInt) {
            String str = "The property set's dictionary contains bogus data. All dictionary entries starting with the one with ID " + j + " will be ignored.";
            long readUInt2 = littleEndianByteArrayInputStream.readUInt();
            long readUInt3 = littleEndianByteArrayInputStream.readUInt();
            int i4 = i2 == -1 ? 1252 : i2;
            int intExact = Math.toIntExact((readUInt3 - 1) * (i4 == 1200 ? 2 : 1));
            if (intExact > 16777215) {
                LOG.atWarn().log(str);
            } else {
                try {
                    byte[] safelyAllocate = IOUtils.safelyAllocate(intExact, CodePageString.getMaxRecordLength());
                    littleEndianByteArrayInputStream.readFully(safelyAllocate, 0, intExact);
                    String stringFromCodePage = CodePageUtil.getStringFromCodePage(safelyAllocate, 0, intExact, i4);
                    IOUtils.skipFully(littleEndianByteArrayInputStream, i4 == 1200 ? ((4 - ((intExact + 2) & 3)) & 3) + 2 : 1);
                    hashMap.put(Long.valueOf(readUInt2), stringFromCodePage);
                    i3++;
                    j = readUInt2;
                } catch (IOException | RuntimeException e) {
                    LOG.atWarn().withThrowable(e).log(str);
                }
            }
            z = true;
        }
        setDictionary(hashMap);
        return !z;
    }

    private void writeDictionary(OutputStream outputStream, int i) throws IOException {
        byte[] bArr = new byte[4];
        Map<Long, String> dictionary = getDictionary();
        LittleEndian.putUInt(dictionary.size(), outputStream);
        int i2 = 4;
        for (Map.Entry<Long, String> entry : dictionary.entrySet()) {
            LittleEndian.putUInt(entry.getKey().longValue(), outputStream);
            int i3 = i2 + 4;
            byte[] bytesInCodePage = CodePageUtil.getBytesInCodePage(entry.getValue() + "\u0000", i);
            LittleEndian.putUInt(i == 1200 ? r3.length() : bytesInCodePage.length, outputStream);
            outputStream.write(bytesInCodePage);
            int length = i3 + 4 + bytesInCodePage.length;
            int i4 = i == 1200 ? (4 - (length & 3)) & 3 : 0;
            outputStream.write(bArr, 0, i4);
            i2 = length + i4;
        }
        outputStream.write(bArr, 0, (4 - (i2 & 3)) & 3);
    }

    public void clear() {
        for (Property property : getProperties()) {
            removeProperty(property.getID());
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Section)) {
            return false;
        }
        Section section = (Section) obj;
        if (!section.getFormatID().equals(getFormatID())) {
            return false;
        }
        HashSet<Long> hashSet = new HashSet(this.properties.keySet());
        hashSet.addAll(section.properties.keySet());
        hashSet.remove(0L);
        hashSet.remove(1L);
        for (Long l : hashSet) {
            Property property = this.properties.get(l);
            Property property2 = section.properties.get(l);
            if (property == null || !property.equals(property2)) {
                return false;
            }
        }
        Map<Long, String> dictionary = getDictionary();
        Map<Long, String> dictionary2 = section.getDictionary();
        return (dictionary == null && dictionary2 == null) || (dictionary != null && dictionary.equals(dictionary2));
    }

    public int getCodepage() {
        Integer num = (Integer) getProperty(1L);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public Map<Long, String> getDictionary() {
        if (this.dictionary == null) {
            this.dictionary = (Map) getProperty(0L);
        }
        return this.dictionary;
    }

    public ClassID getFormatID() {
        return this.formatID;
    }

    public long getOffset() {
        return this._offset;
    }

    public String getPIDString(long j) {
        Map<Long, String> dictionary = getDictionary();
        if (dictionary == null || !dictionary.containsKey(Long.valueOf(j))) {
            ClassID formatID = getFormatID();
            if (SummaryInformation.FORMAT_ID.equals(formatID)) {
                dictionary = PropertyIDMap.getSummaryInformationProperties();
            } else if (DocumentSummaryInformation.FORMAT_ID[0].equals(formatID)) {
                dictionary = PropertyIDMap.getDocumentSummaryInformationProperties();
            }
        }
        return (dictionary == null || !dictionary.containsKey(Long.valueOf(j))) ? PropertyIDMap.UNDEFINED : dictionary.get(Long.valueOf(j));
    }

    public Property[] getProperties() {
        return (Property[]) this.properties.values().toArray(new Property[0]);
    }

    public Object getProperty(long j) {
        boolean z = !this.properties.containsKey(Long.valueOf(j));
        this.wasNull = z;
        if (z) {
            return null;
        }
        return this.properties.get(Long.valueOf(j)).getValue();
    }

    public boolean getPropertyBooleanValue(int i) {
        Boolean bool = (Boolean) getProperty(i);
        return bool != null && bool.booleanValue();
    }

    public int getPropertyCount() {
        return this.properties.size();
    }

    public int getPropertyIntValue(long j) {
        Object property = getProperty(j);
        if (property == null) {
            return 0;
        }
        if ((property instanceof Long) || (property instanceof Integer)) {
            return ((Number) property).intValue();
        }
        throw new HPSFRuntimeException("This property is not an integer type, but " + property.getClass().getName() + ".");
    }

    public int getSize() {
        int size = this.sectionBytes.size();
        if (size > 0) {
            return size;
        }
        try {
            return calcSize();
        } catch (HPSFRuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new HPSFRuntimeException(e2);
        }
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{getFormatID(), getProperties()});
    }

    public void removeProperty(long j) {
        if (this.properties.remove(Long.valueOf(j)) != null) {
            this.sectionBytes.reset();
        }
    }

    public void setCodepage(int i) {
        setProperty(1, 2L, Integer.valueOf(i));
    }

    public void setDictionary(Map<Long, String> map) throws IllegalPropertySetDataException {
        if (map == null) {
            removeProperty(0L);
            this.dictionary = null;
            return;
        }
        if (this.dictionary == null) {
            this.dictionary = new TreeMap();
        }
        this.dictionary.putAll(map);
        if (getCodepage() == -1) {
            setCodepage(1252);
        }
        setProperty(0, -1L, map);
    }

    public void setFormatID(ClassID classID) {
        this.formatID = classID;
    }

    public void setProperties(Property[] propertyArr) {
        this.properties.clear();
        for (Property property : propertyArr) {
            setProperty(property);
        }
    }

    public void setProperty(int i, String str) {
        setProperty(i, 30L, str);
    }

    public void setPropertyBooleanValue(int i, boolean z) {
        setProperty(i, 11L, Boolean.valueOf(z));
    }

    public String toString() {
        return toString(null);
    }

    public boolean wasNull() {
        return this.wasNull;
    }

    public int write(OutputStream outputStream) throws WritingNotSupportedException, IOException {
        if (this.sectionBytes.size() > 0) {
            this.sectionBytes.writeTo(outputStream);
            return this.sectionBytes.size();
        }
        int codepage = getCodepage();
        if (codepage == -1) {
            LOG.atWarn().log("The codepage property is not set although a dictionary is present. Defaulting to ISO-8859-1.");
            codepage = 1252;
        }
        int[][] iArr = (int[][]) java.lang.reflect.Array.newInstance((Class<?>) Integer.TYPE, this.properties.size(), 2);
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            LittleEndianOutputStream littleEndianOutputStream = new LittleEndianOutputStream(unsynchronizedByteArrayOutputStream);
            try {
                littleEndianOutputStream.writeInt(-1);
                littleEndianOutputStream.writeInt(this.properties.size());
                Iterator<Property> it2 = this.properties.values().iterator();
                int i = 0;
                while (it2.hasNext()) {
                    littleEndianOutputStream.writeUInt(it2.next().getID());
                    iArr[i][0] = unsynchronizedByteArrayOutputStream.size();
                    littleEndianOutputStream.writeInt(-1);
                    i++;
                }
                int i2 = 0;
                for (Property property : this.properties.values()) {
                    int i3 = i2 + 1;
                    iArr[i2][1] = unsynchronizedByteArrayOutputStream.size();
                    if (property.getID() != 0) {
                        property.write(unsynchronizedByteArrayOutputStream, codepage);
                    } else {
                        writeDictionary(unsynchronizedByteArrayOutputStream, codepage);
                    }
                    i2 = i3;
                }
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                LittleEndian.putInt(byteArray, 0, unsynchronizedByteArrayOutputStream.size());
                for (int[] iArr2 : iArr) {
                    LittleEndian.putUInt(byteArray, iArr2[0], r5[1]);
                }
                outputStream.write(byteArray);
                int size = unsynchronizedByteArrayOutputStream.size();
                littleEndianOutputStream.close();
                unsynchronizedByteArrayOutputStream.close();
                return size;
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

    public void setFormatID(byte[] bArr) {
        ClassID formatID = getFormatID();
        if (formatID == null) {
            formatID = new ClassID();
            setFormatID(formatID);
        }
        formatID.setBytes(bArr);
    }

    public void setProperty(int i, int i2) {
        setProperty(i, 3L, Integer.valueOf(i2));
    }

    public String toString(PropertyIDMap propertyIDMap) {
        StringBuilder sb = new StringBuilder();
        Property[] properties = getProperties();
        sb.append("\n\n\n");
        sb.append(getClass().getName());
        sb.append('[');
        sb.append("formatID: ");
        sb.append(getFormatID());
        sb.append(", offset: ");
        sb.append(getOffset());
        sb.append(", propertyCount: ");
        sb.append(getPropertyCount());
        sb.append(", size: ");
        sb.append(getSize());
        sb.append(", properties: [\n");
        int codepage = getCodepage();
        if (codepage == -1) {
            codepage = 1252;
        }
        for (Property property : properties) {
            sb.append(property.toString(codepage, propertyIDMap));
            sb.append(",\n");
        }
        sb.append(']');
        sb.append(']');
        return sb.toString();
    }

    public void setProperty(int i, long j) {
        setProperty(i, 20L, Long.valueOf(j));
    }

    public void setProperty(int i, boolean z) {
        setProperty(i, 11L, Boolean.valueOf(z));
    }

    public Section(Section section) {
        this.sectionBytes = new UnsynchronizedByteArrayOutputStream();
        this.properties = new LinkedHashMap();
        this._offset = -1L;
        setFormatID(section.getFormatID());
        for (Property property : section.properties.values()) {
            this.properties.put(Long.valueOf(property.getID()), new Property(property));
        }
        setDictionary(section.getDictionary());
    }

    public void setProperty(int i, long j, Object obj) {
        setProperty(new Property(i, j, obj));
    }

    public void setProperty(Property property) {
        Property property2 = this.properties.get(Long.valueOf(property.getID()));
        if (property2 == null || !property2.equals(property)) {
            this.properties.put(Long.valueOf(property.getID()), property);
            this.sectionBytes.reset();
        }
    }

    public void setProperty(int i, Object obj) {
        if (obj instanceof String) {
            setProperty(i, (String) obj);
            return;
        }
        if (obj instanceof Long) {
            setProperty(i, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof Integer) {
            setProperty(i, ((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Short) {
            setProperty(i, ((Short) obj).intValue());
            return;
        }
        if (obj instanceof Boolean) {
            setProperty(i, ((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof java.util.Date) {
            setProperty(i, 64L, obj);
            return;
        }
        throw new HPSFRuntimeException("HPSF does not support properties of type " + obj.getClass().getName() + ".");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Section(byte[] bArr, int i) throws UnsupportedEncodingException {
        int i2;
        long j;
        this.sectionBytes = new UnsynchronizedByteArrayOutputStream();
        this.properties = new LinkedHashMap();
        this.formatID = new ClassID(bArr, i);
        int uInt = (int) LittleEndian.getUInt(bArr, i + 16);
        if (bArr[uInt] == 0) {
            int i3 = 0;
            while (i3 < 3 && bArr[uInt] == 0) {
                i3++;
                uInt++;
            }
            int i4 = 0;
            while (i4 < 3 && (bArr[uInt + 3] != 0 || bArr[uInt + 7] != 0 || bArr[uInt + 11] != 0)) {
                i4++;
                uInt--;
            }
        }
        long j2 = uInt;
        this._offset = j2;
        LittleEndianByteArrayInputStream littleEndianByteArrayInputStream = new LittleEndianByteArrayInputStream(bArr, uInt);
        int min = (int) Math.min(littleEndianByteArrayInputStream.readUInt(), bArr.length - j2);
        int readUInt = (int) littleEndianByteArrayInputStream.readUInt();
        TreeBidiMap treeBidiMap = new TreeBidiMap();
        for (int i5 = 0; i5 < readUInt; i5++) {
            treeBidiMap.put((TreeBidiMap) Long.valueOf(littleEndianByteArrayInputStream.readUInt()), Long.valueOf(littleEndianByteArrayInputStream.readUInt()));
        }
        long j3 = 1;
        Long l = (Long) treeBidiMap.getKey((Object) 1L);
        if (l != null) {
            littleEndianByteArrayInputStream.setReadIndex(Math.toIntExact(this._offset + l.longValue()));
            long readUInt2 = littleEndianByteArrayInputStream.readUInt();
            if (readUInt2 == 2) {
                i2 = littleEndianByteArrayInputStream.readUShort();
                setCodepage(i2);
            } else {
                throw new HPSFRuntimeException("Value type of property ID 1 is not VT_I2 but " + readUInt2 + ".");
            }
        } else {
            i2 = -1;
        }
        int i6 = i2;
        Iterator it2 = treeBidiMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            long longValue = ((Long) entry.getKey()).longValue();
            long longValue2 = ((Long) entry.getValue()).longValue();
            if (longValue2 != j3) {
                int propLen = propLen(treeBidiMap, Long.valueOf(longValue), min);
                Iterator it3 = it2;
                littleEndianByteArrayInputStream.setReadIndex(Math.toIntExact(this._offset + longValue));
                if (longValue2 == 0) {
                    littleEndianByteArrayInputStream.mark(100000);
                    if (readDictionary(littleEndianByteArrayInputStream, propLen, i6)) {
                        j = 1;
                    } else {
                        littleEndianByteArrayInputStream.reset();
                        try {
                            j = 1;
                            try {
                                setProperty(new Property(Math.max(31L, ((Long) treeBidiMap.inverseBidiMap().lastKey()).longValue()) + 1, littleEndianByteArrayInputStream, propLen, i6));
                            } catch (RuntimeException unused) {
                                LOG.atInfo().log("Dictionary fallback failed - ignoring property");
                                j3 = j;
                                it2 = it3;
                            }
                        } catch (RuntimeException unused2) {
                            j = 1;
                        }
                    }
                } else {
                    j = 1;
                    setProperty(new Property(longValue2, littleEndianByteArrayInputStream, propLen, i6));
                }
                j3 = j;
                it2 = it3;
            }
        }
        this.sectionBytes.write(bArr, Math.toIntExact(this._offset), min);
        padSectionBytes();
    }
}

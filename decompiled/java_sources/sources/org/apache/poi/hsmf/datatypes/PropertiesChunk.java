package org.apache.poi.hsmf.datatypes;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hsmf.datatypes.PropertyValue;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.poifs.filesystem.DirectoryEntry;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public abstract class PropertiesChunk extends Chunk {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private static final Logger LOG = LogManager.getLogger((Class<?>) PropertiesChunk.class);
    private static int MAX_RECORD_LENGTH = 1000000;
    public static final String NAME = "__properties_version1.0";
    public static final int PROPERTIES_FLAG_READABLE = 2;
    public static final int PROPERTIES_FLAG_WRITEABLE = 4;
    public static final String VARIABLE_LENGTH_PROPERTY_PREFIX = "__substg1.0_";
    private final ChunkGroup parentGroup;
    private final Map<MAPIProperty, PropertyValue> properties;

    public PropertiesChunk(ChunkGroup chunkGroup) {
        super(NAME, -1, Types.UNKNOWN);
        this.properties = new HashMap();
        this.parentGroup = chunkGroup;
    }

    private String getActualTypeTag(MAPIProperty mAPIProperty, Types.MAPIType mAPIType) {
        StringBuilder sb = new StringBuilder(Integer.toHexString(mAPIProperty.f111389id).toUpperCase(Locale.ROOT));
        while (sb.length() < 4) {
            sb.insert(0, "0");
        }
        sb.append(mAPIType.asFileEnding());
        return sb.toString();
    }

    private String getFileName(MAPIProperty mAPIProperty, Types.MAPIType mAPIType) {
        StringBuilder sb = new StringBuilder(Integer.toHexString(mAPIProperty.f111389id).toUpperCase(Locale.ROOT));
        int length = 4 - sb.length();
        if (length > 0) {
            sb.insert(0, StringUtil.repeat('0', length));
        }
        return ((Object) sb) + getTypeMapping(mAPIType).asFileEnding();
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    private Types.MAPIType getTypeMapping(Types.MAPIType mAPIType) {
        return mAPIType == Types.ASCII_STRING ? Types.UNICODE_STRING : mAPIType;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    private void writeFixedLengthValueHeader(OutputStream outputStream, MAPIProperty mAPIProperty, Types.MAPIType mAPIType, PropertyValue propertyValue) throws IOException {
        byte[] rawValue = propertyValue.getRawValue();
        int length = rawValue != null ? rawValue.length : 0;
        if (rawValue != null) {
            outputStream.write(rawValue);
        }
        outputStream.write(new byte[8 - length]);
    }

    private void writeVariableLengthPreCalculatedValue(OutputStream outputStream, PropertyValue propertyValue) throws IOException {
        outputStream.write(propertyValue.getRawValue());
    }

    private void writeVariableLengthValueHeader(OutputStream outputStream, MAPIProperty mAPIProperty, Types.MAPIType mAPIType, PropertyValue propertyValue) throws IOException {
        byte[] rawValue = propertyValue.getRawValue();
        int length = rawValue != null ? rawValue.length : 0;
        if (mAPIType == Types.UNICODE_STRING) {
            length += 2;
        } else if (mAPIType == Types.ASCII_STRING) {
            length++;
        }
        LittleEndian.putUInt(length, outputStream);
        LittleEndian.putUInt(0L, outputStream);
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public String getEntryName() {
        return NAME;
    }

    public Map<MAPIProperty, List<PropertyValue>> getProperties() {
        HashMap hashMap = new HashMap(this.properties.size());
        for (MAPIProperty mAPIProperty : this.properties.keySet()) {
            hashMap.put(mAPIProperty, getValues(mAPIProperty));
        }
        return hashMap;
    }

    public Map<MAPIProperty, PropertyValue> getRawProperties() {
        return this.properties;
    }

    public PropertyValue getRawValue(MAPIProperty mAPIProperty) {
        return this.properties.get(mAPIProperty);
    }

    public List<PropertyValue> getValues(MAPIProperty mAPIProperty) {
        PropertyValue propertyValue = this.properties.get(mAPIProperty);
        if (propertyValue == null) {
            return null;
        }
        return propertyValue instanceof ChunkBasedPropertyValue ? Collections.emptyList() : Collections.singletonList(propertyValue);
    }

    public void matchVariableSizedPropertiesToChunks() {
        HashMap hashMap = new HashMap();
        for (Chunk chunk : this.parentGroup.getChunks()) {
            hashMap.put(Integer.valueOf(chunk.getChunkId()), chunk);
        }
        for (PropertyValue propertyValue : this.properties.values()) {
            if (propertyValue instanceof ChunkBasedPropertyValue) {
                ChunkBasedPropertyValue chunkBasedPropertyValue = (ChunkBasedPropertyValue) propertyValue;
                Chunk chunk2 = (Chunk) hashMap.get(Integer.valueOf(chunkBasedPropertyValue.getProperty().f111389id));
                if (chunk2 != null) {
                    chunkBasedPropertyValue.setValue(chunk2);
                } else {
                    LOG.atWarn().log("No chunk found matching Property {}", chunkBasedPropertyValue);
                }
            }
        }
    }

    public void readProperties(InputStream inputStream) throws IOException {
        int readUShort;
        long readUInt;
        Types.MAPIType byId;
        MAPIProperty mAPIProperty;
        Types.MAPIType mAPIType;
        boolean z = true;
        while (z) {
            try {
                readUShort = LittleEndian.readUShort(inputStream);
                int readUShort2 = LittleEndian.readUShort(inputStream);
                readUInt = LittleEndian.readUInt(inputStream);
                byId = Types.getById(readUShort);
                MAPIProperty mAPIProperty2 = MAPIProperty.get(readUShort2);
                if (mAPIProperty2 == MAPIProperty.UNKNOWN) {
                    mAPIProperty2 = MAPIProperty.createCustom(readUShort2, byId, "Unknown " + readUShort2);
                }
                mAPIProperty = mAPIProperty2;
            } catch (LittleEndian.BufferUnderrunException unused) {
                z = false;
            }
            if (byId == null) {
                LOG.atWarn().log("Invalid type found, expected {} but got {} for property {}", mAPIProperty.usualType, Unbox.box(readUShort), mAPIProperty);
                return;
            }
            Types.MAPIType mAPIType2 = mAPIProperty.usualType;
            if (mAPIType2 != byId && ((byId != (mAPIType = Types.ASCII_STRING) || mAPIType2 != Types.UNICODE_STRING) && (byId != Types.UNICODE_STRING || mAPIType2 != mAPIType))) {
                if (mAPIType2 != Types.UNKNOWN) {
                    LOG.atWarn().log("Type mismatch, expected {} but got {} for property {}", mAPIProperty.usualType, byId, mAPIProperty);
                    return;
                }
                LOG.atInfo().log("Property definition for {} is missing a type definition, found a value with type {}", mAPIProperty, byId);
            }
            int length = byId.getLength();
            boolean isPointer = byId.isPointer();
            if (isPointer) {
                length = 8;
            }
            byte[] safelyAllocate = IOUtils.safelyAllocate(length, MAX_RECORD_LENGTH);
            IOUtils.readFully(inputStream, safelyAllocate);
            if (length < 8) {
                IOUtils.readFully(inputStream, new byte[8 - length]);
            }
            PropertyValue chunkBasedPropertyValue = isPointer ? new ChunkBasedPropertyValue(mAPIProperty, readUInt, safelyAllocate, byId) : byId == Types.NULL ? new PropertyValue.NullPropertyValue(mAPIProperty, readUInt, safelyAllocate) : byId == Types.BOOLEAN ? new PropertyValue.BooleanPropertyValue(mAPIProperty, readUInt, safelyAllocate) : byId == Types.SHORT ? new PropertyValue.ShortPropertyValue(mAPIProperty, readUInt, safelyAllocate) : byId == Types.LONG ? new PropertyValue.LongPropertyValue(mAPIProperty, readUInt, safelyAllocate) : byId == Types.LONG_LONG ? new PropertyValue.LongLongPropertyValue(mAPIProperty, readUInt, safelyAllocate) : byId == Types.FLOAT ? new PropertyValue.FloatPropertyValue(mAPIProperty, readUInt, safelyAllocate) : byId == Types.DOUBLE ? new PropertyValue.DoublePropertyValue(mAPIProperty, readUInt, safelyAllocate) : byId == Types.CURRENCY ? new PropertyValue.CurrencyPropertyValue(mAPIProperty, readUInt, safelyAllocate) : byId == Types.TIME ? new PropertyValue.TimePropertyValue(mAPIProperty, readUInt, safelyAllocate) : new PropertyValue(mAPIProperty, readUInt, safelyAllocate, byId);
            if (this.properties.get(mAPIProperty) != null) {
                LOG.atWarn().log("Duplicate values found for {}", mAPIProperty);
            }
            this.properties.put(mAPIProperty, chunkBasedPropertyValue);
        }
    }

    public void setProperty(PropertyValue propertyValue) {
        this.properties.put(propertyValue.getProperty(), propertyValue);
    }

    public void writeNodeData(DirectoryEntry directoryEntry, List<PropertyValue> list) throws IOException {
        for (PropertyValue propertyValue : list) {
            directoryEntry.createDocument("__substg1.0_" + getFileName(propertyValue.getProperty(), propertyValue.getActualType()), new ByteArrayInputStream(propertyValue.getRawValue()));
        }
    }

    public List<PropertyValue> writePreCalculatedProperties(OutputStream outputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<MAPIProperty, PropertyValue> entry : this.properties.entrySet()) {
            MAPIProperty key = entry.getKey();
            PropertyValue value = entry.getValue();
            if (value != null && key.f111389id >= 0) {
                LittleEndian.putUInt(Long.parseLong(getActualTypeTag(key, value.getActualType()), 16), outputStream);
                LittleEndian.putUInt(value.getFlags(), outputStream);
                Types.MAPIType actualType = value.getActualType();
                if (actualType.isFixedLength()) {
                    writeFixedLengthValueHeader(outputStream, key, actualType, value);
                } else {
                    writeVariableLengthPreCalculatedValue(outputStream, value);
                    arrayList.add(value);
                }
            }
        }
        return arrayList;
    }

    public void writeProperties(DirectoryEntry directoryEntry) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            List<PropertyValue> writeProperties = writeProperties(unsynchronizedByteArrayOutputStream);
            InputStream inputStream = unsynchronizedByteArrayOutputStream.toInputStream();
            try {
                directoryEntry.createDocument(NAME, inputStream);
                if (inputStream != null) {
                    inputStream.close();
                }
                writeNodeData(directoryEntry, writeProperties);
                unsynchronizedByteArrayOutputStream.close();
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

    public List<PropertyValue> writeProperties(OutputStream outputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<MAPIProperty, PropertyValue> entry : this.properties.entrySet()) {
            MAPIProperty key = entry.getKey();
            PropertyValue value = entry.getValue();
            if (value != null && key.f111389id >= 0) {
                LittleEndian.putUInt(Long.parseLong(getFileName(key, value.getActualType()), 16), outputStream);
                LittleEndian.putUInt(value.getFlags(), outputStream);
                Types.MAPIType typeMapping = getTypeMapping(value.getActualType());
                if (typeMapping.isFixedLength() && !typeMapping.isPointer()) {
                    writeFixedLengthValueHeader(outputStream, key, typeMapping, value);
                } else {
                    writeVariableLengthValueHeader(outputStream, key, typeMapping, value);
                    arrayList.add(value);
                }
            }
        }
        return arrayList;
    }
}

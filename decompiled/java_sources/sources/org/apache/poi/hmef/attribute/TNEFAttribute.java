package org.apache.poi.hmef.attribute;

import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class TNEFAttribute {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 20000000;
    private static int MAX_RECORD_LENGTH = 20000000;
    private final int checksum;
    private final byte[] data;
    private final TNEFProperty property;
    private final int type;

    public TNEFAttribute(int i, int i2, InputStream inputStream) throws IOException {
        this.type = i2;
        int readInt = LittleEndian.readInt(inputStream);
        this.property = TNEFProperty.getBest(i, i2);
        byte[] safelyAllocate = IOUtils.safelyAllocate(readInt, MAX_RECORD_LENGTH);
        this.data = safelyAllocate;
        IOUtils.readFully(inputStream, safelyAllocate);
        this.checksum = LittleEndian.readUShort(inputStream);
    }

    public static TNEFAttribute create(InputStream inputStream) throws IOException {
        int readUShort = LittleEndian.readUShort(inputStream);
        int readUShort2 = LittleEndian.readUShort(inputStream);
        return (readUShort == TNEFProperty.ID_MAPIPROPERTIES.f111372id || readUShort == TNEFProperty.ID_ATTACHMENT.f111372id) ? new TNEFMAPIAttribute(readUShort, readUShort2, inputStream) : (readUShort2 == 1 || readUShort2 == 2) ? new TNEFStringAttribute(readUShort, readUShort2, inputStream) : readUShort2 == 3 ? new TNEFDateAttribute(readUShort, readUShort2, inputStream) : new TNEFAttribute(readUShort, readUShort2, inputStream);
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public byte[] getData() {
        return this.data;
    }

    public TNEFProperty getProperty() {
        return this.property;
    }

    public int getType() {
        return this.type;
    }

    public String toString() {
        return "Attribute " + this.property + ", type=" + this.type + ", data length=" + this.data.length;
    }
}

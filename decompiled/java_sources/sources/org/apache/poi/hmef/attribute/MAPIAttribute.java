package org.apache.poi.hmef.attribute;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.apache.poi.hsmf.datatypes.MAPIProperty;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class MAPIAttribute {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private static int MAX_RECORD_COUNT = 10000;
    private static int MAX_RECORD_LENGTH = 1000000;
    private final byte[] data;
    private final MAPIProperty property;
    private final int type;

    public MAPIAttribute(MAPIProperty mAPIProperty, int i, byte[] bArr) {
        this.property = mAPIProperty;
        this.type = i;
        this.data = (byte[]) bArr.clone();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0063 A[Catch: all -> 0x0185, TryCatch #0 {all -> 0x0185, blocks: (B:10:0x001a, B:12:0x0027, B:14:0x0034, B:15:0x0039, B:17:0x0041, B:19:0x0049, B:21:0x0051, B:25:0x005d, B:27:0x0063, B:28:0x0067, B:34:0x0079, B:36:0x0081, B:38:0x0087, B:39:0x00ae, B:40:0x0092, B:42:0x00a3, B:44:0x00b3, B:45:0x00cc, B:47:0x00cd, B:48:0x00d4, B:49:0x00d5, B:51:0x00d9, B:56:0x0108, B:61:0x010f, B:62:0x0116, B:65:0x011a, B:67:0x012b, B:69:0x0132, B:72:0x0137, B:74:0x013b, B:77:0x0140, B:79:0x0146, B:81:0x015d, B:82:0x014c, B:84:0x0152, B:86:0x0158, B:89:0x0163, B:90:0x017c, B:93:0x00fe), top: B:9:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0081 A[Catch: all -> 0x0185, TryCatch #0 {all -> 0x0185, blocks: (B:10:0x001a, B:12:0x0027, B:14:0x0034, B:15:0x0039, B:17:0x0041, B:19:0x0049, B:21:0x0051, B:25:0x005d, B:27:0x0063, B:28:0x0067, B:34:0x0079, B:36:0x0081, B:38:0x0087, B:39:0x00ae, B:40:0x0092, B:42:0x00a3, B:44:0x00b3, B:45:0x00cc, B:47:0x00cd, B:48:0x00d4, B:49:0x00d5, B:51:0x00d9, B:56:0x0108, B:61:0x010f, B:62:0x0116, B:65:0x011a, B:67:0x012b, B:69:0x0132, B:72:0x0137, B:74:0x013b, B:77:0x0140, B:79:0x0146, B:81:0x015d, B:82:0x014c, B:84:0x0152, B:86:0x0158, B:89:0x0163, B:90:0x017c, B:93:0x00fe), top: B:9:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d9 A[Catch: all -> 0x0185, TryCatch #0 {all -> 0x0185, blocks: (B:10:0x001a, B:12:0x0027, B:14:0x0034, B:15:0x0039, B:17:0x0041, B:19:0x0049, B:21:0x0051, B:25:0x005d, B:27:0x0063, B:28:0x0067, B:34:0x0079, B:36:0x0081, B:38:0x0087, B:39:0x00ae, B:40:0x0092, B:42:0x00a3, B:44:0x00b3, B:45:0x00cc, B:47:0x00cd, B:48:0x00d4, B:49:0x00d5, B:51:0x00d9, B:56:0x0108, B:61:0x010f, B:62:0x0116, B:65:0x011a, B:67:0x012b, B:69:0x0132, B:72:0x0137, B:74:0x013b, B:77:0x0140, B:79:0x0146, B:81:0x015d, B:82:0x014c, B:84:0x0152, B:86:0x0158, B:89:0x0163, B:90:0x017c, B:93:0x00fe), top: B:9:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x011a A[Catch: all -> 0x0185, TryCatch #0 {all -> 0x0185, blocks: (B:10:0x001a, B:12:0x0027, B:14:0x0034, B:15:0x0039, B:17:0x0041, B:19:0x0049, B:21:0x0051, B:25:0x005d, B:27:0x0063, B:28:0x0067, B:34:0x0079, B:36:0x0081, B:38:0x0087, B:39:0x00ae, B:40:0x0092, B:42:0x00a3, B:44:0x00b3, B:45:0x00cc, B:47:0x00cd, B:48:0x00d4, B:49:0x00d5, B:51:0x00d9, B:56:0x0108, B:61:0x010f, B:62:0x0116, B:65:0x011a, B:67:0x012b, B:69:0x0132, B:72:0x0137, B:74:0x013b, B:77:0x0140, B:79:0x0146, B:81:0x015d, B:82:0x014c, B:84:0x0152, B:86:0x0158, B:89:0x0163, B:90:0x017c, B:93:0x00fe), top: B:9:0x001a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<org.apache.poi.hmef.attribute.MAPIAttribute> create(org.apache.poi.hmef.attribute.TNEFAttribute r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hmef.attribute.MAPIAttribute.create(org.apache.poi.hmef.attribute.TNEFAttribute):java.util.List");
    }

    private static int getLength(Types.MAPIType mAPIType, InputStream inputStream) throws IOException {
        if (mAPIType.isFixedLength()) {
            return mAPIType.getLength();
        }
        if (mAPIType == Types.ASCII_STRING || mAPIType == Types.UNICODE_STRING || mAPIType == Types.DIRECTORY || mAPIType == Types.BINARY) {
            return LittleEndian.readInt(inputStream);
        }
        throw new IllegalArgumentException("Unknown type " + mAPIType);
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    private static void skipToBoundary(int i, InputStream inputStream) throws IOException {
        int i2 = i % 4;
        if (i2 != 0) {
            int i3 = 4 - i2;
            long j = i3;
            long skipFully = IOUtils.skipFully(inputStream, j);
            if (skipFully == j) {
                return;
            }
            throw new IOException("tried to skip " + i3 + " but only skipped:" + skipFully);
        }
    }

    public byte[] getData() {
        return this.data;
    }

    public MAPIProperty getProperty() {
        return this.property;
    }

    public int getType() {
        return this.type;
    }

    public String toString() {
        String str;
        byte[] bArr = this.data;
        if (bArr.length <= 16) {
            str = HexDump.toHex(bArr);
        } else {
            str = HexDump.toHex(Arrays.copyOf(bArr, 16)).substring(0, r0.length() - 1) + ", ....]";
        }
        return this.property + " " + str;
    }
}

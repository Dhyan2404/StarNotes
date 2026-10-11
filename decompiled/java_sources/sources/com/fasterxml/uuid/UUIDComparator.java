package com.fasterxml.uuid;

import java.util.Comparator;
import java.util.UUID;

/* loaded from: classes4.dex */
public class UUIDComparator implements Comparator<UUID> {
    public static final int compareUInts(int i, int i2) {
        if (i < 0) {
            if (i2 < 0) {
                return i - i2;
            }
            return 1;
        }
        if (i2 < 0) {
            return -1;
        }
        return i - i2;
    }

    public static final int compareULongs(long j, long j2) {
        int compareUInts = compareUInts((int) (j >> 32), (int) (j2 >> 32));
        return compareUInts == 0 ? compareUInts((int) j, (int) j2) : compareUInts;
    }

    public static int staticCompare(UUID uuid, UUID uuid2) {
        int version = uuid.version();
        int version2 = version - uuid2.version();
        if (version2 != 0) {
            return version2;
        }
        if (version == UUIDType.TIME_BASED.raw()) {
            int compareULongs = compareULongs(uuid.timestamp(), uuid2.timestamp());
            return compareULongs == 0 ? compareULongs(uuid.getLeastSignificantBits(), uuid2.getLeastSignificantBits()) : compareULongs;
        }
        int compareULongs2 = compareULongs(uuid.getMostSignificantBits(), uuid2.getMostSignificantBits());
        return compareULongs2 == 0 ? compareULongs(uuid.getLeastSignificantBits(), uuid2.getLeastSignificantBits()) : compareULongs2;
    }

    @Override // java.util.Comparator
    public int compare(UUID uuid, UUID uuid2) {
        return staticCompare(uuid, uuid2);
    }
}

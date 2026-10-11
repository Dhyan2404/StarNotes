package org.apache.poi.xssf.util;

/* loaded from: classes13.dex */
public class NumericRanges {
    public static final int NO_OVERLAPS = -1;
    public static final int OVERLAPS_1_MINOR = 0;
    public static final int OVERLAPS_1_WRAPS = 2;
    public static final int OVERLAPS_2_MINOR = 1;
    public static final int OVERLAPS_2_WRAPS = 3;

    public static long[] getOverlappingRange(long[] jArr, long[] jArr2) {
        int overlappingType = getOverlappingType(jArr, jArr2);
        return overlappingType != 0 ? overlappingType != 1 ? overlappingType != 2 ? overlappingType != 3 ? new long[]{-1, -1} : jArr : jArr2 : new long[]{jArr[0], jArr2[1]} : new long[]{jArr2[0], jArr[1]};
    }

    public static int getOverlappingType(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr2[0];
        long j4 = jArr2[1];
        if (j >= j3) {
            if (j2 <= j4) {
                return 3;
            }
            return j <= j4 ? 1 : -1;
        }
        if (j2 >= j4) {
            return 2;
        }
        return j2 >= j3 ? 0 : -1;
    }
}

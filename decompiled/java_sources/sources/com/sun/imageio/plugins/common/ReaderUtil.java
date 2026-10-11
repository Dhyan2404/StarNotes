package com.sun.imageio.plugins.common;

import java.awt.Point;
import java.awt.Rectangle;
import java.io.IOException;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes9.dex */
public class ReaderUtil {
    private static void computeUpdatedPixels(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, int i10) {
        boolean z = false;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        for (int i14 = 0; i14 < i8; i14++) {
            int i15 = i7 + (i14 * i9);
            if (i15 >= i) {
                int i16 = i15 - i;
                if (i16 % i6 == 0) {
                    if (i15 >= i + i2) {
                        break;
                    }
                    int i17 = i3 + (i16 / i6);
                    if (i17 >= i4) {
                        if (i17 > i5) {
                            break;
                        }
                        if (!z) {
                            z = true;
                            i11 = i17;
                        } else if (i12 == -1) {
                            i12 = i17;
                        }
                        i13 = i17;
                    }
                }
            }
        }
        iArr[i10] = i11;
        if (!z) {
            iArr[i10 + 2] = 0;
        } else {
            iArr[i10 + 2] = (i13 - i11) + 1;
        }
        iArr[i10 + 4] = Math.max(i12 - i11, 1);
    }

    public static int readMultiByteInteger(ImageInputStream imageInputStream) throws IOException {
        byte readByte = imageInputStream.readByte();
        int i = readByte & Byte.MAX_VALUE;
        while ((readByte & 128) == 128) {
            int i2 = i << 7;
            byte readByte2 = imageInputStream.readByte();
            i = i2 | (readByte2 & Byte.MAX_VALUE);
            readByte = readByte2;
        }
        return i;
    }

    public static int[] computeUpdatedPixels(Rectangle rectangle, Point point, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
        int[] iArr = new int[6];
        computeUpdatedPixels(rectangle.f97732x, rectangle.width, point.f97730x, i, i3, i5, i7, i9, i11, iArr, 0);
        computeUpdatedPixels(rectangle.f97733y, rectangle.height, point.f97731y, i2, i4, i6, i8, i10, i12, iArr, 1);
        return iArr;
    }
}

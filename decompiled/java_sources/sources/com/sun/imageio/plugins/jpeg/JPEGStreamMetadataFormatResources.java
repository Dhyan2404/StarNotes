package com.sun.imageio.plugins.jpeg;

import java.lang.reflect.Array;

/* loaded from: classes9.dex */
public class JPEGStreamMetadataFormatResources extends JPEGMetadataFormatResources {
    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        Object[][] objArr = (Object[][]) Array.newInstance((Class<?>) Object.class, JPEGMetadataFormatResources.commonContents.length, 2);
        int i = 0;
        while (true) {
            Object[][] objArr2 = JPEGMetadataFormatResources.commonContents;
            if (i >= objArr2.length) {
                return objArr;
            }
            objArr[i][0] = objArr2[i][0];
            objArr[i][1] = objArr2[i][1];
            i++;
        }
    }
}

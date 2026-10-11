package com.sun.imageio.plugins.jpeg;

import java.util.ListResourceBundle;

/* loaded from: classes9.dex */
public class JPEGImageReaderResources extends ListResourceBundle {
    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return new Object[][]{new Object[]{Integer.toString(0), "Truncated File - Missing EOI marker"}, new Object[]{Integer.toString(1), "JFIF markers not allowed in JFIF JPEG thumbnail; ignored"}, new Object[]{Integer.toString(2), "Embedded color profile is invalid; ignored"}};
    }
}

package com.onyx.android.sdk.reader.plugins.neopdf;

import com.onyx.android.sdk.neopdf.PdfCharInfo;
import java.util.List;

/* loaded from: classes8.dex */
public class NeoPdfSelection {
    public static void addToSelectionList(List<PdfCharInfo> list, int i, float[] fArr, int i2, int i3, String str, String str2, String str3) {
        try {
            PdfCharInfo createPdfCharInfo = PdfCharInfo.INSTANCE.createPdfCharInfo(fArr, str);
            if (createPdfCharInfo != null) {
                list.add(createPdfCharInfo);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}

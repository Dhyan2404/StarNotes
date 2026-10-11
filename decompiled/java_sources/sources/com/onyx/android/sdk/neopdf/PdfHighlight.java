package com.onyx.android.sdk.neopdf;

import java.util.List;

/* loaded from: classes7.dex */
public class PdfHighlight {
    public static void addToList(List<PdfHighlightInfo> list, String str, String str2, String str3, String str4, String str5, String str6, float[] fArr, int i, boolean z, int i2, int i3, String str7, String str8, String str9) {
        PdfHighlightInfo pdfHighlightInfo = new PdfHighlightInfo();
        pdfHighlightInfo.highlightId = str;
        pdfHighlightInfo.setObjId(str2);
        pdfHighlightInfo.setAuthor(str3);
        pdfHighlightInfo.setStartPosition(str4);
        pdfHighlightInfo.setEndPosition(str5);
        pdfHighlightInfo.setNote(str6);
        pdfHighlightInfo.setQuadPoints(fArr);
        pdfHighlightInfo.setStyle(i);
        pdfHighlightInfo.setVertical(z);
        pdfHighlightInfo.setColor(i2);
        pdfHighlightInfo.setLinkType(i3);
        pdfHighlightInfo.setLinkDest(str7);
        pdfHighlightInfo.setExtraAttr(str8);
        pdfHighlightInfo.setCustomAttr(str9);
        list.add(pdfHighlightInfo);
    }
}

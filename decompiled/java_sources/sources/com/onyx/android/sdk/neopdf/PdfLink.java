package com.onyx.android.sdk.neopdf;

import java.util.List;

/* loaded from: classes7.dex */
public class PdfLink {
    public static final int LINK_TYPE_GOTO = 1;
    public static final int LINK_TYPE_NONE = 0;
    public static final int LINK_TYPE_URI = 2;
    public long linkPtr = 0;
    public PdfTextSelection selection;

    public static void addToLinkList(List<PdfLink> list, int i, long j, float[] fArr) {
        PdfLink pdfLink = new PdfLink();
        pdfLink.linkPtr = j;
        pdfLink.selection = new PdfTextSelection(i, -1, -1, fArr, null, null, null);
        list.add(pdfLink);
    }
}

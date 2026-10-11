package com.onyx.android.sdk.neopdf;

/* loaded from: classes7.dex */
public class PdfSentence {
    public boolean endOfDocument;
    public boolean endOfScreen;
    public int nextPosition;
    public PdfTextSelection selection;

    public static PdfSentence create(PdfTextSelection pdfTextSelection, int i, boolean z, boolean z2) {
        PdfSentence pdfSentence = new PdfSentence();
        pdfSentence.selection = pdfTextSelection;
        pdfSentence.nextPosition = i;
        pdfSentence.endOfScreen = z;
        pdfSentence.endOfDocument = z2;
        return pdfSentence;
    }
}

package com.onyx.android.sdk.neopdf;

import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes7.dex */
public class PdfShape {
    public static void addToList(List<PdfShapeInfo> list, int i, String str, String str2, String str3, String str4, String str5, String str6, RectF rectF, int i2, float f, int i3, float[] fArr, String str7, String str8, float[] fArr2, String str9, String str10, String str11, float f2, int i4, boolean z, boolean z2, boolean z3, int i5, String str12, byte[] bArr, int i6, int i7, String str13, byte[] bArr2, byte[] bArr3, int i8, String str14, int i9, int i10, int[] iArr) {
        ArrayList arrayList = new ArrayList();
        if (fArr2 != null) {
            for (int i11 = 0; i11 < fArr2.length; i11 += 5) {
                arrayList.add(new PdfPoint(fArr2[i11], fArr2[i11 + 1], fArr2[i11 + 2], fArr2[i11 + 3], fArr2[i11 + 4]));
            }
        }
        PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
        pdfShapeInfo.setType(i);
        pdfShapeInfo.setId(str);
        pdfShapeInfo.setObjId(str2);
        pdfShapeInfo.setGroupId(str3);
        pdfShapeInfo.setPageId(str4);
        pdfShapeInfo.setLayerId(str5);
        pdfShapeInfo.setAuthor(str6);
        pdfShapeInfo.setRect(rectF);
        pdfShapeInfo.setColor(i2);
        pdfShapeInfo.setStrokeWidth(f);
        pdfShapeInfo.setFillColor(i3);
        pdfShapeInfo.setMatrix(fArr);
        pdfShapeInfo.setExtraAttr(str7);
        pdfShapeInfo.setCustomAttr(str8);
        pdfShapeInfo.setPoints(arrayList);
        pdfShapeInfo.setText(str9);
        pdfShapeInfo.setRichText(str10);
        pdfShapeInfo.setFontName(str11);
        pdfShapeInfo.setFontSize(f2);
        pdfShapeInfo.setFontcolor(i4);
        pdfShapeInfo.setTextBold(z);
        pdfShapeInfo.setTextItalic(z2);
        pdfShapeInfo.setTextUnderline(z3);
        pdfShapeInfo.setTextAlign(i5);
        pdfShapeInfo.setResourceId(str12);
        pdfShapeInfo.setResourceBuf(bArr);
        pdfShapeInfo.setImageWidth(i6);
        pdfShapeInfo.setImageHeight(i7);
        pdfShapeInfo.setFileAttachmentPath(str13);
        pdfShapeInfo.setFileAttachmentData(bArr2);
        pdfShapeInfo.setWavData(bArr3);
        pdfShapeInfo.setLinkType(i8);
        pdfShapeInfo.setLinkDest(str14);
        pdfShapeInfo.setLineArrowDirection(i9);
        pdfShapeInfo.setStrokeDashPhase(i10);
        pdfShapeInfo.setStrokeDashArray(iArr);
        list.add(pdfShapeInfo);
    }
}

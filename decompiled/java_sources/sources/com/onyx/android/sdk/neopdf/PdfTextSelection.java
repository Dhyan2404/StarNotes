package com.onyx.android.sdk.neopdf;

import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes7.dex */
public class PdfTextSelection {
    public int endIndex;
    public String leftText;
    public int pageIndex;
    public List<RectF> rectangles = new ArrayList();
    public String rightText;
    public int startIndex;
    public String text;

    public PdfTextSelection() {
    }

    public static void addToSelectionList(List<PdfTextSelection> list, int i, float[] fArr, int i2, int i3, String str, String str2, String str3) {
        try {
            list.add(new PdfTextSelection(i, i2, i3, fArr, str, str2, str3));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void addRectangle(float f, float f2, float f3, float f4) {
        this.rectangles.add(new RectF(f, f2, f3, f4));
    }

    public void setRange(int i, int i2) {
        this.startIndex = i;
        this.endIndex = i2;
    }

    public void setText(String str) {
        this.text = str;
    }

    public PdfTextSelection(int i) {
        this.pageIndex = i;
    }

    public PdfTextSelection(int i, int i2, int i3, float[] fArr, String str, String str2, String str3) {
        this.pageIndex = i;
        this.startIndex = i2;
        this.endIndex = i3;
        if (fArr != null) {
            for (int i4 = 0; i4 < fArr.length / 4; i4++) {
                int i5 = i4 * 4;
                this.rectangles.add(new RectF(fArr[i5], fArr[i5 + 1], fArr[i5 + 2], fArr[i5 + 3]));
            }
        }
        this.text = str;
        this.leftText = str2;
        this.rightText = str3;
    }
}

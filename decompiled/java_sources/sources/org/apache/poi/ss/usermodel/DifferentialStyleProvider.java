package org.apache.poi.ss.usermodel;

/* loaded from: classes13.dex */
public interface DifferentialStyleProvider {
    BorderFormatting getBorderFormatting();

    FontFormatting getFontFormatting();

    ExcelNumberFormat getNumberFormat();

    PatternFormatting getPatternFormatting();

    int getStripeSize();
}

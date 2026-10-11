package org.apache.poi.xddf.usermodel.chart;

import java.lang.Number;

/* loaded from: classes13.dex */
public interface XDDFNumericalDataSource<T extends Number> extends XDDFDataSource<T> {
    @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
    default boolean isLiteral() {
        return false;
    }

    void setFormatCode(String str);
}

package org.apache.poi.xddf.usermodel.chart;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumVal;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTStrData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTStrVal;

/* loaded from: classes13.dex */
public interface XDDFDataSource<T> {
    @Internal
    default void fillNumericalCache(CTNumData cTNumData) {
        String formatCode = getFormatCode();
        if (formatCode != null) {
            cTNumData.setFormatCode(formatCode);
        } else if (cTNumData.isSetFormatCode()) {
            cTNumData.unsetFormatCode();
        }
        cTNumData.setPtArray(null);
        int pointCount = getPointCount();
        int i = 0;
        for (int i2 = 0; i2 < pointCount; i2++) {
            T pointAt = getPointAt(i2);
            if (pointAt != null) {
                CTNumVal addNewPt = cTNumData.addNewPt();
                addNewPt.setIdx(i2);
                addNewPt.setV(pointAt.toString());
                i++;
            }
        }
        if (i == 0) {
            if (cTNumData.isSetPtCount()) {
                cTNumData.unsetPtCount();
            }
        } else if (cTNumData.isSetPtCount()) {
            cTNumData.getPtCount().setVal(pointCount);
        } else {
            cTNumData.addNewPtCount().setVal(pointCount);
        }
    }

    @Internal
    default void fillStringCache(CTStrData cTStrData) {
        cTStrData.setPtArray(null);
        int pointCount = getPointCount();
        int i = 0;
        for (int i2 = 0; i2 < pointCount; i2++) {
            T pointAt = getPointAt(i2);
            if (pointAt != null) {
                CTStrVal addNewPt = cTStrData.addNewPt();
                addNewPt.setIdx(i2);
                addNewPt.setV(pointAt.toString());
                i++;
            }
        }
        if (i == 0) {
            if (cTStrData.isSetPtCount()) {
                cTStrData.unsetPtCount();
            }
        } else if (cTStrData.isSetPtCount()) {
            cTStrData.getPtCount().setVal(pointCount);
        } else {
            cTStrData.addNewPtCount().setVal(pointCount);
        }
    }

    int getColIndex();

    String getDataRangeReference();

    String getFormatCode();

    default String getFormula() {
        return getDataRangeReference();
    }

    T getPointAt(int i);

    int getPointCount();

    boolean isCellRange();

    boolean isLiteral();

    boolean isNumeric();

    boolean isReference();
}

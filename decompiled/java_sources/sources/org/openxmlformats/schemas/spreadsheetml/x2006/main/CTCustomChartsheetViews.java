package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTCustomChartsheetViews extends XmlObject {
    public static final DocumentFactory<CTCustomChartsheetViews> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCustomChartsheetViews> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcustomchartsheetviews931btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCustomChartsheetView addNewCustomSheetView();

    CTCustomChartsheetView getCustomSheetViewArray(int i);

    CTCustomChartsheetView[] getCustomSheetViewArray();

    List<CTCustomChartsheetView> getCustomSheetViewList();

    CTCustomChartsheetView insertNewCustomSheetView(int i);

    void removeCustomSheetView(int i);

    void setCustomSheetViewArray(int i, CTCustomChartsheetView cTCustomChartsheetView);

    void setCustomSheetViewArray(CTCustomChartsheetView[] cTCustomChartsheetViewArr);

    int sizeOfCustomSheetViewArray();
}

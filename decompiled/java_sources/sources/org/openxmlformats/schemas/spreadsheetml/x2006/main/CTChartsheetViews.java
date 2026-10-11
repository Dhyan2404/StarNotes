package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTChartsheetViews extends XmlObject {
    public static final DocumentFactory<CTChartsheetViews> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTChartsheetViews> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctchartsheetviewsafcctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTChartsheetView addNewSheetView();

    CTExtensionList getExtLst();

    CTChartsheetView getSheetViewArray(int i);

    CTChartsheetView[] getSheetViewArray();

    List<CTChartsheetView> getSheetViewList();

    CTChartsheetView insertNewSheetView(int i);

    boolean isSetExtLst();

    void removeSheetView(int i);

    void setExtLst(CTExtensionList cTExtensionList);

    void setSheetViewArray(int i, CTChartsheetView cTChartsheetView);

    void setSheetViewArray(CTChartsheetView[] cTChartsheetViewArr);

    int sizeOfSheetViewArray();

    void unsetExtLst();
}

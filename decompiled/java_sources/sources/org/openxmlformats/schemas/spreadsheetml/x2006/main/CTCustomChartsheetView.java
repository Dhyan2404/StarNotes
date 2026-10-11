package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STSheetState;

/* loaded from: classes15.dex */
public interface CTCustomChartsheetView extends XmlObject {
    public static final DocumentFactory<CTCustomChartsheetView> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCustomChartsheetView> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcustomchartsheetview68e0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTHeaderFooter addNewHeaderFooter();

    CTPageMargins addNewPageMargins();

    CTCsPageSetup addNewPageSetup();

    String getGuid();

    CTHeaderFooter getHeaderFooter();

    CTPageMargins getPageMargins();

    CTCsPageSetup getPageSetup();

    long getScale();

    STSheetState.Enum getState();

    boolean getZoomToFit();

    boolean isSetHeaderFooter();

    boolean isSetPageMargins();

    boolean isSetPageSetup();

    boolean isSetScale();

    boolean isSetState();

    boolean isSetZoomToFit();

    void setGuid(String str);

    void setHeaderFooter(CTHeaderFooter cTHeaderFooter);

    void setPageMargins(CTPageMargins cTPageMargins);

    void setPageSetup(CTCsPageSetup cTCsPageSetup);

    void setScale(long j);

    void setState(STSheetState.Enum r1);

    void setZoomToFit(boolean z);

    void unsetHeaderFooter();

    void unsetPageMargins();

    void unsetPageSetup();

    void unsetScale();

    void unsetState();

    void unsetZoomToFit();

    STGuid xgetGuid();

    XmlUnsignedInt xgetScale();

    STSheetState xgetState();

    XmlBoolean xgetZoomToFit();

    void xsetGuid(STGuid sTGuid);

    void xsetScale(XmlUnsignedInt xmlUnsignedInt);

    void xsetState(STSheetState sTSheetState);

    void xsetZoomToFit(XmlBoolean xmlBoolean);
}

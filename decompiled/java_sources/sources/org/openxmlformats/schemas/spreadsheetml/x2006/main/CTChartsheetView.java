package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTChartsheetView extends XmlObject {
    public static final DocumentFactory<CTChartsheetView> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTChartsheetView> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctchartsheetview720ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTExtensionList getExtLst();

    boolean getTabSelected();

    long getWorkbookViewId();

    long getZoomScale();

    boolean getZoomToFit();

    boolean isSetExtLst();

    boolean isSetTabSelected();

    boolean isSetZoomScale();

    boolean isSetZoomToFit();

    void setExtLst(CTExtensionList cTExtensionList);

    void setTabSelected(boolean z);

    void setWorkbookViewId(long j);

    void setZoomScale(long j);

    void setZoomToFit(boolean z);

    void unsetExtLst();

    void unsetTabSelected();

    void unsetZoomScale();

    void unsetZoomToFit();

    XmlBoolean xgetTabSelected();

    XmlUnsignedInt xgetWorkbookViewId();

    XmlUnsignedInt xgetZoomScale();

    XmlBoolean xgetZoomToFit();

    void xsetTabSelected(XmlBoolean xmlBoolean);

    void xsetWorkbookViewId(XmlUnsignedInt xmlUnsignedInt);

    void xsetZoomScale(XmlUnsignedInt xmlUnsignedInt);

    void xsetZoomToFit(XmlBoolean xmlBoolean);
}

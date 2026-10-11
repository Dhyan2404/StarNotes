package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTCommonSlideViewProperties extends XmlObject {
    public static final DocumentFactory<CTCommonSlideViewProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCommonSlideViewProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcommonslideviewproperties6ef1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCommonViewProperties addNewCViewPr();

    CTGuideList addNewGuideLst();

    CTCommonViewProperties getCViewPr();

    CTGuideList getGuideLst();

    boolean getShowGuides();

    boolean getSnapToGrid();

    boolean getSnapToObjects();

    boolean isSetGuideLst();

    boolean isSetShowGuides();

    boolean isSetSnapToGrid();

    boolean isSetSnapToObjects();

    void setCViewPr(CTCommonViewProperties cTCommonViewProperties);

    void setGuideLst(CTGuideList cTGuideList);

    void setShowGuides(boolean z);

    void setSnapToGrid(boolean z);

    void setSnapToObjects(boolean z);

    void unsetGuideLst();

    void unsetShowGuides();

    void unsetSnapToGrid();

    void unsetSnapToObjects();

    XmlBoolean xgetShowGuides();

    XmlBoolean xgetSnapToGrid();

    XmlBoolean xgetSnapToObjects();

    void xsetShowGuides(XmlBoolean xmlBoolean);

    void xsetSnapToGrid(XmlBoolean xmlBoolean);

    void xsetSnapToObjects(XmlBoolean xmlBoolean);
}

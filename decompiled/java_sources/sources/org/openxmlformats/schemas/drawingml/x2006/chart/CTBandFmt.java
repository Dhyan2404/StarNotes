package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;

/* loaded from: classes14.dex */
public interface CTBandFmt extends XmlObject {
    public static final DocumentFactory<CTBandFmt> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBandFmt> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbandfmt644etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTUnsignedInt addNewIdx();

    CTShapeProperties addNewSpPr();

    CTUnsignedInt getIdx();

    CTShapeProperties getSpPr();

    boolean isSetSpPr();

    void setIdx(CTUnsignedInt cTUnsignedInt);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void unsetSpPr();
}

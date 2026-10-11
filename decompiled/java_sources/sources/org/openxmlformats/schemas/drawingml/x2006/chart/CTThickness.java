package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTThickness extends XmlObject {
    public static final DocumentFactory<CTThickness> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTThickness> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctthicknessf632type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getVal();

    void setVal(Object obj);

    STThickness xgetVal();

    void xsetVal(STThickness sTThickness);
}

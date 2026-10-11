package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTLblOffset extends XmlObject {
    public static final DocumentFactory<CTLblOffset> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLblOffset> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlbloffset3c1dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getVal();

    boolean isSetVal();

    void setVal(Object obj);

    void unsetVal();

    STLblOffset xgetVal();

    void xsetVal(STLblOffset sTLblOffset);
}

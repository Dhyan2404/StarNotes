package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTOrder extends XmlObject {
    public static final DocumentFactory<CTOrder> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOrder> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctorder7398type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    short getVal();

    boolean isSetVal();

    void setVal(short s);

    void unsetVal();

    STOrder xgetVal();

    void xsetVal(STOrder sTOrder);
}

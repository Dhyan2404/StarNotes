package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlLong;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTRatio extends XmlObject {
    public static final DocumentFactory<CTRatio> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRatio> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctratioc3bctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getD();

    long getN();

    void setD(long j);

    void setN(long j);

    XmlLong xgetD();

    XmlLong xgetN();

    void xsetD(XmlLong xmlLong);

    void xsetN(XmlLong xmlLong);
}

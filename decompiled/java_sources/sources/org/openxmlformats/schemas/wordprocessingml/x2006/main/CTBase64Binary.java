package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTBase64Binary extends XmlObject {
    public static final DocumentFactory<CTBase64Binary> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBase64Binary> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbase64binaryea38type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getVal();

    void setVal(byte[] bArr);

    XmlBase64Binary xgetVal();

    void xsetVal(XmlBase64Binary xmlBase64Binary);
}

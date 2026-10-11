package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface StreamDocument extends XmlObject {
    public static final DocumentFactory<StreamDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<StreamDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "streamd1f1doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getStream();

    void setStream(byte[] bArr);

    XmlBase64Binary xgetStream();

    void xsetStream(XmlBase64Binary xmlBase64Binary);
}

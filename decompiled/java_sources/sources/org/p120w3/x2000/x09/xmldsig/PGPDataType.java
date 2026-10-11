package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface PGPDataType extends XmlObject {
    public static final DocumentFactory<PGPDataType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PGPDataType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "pgpdatatype3234type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getPGPKeyID();

    byte[] getPGPKeyPacket();

    boolean isSetPGPKeyID();

    boolean isSetPGPKeyPacket();

    void setPGPKeyID(byte[] bArr);

    void setPGPKeyPacket(byte[] bArr);

    void unsetPGPKeyID();

    void unsetPGPKeyPacket();

    XmlBase64Binary xgetPGPKeyID();

    XmlBase64Binary xgetPGPKeyPacket();

    void xsetPGPKeyID(XmlBase64Binary xmlBase64Binary);

    void xsetPGPKeyPacket(XmlBase64Binary xmlBase64Binary);
}

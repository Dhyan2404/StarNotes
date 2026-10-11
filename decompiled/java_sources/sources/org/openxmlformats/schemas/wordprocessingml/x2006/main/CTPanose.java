package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STPanose;

/* loaded from: classes16.dex */
public interface CTPanose extends XmlObject {
    public static final DocumentFactory<CTPanose> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPanose> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpanosefbe4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getVal();

    void setVal(byte[] bArr);

    STPanose xgetVal();

    void xsetVal(STPanose sTPanose);
}

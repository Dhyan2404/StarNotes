package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STLang;

/* loaded from: classes16.dex */
public interface CTLang extends XmlObject {
    public static final DocumentFactory<CTLang> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLang> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlangda3atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getVal();

    void setVal(String str);

    STLang xgetVal();

    void xsetVal(STLang sTLang);
}

package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface BstrDocument extends XmlObject {
    public static final DocumentFactory<BstrDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BstrDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "bstrae02doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getBstr();

    void setBstr(String str);

    XmlString xgetBstr();

    void xsetBstr(XmlString xmlString);
}

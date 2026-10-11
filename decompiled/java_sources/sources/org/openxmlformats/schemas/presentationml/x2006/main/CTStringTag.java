package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTStringTag extends XmlObject {
    public static final DocumentFactory<CTStringTag> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTStringTag> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctstringtagea26type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getName();

    String getVal();

    void setName(String str);

    void setVal(String str);

    XmlString xgetName();

    XmlString xgetVal();

    void xsetName(XmlString xmlString);

    void xsetVal(XmlString xmlString);
}

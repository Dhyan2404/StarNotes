package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface BoolDocument extends XmlObject {
    public static final DocumentFactory<BoolDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BoolDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "bool1687doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getBool();

    void setBool(boolean z);

    XmlBoolean xgetBool();

    void xsetBool(XmlBoolean xmlBoolean);
}

package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface LpwstrDocument extends XmlObject {
    public static final DocumentFactory<LpwstrDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<LpwstrDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "lpwstr5a53doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getLpwstr();

    void setLpwstr(String str);

    XmlString xgetLpwstr();

    void xsetLpwstr(XmlString xmlString);
}

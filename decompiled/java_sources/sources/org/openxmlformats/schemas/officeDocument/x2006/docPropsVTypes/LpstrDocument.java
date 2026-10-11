package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface LpstrDocument extends XmlObject {
    public static final DocumentFactory<LpstrDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<LpstrDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "lpstreeb6doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getLpstr();

    void setLpstr(String str);

    XmlString xgetLpstr();

    void xsetLpstr(XmlString xmlString);
}

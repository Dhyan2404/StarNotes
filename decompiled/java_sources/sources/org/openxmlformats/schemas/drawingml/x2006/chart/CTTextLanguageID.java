package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STLang;

/* loaded from: classes14.dex */
public interface CTTextLanguageID extends XmlObject {
    public static final DocumentFactory<CTTextLanguageID> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTextLanguageID> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttextlanguageid657ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getVal();

    void setVal(String str);

    STLang xgetVal();

    void xsetVal(STLang sTLang);
}

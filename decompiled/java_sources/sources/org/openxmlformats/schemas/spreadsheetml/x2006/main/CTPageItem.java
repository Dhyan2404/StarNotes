package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTPageItem extends XmlObject {
    public static final DocumentFactory<CTPageItem> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPageItem> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpageitemda8btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getName();

    void setName(String str);

    STXstring xgetName();

    void xsetName(STXstring sTXstring);
}

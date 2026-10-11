package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTCellSmartTagPr extends XmlObject {
    public static final DocumentFactory<CTCellSmartTagPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCellSmartTagPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcellsmarttagpra0betype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getKey();

    String getVal();

    void setKey(String str);

    void setVal(String str);

    STXstring xgetKey();

    STXstring xgetVal();

    void xsetKey(STXstring sTXstring);

    void xsetVal(STXstring sTXstring);
}

package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;

/* loaded from: classes7.dex */
public interface CTGuid extends XmlObject {
    public static final DocumentFactory<CTGuid> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGuid> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctguid643dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getVal();

    boolean isSetVal();

    void setVal(String str);

    void unsetVal();

    STGuid xgetVal();

    void xsetVal(STGuid sTGuid);
}

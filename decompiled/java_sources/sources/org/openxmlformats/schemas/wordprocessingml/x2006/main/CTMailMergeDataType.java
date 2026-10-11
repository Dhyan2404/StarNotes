package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTMailMergeDataType extends XmlObject {
    public static final DocumentFactory<CTMailMergeDataType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMailMergeDataType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmailmergedatatype128dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getVal();

    void setVal(String str);

    STMailMergeDataType xgetVal();

    void xsetVal(STMailMergeDataType sTMailMergeDataType);
}

package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMailMergeDocType;

/* loaded from: classes16.dex */
public interface CTMailMergeDocType extends XmlObject {
    public static final DocumentFactory<CTMailMergeDocType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMailMergeDocType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmailmergedoctypeedf7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STMailMergeDocType.Enum getVal();

    void setVal(STMailMergeDocType.Enum r1);

    STMailMergeDocType xgetVal();

    void xsetVal(STMailMergeDocType sTMailMergeDocType);
}

package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMailMergeSourceType;

/* loaded from: classes16.dex */
public interface CTMailMergeSourceType extends XmlObject {
    public static final DocumentFactory<CTMailMergeSourceType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMailMergeSourceType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmailmergesourcetypeb73ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STMailMergeSourceType.Enum getVal();

    void setVal(STMailMergeSourceType.Enum r1);

    STMailMergeSourceType xgetVal();

    void xsetVal(STMailMergeSourceType sTMailMergeSourceType);
}

package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMailMergeOdsoFMDFieldType;

/* loaded from: classes16.dex */
public interface CTMailMergeOdsoFMDFieldType extends XmlObject {
    public static final DocumentFactory<CTMailMergeOdsoFMDFieldType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMailMergeOdsoFMDFieldType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmailmergeodsofmdfieldtype8e29type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STMailMergeOdsoFMDFieldType.Enum getVal();

    void setVal(STMailMergeOdsoFMDFieldType.Enum r1);

    STMailMergeOdsoFMDFieldType xgetVal();

    void xsetVal(STMailMergeOdsoFMDFieldType sTMailMergeOdsoFMDFieldType);
}

package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMailMergeDest;

/* loaded from: classes16.dex */
public interface CTMailMergeDest extends XmlObject {
    public static final DocumentFactory<CTMailMergeDest> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMailMergeDest> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmailmergedestb8aftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STMailMergeDest.Enum getVal();

    void setVal(STMailMergeDest.Enum r1);

    STMailMergeDest xgetVal();

    void xsetVal(STMailMergeDest sTMailMergeDest);
}

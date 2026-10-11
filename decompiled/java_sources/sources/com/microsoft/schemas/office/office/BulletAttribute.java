package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface BulletAttribute extends XmlObject {
    public static final DocumentFactory<BulletAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BulletAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "bullet87abattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getBullet();

    boolean isSetBullet();

    void setBullet(STTrueFalse.Enum r1);

    void unsetBullet();

    STTrueFalse xgetBullet();

    void xsetBullet(STTrueFalse sTTrueFalse);
}

package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTNumPicBullet extends XmlObject {
    public static final DocumentFactory<CTNumPicBullet> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNumPicBullet> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnumpicbullet61e2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDrawing addNewDrawing();

    CTPicture addNewPict();

    CTDrawing getDrawing();

    BigInteger getNumPicBulletId();

    CTPicture getPict();

    boolean isSetDrawing();

    boolean isSetPict();

    void setDrawing(CTDrawing cTDrawing);

    void setNumPicBulletId(BigInteger bigInteger);

    void setPict(CTPicture cTPicture);

    void unsetDrawing();

    void unsetPict();

    STDecimalNumber xgetNumPicBulletId();

    void xsetNumPicBulletId(STDecimalNumber sTDecimalNumber);
}

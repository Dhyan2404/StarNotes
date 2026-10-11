package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;

/* loaded from: classes16.dex */
public interface CTReadingModeInkLockDown extends XmlObject {
    public static final DocumentFactory<CTReadingModeInkLockDown> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTReadingModeInkLockDown> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctreadingmodeinklockdown1e84type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getActualPg();

    Object getFontSz();

    BigInteger getH();

    BigInteger getW();

    void setActualPg(Object obj);

    void setFontSz(Object obj);

    void setH(BigInteger bigInteger);

    void setW(BigInteger bigInteger);

    STOnOff xgetActualPg();

    STDecimalNumberOrPercent xgetFontSz();

    STPixelsMeasure xgetH();

    STPixelsMeasure xgetW();

    void xsetActualPg(STOnOff sTOnOff);

    void xsetFontSz(STDecimalNumberOrPercent sTDecimalNumberOrPercent);

    void xsetH(STPixelsMeasure sTPixelsMeasure);

    void xsetW(STPixelsMeasure sTPixelsMeasure);
}

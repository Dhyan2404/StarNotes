package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STCombineBrackets;

/* loaded from: classes16.dex */
public interface CTEastAsianLayout extends XmlObject {
    public static final DocumentFactory<CTEastAsianLayout> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEastAsianLayout> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cteastasianlayout0841type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getCombine();

    STCombineBrackets.Enum getCombineBrackets();

    BigInteger getId();

    Object getVert();

    Object getVertCompress();

    boolean isSetCombine();

    boolean isSetCombineBrackets();

    boolean isSetId();

    boolean isSetVert();

    boolean isSetVertCompress();

    void setCombine(Object obj);

    void setCombineBrackets(STCombineBrackets.Enum r1);

    void setId(BigInteger bigInteger);

    void setVert(Object obj);

    void setVertCompress(Object obj);

    void unsetCombine();

    void unsetCombineBrackets();

    void unsetId();

    void unsetVert();

    void unsetVertCompress();

    STOnOff xgetCombine();

    STCombineBrackets xgetCombineBrackets();

    STDecimalNumber xgetId();

    STOnOff xgetVert();

    STOnOff xgetVertCompress();

    void xsetCombine(STOnOff sTOnOff);

    void xsetCombineBrackets(STCombineBrackets sTCombineBrackets);

    void xsetId(STDecimalNumber sTDecimalNumber);

    void xsetVert(STOnOff sTOnOff);

    void xsetVertCompress(STOnOff sTOnOff);
}

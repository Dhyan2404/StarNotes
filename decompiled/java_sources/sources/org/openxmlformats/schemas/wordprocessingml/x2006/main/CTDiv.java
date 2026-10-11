package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.math.BigInteger;
import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDiv extends XmlObject {
    public static final DocumentFactory<CTDiv> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDiv> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdiv7c21type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewBlockQuote();

    CTOnOff addNewBodyDiv();

    CTDivBdr addNewDivBdr();

    CTDivs addNewDivsChild();

    CTSignedTwipsMeasure addNewMarBottom();

    CTSignedTwipsMeasure addNewMarLeft();

    CTSignedTwipsMeasure addNewMarRight();

    CTSignedTwipsMeasure addNewMarTop();

    CTOnOff getBlockQuote();

    CTOnOff getBodyDiv();

    CTDivBdr getDivBdr();

    CTDivs getDivsChildArray(int i);

    CTDivs[] getDivsChildArray();

    List<CTDivs> getDivsChildList();

    BigInteger getId();

    CTSignedTwipsMeasure getMarBottom();

    CTSignedTwipsMeasure getMarLeft();

    CTSignedTwipsMeasure getMarRight();

    CTSignedTwipsMeasure getMarTop();

    CTDivs insertNewDivsChild(int i);

    boolean isSetBlockQuote();

    boolean isSetBodyDiv();

    boolean isSetDivBdr();

    void removeDivsChild(int i);

    void setBlockQuote(CTOnOff cTOnOff);

    void setBodyDiv(CTOnOff cTOnOff);

    void setDivBdr(CTDivBdr cTDivBdr);

    void setDivsChildArray(int i, CTDivs cTDivs);

    void setDivsChildArray(CTDivs[] cTDivsArr);

    void setId(BigInteger bigInteger);

    void setMarBottom(CTSignedTwipsMeasure cTSignedTwipsMeasure);

    void setMarLeft(CTSignedTwipsMeasure cTSignedTwipsMeasure);

    void setMarRight(CTSignedTwipsMeasure cTSignedTwipsMeasure);

    void setMarTop(CTSignedTwipsMeasure cTSignedTwipsMeasure);

    int sizeOfDivsChildArray();

    void unsetBlockQuote();

    void unsetBodyDiv();

    void unsetDivBdr();

    STDecimalNumber xgetId();

    void xsetId(STDecimalNumber sTDecimalNumber);
}

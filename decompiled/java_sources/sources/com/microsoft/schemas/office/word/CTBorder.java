package com.microsoft.schemas.office.word;

import com.microsoft.schemas.office.word.STBorderShadow;
import com.microsoft.schemas.office.word.STBorderType;
import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlPositiveInteger;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTBorder extends XmlObject {
    public static final DocumentFactory<CTBorder> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBorder> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctborderc15dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STBorderShadow.Enum getShadow();

    STBorderType.Enum getType();

    BigInteger getWidth();

    boolean isSetShadow();

    boolean isSetType();

    boolean isSetWidth();

    void setShadow(STBorderShadow.Enum r1);

    void setType(STBorderType.Enum r1);

    void setWidth(BigInteger bigInteger);

    void unsetShadow();

    void unsetType();

    void unsetWidth();

    STBorderShadow xgetShadow();

    STBorderType xgetType();

    XmlPositiveInteger xgetWidth();

    void xsetShadow(STBorderShadow sTBorderShadow);

    void xsetType(STBorderType sTBorderType);

    void xsetWidth(XmlPositiveInteger xmlPositiveInteger);
}

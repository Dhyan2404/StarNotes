package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STPhoneticAlignment;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STPhoneticType;

/* loaded from: classes15.dex */
public interface CTPhoneticPr extends XmlObject {
    public static final DocumentFactory<CTPhoneticPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPhoneticPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctphoneticpr898btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STPhoneticAlignment.Enum getAlignment();

    long getFontId();

    STPhoneticType.Enum getType();

    boolean isSetAlignment();

    boolean isSetType();

    void setAlignment(STPhoneticAlignment.Enum r1);

    void setFontId(long j);

    void setType(STPhoneticType.Enum r1);

    void unsetAlignment();

    void unsetType();

    STPhoneticAlignment xgetAlignment();

    STFontId xgetFontId();

    STPhoneticType xgetType();

    void xsetAlignment(STPhoneticAlignment sTPhoneticAlignment);

    void xsetFontId(STFontId sTFontId);

    void xsetType(STPhoneticType sTPhoneticType);
}

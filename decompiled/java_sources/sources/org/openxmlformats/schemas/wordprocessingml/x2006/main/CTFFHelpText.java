package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STInfoTextType;

/* loaded from: classes16.dex */
public interface CTFFHelpText extends XmlObject {
    public static final DocumentFactory<CTFFHelpText> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFFHelpText> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctffhelptextbf1atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STInfoTextType.Enum getType();

    String getVal();

    boolean isSetType();

    boolean isSetVal();

    void setType(STInfoTextType.Enum r1);

    void setVal(String str);

    void unsetType();

    void unsetVal();

    STInfoTextType xgetType();

    STFFHelpTextVal xgetVal();

    void xsetType(STInfoTextType sTInfoTextType);

    void xsetVal(STFFHelpTextVal sTFFHelpTextVal);
}

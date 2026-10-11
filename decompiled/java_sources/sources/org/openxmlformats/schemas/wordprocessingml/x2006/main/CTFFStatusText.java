package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STInfoTextType;

/* loaded from: classes16.dex */
public interface CTFFStatusText extends XmlObject {
    public static final DocumentFactory<CTFFStatusText> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFFStatusText> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctffstatustexta9c9type");
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

    STFFStatusTextVal xgetVal();

    void xsetType(STInfoTextType sTInfoTextType);

    void xsetVal(STFFStatusTextVal sTFFStatusTextVal);
}

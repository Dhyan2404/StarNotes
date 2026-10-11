package com.microsoft.schemas.office.word.x2012.wordml;

import com.microsoft.schemas.office.word.x2012.wordml.STSdtAppearance;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTSdtAppearance extends XmlObject {
    public static final DocumentFactory<CTSdtAppearance> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSdtAppearance> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsdtappearance51e9type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STSdtAppearance.Enum getVal();

    boolean isSetVal();

    void setVal(STSdtAppearance.Enum r1);

    void unsetVal();

    STSdtAppearance xgetVal();

    void xsetVal(STSdtAppearance sTSdtAppearance);
}

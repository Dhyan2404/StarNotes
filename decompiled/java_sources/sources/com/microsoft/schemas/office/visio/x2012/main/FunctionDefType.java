package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface FunctionDefType extends XmlObject {
    public static final DocumentFactory<FunctionDefType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FunctionDefType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "functiondeftype36fetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getN();

    void setN(String str);

    XmlString xgetN();

    void xsetN(XmlString xmlString);
}

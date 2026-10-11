package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface FooterRightType extends XmlString {
    public static final DocumentFactory<FooterRightType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FooterRightType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "footerrighttypeed4atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}

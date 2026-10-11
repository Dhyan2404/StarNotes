package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEmpty;

/* loaded from: classes7.dex */
public interface RepeatingSectionItemDocument extends XmlObject {
    public static final DocumentFactory<RepeatingSectionItemDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RepeatingSectionItemDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "repeatingsectionitem9a41doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEmpty addNewRepeatingSectionItem();

    CTEmpty getRepeatingSectionItem();

    void setRepeatingSectionItem(CTEmpty cTEmpty);
}

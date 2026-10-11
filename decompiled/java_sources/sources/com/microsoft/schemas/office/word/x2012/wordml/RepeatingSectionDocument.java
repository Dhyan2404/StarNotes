package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface RepeatingSectionDocument extends XmlObject {
    public static final DocumentFactory<RepeatingSectionDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RepeatingSectionDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "repeatingsectioncc14doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSdtRepeatedSection addNewRepeatingSection();

    CTSdtRepeatedSection getRepeatingSection();

    void setRepeatingSection(CTSdtRepeatedSection cTSdtRepeatedSection);
}

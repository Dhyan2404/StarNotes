package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;

/* loaded from: classes7.dex */
public interface FootnoteColumnsDocument extends XmlObject {
    public static final DocumentFactory<FootnoteColumnsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FootnoteColumnsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "footnotecolumnsc867doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDecimalNumber addNewFootnoteColumns();

    CTDecimalNumber getFootnoteColumns();

    void setFootnoteColumns(CTDecimalNumber cTDecimalNumber);
}

package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;

/* loaded from: classes7.dex */
public interface CTSdtRepeatedSection extends XmlObject {
    public static final DocumentFactory<CTSdtRepeatedSection> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSdtRepeatedSection> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsdtrepeatedsection999etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewDoNotAllowInsertDeleteSection();

    CTString addNewSectionTitle();

    CTOnOff getDoNotAllowInsertDeleteSection();

    CTString getSectionTitle();

    boolean isSetDoNotAllowInsertDeleteSection();

    boolean isSetSectionTitle();

    void setDoNotAllowInsertDeleteSection(CTOnOff cTOnOff);

    void setSectionTitle(CTString cTString);

    void unsetDoNotAllowInsertDeleteSection();

    void unsetSectionTitle();
}

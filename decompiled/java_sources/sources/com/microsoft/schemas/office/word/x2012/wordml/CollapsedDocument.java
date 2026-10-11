package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;

/* loaded from: classes7.dex */
public interface CollapsedDocument extends XmlObject {
    public static final DocumentFactory<CollapsedDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CollapsedDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "collapsed3b6ddoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewCollapsed();

    CTOnOff getCollapsed();

    void setCollapsed(CTOnOff cTOnOff);
}

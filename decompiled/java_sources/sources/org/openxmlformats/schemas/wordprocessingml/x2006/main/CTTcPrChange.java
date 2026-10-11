package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTTcPrChange extends CTTrackChange {
    public static final DocumentFactory<CTTcPrChange> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTcPrChange> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttcprchangea0e7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTcPrInner addNewTcPr();

    CTTcPrInner getTcPr();

    void setTcPr(CTTcPrInner cTTcPrInner);
}

package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTTrPrChange extends CTTrackChange {
    public static final DocumentFactory<CTTrPrChange> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTrPrChange> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttrprchange4a38type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTrPrBase addNewTrPr();

    CTTrPrBase getTrPr();

    void setTrPr(CTTrPrBase cTTrPrBase);
}

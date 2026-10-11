package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTTblPrChange extends CTTrackChange {
    public static final DocumentFactory<CTTblPrChange> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTblPrChange> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttblprchangef5e2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTblPrBase addNewTblPr();

    CTTblPrBase getTblPr();

    void setTblPr(CTTblPrBase cTTblPrBase);
}

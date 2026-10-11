package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTTblPrExChange extends CTTrackChange {
    public static final DocumentFactory<CTTblPrExChange> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTblPrExChange> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttblprexchange12eftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTblPrExBase addNewTblPrEx();

    CTTblPrExBase getTblPrEx();

    void setTblPrEx(CTTblPrExBase cTTblPrExBase);
}

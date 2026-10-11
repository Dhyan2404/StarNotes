package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTTblGridChange extends CTMarkup {
    public static final DocumentFactory<CTTblGridChange> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTblGridChange> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttblgridchange3c5etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTblGridBase addNewTblGrid();

    CTTblGridBase getTblGrid();

    void setTblGrid(CTTblGridBase cTTblGridBase);
}

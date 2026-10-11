package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTTblPrEx extends CTTblPrExBase {
    public static final DocumentFactory<CTTblPrEx> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTblPrEx> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttblprex863ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTblPrExChange addNewTblPrExChange();

    CTTblPrExChange getTblPrExChange();

    boolean isSetTblPrExChange();

    void setTblPrExChange(CTTblPrExChange cTTblPrExChange);

    void unsetTblPrExChange();
}

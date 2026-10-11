package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTTrPr extends CTTrPrBase {
    public static final DocumentFactory<CTTrPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTrPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttrpr2848type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTrackChange addNewDel();

    CTTrackChange addNewIns();

    CTTrPrChange addNewTrPrChange();

    CTTrackChange getDel();

    CTTrackChange getIns();

    CTTrPrChange getTrPrChange();

    boolean isSetDel();

    boolean isSetIns();

    boolean isSetTrPrChange();

    void setDel(CTTrackChange cTTrackChange);

    void setIns(CTTrackChange cTTrackChange);

    void setTrPrChange(CTTrPrChange cTTrPrChange);

    void unsetDel();

    void unsetIns();

    void unsetTrPrChange();
}

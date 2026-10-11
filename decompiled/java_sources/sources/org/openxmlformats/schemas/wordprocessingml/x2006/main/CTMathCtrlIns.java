package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTMathCtrlIns extends CTTrackChange {
    public static final DocumentFactory<CTMathCtrlIns> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMathCtrlIns> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmathctrlinsc697type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRPrChange addNewDel();

    CTRPr addNewRPr();

    CTRPrChange getDel();

    CTRPr getRPr();

    boolean isSetDel();

    boolean isSetRPr();

    void setDel(CTRPrChange cTRPrChange);

    void setRPr(CTRPr cTRPr);

    void unsetDel();

    void unsetRPr();
}

package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTMathCtrlDel extends CTTrackChange {
    public static final DocumentFactory<CTMathCtrlDel> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMathCtrlDel> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmathctrldelff9atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRPr addNewRPr();

    CTRPr getRPr();

    boolean isSetRPr();

    void setRPr(CTRPr cTRPr);

    void unsetRPr();
}

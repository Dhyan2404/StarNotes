package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;

/* loaded from: classes7.dex */
public interface RestartNumberingAfterBreakAttribute extends XmlObject {
    public static final DocumentFactory<RestartNumberingAfterBreakAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RestartNumberingAfterBreakAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "restartnumberingafterbreak8873attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getRestartNumberingAfterBreak();

    boolean isSetRestartNumberingAfterBreak();

    void setRestartNumberingAfterBreak(Object obj);

    void unsetRestartNumberingAfterBreak();

    STOnOff xgetRestartNumberingAfterBreak();

    void xsetRestartNumberingAfterBreak(STOnOff sTOnOff);
}

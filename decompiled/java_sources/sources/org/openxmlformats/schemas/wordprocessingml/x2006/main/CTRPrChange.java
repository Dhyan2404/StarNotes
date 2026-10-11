package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTRPrChange extends CTTrackChange {
    public static final DocumentFactory<CTRPrChange> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRPrChange> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrprchangeeaeetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRPrOriginal addNewRPr();

    CTRPrOriginal getRPr();

    void setRPr(CTRPrOriginal cTRPrOriginal);
}

package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTPPrChange extends CTTrackChange {
    public static final DocumentFactory<CTPPrChange> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPPrChange> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpprchange29b0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPPrBase addNewPPr();

    CTPPrBase getPPr();

    void setPPr(CTPPrBase cTPPrBase);
}

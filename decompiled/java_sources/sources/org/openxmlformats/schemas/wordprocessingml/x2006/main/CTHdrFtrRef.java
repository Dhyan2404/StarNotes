package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STHdrFtr;

/* loaded from: classes16.dex */
public interface CTHdrFtrRef extends CTRel {
    public static final DocumentFactory<CTHdrFtrRef> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTHdrFtrRef> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cthdrftrref224dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STHdrFtr.Enum getType();

    void setType(STHdrFtr.Enum r1);

    STHdrFtr xgetType();

    void xsetType(STHdrFtr sTHdrFtr);
}

package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTPPrGeneral extends CTPPrBase {
    public static final DocumentFactory<CTPPrGeneral> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPPrGeneral> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpprgenerald6f2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPPrChange addNewPPrChange();

    CTPPrChange getPPrChange();

    boolean isSetPPrChange();

    void setPPrChange(CTPPrChange cTPPrChange);

    void unsetPPrChange();
}

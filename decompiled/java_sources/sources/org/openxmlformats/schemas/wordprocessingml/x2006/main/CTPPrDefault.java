package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTPPrDefault extends XmlObject {
    public static final DocumentFactory<CTPPrDefault> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPPrDefault> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpprdefaultf839type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPPrGeneral addNewPPr();

    CTPPrGeneral getPPr();

    boolean isSetPPr();

    void setPPr(CTPPrGeneral cTPPrGeneral);

    void unsetPPr();
}

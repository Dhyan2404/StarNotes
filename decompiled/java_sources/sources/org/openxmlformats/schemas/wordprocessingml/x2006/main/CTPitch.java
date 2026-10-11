package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STPitch;

/* loaded from: classes16.dex */
public interface CTPitch extends XmlObject {
    public static final DocumentFactory<CTPitch> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPitch> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpitch1692type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STPitch.Enum getVal();

    void setVal(STPitch.Enum r1);

    STPitch xgetVal();

    void xsetVal(STPitch sTPitch);
}

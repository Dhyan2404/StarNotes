package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STYAlign;

/* loaded from: classes14.dex */
public interface CTYAlign extends XmlObject {
    public static final DocumentFactory<CTYAlign> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTYAlign> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctyalign4a66type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STYAlign.Enum getVal();

    void setVal(STYAlign.Enum r1);

    STYAlign xgetVal();

    void xsetVal(STYAlign sTYAlign);
}

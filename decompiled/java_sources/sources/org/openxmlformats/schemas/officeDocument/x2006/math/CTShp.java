package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.math.STShp;

/* loaded from: classes14.dex */
public interface CTShp extends XmlObject {
    public static final DocumentFactory<CTShp> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTShp> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctshp2541type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STShp.Enum getVal();

    void setVal(STShp.Enum r1);

    STShp xgetVal();

    void xsetVal(STShp sTShp);
}

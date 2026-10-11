package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.math.STLimLoc;

/* loaded from: classes14.dex */
public interface CTLimLoc extends XmlObject {
    public static final DocumentFactory<CTLimLoc> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLimLoc> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlimlocf362type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STLimLoc.Enum getVal();

    void setVal(STLimLoc.Enum r1);

    STLimLoc xgetVal();

    void xsetVal(STLimLoc sTLimLoc);
}

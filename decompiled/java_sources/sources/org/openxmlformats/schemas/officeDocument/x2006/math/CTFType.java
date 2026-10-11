package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.math.STFType;

/* loaded from: classes14.dex */
public interface CTFType extends XmlObject {
    public static final DocumentFactory<CTFType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctftype74dctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STFType.Enum getVal();

    void setVal(STFType.Enum r1);

    STFType xgetVal();

    void xsetVal(STFType sTFType);
}

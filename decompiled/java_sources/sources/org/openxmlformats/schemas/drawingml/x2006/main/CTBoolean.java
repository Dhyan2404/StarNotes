package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;

/* loaded from: classes14.dex */
public interface CTBoolean extends XmlObject {
    public static final DocumentFactory<CTBoolean> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBoolean> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctboolean0559type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getVal();

    boolean isSetVal();

    void setVal(Object obj);

    void unsetVal();

    STOnOff xgetVal();

    void xsetVal(STOnOff sTOnOff);
}

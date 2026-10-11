package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.math.STScript;

/* loaded from: classes14.dex */
public interface CTScript extends XmlObject {
    public static final DocumentFactory<CTScript> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTScript> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctscript8047type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STScript.Enum getVal();

    boolean isSetVal();

    void setVal(STScript.Enum r1);

    void unsetVal();

    STScript xgetVal();

    void xsetVal(STScript sTScript);
}

package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes14.dex */
public interface CTString extends XmlObject {
    public static final DocumentFactory<CTString> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTString> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctstring2d41type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getVal();

    boolean isSetVal();

    void setVal(String str);

    void unsetVal();

    STString xgetVal();

    void xsetVal(STString sTString);
}

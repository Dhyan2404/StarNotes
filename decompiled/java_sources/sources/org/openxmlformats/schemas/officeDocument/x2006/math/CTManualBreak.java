package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTManualBreak extends XmlObject {
    public static final DocumentFactory<CTManualBreak> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTManualBreak> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmanualbreak1563type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getAlnAt();

    boolean isSetAlnAt();

    void setAlnAt(int i);

    void unsetAlnAt();

    STInteger255 xgetAlnAt();

    void xsetAlnAt(STInteger255 sTInteger255);
}

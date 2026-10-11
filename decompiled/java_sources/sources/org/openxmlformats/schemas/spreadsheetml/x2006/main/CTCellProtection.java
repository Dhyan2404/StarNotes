package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTCellProtection extends XmlObject {
    public static final DocumentFactory<CTCellProtection> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCellProtection> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcellprotectionf524type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getHidden();

    boolean getLocked();

    boolean isSetHidden();

    boolean isSetLocked();

    void setHidden(boolean z);

    void setLocked(boolean z);

    void unsetHidden();

    void unsetLocked();

    XmlBoolean xgetHidden();

    XmlBoolean xgetLocked();

    void xsetHidden(XmlBoolean xmlBoolean);

    void xsetLocked(XmlBoolean xmlBoolean);
}

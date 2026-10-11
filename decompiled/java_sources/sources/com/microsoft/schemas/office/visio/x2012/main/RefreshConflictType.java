package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface RefreshConflictType extends XmlObject {
    public static final DocumentFactory<RefreshConflictType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RefreshConflictType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "refreshconflicttypef3betype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getPageID();

    long getRowID();

    long getShapeID();

    void setPageID(long j);

    void setRowID(long j);

    void setShapeID(long j);

    XmlUnsignedInt xgetPageID();

    XmlUnsignedInt xgetRowID();

    XmlUnsignedInt xgetShapeID();

    void xsetPageID(XmlUnsignedInt xmlUnsignedInt);

    void xsetRowID(XmlUnsignedInt xmlUnsignedInt);

    void xsetShapeID(XmlUnsignedInt xmlUnsignedInt);
}

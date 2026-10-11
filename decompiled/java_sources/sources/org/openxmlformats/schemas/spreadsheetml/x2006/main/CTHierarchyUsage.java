package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTHierarchyUsage extends XmlObject {
    public static final DocumentFactory<CTHierarchyUsage> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTHierarchyUsage> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cthierarchyusaged475type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getHierarchyUsage();

    void setHierarchyUsage(int i);

    XmlInt xgetHierarchyUsage();

    void xsetHierarchyUsage(XmlInt xmlInt);
}

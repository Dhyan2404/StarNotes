package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTRowHierarchiesUsage extends XmlObject {
    public static final DocumentFactory<CTRowHierarchiesUsage> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRowHierarchiesUsage> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrowhierarchiesusage59a7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTHierarchyUsage addNewRowHierarchyUsage();

    long getCount();

    CTHierarchyUsage getRowHierarchyUsageArray(int i);

    CTHierarchyUsage[] getRowHierarchyUsageArray();

    List<CTHierarchyUsage> getRowHierarchyUsageList();

    CTHierarchyUsage insertNewRowHierarchyUsage(int i);

    boolean isSetCount();

    void removeRowHierarchyUsage(int i);

    void setCount(long j);

    void setRowHierarchyUsageArray(int i, CTHierarchyUsage cTHierarchyUsage);

    void setRowHierarchyUsageArray(CTHierarchyUsage[] cTHierarchyUsageArr);

    int sizeOfRowHierarchyUsageArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}

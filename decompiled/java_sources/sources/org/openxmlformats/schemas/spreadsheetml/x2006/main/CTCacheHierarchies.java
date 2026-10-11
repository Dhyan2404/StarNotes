package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTCacheHierarchies extends XmlObject {
    public static final DocumentFactory<CTCacheHierarchies> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCacheHierarchies> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcachehierarchies373atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCacheHierarchy addNewCacheHierarchy();

    CTCacheHierarchy getCacheHierarchyArray(int i);

    CTCacheHierarchy[] getCacheHierarchyArray();

    List<CTCacheHierarchy> getCacheHierarchyList();

    long getCount();

    CTCacheHierarchy insertNewCacheHierarchy(int i);

    boolean isSetCount();

    void removeCacheHierarchy(int i);

    void setCacheHierarchyArray(int i, CTCacheHierarchy cTCacheHierarchy);

    void setCacheHierarchyArray(CTCacheHierarchy[] cTCacheHierarchyArr);

    void setCount(long j);

    int sizeOfCacheHierarchyArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}

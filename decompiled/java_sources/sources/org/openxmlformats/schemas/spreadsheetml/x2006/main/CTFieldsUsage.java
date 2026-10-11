package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTFieldsUsage extends XmlObject {
    public static final DocumentFactory<CTFieldsUsage> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFieldsUsage> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfieldsusagee547type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTFieldUsage addNewFieldUsage();

    long getCount();

    CTFieldUsage getFieldUsageArray(int i);

    CTFieldUsage[] getFieldUsageArray();

    List<CTFieldUsage> getFieldUsageList();

    CTFieldUsage insertNewFieldUsage(int i);

    boolean isSetCount();

    void removeFieldUsage(int i);

    void setCount(long j);

    void setFieldUsageArray(int i, CTFieldUsage cTFieldUsage);

    void setFieldUsageArray(CTFieldUsage[] cTFieldUsageArr);

    int sizeOfFieldUsageArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}

package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTPivotAreaReferences extends XmlObject {
    public static final DocumentFactory<CTPivotAreaReferences> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPivotAreaReferences> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpivotareareferencesaef6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPivotAreaReference addNewReference();

    long getCount();

    CTPivotAreaReference getReferenceArray(int i);

    CTPivotAreaReference[] getReferenceArray();

    List<CTPivotAreaReference> getReferenceList();

    CTPivotAreaReference insertNewReference(int i);

    boolean isSetCount();

    void removeReference(int i);

    void setCount(long j);

    void setReferenceArray(int i, CTPivotAreaReference cTPivotAreaReference);

    void setReferenceArray(CTPivotAreaReference[] cTPivotAreaReferenceArr);

    int sizeOfReferenceArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}

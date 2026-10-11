package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTQueryTableDeletedFields extends XmlObject {
    public static final DocumentFactory<CTQueryTableDeletedFields> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTQueryTableDeletedFields> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctquerytabledeletedfieldse74btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDeletedField addNewDeletedField();

    long getCount();

    CTDeletedField getDeletedFieldArray(int i);

    CTDeletedField[] getDeletedFieldArray();

    List<CTDeletedField> getDeletedFieldList();

    CTDeletedField insertNewDeletedField(int i);

    boolean isSetCount();

    void removeDeletedField(int i);

    void setCount(long j);

    void setDeletedFieldArray(int i, CTDeletedField cTDeletedField);

    void setDeletedFieldArray(CTDeletedField[] cTDeletedFieldArr);

    int sizeOfDeletedFieldArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}

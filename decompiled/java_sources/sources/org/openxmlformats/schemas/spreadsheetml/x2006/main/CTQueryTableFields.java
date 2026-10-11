package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTQueryTableFields extends XmlObject {
    public static final DocumentFactory<CTQueryTableFields> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTQueryTableFields> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctquerytablefields2348type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTQueryTableField addNewQueryTableField();

    long getCount();

    CTQueryTableField getQueryTableFieldArray(int i);

    CTQueryTableField[] getQueryTableFieldArray();

    List<CTQueryTableField> getQueryTableFieldList();

    CTQueryTableField insertNewQueryTableField(int i);

    boolean isSetCount();

    void removeQueryTableField(int i);

    void setCount(long j);

    void setQueryTableFieldArray(int i, CTQueryTableField cTQueryTableField);

    void setQueryTableFieldArray(CTQueryTableField[] cTQueryTableFieldArr);

    int sizeOfQueryTableFieldArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}

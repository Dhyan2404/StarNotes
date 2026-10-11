package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTDdeValues extends XmlObject {
    public static final DocumentFactory<CTDdeValues> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDdeValues> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctddevalues8e46type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDdeValue addNewValue();

    long getCols();

    long getRows();

    CTDdeValue getValueArray(int i);

    CTDdeValue[] getValueArray();

    List<CTDdeValue> getValueList();

    CTDdeValue insertNewValue(int i);

    boolean isSetCols();

    boolean isSetRows();

    void removeValue(int i);

    void setCols(long j);

    void setRows(long j);

    void setValueArray(int i, CTDdeValue cTDdeValue);

    void setValueArray(CTDdeValue[] cTDdeValueArr);

    int sizeOfValueArray();

    void unsetCols();

    void unsetRows();

    XmlUnsignedInt xgetCols();

    XmlUnsignedInt xgetRows();

    void xsetCols(XmlUnsignedInt xmlUnsignedInt);

    void xsetRows(XmlUnsignedInt xmlUnsignedInt);
}

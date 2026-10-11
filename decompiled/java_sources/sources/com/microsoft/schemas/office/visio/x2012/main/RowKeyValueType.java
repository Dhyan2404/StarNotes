package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface RowKeyValueType extends XmlObject {
    public static final DocumentFactory<RowKeyValueType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RowKeyValueType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "rowkeyvaluetype269ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getRowID();

    String getValue();

    void setRowID(long j);

    void setValue(String str);

    XmlUnsignedInt xgetRowID();

    XmlString xgetValue();

    void xsetRowID(XmlUnsignedInt xmlUnsignedInt);

    void xsetValue(XmlString xmlString);
}

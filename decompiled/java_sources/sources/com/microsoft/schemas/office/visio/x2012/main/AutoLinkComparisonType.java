package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface AutoLinkComparisonType extends XmlObject {
    public static final DocumentFactory<AutoLinkComparisonType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AutoLinkComparisonType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "autolinkcomparisontype8447type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getColumnName();

    long getContextType();

    String getContextTypeLabel();

    boolean isSetContextTypeLabel();

    void setColumnName(String str);

    void setContextType(long j);

    void setContextTypeLabel(String str);

    void unsetContextTypeLabel();

    XmlString xgetColumnName();

    XmlUnsignedInt xgetContextType();

    XmlString xgetContextTypeLabel();

    void xsetColumnName(XmlString xmlString);

    void xsetContextType(XmlUnsignedInt xmlUnsignedInt);

    void xsetContextTypeLabel(XmlString xmlString);
}

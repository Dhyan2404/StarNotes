package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DocumentSheetType extends SheetType {
    public static final DocumentFactory<DocumentSheetType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DocumentSheetType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "documentsheettype5ca7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getIsCustomName();

    boolean getIsCustomNameU();

    String getName();

    String getNameU();

    String getUniqueID();

    boolean isSetIsCustomName();

    boolean isSetIsCustomNameU();

    boolean isSetName();

    boolean isSetNameU();

    boolean isSetUniqueID();

    void setIsCustomName(boolean z);

    void setIsCustomNameU(boolean z);

    void setName(String str);

    void setNameU(String str);

    void setUniqueID(String str);

    void unsetIsCustomName();

    void unsetIsCustomNameU();

    void unsetName();

    void unsetNameU();

    void unsetUniqueID();

    XmlBoolean xgetIsCustomName();

    XmlBoolean xgetIsCustomNameU();

    XmlString xgetName();

    XmlString xgetNameU();

    XmlString xgetUniqueID();

    void xsetIsCustomName(XmlBoolean xmlBoolean);

    void xsetIsCustomNameU(XmlBoolean xmlBoolean);

    void xsetName(XmlString xmlString);

    void xsetNameU(XmlString xmlString);

    void xsetUniqueID(XmlString xmlString);
}

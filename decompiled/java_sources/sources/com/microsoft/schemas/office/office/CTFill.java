package com.microsoft.schemas.office.office;

import com.microsoft.schemas.office.office.STFillType;
import com.microsoft.schemas.vml.STExt;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTFill extends XmlObject {
    public static final DocumentFactory<CTFill> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFill> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfill63e6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STExt.Enum getExt();

    STFillType.Enum getType();

    boolean isSetExt();

    boolean isSetType();

    void setExt(STExt.Enum r1);

    void setType(STFillType.Enum r1);

    void unsetExt();

    void unsetType();

    STExt xgetExt();

    STFillType xgetType();

    void xsetExt(STExt sTExt);

    void xsetType(STFillType sTFillType);
}

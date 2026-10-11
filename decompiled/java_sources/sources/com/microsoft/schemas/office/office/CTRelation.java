package com.microsoft.schemas.office.office;

import com.microsoft.schemas.vml.STExt;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTRelation extends XmlObject {
    public static final DocumentFactory<CTRelation> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRelation> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrelation60dftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STExt.Enum getExt();

    String getIdcntr();

    String getIddest();

    String getIdsrc();

    boolean isSetExt();

    boolean isSetIdcntr();

    boolean isSetIddest();

    boolean isSetIdsrc();

    void setExt(STExt.Enum r1);

    void setIdcntr(String str);

    void setIddest(String str);

    void setIdsrc(String str);

    void unsetExt();

    void unsetIdcntr();

    void unsetIddest();

    void unsetIdsrc();

    STExt xgetExt();

    XmlString xgetIdcntr();

    XmlString xgetIddest();

    XmlString xgetIdsrc();

    void xsetExt(STExt sTExt);

    void xsetIdcntr(XmlString xmlString);

    void xsetIddest(XmlString xmlString);

    void xsetIdsrc(XmlString xmlString);
}

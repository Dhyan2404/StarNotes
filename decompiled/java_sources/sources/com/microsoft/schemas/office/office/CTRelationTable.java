package com.microsoft.schemas.office.office;

import com.microsoft.schemas.vml.STExt;
import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTRelationTable extends XmlObject {
    public static final DocumentFactory<CTRelationTable> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRelationTable> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrelationtable9cebtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRelation addNewRel();

    STExt.Enum getExt();

    CTRelation getRelArray(int i);

    CTRelation[] getRelArray();

    List<CTRelation> getRelList();

    CTRelation insertNewRel(int i);

    boolean isSetExt();

    void removeRel(int i);

    void setExt(STExt.Enum r1);

    void setRelArray(int i, CTRelation cTRelation);

    void setRelArray(CTRelation[] cTRelationArr);

    int sizeOfRelArray();

    void unsetExt();

    STExt xgetExt();

    void xsetExt(STExt sTExt);
}

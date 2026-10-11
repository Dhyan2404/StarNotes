package com.microsoft.schemas.office.office;

import com.microsoft.schemas.vml.STExt;
import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTRules extends XmlObject {
    public static final DocumentFactory<CTRules> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRules> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrulesf8b0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTR addNewR();

    STExt.Enum getExt();

    CTR getRArray(int i);

    CTR[] getRArray();

    List<CTR> getRList();

    CTR insertNewR(int i);

    boolean isSetExt();

    void removeR(int i);

    void setExt(STExt.Enum r1);

    void setRArray(int i, CTR ctr);

    void setRArray(CTR[] ctrArr);

    int sizeOfRArray();

    void unsetExt();

    STExt xgetExt();

    void xsetExt(STExt sTExt);
}

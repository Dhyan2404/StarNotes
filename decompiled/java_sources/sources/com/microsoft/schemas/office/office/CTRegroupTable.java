package com.microsoft.schemas.office.office;

import com.microsoft.schemas.vml.STExt;
import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTRegroupTable extends XmlObject {
    public static final DocumentFactory<CTRegroupTable> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRegroupTable> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctregrouptable0565type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEntry addNewEntry();

    CTEntry getEntryArray(int i);

    CTEntry[] getEntryArray();

    List<CTEntry> getEntryList();

    STExt.Enum getExt();

    CTEntry insertNewEntry(int i);

    boolean isSetExt();

    void removeEntry(int i);

    void setEntryArray(int i, CTEntry cTEntry);

    void setEntryArray(CTEntry[] cTEntryArr);

    void setExt(STExt.Enum r1);

    int sizeOfEntryArray();

    void unsetExt();

    STExt xgetExt();

    void xsetExt(STExt sTExt);
}

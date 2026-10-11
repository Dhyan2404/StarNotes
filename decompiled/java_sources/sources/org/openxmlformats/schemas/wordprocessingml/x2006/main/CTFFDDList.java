package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTFFDDList extends XmlObject {
    public static final DocumentFactory<CTFFDDList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFFDDList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctffddlist3acatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDecimalNumber addNewDefault();

    CTString addNewListEntry();

    CTDecimalNumber addNewResult();

    CTDecimalNumber getDefault();

    CTString getListEntryArray(int i);

    CTString[] getListEntryArray();

    List<CTString> getListEntryList();

    CTDecimalNumber getResult();

    CTString insertNewListEntry(int i);

    boolean isSetDefault();

    boolean isSetResult();

    void removeListEntry(int i);

    void setDefault(CTDecimalNumber cTDecimalNumber);

    void setListEntryArray(int i, CTString cTString);

    void setListEntryArray(CTString[] cTStringArr);

    void setResult(CTDecimalNumber cTDecimalNumber);

    int sizeOfListEntryArray();

    void unsetDefault();

    void unsetResult();
}

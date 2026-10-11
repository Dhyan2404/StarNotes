package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTSheetIdMap extends XmlObject {
    public static final DocumentFactory<CTSheetIdMap> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSheetIdMap> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsheetidmape72btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSheetId addNewSheetId();

    long getCount();

    CTSheetId getSheetIdArray(int i);

    CTSheetId[] getSheetIdArray();

    List<CTSheetId> getSheetIdList();

    CTSheetId insertNewSheetId(int i);

    boolean isSetCount();

    void removeSheetId(int i);

    void setCount(long j);

    void setSheetIdArray(int i, CTSheetId cTSheetId);

    void setSheetIdArray(CTSheetId[] cTSheetIdArr);

    int sizeOfSheetIdArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}

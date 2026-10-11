package org.openxmlformats.schemas.drawingml.x2006.chart;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes14.dex */
public interface CTPivotSource extends XmlObject {
    public static final DocumentFactory<CTPivotSource> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPivotSource> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpivotsourcecb49type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTUnsignedInt addNewFmtId();

    CTExtensionList getExtLstArray(int i);

    CTExtensionList[] getExtLstArray();

    List<CTExtensionList> getExtLstList();

    CTUnsignedInt getFmtId();

    String getName();

    CTExtensionList insertNewExtLst(int i);

    void removeExtLst(int i);

    void setExtLstArray(int i, CTExtensionList cTExtensionList);

    void setExtLstArray(CTExtensionList[] cTExtensionListArr);

    void setFmtId(CTUnsignedInt cTUnsignedInt);

    void setName(String str);

    int sizeOfExtLstArray();

    STXstring xgetName();

    void xsetName(STXstring sTXstring);
}

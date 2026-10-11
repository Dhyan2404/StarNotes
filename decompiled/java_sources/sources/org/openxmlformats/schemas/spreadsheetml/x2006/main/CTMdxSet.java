package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STMdxSetOrder;

/* loaded from: classes15.dex */
public interface CTMdxSet extends XmlObject {
    public static final DocumentFactory<CTMdxSet> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMdxSet> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmdxset03aatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMetadataStringIndex addNewN();

    long getC();

    CTMetadataStringIndex getNArray(int i);

    CTMetadataStringIndex[] getNArray();

    List<CTMetadataStringIndex> getNList();

    long getNs();

    STMdxSetOrder.Enum getO();

    CTMetadataStringIndex insertNewN(int i);

    boolean isSetC();

    boolean isSetO();

    void removeN(int i);

    void setC(long j);

    void setNArray(int i, CTMetadataStringIndex cTMetadataStringIndex);

    void setNArray(CTMetadataStringIndex[] cTMetadataStringIndexArr);

    void setNs(long j);

    void setO(STMdxSetOrder.Enum r1);

    int sizeOfNArray();

    void unsetC();

    void unsetO();

    XmlUnsignedInt xgetC();

    XmlUnsignedInt xgetNs();

    STMdxSetOrder xgetO();

    void xsetC(XmlUnsignedInt xmlUnsignedInt);

    void xsetNs(XmlUnsignedInt xmlUnsignedInt);

    void xsetO(STMdxSetOrder sTMdxSetOrder);
}

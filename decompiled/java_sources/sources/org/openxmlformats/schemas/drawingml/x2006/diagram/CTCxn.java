package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STCxnType;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTCxn extends XmlObject {
    public static final DocumentFactory<CTCxn> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCxn> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcxn0662type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    Object getDestId();

    long getDestOrd();

    CTOfficeArtExtensionList getExtLst();

    Object getModelId();

    Object getParTransId();

    String getPresId();

    Object getSibTransId();

    Object getSrcId();

    long getSrcOrd();

    STCxnType.Enum getType();

    boolean isSetExtLst();

    boolean isSetParTransId();

    boolean isSetPresId();

    boolean isSetSibTransId();

    boolean isSetType();

    void setDestId(Object obj);

    void setDestOrd(long j);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setModelId(Object obj);

    void setParTransId(Object obj);

    void setPresId(String str);

    void setSibTransId(Object obj);

    void setSrcId(Object obj);

    void setSrcOrd(long j);

    void setType(STCxnType.Enum r1);

    void unsetExtLst();

    void unsetParTransId();

    void unsetPresId();

    void unsetSibTransId();

    void unsetType();

    STModelId xgetDestId();

    XmlUnsignedInt xgetDestOrd();

    STModelId xgetModelId();

    STModelId xgetParTransId();

    XmlString xgetPresId();

    STModelId xgetSibTransId();

    STModelId xgetSrcId();

    XmlUnsignedInt xgetSrcOrd();

    STCxnType xgetType();

    void xsetDestId(STModelId sTModelId);

    void xsetDestOrd(XmlUnsignedInt xmlUnsignedInt);

    void xsetModelId(STModelId sTModelId);

    void xsetParTransId(STModelId sTModelId);

    void xsetPresId(XmlString xmlString);

    void xsetSibTransId(STModelId sTModelId);

    void xsetSrcId(STModelId sTModelId);

    void xsetSrcOrd(XmlUnsignedInt xmlUnsignedInt);

    void xsetType(STCxnType sTCxnType);
}

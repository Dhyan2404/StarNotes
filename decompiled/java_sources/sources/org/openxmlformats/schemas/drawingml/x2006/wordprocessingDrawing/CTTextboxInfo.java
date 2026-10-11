package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTTextboxInfo extends XmlObject {
    public static final DocumentFactory<CTTextboxInfo> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTextboxInfo> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttextboxinfo7dfdtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTTxbxContent addNewTxbxContent();

    CTOfficeArtExtensionList getExtLst();

    int getId();

    CTTxbxContent getTxbxContent();

    boolean isSetExtLst();

    boolean isSetId();

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setId(int i);

    void setTxbxContent(CTTxbxContent cTTxbxContent);

    void unsetExtLst();

    void unsetId();

    XmlUnsignedShort xgetId();

    void xsetId(XmlUnsignedShort xmlUnsignedShort);
}

package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTLinkedTextboxInformation extends XmlObject {
    public static final DocumentFactory<CTLinkedTextboxInformation> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLinkedTextboxInformation> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlinkedtextboxinformation0e78type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTOfficeArtExtensionList getExtLst();

    int getId();

    int getSeq();

    boolean isSetExtLst();

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setId(int i);

    void setSeq(int i);

    void unsetExtLst();

    XmlUnsignedShort xgetId();

    XmlUnsignedShort xgetSeq();

    void xsetId(XmlUnsignedShort xmlUnsignedShort);

    void xsetSeq(XmlUnsignedShort xmlUnsignedShort);
}

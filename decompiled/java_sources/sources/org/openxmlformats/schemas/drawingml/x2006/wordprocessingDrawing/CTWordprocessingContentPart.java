package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;
import org.openxmlformats.schemas.drawingml.x2006.main.STBlackWhiteMode;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public interface CTWordprocessingContentPart extends XmlObject {
    public static final DocumentFactory<CTWordprocessingContentPart> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWordprocessingContentPart> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwordprocessingcontentpart78fatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTWordprocessingContentPartNonVisual addNewNvContentPartPr();

    CTTransform2D addNewXfrm();

    STBlackWhiteMode.Enum getBwMode();

    CTOfficeArtExtensionList getExtLst();

    String getId();

    CTWordprocessingContentPartNonVisual getNvContentPartPr();

    CTTransform2D getXfrm();

    boolean isSetBwMode();

    boolean isSetExtLst();

    boolean isSetNvContentPartPr();

    boolean isSetXfrm();

    void setBwMode(STBlackWhiteMode.Enum r1);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setId(String str);

    void setNvContentPartPr(CTWordprocessingContentPartNonVisual cTWordprocessingContentPartNonVisual);

    void setXfrm(CTTransform2D cTTransform2D);

    void unsetBwMode();

    void unsetExtLst();

    void unsetNvContentPartPr();

    void unsetXfrm();

    STBlackWhiteMode xgetBwMode();

    STRelationshipId xgetId();

    void xsetBwMode(STBlackWhiteMode sTBlackWhiteMode);

    void xsetId(STRelationshipId sTRelationshipId);
}

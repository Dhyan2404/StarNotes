package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STPositiveCoordinate32;
import org.openxmlformats.schemas.drawingml.x2006.main.STShapeID;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public interface CTControl extends XmlObject {
    public static final DocumentFactory<CTControl> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTControl> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcontrolbf52type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTPicture addNewPic();

    CTExtensionList getExtLst();

    String getId();

    int getImgH();

    int getImgW();

    String getName();

    CTPicture getPic();

    boolean getShowAsIcon();

    String getSpid();

    boolean isSetExtLst();

    boolean isSetId();

    boolean isSetImgH();

    boolean isSetImgW();

    boolean isSetName();

    boolean isSetPic();

    boolean isSetShowAsIcon();

    boolean isSetSpid();

    void setExtLst(CTExtensionList cTExtensionList);

    void setId(String str);

    void setImgH(int i);

    void setImgW(int i);

    void setName(String str);

    void setPic(CTPicture cTPicture);

    void setShowAsIcon(boolean z);

    void setSpid(String str);

    void unsetExtLst();

    void unsetId();

    void unsetImgH();

    void unsetImgW();

    void unsetName();

    void unsetPic();

    void unsetShowAsIcon();

    void unsetSpid();

    STRelationshipId xgetId();

    STPositiveCoordinate32 xgetImgH();

    STPositiveCoordinate32 xgetImgW();

    XmlString xgetName();

    XmlBoolean xgetShowAsIcon();

    STShapeID xgetSpid();

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetImgH(STPositiveCoordinate32 sTPositiveCoordinate32);

    void xsetImgW(STPositiveCoordinate32 sTPositiveCoordinate32);

    void xsetName(XmlString xmlString);

    void xsetShowAsIcon(XmlBoolean xmlBoolean);

    void xsetSpid(STShapeID sTShapeID);
}

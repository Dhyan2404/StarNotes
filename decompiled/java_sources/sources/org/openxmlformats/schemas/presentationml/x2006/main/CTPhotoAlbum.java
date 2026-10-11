package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STPhotoAlbumFrameShape;
import org.openxmlformats.schemas.presentationml.x2006.main.STPhotoAlbumLayout;

/* loaded from: classes14.dex */
public interface CTPhotoAlbum extends XmlObject {
    public static final DocumentFactory<CTPhotoAlbum> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPhotoAlbum> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctphotoalbum4368type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    boolean getBw();

    CTExtensionList getExtLst();

    STPhotoAlbumFrameShape.Enum getFrame();

    STPhotoAlbumLayout.Enum getLayout();

    boolean getShowCaptions();

    boolean isSetBw();

    boolean isSetExtLst();

    boolean isSetFrame();

    boolean isSetLayout();

    boolean isSetShowCaptions();

    void setBw(boolean z);

    void setExtLst(CTExtensionList cTExtensionList);

    void setFrame(STPhotoAlbumFrameShape.Enum r1);

    void setLayout(STPhotoAlbumLayout.Enum r1);

    void setShowCaptions(boolean z);

    void unsetBw();

    void unsetExtLst();

    void unsetFrame();

    void unsetLayout();

    void unsetShowCaptions();

    XmlBoolean xgetBw();

    STPhotoAlbumFrameShape xgetFrame();

    STPhotoAlbumLayout xgetLayout();

    XmlBoolean xgetShowCaptions();

    void xsetBw(XmlBoolean xmlBoolean);

    void xsetFrame(STPhotoAlbumFrameShape sTPhotoAlbumFrameShape);

    void xsetLayout(STPhotoAlbumLayout sTPhotoAlbumLayout);

    void xsetShowCaptions(XmlBoolean xmlBoolean);
}

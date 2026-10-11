package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STWebColorType;
import org.openxmlformats.schemas.presentationml.x2006.main.STWebScreenSize;

/* loaded from: classes14.dex */
public interface CTWebProperties extends XmlObject {
    public static final DocumentFactory<CTWebProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWebProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwebproperties5308type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    boolean getAllowPng();

    STWebColorType.Enum getClr();

    String getEncoding();

    CTExtensionList getExtLst();

    STWebScreenSize.Enum getImgSz();

    boolean getOrganizeInFolders();

    boolean getRelyOnVml();

    boolean getResizeGraphics();

    boolean getShowAnimation();

    boolean getUseLongFilenames();

    boolean isSetAllowPng();

    boolean isSetClr();

    boolean isSetEncoding();

    boolean isSetExtLst();

    boolean isSetImgSz();

    boolean isSetOrganizeInFolders();

    boolean isSetRelyOnVml();

    boolean isSetResizeGraphics();

    boolean isSetShowAnimation();

    boolean isSetUseLongFilenames();

    void setAllowPng(boolean z);

    void setClr(STWebColorType.Enum r1);

    void setEncoding(String str);

    void setExtLst(CTExtensionList cTExtensionList);

    void setImgSz(STWebScreenSize.Enum r1);

    void setOrganizeInFolders(boolean z);

    void setRelyOnVml(boolean z);

    void setResizeGraphics(boolean z);

    void setShowAnimation(boolean z);

    void setUseLongFilenames(boolean z);

    void unsetAllowPng();

    void unsetClr();

    void unsetEncoding();

    void unsetExtLst();

    void unsetImgSz();

    void unsetOrganizeInFolders();

    void unsetRelyOnVml();

    void unsetResizeGraphics();

    void unsetShowAnimation();

    void unsetUseLongFilenames();

    XmlBoolean xgetAllowPng();

    STWebColorType xgetClr();

    STWebEncoding xgetEncoding();

    STWebScreenSize xgetImgSz();

    XmlBoolean xgetOrganizeInFolders();

    XmlBoolean xgetRelyOnVml();

    XmlBoolean xgetResizeGraphics();

    XmlBoolean xgetShowAnimation();

    XmlBoolean xgetUseLongFilenames();

    void xsetAllowPng(XmlBoolean xmlBoolean);

    void xsetClr(STWebColorType sTWebColorType);

    void xsetEncoding(STWebEncoding sTWebEncoding);

    void xsetImgSz(STWebScreenSize sTWebScreenSize);

    void xsetOrganizeInFolders(XmlBoolean xmlBoolean);

    void xsetRelyOnVml(XmlBoolean xmlBoolean);

    void xsetResizeGraphics(XmlBoolean xmlBoolean);

    void xsetShowAnimation(XmlBoolean xmlBoolean);

    void xsetUseLongFilenames(XmlBoolean xmlBoolean);
}

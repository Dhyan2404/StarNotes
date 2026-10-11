package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTColorTransformHeader extends XmlObject {
    public static final DocumentFactory<CTColorTransformHeader> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTColorTransformHeader> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcolortransformheadercbbbtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCTCategories addNewCatLst();

    CTCTDescription addNewDesc();

    CTOfficeArtExtensionList addNewExtLst();

    CTCTName addNewTitle();

    CTCTCategories getCatLst();

    CTCTDescription getDescArray(int i);

    CTCTDescription[] getDescArray();

    List<CTCTDescription> getDescList();

    CTOfficeArtExtensionList getExtLst();

    String getMinVer();

    int getResId();

    CTCTName getTitleArray(int i);

    CTCTName[] getTitleArray();

    List<CTCTName> getTitleList();

    String getUniqueId();

    CTCTDescription insertNewDesc(int i);

    CTCTName insertNewTitle(int i);

    boolean isSetCatLst();

    boolean isSetExtLst();

    boolean isSetMinVer();

    boolean isSetResId();

    void removeDesc(int i);

    void removeTitle(int i);

    void setCatLst(CTCTCategories cTCTCategories);

    void setDescArray(int i, CTCTDescription cTCTDescription);

    void setDescArray(CTCTDescription[] cTCTDescriptionArr);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setMinVer(String str);

    void setResId(int i);

    void setTitleArray(int i, CTCTName cTCTName);

    void setTitleArray(CTCTName[] cTCTNameArr);

    void setUniqueId(String str);

    int sizeOfDescArray();

    int sizeOfTitleArray();

    void unsetCatLst();

    void unsetExtLst();

    void unsetMinVer();

    void unsetResId();

    XmlString xgetMinVer();

    XmlInt xgetResId();

    XmlString xgetUniqueId();

    void xsetMinVer(XmlString xmlString);

    void xsetResId(XmlInt xmlInt);

    void xsetUniqueId(XmlString xmlString);
}

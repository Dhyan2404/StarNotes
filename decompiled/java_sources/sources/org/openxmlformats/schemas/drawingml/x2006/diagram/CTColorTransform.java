package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTColorTransform extends XmlObject {
    public static final DocumentFactory<CTColorTransform> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTColorTransform> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcolortransform8f48type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCTCategories addNewCatLst();

    CTCTDescription addNewDesc();

    CTOfficeArtExtensionList addNewExtLst();

    CTCTStyleLabel addNewStyleLbl();

    CTCTName addNewTitle();

    CTCTCategories getCatLst();

    CTCTDescription getDescArray(int i);

    CTCTDescription[] getDescArray();

    List<CTCTDescription> getDescList();

    CTOfficeArtExtensionList getExtLst();

    String getMinVer();

    CTCTStyleLabel getStyleLblArray(int i);

    CTCTStyleLabel[] getStyleLblArray();

    List<CTCTStyleLabel> getStyleLblList();

    CTCTName getTitleArray(int i);

    CTCTName[] getTitleArray();

    List<CTCTName> getTitleList();

    String getUniqueId();

    CTCTDescription insertNewDesc(int i);

    CTCTStyleLabel insertNewStyleLbl(int i);

    CTCTName insertNewTitle(int i);

    boolean isSetCatLst();

    boolean isSetExtLst();

    boolean isSetMinVer();

    boolean isSetUniqueId();

    void removeDesc(int i);

    void removeStyleLbl(int i);

    void removeTitle(int i);

    void setCatLst(CTCTCategories cTCTCategories);

    void setDescArray(int i, CTCTDescription cTCTDescription);

    void setDescArray(CTCTDescription[] cTCTDescriptionArr);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setMinVer(String str);

    void setStyleLblArray(int i, CTCTStyleLabel cTCTStyleLabel);

    void setStyleLblArray(CTCTStyleLabel[] cTCTStyleLabelArr);

    void setTitleArray(int i, CTCTName cTCTName);

    void setTitleArray(CTCTName[] cTCTNameArr);

    void setUniqueId(String str);

    int sizeOfDescArray();

    int sizeOfStyleLblArray();

    int sizeOfTitleArray();

    void unsetCatLst();

    void unsetExtLst();

    void unsetMinVer();

    void unsetUniqueId();

    XmlString xgetMinVer();

    XmlString xgetUniqueId();

    void xsetMinVer(XmlString xmlString);

    void xsetUniqueId(XmlString xmlString);
}

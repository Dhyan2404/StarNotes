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
public interface CTDiagramDefinitionHeader extends XmlObject {
    public static final DocumentFactory<CTDiagramDefinitionHeader> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDiagramDefinitionHeader> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdiagramdefinitionheader3508type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCategories addNewCatLst();

    CTDescription addNewDesc();

    CTOfficeArtExtensionList addNewExtLst();

    CTName addNewTitle();

    CTCategories getCatLst();

    String getDefStyle();

    CTDescription getDescArray(int i);

    CTDescription[] getDescArray();

    List<CTDescription> getDescList();

    CTOfficeArtExtensionList getExtLst();

    String getMinVer();

    int getResId();

    CTName getTitleArray(int i);

    CTName[] getTitleArray();

    List<CTName> getTitleList();

    String getUniqueId();

    CTDescription insertNewDesc(int i);

    CTName insertNewTitle(int i);

    boolean isSetCatLst();

    boolean isSetDefStyle();

    boolean isSetExtLst();

    boolean isSetMinVer();

    boolean isSetResId();

    void removeDesc(int i);

    void removeTitle(int i);

    void setCatLst(CTCategories cTCategories);

    void setDefStyle(String str);

    void setDescArray(int i, CTDescription cTDescription);

    void setDescArray(CTDescription[] cTDescriptionArr);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setMinVer(String str);

    void setResId(int i);

    void setTitleArray(int i, CTName cTName);

    void setTitleArray(CTName[] cTNameArr);

    void setUniqueId(String str);

    int sizeOfDescArray();

    int sizeOfTitleArray();

    void unsetCatLst();

    void unsetDefStyle();

    void unsetExtLst();

    void unsetMinVer();

    void unsetResId();

    XmlString xgetDefStyle();

    XmlString xgetMinVer();

    XmlInt xgetResId();

    XmlString xgetUniqueId();

    void xsetDefStyle(XmlString xmlString);

    void xsetMinVer(XmlString xmlString);

    void xsetResId(XmlInt xmlInt);

    void xsetUniqueId(XmlString xmlString);
}

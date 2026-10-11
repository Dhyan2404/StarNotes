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
public interface CTStyleDefinitionHeader extends XmlObject {
    public static final DocumentFactory<CTStyleDefinitionHeader> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTStyleDefinitionHeader> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctstyledefinitionheader172atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSDCategories addNewCatLst();

    CTSDDescription addNewDesc();

    CTOfficeArtExtensionList addNewExtLst();

    CTSDName addNewTitle();

    CTSDCategories getCatLst();

    CTSDDescription getDescArray(int i);

    CTSDDescription[] getDescArray();

    List<CTSDDescription> getDescList();

    CTOfficeArtExtensionList getExtLst();

    String getMinVer();

    int getResId();

    CTSDName getTitleArray(int i);

    CTSDName[] getTitleArray();

    List<CTSDName> getTitleList();

    String getUniqueId();

    CTSDDescription insertNewDesc(int i);

    CTSDName insertNewTitle(int i);

    boolean isSetCatLst();

    boolean isSetExtLst();

    boolean isSetMinVer();

    boolean isSetResId();

    void removeDesc(int i);

    void removeTitle(int i);

    void setCatLst(CTSDCategories cTSDCategories);

    void setDescArray(int i, CTSDDescription cTSDDescription);

    void setDescArray(CTSDDescription[] cTSDDescriptionArr);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setMinVer(String str);

    void setResId(int i);

    void setTitleArray(int i, CTSDName cTSDName);

    void setTitleArray(CTSDName[] cTSDNameArr);

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

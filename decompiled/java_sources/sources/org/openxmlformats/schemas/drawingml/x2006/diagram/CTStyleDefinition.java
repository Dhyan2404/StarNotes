package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D;

/* loaded from: classes14.dex */
public interface CTStyleDefinition extends XmlObject {
    public static final DocumentFactory<CTStyleDefinition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTStyleDefinition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctstyledefinitiond9f7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSDCategories addNewCatLst();

    CTSDDescription addNewDesc();

    CTOfficeArtExtensionList addNewExtLst();

    CTScene3D addNewScene3D();

    CTStyleLabel addNewStyleLbl();

    CTSDName addNewTitle();

    CTSDCategories getCatLst();

    CTSDDescription getDescArray(int i);

    CTSDDescription[] getDescArray();

    List<CTSDDescription> getDescList();

    CTOfficeArtExtensionList getExtLst();

    String getMinVer();

    CTScene3D getScene3D();

    CTStyleLabel getStyleLblArray(int i);

    CTStyleLabel[] getStyleLblArray();

    List<CTStyleLabel> getStyleLblList();

    CTSDName getTitleArray(int i);

    CTSDName[] getTitleArray();

    List<CTSDName> getTitleList();

    String getUniqueId();

    CTSDDescription insertNewDesc(int i);

    CTStyleLabel insertNewStyleLbl(int i);

    CTSDName insertNewTitle(int i);

    boolean isSetCatLst();

    boolean isSetExtLst();

    boolean isSetMinVer();

    boolean isSetScene3D();

    boolean isSetUniqueId();

    void removeDesc(int i);

    void removeStyleLbl(int i);

    void removeTitle(int i);

    void setCatLst(CTSDCategories cTSDCategories);

    void setDescArray(int i, CTSDDescription cTSDDescription);

    void setDescArray(CTSDDescription[] cTSDDescriptionArr);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setMinVer(String str);

    void setScene3D(CTScene3D cTScene3D);

    void setStyleLblArray(int i, CTStyleLabel cTStyleLabel);

    void setStyleLblArray(CTStyleLabel[] cTStyleLabelArr);

    void setTitleArray(int i, CTSDName cTSDName);

    void setTitleArray(CTSDName[] cTSDNameArr);

    void setUniqueId(String str);

    int sizeOfDescArray();

    int sizeOfStyleLblArray();

    int sizeOfTitleArray();

    void unsetCatLst();

    void unsetExtLst();

    void unsetMinVer();

    void unsetScene3D();

    void unsetUniqueId();

    XmlString xgetMinVer();

    XmlString xgetUniqueId();

    void xsetMinVer(XmlString xmlString);

    void xsetUniqueId(XmlString xmlString);
}

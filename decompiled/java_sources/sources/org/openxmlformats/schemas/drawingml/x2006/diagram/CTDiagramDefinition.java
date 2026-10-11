package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTDiagramDefinition extends XmlObject {
    public static final DocumentFactory<CTDiagramDefinition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDiagramDefinition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdiagramdefinition3655type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCategories addNewCatLst();

    CTSampleData addNewClrData();

    CTDescription addNewDesc();

    CTOfficeArtExtensionList addNewExtLst();

    CTLayoutNode addNewLayoutNode();

    CTSampleData addNewSampData();

    CTSampleData addNewStyleData();

    CTName addNewTitle();

    CTCategories getCatLst();

    CTSampleData getClrData();

    String getDefStyle();

    CTDescription getDescArray(int i);

    CTDescription[] getDescArray();

    List<CTDescription> getDescList();

    CTOfficeArtExtensionList getExtLst();

    CTLayoutNode getLayoutNode();

    String getMinVer();

    CTSampleData getSampData();

    CTSampleData getStyleData();

    CTName getTitleArray(int i);

    CTName[] getTitleArray();

    List<CTName> getTitleList();

    String getUniqueId();

    CTDescription insertNewDesc(int i);

    CTName insertNewTitle(int i);

    boolean isSetCatLst();

    boolean isSetClrData();

    boolean isSetDefStyle();

    boolean isSetExtLst();

    boolean isSetMinVer();

    boolean isSetSampData();

    boolean isSetStyleData();

    boolean isSetUniqueId();

    void removeDesc(int i);

    void removeTitle(int i);

    void setCatLst(CTCategories cTCategories);

    void setClrData(CTSampleData cTSampleData);

    void setDefStyle(String str);

    void setDescArray(int i, CTDescription cTDescription);

    void setDescArray(CTDescription[] cTDescriptionArr);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setLayoutNode(CTLayoutNode cTLayoutNode);

    void setMinVer(String str);

    void setSampData(CTSampleData cTSampleData);

    void setStyleData(CTSampleData cTSampleData);

    void setTitleArray(int i, CTName cTName);

    void setTitleArray(CTName[] cTNameArr);

    void setUniqueId(String str);

    int sizeOfDescArray();

    int sizeOfTitleArray();

    void unsetCatLst();

    void unsetClrData();

    void unsetDefStyle();

    void unsetExtLst();

    void unsetMinVer();

    void unsetSampData();

    void unsetStyleData();

    void unsetUniqueId();

    XmlString xgetDefStyle();

    XmlString xgetMinVer();

    XmlString xgetUniqueId();

    void xsetDefStyle(XmlString xmlString);

    void xsetMinVer(XmlString xmlString);

    void xsetUniqueId(XmlString xmlString);
}

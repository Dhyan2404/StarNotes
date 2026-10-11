package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTMetadataType extends XmlObject {
    public static final DocumentFactory<CTMetadataType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMetadataType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmetadatatype6612type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getAdjust();

    boolean getAssign();

    boolean getCellMeta();

    boolean getClearAll();

    boolean getClearComments();

    boolean getClearContents();

    boolean getClearFormats();

    boolean getCoerce();

    boolean getCopy();

    boolean getDelete();

    boolean getEdit();

    boolean getGhostCol();

    boolean getGhostRow();

    boolean getMerge();

    long getMinSupportedVersion();

    String getName();

    boolean getPasteAll();

    boolean getPasteBorders();

    boolean getPasteColWidths();

    boolean getPasteComments();

    boolean getPasteDataValidation();

    boolean getPasteFormats();

    boolean getPasteFormulas();

    boolean getPasteNumberFormats();

    boolean getPasteValues();

    boolean getRowColShift();

    boolean getSplitAll();

    boolean getSplitFirst();

    boolean isSetAdjust();

    boolean isSetAssign();

    boolean isSetCellMeta();

    boolean isSetClearAll();

    boolean isSetClearComments();

    boolean isSetClearContents();

    boolean isSetClearFormats();

    boolean isSetCoerce();

    boolean isSetCopy();

    boolean isSetDelete();

    boolean isSetEdit();

    boolean isSetGhostCol();

    boolean isSetGhostRow();

    boolean isSetMerge();

    boolean isSetPasteAll();

    boolean isSetPasteBorders();

    boolean isSetPasteColWidths();

    boolean isSetPasteComments();

    boolean isSetPasteDataValidation();

    boolean isSetPasteFormats();

    boolean isSetPasteFormulas();

    boolean isSetPasteNumberFormats();

    boolean isSetPasteValues();

    boolean isSetRowColShift();

    boolean isSetSplitAll();

    boolean isSetSplitFirst();

    void setAdjust(boolean z);

    void setAssign(boolean z);

    void setCellMeta(boolean z);

    void setClearAll(boolean z);

    void setClearComments(boolean z);

    void setClearContents(boolean z);

    void setClearFormats(boolean z);

    void setCoerce(boolean z);

    void setCopy(boolean z);

    void setDelete(boolean z);

    void setEdit(boolean z);

    void setGhostCol(boolean z);

    void setGhostRow(boolean z);

    void setMerge(boolean z);

    void setMinSupportedVersion(long j);

    void setName(String str);

    void setPasteAll(boolean z);

    void setPasteBorders(boolean z);

    void setPasteColWidths(boolean z);

    void setPasteComments(boolean z);

    void setPasteDataValidation(boolean z);

    void setPasteFormats(boolean z);

    void setPasteFormulas(boolean z);

    void setPasteNumberFormats(boolean z);

    void setPasteValues(boolean z);

    void setRowColShift(boolean z);

    void setSplitAll(boolean z);

    void setSplitFirst(boolean z);

    void unsetAdjust();

    void unsetAssign();

    void unsetCellMeta();

    void unsetClearAll();

    void unsetClearComments();

    void unsetClearContents();

    void unsetClearFormats();

    void unsetCoerce();

    void unsetCopy();

    void unsetDelete();

    void unsetEdit();

    void unsetGhostCol();

    void unsetGhostRow();

    void unsetMerge();

    void unsetPasteAll();

    void unsetPasteBorders();

    void unsetPasteColWidths();

    void unsetPasteComments();

    void unsetPasteDataValidation();

    void unsetPasteFormats();

    void unsetPasteFormulas();

    void unsetPasteNumberFormats();

    void unsetPasteValues();

    void unsetRowColShift();

    void unsetSplitAll();

    void unsetSplitFirst();

    XmlBoolean xgetAdjust();

    XmlBoolean xgetAssign();

    XmlBoolean xgetCellMeta();

    XmlBoolean xgetClearAll();

    XmlBoolean xgetClearComments();

    XmlBoolean xgetClearContents();

    XmlBoolean xgetClearFormats();

    XmlBoolean xgetCoerce();

    XmlBoolean xgetCopy();

    XmlBoolean xgetDelete();

    XmlBoolean xgetEdit();

    XmlBoolean xgetGhostCol();

    XmlBoolean xgetGhostRow();

    XmlBoolean xgetMerge();

    XmlUnsignedInt xgetMinSupportedVersion();

    STXstring xgetName();

    XmlBoolean xgetPasteAll();

    XmlBoolean xgetPasteBorders();

    XmlBoolean xgetPasteColWidths();

    XmlBoolean xgetPasteComments();

    XmlBoolean xgetPasteDataValidation();

    XmlBoolean xgetPasteFormats();

    XmlBoolean xgetPasteFormulas();

    XmlBoolean xgetPasteNumberFormats();

    XmlBoolean xgetPasteValues();

    XmlBoolean xgetRowColShift();

    XmlBoolean xgetSplitAll();

    XmlBoolean xgetSplitFirst();

    void xsetAdjust(XmlBoolean xmlBoolean);

    void xsetAssign(XmlBoolean xmlBoolean);

    void xsetCellMeta(XmlBoolean xmlBoolean);

    void xsetClearAll(XmlBoolean xmlBoolean);

    void xsetClearComments(XmlBoolean xmlBoolean);

    void xsetClearContents(XmlBoolean xmlBoolean);

    void xsetClearFormats(XmlBoolean xmlBoolean);

    void xsetCoerce(XmlBoolean xmlBoolean);

    void xsetCopy(XmlBoolean xmlBoolean);

    void xsetDelete(XmlBoolean xmlBoolean);

    void xsetEdit(XmlBoolean xmlBoolean);

    void xsetGhostCol(XmlBoolean xmlBoolean);

    void xsetGhostRow(XmlBoolean xmlBoolean);

    void xsetMerge(XmlBoolean xmlBoolean);

    void xsetMinSupportedVersion(XmlUnsignedInt xmlUnsignedInt);

    void xsetName(STXstring sTXstring);

    void xsetPasteAll(XmlBoolean xmlBoolean);

    void xsetPasteBorders(XmlBoolean xmlBoolean);

    void xsetPasteColWidths(XmlBoolean xmlBoolean);

    void xsetPasteComments(XmlBoolean xmlBoolean);

    void xsetPasteDataValidation(XmlBoolean xmlBoolean);

    void xsetPasteFormats(XmlBoolean xmlBoolean);

    void xsetPasteFormulas(XmlBoolean xmlBoolean);

    void xsetPasteNumberFormats(XmlBoolean xmlBoolean);

    void xsetPasteValues(XmlBoolean xmlBoolean);

    void xsetRowColShift(XmlBoolean xmlBoolean);

    void xsetSplitAll(XmlBoolean xmlBoolean);

    void xsetSplitFirst(XmlBoolean xmlBoolean);
}

package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STGrowShrinkType;

/* loaded from: classes15.dex */
public interface CTQueryTable extends XmlObject {
    public static final DocumentFactory<CTQueryTable> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTQueryTable> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctquerytableddeftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTQueryTableRefresh addNewQueryTableRefresh();

    boolean getAdjustColumnWidth();

    boolean getApplyAlignmentFormats();

    boolean getApplyBorderFormats();

    boolean getApplyFontFormats();

    boolean getApplyNumberFormats();

    boolean getApplyPatternFormats();

    boolean getApplyWidthHeightFormats();

    long getAutoFormatId();

    boolean getBackgroundRefresh();

    long getConnectionId();

    boolean getDisableEdit();

    boolean getDisableRefresh();

    CTExtensionList getExtLst();

    boolean getFillFormulas();

    boolean getFirstBackgroundRefresh();

    STGrowShrinkType.Enum getGrowShrinkType();

    boolean getHeaders();

    boolean getIntermediate();

    String getName();

    boolean getPreserveFormatting();

    CTQueryTableRefresh getQueryTableRefresh();

    boolean getRefreshOnLoad();

    boolean getRemoveDataOnSave();

    boolean getRowNumbers();

    boolean isSetAdjustColumnWidth();

    boolean isSetApplyAlignmentFormats();

    boolean isSetApplyBorderFormats();

    boolean isSetApplyFontFormats();

    boolean isSetApplyNumberFormats();

    boolean isSetApplyPatternFormats();

    boolean isSetApplyWidthHeightFormats();

    boolean isSetAutoFormatId();

    boolean isSetBackgroundRefresh();

    boolean isSetDisableEdit();

    boolean isSetDisableRefresh();

    boolean isSetExtLst();

    boolean isSetFillFormulas();

    boolean isSetFirstBackgroundRefresh();

    boolean isSetGrowShrinkType();

    boolean isSetHeaders();

    boolean isSetIntermediate();

    boolean isSetPreserveFormatting();

    boolean isSetQueryTableRefresh();

    boolean isSetRefreshOnLoad();

    boolean isSetRemoveDataOnSave();

    boolean isSetRowNumbers();

    void setAdjustColumnWidth(boolean z);

    void setApplyAlignmentFormats(boolean z);

    void setApplyBorderFormats(boolean z);

    void setApplyFontFormats(boolean z);

    void setApplyNumberFormats(boolean z);

    void setApplyPatternFormats(boolean z);

    void setApplyWidthHeightFormats(boolean z);

    void setAutoFormatId(long j);

    void setBackgroundRefresh(boolean z);

    void setConnectionId(long j);

    void setDisableEdit(boolean z);

    void setDisableRefresh(boolean z);

    void setExtLst(CTExtensionList cTExtensionList);

    void setFillFormulas(boolean z);

    void setFirstBackgroundRefresh(boolean z);

    void setGrowShrinkType(STGrowShrinkType.Enum r1);

    void setHeaders(boolean z);

    void setIntermediate(boolean z);

    void setName(String str);

    void setPreserveFormatting(boolean z);

    void setQueryTableRefresh(CTQueryTableRefresh cTQueryTableRefresh);

    void setRefreshOnLoad(boolean z);

    void setRemoveDataOnSave(boolean z);

    void setRowNumbers(boolean z);

    void unsetAdjustColumnWidth();

    void unsetApplyAlignmentFormats();

    void unsetApplyBorderFormats();

    void unsetApplyFontFormats();

    void unsetApplyNumberFormats();

    void unsetApplyPatternFormats();

    void unsetApplyWidthHeightFormats();

    void unsetAutoFormatId();

    void unsetBackgroundRefresh();

    void unsetDisableEdit();

    void unsetDisableRefresh();

    void unsetExtLst();

    void unsetFillFormulas();

    void unsetFirstBackgroundRefresh();

    void unsetGrowShrinkType();

    void unsetHeaders();

    void unsetIntermediate();

    void unsetPreserveFormatting();

    void unsetQueryTableRefresh();

    void unsetRefreshOnLoad();

    void unsetRemoveDataOnSave();

    void unsetRowNumbers();

    XmlBoolean xgetAdjustColumnWidth();

    XmlBoolean xgetApplyAlignmentFormats();

    XmlBoolean xgetApplyBorderFormats();

    XmlBoolean xgetApplyFontFormats();

    XmlBoolean xgetApplyNumberFormats();

    XmlBoolean xgetApplyPatternFormats();

    XmlBoolean xgetApplyWidthHeightFormats();

    XmlUnsignedInt xgetAutoFormatId();

    XmlBoolean xgetBackgroundRefresh();

    XmlUnsignedInt xgetConnectionId();

    XmlBoolean xgetDisableEdit();

    XmlBoolean xgetDisableRefresh();

    XmlBoolean xgetFillFormulas();

    XmlBoolean xgetFirstBackgroundRefresh();

    STGrowShrinkType xgetGrowShrinkType();

    XmlBoolean xgetHeaders();

    XmlBoolean xgetIntermediate();

    STXstring xgetName();

    XmlBoolean xgetPreserveFormatting();

    XmlBoolean xgetRefreshOnLoad();

    XmlBoolean xgetRemoveDataOnSave();

    XmlBoolean xgetRowNumbers();

    void xsetAdjustColumnWidth(XmlBoolean xmlBoolean);

    void xsetApplyAlignmentFormats(XmlBoolean xmlBoolean);

    void xsetApplyBorderFormats(XmlBoolean xmlBoolean);

    void xsetApplyFontFormats(XmlBoolean xmlBoolean);

    void xsetApplyNumberFormats(XmlBoolean xmlBoolean);

    void xsetApplyPatternFormats(XmlBoolean xmlBoolean);

    void xsetApplyWidthHeightFormats(XmlBoolean xmlBoolean);

    void xsetAutoFormatId(XmlUnsignedInt xmlUnsignedInt);

    void xsetBackgroundRefresh(XmlBoolean xmlBoolean);

    void xsetConnectionId(XmlUnsignedInt xmlUnsignedInt);

    void xsetDisableEdit(XmlBoolean xmlBoolean);

    void xsetDisableRefresh(XmlBoolean xmlBoolean);

    void xsetFillFormulas(XmlBoolean xmlBoolean);

    void xsetFirstBackgroundRefresh(XmlBoolean xmlBoolean);

    void xsetGrowShrinkType(STGrowShrinkType sTGrowShrinkType);

    void xsetHeaders(XmlBoolean xmlBoolean);

    void xsetIntermediate(XmlBoolean xmlBoolean);

    void xsetName(STXstring sTXstring);

    void xsetPreserveFormatting(XmlBoolean xmlBoolean);

    void xsetRefreshOnLoad(XmlBoolean xmlBoolean);

    void xsetRemoveDataOnSave(XmlBoolean xmlBoolean);

    void xsetRowNumbers(XmlBoolean xmlBoolean);
}

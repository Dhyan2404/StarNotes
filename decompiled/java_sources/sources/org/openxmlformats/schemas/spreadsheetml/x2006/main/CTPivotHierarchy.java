package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTPivotHierarchy extends XmlObject {
    public static final DocumentFactory<CTPivotHierarchy> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPivotHierarchy> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpivothierarchy215ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTMembers addNewMembers();

    CTMemberProperties addNewMps();

    String getCaption();

    boolean getDragOff();

    boolean getDragToCol();

    boolean getDragToData();

    boolean getDragToPage();

    boolean getDragToRow();

    CTExtensionList getExtLst();

    boolean getIncludeNewItemsInFilter();

    CTMembers getMembersArray(int i);

    CTMembers[] getMembersArray();

    List<CTMembers> getMembersList();

    CTMemberProperties getMps();

    boolean getMultipleItemSelectionAllowed();

    boolean getOutline();

    boolean getShowInFieldList();

    boolean getSubtotalTop();

    CTMembers insertNewMembers(int i);

    boolean isSetCaption();

    boolean isSetDragOff();

    boolean isSetDragToCol();

    boolean isSetDragToData();

    boolean isSetDragToPage();

    boolean isSetDragToRow();

    boolean isSetExtLst();

    boolean isSetIncludeNewItemsInFilter();

    boolean isSetMps();

    boolean isSetMultipleItemSelectionAllowed();

    boolean isSetOutline();

    boolean isSetShowInFieldList();

    boolean isSetSubtotalTop();

    void removeMembers(int i);

    void setCaption(String str);

    void setDragOff(boolean z);

    void setDragToCol(boolean z);

    void setDragToData(boolean z);

    void setDragToPage(boolean z);

    void setDragToRow(boolean z);

    void setExtLst(CTExtensionList cTExtensionList);

    void setIncludeNewItemsInFilter(boolean z);

    void setMembersArray(int i, CTMembers cTMembers);

    void setMembersArray(CTMembers[] cTMembersArr);

    void setMps(CTMemberProperties cTMemberProperties);

    void setMultipleItemSelectionAllowed(boolean z);

    void setOutline(boolean z);

    void setShowInFieldList(boolean z);

    void setSubtotalTop(boolean z);

    int sizeOfMembersArray();

    void unsetCaption();

    void unsetDragOff();

    void unsetDragToCol();

    void unsetDragToData();

    void unsetDragToPage();

    void unsetDragToRow();

    void unsetExtLst();

    void unsetIncludeNewItemsInFilter();

    void unsetMps();

    void unsetMultipleItemSelectionAllowed();

    void unsetOutline();

    void unsetShowInFieldList();

    void unsetSubtotalTop();

    STXstring xgetCaption();

    XmlBoolean xgetDragOff();

    XmlBoolean xgetDragToCol();

    XmlBoolean xgetDragToData();

    XmlBoolean xgetDragToPage();

    XmlBoolean xgetDragToRow();

    XmlBoolean xgetIncludeNewItemsInFilter();

    XmlBoolean xgetMultipleItemSelectionAllowed();

    XmlBoolean xgetOutline();

    XmlBoolean xgetShowInFieldList();

    XmlBoolean xgetSubtotalTop();

    void xsetCaption(STXstring sTXstring);

    void xsetDragOff(XmlBoolean xmlBoolean);

    void xsetDragToCol(XmlBoolean xmlBoolean);

    void xsetDragToData(XmlBoolean xmlBoolean);

    void xsetDragToPage(XmlBoolean xmlBoolean);

    void xsetDragToRow(XmlBoolean xmlBoolean);

    void xsetIncludeNewItemsInFilter(XmlBoolean xmlBoolean);

    void xsetMultipleItemSelectionAllowed(XmlBoolean xmlBoolean);

    void xsetOutline(XmlBoolean xmlBoolean);

    void xsetShowInFieldList(XmlBoolean xmlBoolean);

    void xsetSubtotalTop(XmlBoolean xmlBoolean);
}

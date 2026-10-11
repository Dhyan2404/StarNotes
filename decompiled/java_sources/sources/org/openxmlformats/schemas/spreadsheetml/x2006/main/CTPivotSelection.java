package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STAxis;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STPane;

/* loaded from: classes15.dex */
public interface CTPivotSelection extends XmlObject {
    public static final DocumentFactory<CTPivotSelection> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPivotSelection> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpivotselectiond5f3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPivotArea addNewPivotArea();

    long getActiveCol();

    long getActiveRow();

    STAxis.Enum getAxis();

    long getClick();

    long getCount();

    boolean getData();

    long getDimension();

    boolean getExtendable();

    String getId();

    boolean getLabel();

    long getMax();

    long getMin();

    STPane.Enum getPane();

    CTPivotArea getPivotArea();

    long getPreviousCol();

    long getPreviousRow();

    boolean getShowHeader();

    long getStart();

    boolean isSetActiveCol();

    boolean isSetActiveRow();

    boolean isSetAxis();

    boolean isSetClick();

    boolean isSetCount();

    boolean isSetData();

    boolean isSetDimension();

    boolean isSetExtendable();

    boolean isSetId();

    boolean isSetLabel();

    boolean isSetMax();

    boolean isSetMin();

    boolean isSetPane();

    boolean isSetPreviousCol();

    boolean isSetPreviousRow();

    boolean isSetShowHeader();

    boolean isSetStart();

    void setActiveCol(long j);

    void setActiveRow(long j);

    void setAxis(STAxis.Enum r1);

    void setClick(long j);

    void setCount(long j);

    void setData(boolean z);

    void setDimension(long j);

    void setExtendable(boolean z);

    void setId(String str);

    void setLabel(boolean z);

    void setMax(long j);

    void setMin(long j);

    void setPane(STPane.Enum r1);

    void setPivotArea(CTPivotArea cTPivotArea);

    void setPreviousCol(long j);

    void setPreviousRow(long j);

    void setShowHeader(boolean z);

    void setStart(long j);

    void unsetActiveCol();

    void unsetActiveRow();

    void unsetAxis();

    void unsetClick();

    void unsetCount();

    void unsetData();

    void unsetDimension();

    void unsetExtendable();

    void unsetId();

    void unsetLabel();

    void unsetMax();

    void unsetMin();

    void unsetPane();

    void unsetPreviousCol();

    void unsetPreviousRow();

    void unsetShowHeader();

    void unsetStart();

    XmlUnsignedInt xgetActiveCol();

    XmlUnsignedInt xgetActiveRow();

    STAxis xgetAxis();

    XmlUnsignedInt xgetClick();

    XmlUnsignedInt xgetCount();

    XmlBoolean xgetData();

    XmlUnsignedInt xgetDimension();

    XmlBoolean xgetExtendable();

    STRelationshipId xgetId();

    XmlBoolean xgetLabel();

    XmlUnsignedInt xgetMax();

    XmlUnsignedInt xgetMin();

    STPane xgetPane();

    XmlUnsignedInt xgetPreviousCol();

    XmlUnsignedInt xgetPreviousRow();

    XmlBoolean xgetShowHeader();

    XmlUnsignedInt xgetStart();

    void xsetActiveCol(XmlUnsignedInt xmlUnsignedInt);

    void xsetActiveRow(XmlUnsignedInt xmlUnsignedInt);

    void xsetAxis(STAxis sTAxis);

    void xsetClick(XmlUnsignedInt xmlUnsignedInt);

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);

    void xsetData(XmlBoolean xmlBoolean);

    void xsetDimension(XmlUnsignedInt xmlUnsignedInt);

    void xsetExtendable(XmlBoolean xmlBoolean);

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetLabel(XmlBoolean xmlBoolean);

    void xsetMax(XmlUnsignedInt xmlUnsignedInt);

    void xsetMin(XmlUnsignedInt xmlUnsignedInt);

    void xsetPane(STPane sTPane);

    void xsetPreviousCol(XmlUnsignedInt xmlUnsignedInt);

    void xsetPreviousRow(XmlUnsignedInt xmlUnsignedInt);

    void xsetShowHeader(XmlBoolean xmlBoolean);

    void xsetStart(XmlUnsignedInt xmlUnsignedInt);
}

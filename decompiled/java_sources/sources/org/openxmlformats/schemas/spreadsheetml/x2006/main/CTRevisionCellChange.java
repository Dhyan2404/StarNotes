package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTRevisionCellChange extends XmlObject {
    public static final DocumentFactory<CTRevisionCellChange> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionCellChange> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisioncellchange4836type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTCell addNewNc();

    CTDxf addNewNdxf();

    CTCell addNewOc();

    CTDxf addNewOdxf();

    boolean getDxf();

    boolean getEndOfListFormulaUpdate();

    CTExtensionList getExtLst();

    CTCell getNc();

    CTDxf getNdxf();

    long getNumFmtId();

    CTCell getOc();

    CTDxf getOdxf();

    boolean getOdxf2();

    boolean getOldPh();

    boolean getOldQuotePrefix();

    boolean getPh();

    boolean getQuotePrefix();

    long getRId();

    boolean getRa();

    boolean getS();

    long getSId();

    boolean getUa();

    boolean getXfDxf();

    boolean isSetDxf();

    boolean isSetEndOfListFormulaUpdate();

    boolean isSetExtLst();

    boolean isSetNdxf();

    boolean isSetNumFmtId();

    boolean isSetOc();

    boolean isSetOdxf();

    boolean isSetOdxf2();

    boolean isSetOldPh();

    boolean isSetOldQuotePrefix();

    boolean isSetPh();

    boolean isSetQuotePrefix();

    boolean isSetRa();

    boolean isSetS();

    boolean isSetUa();

    boolean isSetXfDxf();

    void setDxf(boolean z);

    void setEndOfListFormulaUpdate(boolean z);

    void setExtLst(CTExtensionList cTExtensionList);

    void setNc(CTCell cTCell);

    void setNdxf(CTDxf cTDxf);

    void setNumFmtId(long j);

    void setOc(CTCell cTCell);

    void setOdxf(CTDxf cTDxf);

    void setOdxf2(boolean z);

    void setOldPh(boolean z);

    void setOldQuotePrefix(boolean z);

    void setPh(boolean z);

    void setQuotePrefix(boolean z);

    void setRId(long j);

    void setRa(boolean z);

    void setS(boolean z);

    void setSId(long j);

    void setUa(boolean z);

    void setXfDxf(boolean z);

    void unsetDxf();

    void unsetEndOfListFormulaUpdate();

    void unsetExtLst();

    void unsetNdxf();

    void unsetNumFmtId();

    void unsetOc();

    void unsetOdxf();

    void unsetOdxf2();

    void unsetOldPh();

    void unsetOldQuotePrefix();

    void unsetPh();

    void unsetQuotePrefix();

    void unsetRa();

    void unsetS();

    void unsetUa();

    void unsetXfDxf();

    XmlBoolean xgetDxf();

    XmlBoolean xgetEndOfListFormulaUpdate();

    STNumFmtId xgetNumFmtId();

    XmlBoolean xgetOdxf2();

    XmlBoolean xgetOldPh();

    XmlBoolean xgetOldQuotePrefix();

    XmlBoolean xgetPh();

    XmlBoolean xgetQuotePrefix();

    XmlUnsignedInt xgetRId();

    XmlBoolean xgetRa();

    XmlBoolean xgetS();

    XmlUnsignedInt xgetSId();

    XmlBoolean xgetUa();

    XmlBoolean xgetXfDxf();

    void xsetDxf(XmlBoolean xmlBoolean);

    void xsetEndOfListFormulaUpdate(XmlBoolean xmlBoolean);

    void xsetNumFmtId(STNumFmtId sTNumFmtId);

    void xsetOdxf2(XmlBoolean xmlBoolean);

    void xsetOldPh(XmlBoolean xmlBoolean);

    void xsetOldQuotePrefix(XmlBoolean xmlBoolean);

    void xsetPh(XmlBoolean xmlBoolean);

    void xsetQuotePrefix(XmlBoolean xmlBoolean);

    void xsetRId(XmlUnsignedInt xmlUnsignedInt);

    void xsetRa(XmlBoolean xmlBoolean);

    void xsetS(XmlBoolean xmlBoolean);

    void xsetSId(XmlUnsignedInt xmlUnsignedInt);

    void xsetUa(XmlBoolean xmlBoolean);

    void xsetXfDxf(XmlBoolean xmlBoolean);
}

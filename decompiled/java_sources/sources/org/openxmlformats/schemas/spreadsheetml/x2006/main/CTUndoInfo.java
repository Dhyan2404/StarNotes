package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STFormulaExpression;

/* loaded from: classes15.dex */
public interface CTUndoInfo extends XmlObject {
    public static final DocumentFactory<CTUndoInfo> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTUndoInfo> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctundoinfo5bfbtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getArray();

    boolean getCs();

    String getDn();

    String getDr();

    STFormulaExpression.Enum getExp();

    long getIndex();

    boolean getNf();

    String getR();

    boolean getRef3D();

    long getSId();

    boolean getV();

    boolean isSetArray();

    boolean isSetCs();

    boolean isSetDn();

    boolean isSetNf();

    boolean isSetR();

    boolean isSetRef3D();

    boolean isSetSId();

    boolean isSetV();

    void setArray(boolean z);

    void setCs(boolean z);

    void setDn(String str);

    void setDr(String str);

    void setExp(STFormulaExpression.Enum r1);

    void setIndex(long j);

    void setNf(boolean z);

    void setR(String str);

    void setRef3D(boolean z);

    void setSId(long j);

    void setV(boolean z);

    void unsetArray();

    void unsetCs();

    void unsetDn();

    void unsetNf();

    void unsetR();

    void unsetRef3D();

    void unsetSId();

    void unsetV();

    XmlBoolean xgetArray();

    XmlBoolean xgetCs();

    STXstring xgetDn();

    STRefA xgetDr();

    STFormulaExpression xgetExp();

    XmlUnsignedInt xgetIndex();

    XmlBoolean xgetNf();

    STCellRef xgetR();

    XmlBoolean xgetRef3D();

    XmlUnsignedInt xgetSId();

    XmlBoolean xgetV();

    void xsetArray(XmlBoolean xmlBoolean);

    void xsetCs(XmlBoolean xmlBoolean);

    void xsetDn(STXstring sTXstring);

    void xsetDr(STRefA sTRefA);

    void xsetExp(STFormulaExpression sTFormulaExpression);

    void xsetIndex(XmlUnsignedInt xmlUnsignedInt);

    void xsetNf(XmlBoolean xmlBoolean);

    void xsetR(STCellRef sTCellRef);

    void xsetRef3D(XmlBoolean xmlBoolean);

    void xsetSId(XmlUnsignedInt xmlUnsignedInt);

    void xsetV(XmlBoolean xmlBoolean);
}

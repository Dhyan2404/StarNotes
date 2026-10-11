package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTInputCells extends XmlObject {
    public static final DocumentFactory<CTInputCells> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTInputCells> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctinputcells3470type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getDeleted();

    long getNumFmtId();

    String getR();

    boolean getUndone();

    String getVal();

    boolean isSetDeleted();

    boolean isSetNumFmtId();

    boolean isSetUndone();

    void setDeleted(boolean z);

    void setNumFmtId(long j);

    void setR(String str);

    void setUndone(boolean z);

    void setVal(String str);

    void unsetDeleted();

    void unsetNumFmtId();

    void unsetUndone();

    XmlBoolean xgetDeleted();

    STNumFmtId xgetNumFmtId();

    STCellRef xgetR();

    XmlBoolean xgetUndone();

    STXstring xgetVal();

    void xsetDeleted(XmlBoolean xmlBoolean);

    void xsetNumFmtId(STNumFmtId sTNumFmtId);

    void xsetR(STCellRef sTCellRef);

    void xsetUndone(XmlBoolean xmlBoolean);

    void xsetVal(STXstring sTXstring);
}

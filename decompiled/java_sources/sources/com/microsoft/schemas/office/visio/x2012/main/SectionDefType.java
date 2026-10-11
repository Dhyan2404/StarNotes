package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface SectionDefType extends XmlObject {
    public static final DocumentFactory<SectionDefType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SectionDefType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "sectiondeftype4f59type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CellDefType addNewCellDef();

    RowDefType addNewRowDef();

    CellDefType getCellDefArray(int i);

    CellDefType[] getCellDefArray();

    List<CellDefType> getCellDefList();

    String getN();

    RowDefType getRowDef();

    short getS();

    String getT();

    CellDefType insertNewCellDef(int i);

    boolean isSetRowDef();

    boolean isSetS();

    boolean isSetT();

    void removeCellDef(int i);

    void setCellDefArray(int i, CellDefType cellDefType);

    void setCellDefArray(CellDefType[] cellDefTypeArr);

    void setN(String str);

    void setRowDef(RowDefType rowDefType);

    void setS(short s);

    void setT(String str);

    int sizeOfCellDefArray();

    void unsetRowDef();

    void unsetS();

    void unsetT();

    XmlString xgetN();

    XmlUnsignedByte xgetS();

    XmlString xgetT();

    void xsetN(XmlString xmlString);

    void xsetS(XmlUnsignedByte xmlUnsignedByte);

    void xsetT(XmlString xmlString);
}

package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTRevisionMove extends XmlObject {
    public static final DocumentFactory<CTRevisionMove> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionMove> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisionmoveef95type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRevisionCellChange addNewRcc();

    CTRevisionFormatting addNewRfmt();

    CTUndoInfo addNewUndo();

    String getDestination();

    long getRId();

    boolean getRa();

    CTRevisionCellChange getRccArray(int i);

    CTRevisionCellChange[] getRccArray();

    List<CTRevisionCellChange> getRccList();

    CTRevisionFormatting getRfmtArray(int i);

    CTRevisionFormatting[] getRfmtArray();

    List<CTRevisionFormatting> getRfmtList();

    long getSheetId();

    String getSource();

    long getSourceSheetId();

    boolean getUa();

    CTUndoInfo getUndoArray(int i);

    CTUndoInfo[] getUndoArray();

    List<CTUndoInfo> getUndoList();

    CTRevisionCellChange insertNewRcc(int i);

    CTRevisionFormatting insertNewRfmt(int i);

    CTUndoInfo insertNewUndo(int i);

    boolean isSetRa();

    boolean isSetSourceSheetId();

    boolean isSetUa();

    void removeRcc(int i);

    void removeRfmt(int i);

    void removeUndo(int i);

    void setDestination(String str);

    void setRId(long j);

    void setRa(boolean z);

    void setRccArray(int i, CTRevisionCellChange cTRevisionCellChange);

    void setRccArray(CTRevisionCellChange[] cTRevisionCellChangeArr);

    void setRfmtArray(int i, CTRevisionFormatting cTRevisionFormatting);

    void setRfmtArray(CTRevisionFormatting[] cTRevisionFormattingArr);

    void setSheetId(long j);

    void setSource(String str);

    void setSourceSheetId(long j);

    void setUa(boolean z);

    void setUndoArray(int i, CTUndoInfo cTUndoInfo);

    void setUndoArray(CTUndoInfo[] cTUndoInfoArr);

    int sizeOfRccArray();

    int sizeOfRfmtArray();

    int sizeOfUndoArray();

    void unsetRa();

    void unsetSourceSheetId();

    void unsetUa();

    STRef xgetDestination();

    XmlUnsignedInt xgetRId();

    XmlBoolean xgetRa();

    XmlUnsignedInt xgetSheetId();

    STRef xgetSource();

    XmlUnsignedInt xgetSourceSheetId();

    XmlBoolean xgetUa();

    void xsetDestination(STRef sTRef);

    void xsetRId(XmlUnsignedInt xmlUnsignedInt);

    void xsetRa(XmlBoolean xmlBoolean);

    void xsetSheetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetSource(STRef sTRef);

    void xsetSourceSheetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetUa(XmlBoolean xmlBoolean);
}

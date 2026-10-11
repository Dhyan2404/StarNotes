package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STRwColActionType;

/* loaded from: classes15.dex */
public interface CTRevisionRowColumn extends XmlObject {
    public static final DocumentFactory<CTRevisionRowColumn> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionRowColumn> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisionrowcolumn5494type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRevisionCellChange addNewRcc();

    CTRevisionFormatting addNewRfmt();

    CTUndoInfo addNewUndo();

    STRwColActionType.Enum getAction();

    boolean getEdge();

    boolean getEol();

    long getRId();

    boolean getRa();

    CTRevisionCellChange getRccArray(int i);

    CTRevisionCellChange[] getRccArray();

    List<CTRevisionCellChange> getRccList();

    String getRef();

    CTRevisionFormatting getRfmtArray(int i);

    CTRevisionFormatting[] getRfmtArray();

    List<CTRevisionFormatting> getRfmtList();

    long getSId();

    boolean getUa();

    CTUndoInfo getUndoArray(int i);

    CTUndoInfo[] getUndoArray();

    List<CTUndoInfo> getUndoList();

    CTRevisionCellChange insertNewRcc(int i);

    CTRevisionFormatting insertNewRfmt(int i);

    CTUndoInfo insertNewUndo(int i);

    boolean isSetEdge();

    boolean isSetEol();

    boolean isSetRa();

    boolean isSetUa();

    void removeRcc(int i);

    void removeRfmt(int i);

    void removeUndo(int i);

    void setAction(STRwColActionType.Enum r1);

    void setEdge(boolean z);

    void setEol(boolean z);

    void setRId(long j);

    void setRa(boolean z);

    void setRccArray(int i, CTRevisionCellChange cTRevisionCellChange);

    void setRccArray(CTRevisionCellChange[] cTRevisionCellChangeArr);

    void setRef(String str);

    void setRfmtArray(int i, CTRevisionFormatting cTRevisionFormatting);

    void setRfmtArray(CTRevisionFormatting[] cTRevisionFormattingArr);

    void setSId(long j);

    void setUa(boolean z);

    void setUndoArray(int i, CTUndoInfo cTUndoInfo);

    void setUndoArray(CTUndoInfo[] cTUndoInfoArr);

    int sizeOfRccArray();

    int sizeOfRfmtArray();

    int sizeOfUndoArray();

    void unsetEdge();

    void unsetEol();

    void unsetRa();

    void unsetUa();

    STRwColActionType xgetAction();

    XmlBoolean xgetEdge();

    XmlBoolean xgetEol();

    XmlUnsignedInt xgetRId();

    XmlBoolean xgetRa();

    STRef xgetRef();

    XmlUnsignedInt xgetSId();

    XmlBoolean xgetUa();

    void xsetAction(STRwColActionType sTRwColActionType);

    void xsetEdge(XmlBoolean xmlBoolean);

    void xsetEol(XmlBoolean xmlBoolean);

    void xsetRId(XmlUnsignedInt xmlUnsignedInt);

    void xsetRa(XmlBoolean xmlBoolean);

    void xsetRef(STRef sTRef);

    void xsetSId(XmlUnsignedInt xmlUnsignedInt);

    void xsetUa(XmlBoolean xmlBoolean);
}

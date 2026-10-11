package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTScenario extends XmlObject {
    public static final DocumentFactory<CTScenario> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTScenario> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctscenariofe59type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTInputCells addNewInputCells();

    String getComment();

    long getCount();

    boolean getHidden();

    CTInputCells getInputCellsArray(int i);

    CTInputCells[] getInputCellsArray();

    List<CTInputCells> getInputCellsList();

    boolean getLocked();

    String getName();

    String getUser();

    CTInputCells insertNewInputCells(int i);

    boolean isSetComment();

    boolean isSetCount();

    boolean isSetHidden();

    boolean isSetLocked();

    boolean isSetUser();

    void removeInputCells(int i);

    void setComment(String str);

    void setCount(long j);

    void setHidden(boolean z);

    void setInputCellsArray(int i, CTInputCells cTInputCells);

    void setInputCellsArray(CTInputCells[] cTInputCellsArr);

    void setLocked(boolean z);

    void setName(String str);

    void setUser(String str);

    int sizeOfInputCellsArray();

    void unsetComment();

    void unsetCount();

    void unsetHidden();

    void unsetLocked();

    void unsetUser();

    STXstring xgetComment();

    XmlUnsignedInt xgetCount();

    XmlBoolean xgetHidden();

    XmlBoolean xgetLocked();

    STXstring xgetName();

    STXstring xgetUser();

    void xsetComment(STXstring sTXstring);

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);

    void xsetHidden(XmlBoolean xmlBoolean);

    void xsetLocked(XmlBoolean xmlBoolean);

    void xsetName(STXstring sTXstring);

    void xsetUser(STXstring sTXstring);
}

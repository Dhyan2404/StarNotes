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
public interface CTBoolean extends XmlObject {
    public static final DocumentFactory<CTBoolean> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBoolean> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctboolean7c87type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTX addNewX();

    String getC();

    long getCp();

    boolean getF();

    boolean getU();

    boolean getV();

    CTX getXArray(int i);

    CTX[] getXArray();

    List<CTX> getXList();

    CTX insertNewX(int i);

    boolean isSetC();

    boolean isSetCp();

    boolean isSetF();

    boolean isSetU();

    void removeX(int i);

    void setC(String str);

    void setCp(long j);

    void setF(boolean z);

    void setU(boolean z);

    void setV(boolean z);

    void setXArray(int i, CTX ctx);

    void setXArray(CTX[] ctxArr);

    int sizeOfXArray();

    void unsetC();

    void unsetCp();

    void unsetF();

    void unsetU();

    STXstring xgetC();

    XmlUnsignedInt xgetCp();

    XmlBoolean xgetF();

    XmlBoolean xgetU();

    XmlBoolean xgetV();

    void xsetC(STXstring sTXstring);

    void xsetCp(XmlUnsignedInt xmlUnsignedInt);

    void xsetF(XmlBoolean xmlBoolean);

    void xsetU(XmlBoolean xmlBoolean);

    void xsetV(XmlBoolean xmlBoolean);
}

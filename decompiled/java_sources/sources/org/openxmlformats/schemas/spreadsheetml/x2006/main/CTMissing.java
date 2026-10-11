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
public interface CTMissing extends XmlObject {
    public static final DocumentFactory<CTMissing> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMissing> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmissinge845type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTuples addNewTpls();

    CTX addNewX();

    boolean getB();

    byte[] getBc();

    String getC();

    long getCp();

    boolean getF();

    byte[] getFc();

    boolean getI();

    long getIn();

    boolean getSt();

    CTTuples getTplsArray(int i);

    CTTuples[] getTplsArray();

    List<CTTuples> getTplsList();

    boolean getU();

    boolean getUn();

    CTX getXArray(int i);

    CTX[] getXArray();

    List<CTX> getXList();

    CTTuples insertNewTpls(int i);

    CTX insertNewX(int i);

    boolean isSetB();

    boolean isSetBc();

    boolean isSetC();

    boolean isSetCp();

    boolean isSetF();

    boolean isSetFc();

    boolean isSetI();

    boolean isSetIn();

    boolean isSetSt();

    boolean isSetU();

    boolean isSetUn();

    void removeTpls(int i);

    void removeX(int i);

    void setB(boolean z);

    void setBc(byte[] bArr);

    void setC(String str);

    void setCp(long j);

    void setF(boolean z);

    void setFc(byte[] bArr);

    void setI(boolean z);

    void setIn(long j);

    void setSt(boolean z);

    void setTplsArray(int i, CTTuples cTTuples);

    void setTplsArray(CTTuples[] cTTuplesArr);

    void setU(boolean z);

    void setUn(boolean z);

    void setXArray(int i, CTX ctx);

    void setXArray(CTX[] ctxArr);

    int sizeOfTplsArray();

    int sizeOfXArray();

    void unsetB();

    void unsetBc();

    void unsetC();

    void unsetCp();

    void unsetF();

    void unsetFc();

    void unsetI();

    void unsetIn();

    void unsetSt();

    void unsetU();

    void unsetUn();

    XmlBoolean xgetB();

    STUnsignedIntHex xgetBc();

    STXstring xgetC();

    XmlUnsignedInt xgetCp();

    XmlBoolean xgetF();

    STUnsignedIntHex xgetFc();

    XmlBoolean xgetI();

    XmlUnsignedInt xgetIn();

    XmlBoolean xgetSt();

    XmlBoolean xgetU();

    XmlBoolean xgetUn();

    void xsetB(XmlBoolean xmlBoolean);

    void xsetBc(STUnsignedIntHex sTUnsignedIntHex);

    void xsetC(STXstring sTXstring);

    void xsetCp(XmlUnsignedInt xmlUnsignedInt);

    void xsetF(XmlBoolean xmlBoolean);

    void xsetFc(STUnsignedIntHex sTUnsignedIntHex);

    void xsetI(XmlBoolean xmlBoolean);

    void xsetIn(XmlUnsignedInt xmlUnsignedInt);

    void xsetSt(XmlBoolean xmlBoolean);

    void xsetU(XmlBoolean xmlBoolean);

    void xsetUn(XmlBoolean xmlBoolean);
}

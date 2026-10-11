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
public interface CTMdxTuple extends XmlObject {
    public static final DocumentFactory<CTMdxTuple> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMdxTuple> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmdxtuplefa90type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMetadataStringIndex addNewN();

    boolean getB();

    byte[] getBc();

    long getC();

    String getCt();

    byte[] getFc();

    long getFi();

    boolean getI();

    CTMetadataStringIndex getNArray(int i);

    CTMetadataStringIndex[] getNArray();

    List<CTMetadataStringIndex> getNList();

    long getSi();

    boolean getSt();

    boolean getU();

    CTMetadataStringIndex insertNewN(int i);

    boolean isSetB();

    boolean isSetBc();

    boolean isSetC();

    boolean isSetCt();

    boolean isSetFc();

    boolean isSetFi();

    boolean isSetI();

    boolean isSetSi();

    boolean isSetSt();

    boolean isSetU();

    void removeN(int i);

    void setB(boolean z);

    void setBc(byte[] bArr);

    void setC(long j);

    void setCt(String str);

    void setFc(byte[] bArr);

    void setFi(long j);

    void setI(boolean z);

    void setNArray(int i, CTMetadataStringIndex cTMetadataStringIndex);

    void setNArray(CTMetadataStringIndex[] cTMetadataStringIndexArr);

    void setSi(long j);

    void setSt(boolean z);

    void setU(boolean z);

    int sizeOfNArray();

    void unsetB();

    void unsetBc();

    void unsetC();

    void unsetCt();

    void unsetFc();

    void unsetFi();

    void unsetI();

    void unsetSi();

    void unsetSt();

    void unsetU();

    XmlBoolean xgetB();

    STUnsignedIntHex xgetBc();

    XmlUnsignedInt xgetC();

    STXstring xgetCt();

    STUnsignedIntHex xgetFc();

    XmlUnsignedInt xgetFi();

    XmlBoolean xgetI();

    XmlUnsignedInt xgetSi();

    XmlBoolean xgetSt();

    XmlBoolean xgetU();

    void xsetB(XmlBoolean xmlBoolean);

    void xsetBc(STUnsignedIntHex sTUnsignedIntHex);

    void xsetC(XmlUnsignedInt xmlUnsignedInt);

    void xsetCt(STXstring sTXstring);

    void xsetFc(STUnsignedIntHex sTUnsignedIntHex);

    void xsetFi(XmlUnsignedInt xmlUnsignedInt);

    void xsetI(XmlBoolean xmlBoolean);

    void xsetSi(XmlUnsignedInt xmlUnsignedInt);

    void xsetSt(XmlBoolean xmlBoolean);

    void xsetU(XmlBoolean xmlBoolean);
}

package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STMdxFunctionType;

/* loaded from: classes15.dex */
public interface CTMdx extends XmlObject {
    public static final DocumentFactory<CTMdx> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMdx> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmdxca60type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMdxKPI addNewK();

    CTMdxSet addNewMs();

    CTMdxMemeberProp addNewP();

    CTMdxTuple addNewT();

    STMdxFunctionType.Enum getF();

    CTMdxKPI getK();

    CTMdxSet getMs();

    long getN();

    CTMdxMemeberProp getP();

    CTMdxTuple getT();

    boolean isSetK();

    boolean isSetMs();

    boolean isSetP();

    boolean isSetT();

    void setF(STMdxFunctionType.Enum r1);

    void setK(CTMdxKPI cTMdxKPI);

    void setMs(CTMdxSet cTMdxSet);

    void setN(long j);

    void setP(CTMdxMemeberProp cTMdxMemeberProp);

    void setT(CTMdxTuple cTMdxTuple);

    void unsetK();

    void unsetMs();

    void unsetP();

    void unsetT();

    STMdxFunctionType xgetF();

    XmlUnsignedInt xgetN();

    void xsetF(STMdxFunctionType sTMdxFunctionType);

    void xsetN(XmlUnsignedInt xmlUnsignedInt);
}

package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTQuery extends XmlObject {
    public static final DocumentFactory<CTQuery> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTQuery> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctquery43e7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTuples addNewTpls();

    String getMdx();

    CTTuples getTpls();

    boolean isSetTpls();

    void setMdx(String str);

    void setTpls(CTTuples cTTuples);

    void unsetTpls();

    STXstring xgetMdx();

    void xsetMdx(STXstring sTXstring);
}

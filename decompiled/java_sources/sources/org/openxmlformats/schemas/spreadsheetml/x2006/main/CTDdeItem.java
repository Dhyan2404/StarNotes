package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTDdeItem extends XmlObject {
    public static final DocumentFactory<CTDdeItem> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDdeItem> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctddeitem9cf7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDdeValues addNewValues();

    boolean getAdvise();

    String getName();

    boolean getOle();

    boolean getPreferPic();

    CTDdeValues getValues();

    boolean isSetAdvise();

    boolean isSetName();

    boolean isSetOle();

    boolean isSetPreferPic();

    boolean isSetValues();

    void setAdvise(boolean z);

    void setName(String str);

    void setOle(boolean z);

    void setPreferPic(boolean z);

    void setValues(CTDdeValues cTDdeValues);

    void unsetAdvise();

    void unsetName();

    void unsetOle();

    void unsetPreferPic();

    void unsetValues();

    XmlBoolean xgetAdvise();

    STXstring xgetName();

    XmlBoolean xgetOle();

    XmlBoolean xgetPreferPic();

    void xsetAdvise(XmlBoolean xmlBoolean);

    void xsetName(STXstring sTXstring);

    void xsetOle(XmlBoolean xmlBoolean);

    void xsetPreferPic(XmlBoolean xmlBoolean);
}

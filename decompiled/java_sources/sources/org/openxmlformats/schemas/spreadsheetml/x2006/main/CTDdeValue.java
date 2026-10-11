package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STDdeValueType;

/* loaded from: classes15.dex */
public interface CTDdeValue extends XmlObject {
    public static final DocumentFactory<CTDdeValue> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDdeValue> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctddevaluedc55type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STDdeValueType.Enum getT();

    String getVal();

    boolean isSetT();

    void setT(STDdeValueType.Enum r1);

    void setVal(String str);

    void unsetT();

    STDdeValueType xgetT();

    STXstring xgetVal();

    void xsetT(STDdeValueType sTDdeValueType);

    void xsetVal(STXstring sTXstring);
}

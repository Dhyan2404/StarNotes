package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTMultiLvlStrRef extends XmlObject {
    public static final DocumentFactory<CTMultiLvlStrRef> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMultiLvlStrRef> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmultilvlstrrefe271type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTMultiLvlStrData addNewMultiLvlStrCache();

    CTExtensionList getExtLst();

    String getF();

    CTMultiLvlStrData getMultiLvlStrCache();

    boolean isSetExtLst();

    boolean isSetMultiLvlStrCache();

    void setExtLst(CTExtensionList cTExtensionList);

    void setF(String str);

    void setMultiLvlStrCache(CTMultiLvlStrData cTMultiLvlStrData);

    void unsetExtLst();

    void unsetMultiLvlStrCache();

    XmlString xgetF();

    void xsetF(XmlString xmlString);
}

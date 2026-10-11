package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTFunctionGroup extends XmlObject {
    public static final DocumentFactory<CTFunctionGroup> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFunctionGroup> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfunctiongroupbce6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getName();

    boolean isSetName();

    void setName(String str);

    void unsetName();

    STXstring xgetName();

    void xsetName(STXstring sTXstring);
}

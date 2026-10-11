package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STFilterOperator;

/* loaded from: classes15.dex */
public interface CTCustomFilter extends XmlObject {
    public static final DocumentFactory<CTCustomFilter> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCustomFilter> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcustomfilterb152type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STFilterOperator.Enum getOperator();

    String getVal();

    boolean isSetOperator();

    boolean isSetVal();

    void setOperator(STFilterOperator.Enum r1);

    void setVal(String str);

    void unsetOperator();

    void unsetVal();

    STFilterOperator xgetOperator();

    STXstring xgetVal();

    void xsetOperator(STFilterOperator sTFilterOperator);

    void xsetVal(STXstring sTXstring);
}

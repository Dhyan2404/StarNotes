package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.math.STJc;

/* loaded from: classes14.dex */
public interface CTOMathJc extends XmlObject {
    public static final DocumentFactory<CTOMathJc> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOMathJc> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctomathjcfeactype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STJc.Enum getVal();

    boolean isSetVal();

    void setVal(STJc.Enum r1);

    void unsetVal();

    STJc xgetVal();

    void xsetVal(STJc sTJc);
}

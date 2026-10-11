package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.math.STTopBot;

/* loaded from: classes14.dex */
public interface CTTopBot extends XmlObject {
    public static final DocumentFactory<CTTopBot> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTopBot> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttopbot7c80type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTopBot.Enum getVal();

    void setVal(STTopBot.Enum r1);

    STTopBot xgetVal();

    void xsetVal(STTopBot sTTopBot);
}

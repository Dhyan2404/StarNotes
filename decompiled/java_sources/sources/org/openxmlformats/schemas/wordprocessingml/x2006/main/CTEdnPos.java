package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STEdnPos;

/* loaded from: classes16.dex */
public interface CTEdnPos extends XmlObject {
    public static final DocumentFactory<CTEdnPos> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEdnPos> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctednposd4a3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STEdnPos.Enum getVal();

    void setVal(STEdnPos.Enum r1);

    STEdnPos xgetVal();

    void xsetVal(STEdnPos sTEdnPos);
}

package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STEm;

/* loaded from: classes16.dex */
public interface CTEm extends XmlObject {
    public static final DocumentFactory<CTEm> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEm> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctemdc80type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STEm.Enum getVal();

    void setVal(STEm.Enum r1);

    STEm xgetVal();

    void xsetVal(STEm sTEm);
}

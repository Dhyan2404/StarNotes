package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMerge;

/* loaded from: classes16.dex */
public interface CTVMerge extends XmlObject {
    public static final DocumentFactory<CTVMerge> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTVMerge> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctvmergee086type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STMerge.Enum getVal();

    boolean isSetVal();

    void setVal(STMerge.Enum r1);

    void unsetVal();

    STMerge xgetVal();

    void xsetVal(STMerge sTMerge);
}

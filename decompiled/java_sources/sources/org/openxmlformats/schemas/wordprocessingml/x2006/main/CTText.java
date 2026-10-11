package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xmlschema.SpaceAttribute;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTText extends STString {
    public static final DocumentFactory<CTText> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTText> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttext7f5btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SpaceAttribute.Space.Enum getSpace();

    boolean isSetSpace();

    void setSpace(SpaceAttribute.Space.Enum r1);

    void unsetSpace();

    SpaceAttribute.Space xgetSpace();

    void xsetSpace(SpaceAttribute.Space space);
}

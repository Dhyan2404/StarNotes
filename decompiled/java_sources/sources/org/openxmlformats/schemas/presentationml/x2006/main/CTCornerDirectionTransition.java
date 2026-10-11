package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STTransitionCornerDirectionType;

/* loaded from: classes14.dex */
public interface CTCornerDirectionTransition extends XmlObject {
    public static final DocumentFactory<CTCornerDirectionTransition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCornerDirectionTransition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcornerdirectiontransitionc290type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTransitionCornerDirectionType.Enum getDir();

    boolean isSetDir();

    void setDir(STTransitionCornerDirectionType.Enum r1);

    void unsetDir();

    STTransitionCornerDirectionType xgetDir();

    void xsetDir(STTransitionCornerDirectionType sTTransitionCornerDirectionType);
}

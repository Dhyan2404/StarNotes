package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STTransitionSideDirectionType;

/* loaded from: classes14.dex */
public interface CTSideDirectionTransition extends XmlObject {
    public static final DocumentFactory<CTSideDirectionTransition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSideDirectionTransition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsidedirectiontransition1752type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTransitionSideDirectionType.Enum getDir();

    boolean isSetDir();

    void setDir(STTransitionSideDirectionType.Enum r1);

    void unsetDir();

    STTransitionSideDirectionType xgetDir();

    void xsetDir(STTransitionSideDirectionType sTTransitionSideDirectionType);
}

package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STTransitionInOutDirectionType;

/* loaded from: classes14.dex */
public interface CTInOutTransition extends XmlObject {
    public static final DocumentFactory<CTInOutTransition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTInOutTransition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctinouttransitionacf1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTransitionInOutDirectionType.Enum getDir();

    boolean isSetDir();

    void setDir(STTransitionInOutDirectionType.Enum r1);

    void unsetDir();

    STTransitionInOutDirectionType xgetDir();

    void xsetDir(STTransitionInOutDirectionType sTTransitionInOutDirectionType);
}

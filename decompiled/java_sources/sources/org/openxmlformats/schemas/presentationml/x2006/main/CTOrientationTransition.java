package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STDirection;

/* loaded from: classes14.dex */
public interface CTOrientationTransition extends XmlObject {
    public static final DocumentFactory<CTOrientationTransition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOrientationTransition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctorientationtransition63aatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STDirection.Enum getDir();

    boolean isSetDir();

    void setDir(STDirection.Enum r1);

    void unsetDir();

    STDirection xgetDir();

    void xsetDir(STDirection sTDirection);
}

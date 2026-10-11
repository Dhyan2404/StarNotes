package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTEightDirectionTransition extends XmlObject {
    public static final DocumentFactory<CTEightDirectionTransition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEightDirectionTransition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cteightdirectiontransition1d60type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getDir();

    boolean isSetDir();

    void setDir(String str);

    void unsetDir();

    STTransitionEightDirectionType xgetDir();

    void xsetDir(STTransitionEightDirectionType sTTransitionEightDirectionType);
}

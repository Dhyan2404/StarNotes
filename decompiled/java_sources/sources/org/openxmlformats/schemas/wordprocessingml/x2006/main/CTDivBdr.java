package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDivBdr extends XmlObject {
    public static final DocumentFactory<CTDivBdr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDivBdr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdivbdr6ce9type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBorder addNewBottom();

    CTBorder addNewLeft();

    CTBorder addNewRight();

    CTBorder addNewTop();

    CTBorder getBottom();

    CTBorder getLeft();

    CTBorder getRight();

    CTBorder getTop();

    boolean isSetBottom();

    boolean isSetLeft();

    boolean isSetRight();

    boolean isSetTop();

    void setBottom(CTBorder cTBorder);

    void setLeft(CTBorder cTBorder);

    void setRight(CTBorder cTBorder);

    void setTop(CTBorder cTBorder);

    void unsetBottom();

    void unsetLeft();

    void unsetRight();

    void unsetTop();
}

package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STDirection;
import org.openxmlformats.schemas.presentationml.x2006.main.STTransitionInOutDirectionType;

/* loaded from: classes14.dex */
public interface CTSplitTransition extends XmlObject {
    public static final DocumentFactory<CTSplitTransition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSplitTransition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsplittransition4c60type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTransitionInOutDirectionType.Enum getDir();

    STDirection.Enum getOrient();

    boolean isSetDir();

    boolean isSetOrient();

    void setDir(STTransitionInOutDirectionType.Enum r1);

    void setOrient(STDirection.Enum r1);

    void unsetDir();

    void unsetOrient();

    STTransitionInOutDirectionType xgetDir();

    STDirection xgetOrient();

    void xsetDir(STTransitionInOutDirectionType sTTransitionInOutDirectionType);

    void xsetOrient(STDirection sTDirection);
}

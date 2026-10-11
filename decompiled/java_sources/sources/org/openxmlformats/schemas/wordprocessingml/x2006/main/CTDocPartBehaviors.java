package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDocPartBehaviors extends XmlObject {
    public static final DocumentFactory<CTDocPartBehaviors> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocPartBehaviors> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocpartbehaviors0952type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDocPartBehavior addNewBehavior();

    CTDocPartBehavior getBehaviorArray(int i);

    CTDocPartBehavior[] getBehaviorArray();

    List<CTDocPartBehavior> getBehaviorList();

    CTDocPartBehavior insertNewBehavior(int i);

    void removeBehavior(int i);

    void setBehaviorArray(int i, CTDocPartBehavior cTDocPartBehavior);

    void setBehaviorArray(CTDocPartBehavior[] cTDocPartBehaviorArr);

    int sizeOfBehaviorArray();
}

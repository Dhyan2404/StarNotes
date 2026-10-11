package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDocVars extends XmlObject {
    public static final DocumentFactory<CTDocVars> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocVars> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocvarsdf8etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDocVar addNewDocVar();

    CTDocVar getDocVarArray(int i);

    CTDocVar[] getDocVarArray();

    List<CTDocVar> getDocVarList();

    CTDocVar insertNewDocVar(int i);

    void removeDocVar(int i);

    void setDocVarArray(int i, CTDocVar cTDocVar);

    void setDocVarArray(CTDocVar[] cTDocVarArr);

    int sizeOfDocVarArray();
}

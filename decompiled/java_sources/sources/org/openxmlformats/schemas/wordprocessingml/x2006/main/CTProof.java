package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STProof;

/* loaded from: classes16.dex */
public interface CTProof extends XmlObject {
    public static final DocumentFactory<CTProof> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTProof> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctproof8f0etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STProof.Enum getGrammar();

    STProof.Enum getSpelling();

    boolean isSetGrammar();

    boolean isSetSpelling();

    void setGrammar(STProof.Enum r1);

    void setSpelling(STProof.Enum r1);

    void unsetGrammar();

    void unsetSpelling();

    STProof xgetGrammar();

    STProof xgetSpelling();

    void xsetGrammar(STProof sTProof);

    void xsetSpelling(STProof sTProof);
}

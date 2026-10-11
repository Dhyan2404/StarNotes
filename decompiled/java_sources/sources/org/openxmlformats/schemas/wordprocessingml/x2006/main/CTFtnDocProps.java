package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTFtnDocProps extends CTFtnProps {
    public static final DocumentFactory<CTFtnDocProps> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFtnDocProps> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctftndocprops307atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTFtnEdnSepRef addNewFootnote();

    CTFtnEdnSepRef getFootnoteArray(int i);

    CTFtnEdnSepRef[] getFootnoteArray();

    List<CTFtnEdnSepRef> getFootnoteList();

    CTFtnEdnSepRef insertNewFootnote(int i);

    void removeFootnote(int i);

    void setFootnoteArray(int i, CTFtnEdnSepRef cTFtnEdnSepRef);

    void setFootnoteArray(CTFtnEdnSepRef[] cTFtnEdnSepRefArr);

    int sizeOfFootnoteArray();
}

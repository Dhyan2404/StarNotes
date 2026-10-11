package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTEdnDocProps extends CTEdnProps {
    public static final DocumentFactory<CTEdnDocProps> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEdnDocProps> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctedndocprops478btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTFtnEdnSepRef addNewEndnote();

    CTFtnEdnSepRef getEndnoteArray(int i);

    CTFtnEdnSepRef[] getEndnoteArray();

    List<CTFtnEdnSepRef> getEndnoteList();

    CTFtnEdnSepRef insertNewEndnote(int i);

    void removeEndnote(int i);

    void setEndnoteArray(int i, CTFtnEdnSepRef cTFtnEdnSepRef);

    void setEndnoteArray(CTFtnEdnSepRef[] cTFtnEdnSepRefArr);

    int sizeOfEndnoteArray();
}

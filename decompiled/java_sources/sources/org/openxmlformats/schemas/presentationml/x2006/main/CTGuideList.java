package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGuideList extends XmlObject {
    public static final DocumentFactory<CTGuideList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGuideList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctguidelist1f95type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGuide addNewGuide();

    CTGuide getGuideArray(int i);

    CTGuide[] getGuideArray();

    List<CTGuide> getGuideList();

    CTGuide insertNewGuide(int i);

    void removeGuide(int i);

    void setGuideArray(int i, CTGuide cTGuide);

    void setGuideArray(CTGuide[] cTGuideArr);

    int sizeOfGuideArray();
}

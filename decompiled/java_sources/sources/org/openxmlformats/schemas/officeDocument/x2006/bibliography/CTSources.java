package org.openxmlformats.schemas.officeDocument.x2006.bibliography;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes14.dex */
public interface CTSources extends XmlObject {
    public static final DocumentFactory<CTSources> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSources> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsourcesa9fetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSourceType addNewSource();

    String getSelectedStyle();

    CTSourceType getSourceArray(int i);

    CTSourceType[] getSourceArray();

    List<CTSourceType> getSourceList();

    String getStyleName();

    String getURI();

    CTSourceType insertNewSource(int i);

    boolean isSetSelectedStyle();

    boolean isSetStyleName();

    boolean isSetURI();

    void removeSource(int i);

    void setSelectedStyle(String str);

    void setSourceArray(int i, CTSourceType cTSourceType);

    void setSourceArray(CTSourceType[] cTSourceTypeArr);

    void setStyleName(String str);

    void setURI(String str);

    int sizeOfSourceArray();

    void unsetSelectedStyle();

    void unsetStyleName();

    void unsetURI();

    STString xgetSelectedStyle();

    STString xgetStyleName();

    STString xgetURI();

    void xsetSelectedStyle(STString sTString);

    void xsetStyleName(STString sTString);

    void xsetURI(STString sTString);
}

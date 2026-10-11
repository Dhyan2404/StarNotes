package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTFontsList extends XmlObject {
    public static final DocumentFactory<CTFontsList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFontsList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfontslist2dd0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTFont addNewFont();

    CTFont getFontArray(int i);

    CTFont[] getFontArray();

    List<CTFont> getFontList();

    CTFont insertNewFont(int i);

    void removeFont(int i);

    void setFontArray(int i, CTFont cTFont);

    void setFontArray(CTFont[] cTFontArr);

    int sizeOfFontArray();
}

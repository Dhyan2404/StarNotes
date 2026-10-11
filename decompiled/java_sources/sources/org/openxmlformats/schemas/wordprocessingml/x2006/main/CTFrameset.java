package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTFrameset extends XmlObject {
    public static final DocumentFactory<CTFrameset> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFrameset> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctframeset1033type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTFrame addNewFrame();

    CTFrameLayout addNewFrameLayout();

    CTFrameset addNewFrameset();

    CTFramesetSplitbar addNewFramesetSplitbar();

    CTString addNewSz();

    CTString addNewTitle();

    CTFrame getFrameArray(int i);

    CTFrame[] getFrameArray();

    CTFrameLayout getFrameLayout();

    List<CTFrame> getFrameList();

    CTFrameset getFramesetArray(int i);

    CTFrameset[] getFramesetArray();

    List<CTFrameset> getFramesetList();

    CTFramesetSplitbar getFramesetSplitbar();

    CTString getSz();

    CTString getTitle();

    CTFrame insertNewFrame(int i);

    CTFrameset insertNewFrameset(int i);

    boolean isSetFrameLayout();

    boolean isSetFramesetSplitbar();

    boolean isSetSz();

    boolean isSetTitle();

    void removeFrame(int i);

    void removeFrameset(int i);

    void setFrameArray(int i, CTFrame cTFrame);

    void setFrameArray(CTFrame[] cTFrameArr);

    void setFrameLayout(CTFrameLayout cTFrameLayout);

    void setFramesetArray(int i, CTFrameset cTFrameset);

    void setFramesetArray(CTFrameset[] cTFramesetArr);

    void setFramesetSplitbar(CTFramesetSplitbar cTFramesetSplitbar);

    void setSz(CTString cTString);

    void setTitle(CTString cTString);

    int sizeOfFrameArray();

    int sizeOfFramesetArray();

    void unsetFrameLayout();

    void unsetFramesetSplitbar();

    void unsetSz();

    void unsetTitle();
}

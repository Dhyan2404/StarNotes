package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.presentationml.x2006.main.STViewType;

/* loaded from: classes14.dex */
public interface CTViewProperties extends XmlObject {
    public static final DocumentFactory<CTViewProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTViewProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctviewpropertiesdeadtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTPositiveSize2D addNewGridSpacing();

    CTNormalViewProperties addNewNormalViewPr();

    CTNotesTextViewProperties addNewNotesTextViewPr();

    CTNotesViewProperties addNewNotesViewPr();

    CTOutlineViewProperties addNewOutlineViewPr();

    CTSlideViewProperties addNewSlideViewPr();

    CTSlideSorterViewProperties addNewSorterViewPr();

    CTExtensionList getExtLst();

    CTPositiveSize2D getGridSpacing();

    STViewType.Enum getLastView();

    CTNormalViewProperties getNormalViewPr();

    CTNotesTextViewProperties getNotesTextViewPr();

    CTNotesViewProperties getNotesViewPr();

    CTOutlineViewProperties getOutlineViewPr();

    boolean getShowComments();

    CTSlideViewProperties getSlideViewPr();

    CTSlideSorterViewProperties getSorterViewPr();

    boolean isSetExtLst();

    boolean isSetGridSpacing();

    boolean isSetLastView();

    boolean isSetNormalViewPr();

    boolean isSetNotesTextViewPr();

    boolean isSetNotesViewPr();

    boolean isSetOutlineViewPr();

    boolean isSetShowComments();

    boolean isSetSlideViewPr();

    boolean isSetSorterViewPr();

    void setExtLst(CTExtensionList cTExtensionList);

    void setGridSpacing(CTPositiveSize2D cTPositiveSize2D);

    void setLastView(STViewType.Enum r1);

    void setNormalViewPr(CTNormalViewProperties cTNormalViewProperties);

    void setNotesTextViewPr(CTNotesTextViewProperties cTNotesTextViewProperties);

    void setNotesViewPr(CTNotesViewProperties cTNotesViewProperties);

    void setOutlineViewPr(CTOutlineViewProperties cTOutlineViewProperties);

    void setShowComments(boolean z);

    void setSlideViewPr(CTSlideViewProperties cTSlideViewProperties);

    void setSorterViewPr(CTSlideSorterViewProperties cTSlideSorterViewProperties);

    void unsetExtLst();

    void unsetGridSpacing();

    void unsetLastView();

    void unsetNormalViewPr();

    void unsetNotesTextViewPr();

    void unsetNotesViewPr();

    void unsetOutlineViewPr();

    void unsetShowComments();

    void unsetSlideViewPr();

    void unsetSorterViewPr();

    STViewType xgetLastView();

    XmlBoolean xgetShowComments();

    void xsetLastView(STViewType sTViewType);

    void xsetShowComments(XmlBoolean xmlBoolean);
}

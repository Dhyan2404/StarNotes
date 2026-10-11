package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;

/* loaded from: classes16.dex */
public interface CTTrackChangesView extends XmlObject {
    public static final DocumentFactory<CTTrackChangesView> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTrackChangesView> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttrackchangesview2c4btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getComments();

    Object getFormatting();

    Object getInkAnnotations();

    Object getInsDel();

    Object getMarkup();

    boolean isSetComments();

    boolean isSetFormatting();

    boolean isSetInkAnnotations();

    boolean isSetInsDel();

    boolean isSetMarkup();

    void setComments(Object obj);

    void setFormatting(Object obj);

    void setInkAnnotations(Object obj);

    void setInsDel(Object obj);

    void setMarkup(Object obj);

    void unsetComments();

    void unsetFormatting();

    void unsetInkAnnotations();

    void unsetInsDel();

    void unsetMarkup();

    STOnOff xgetComments();

    STOnOff xgetFormatting();

    STOnOff xgetInkAnnotations();

    STOnOff xgetInsDel();

    STOnOff xgetMarkup();

    void xsetComments(STOnOff sTOnOff);

    void xsetFormatting(STOnOff sTOnOff);

    void xsetInkAnnotations(STOnOff sTOnOff);

    void xsetInsDel(STOnOff sTOnOff);

    void xsetMarkup(STOnOff sTOnOff);
}

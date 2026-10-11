package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STAnnotationVMerge;

/* loaded from: classes16.dex */
public interface CTCellMergeTrackChange extends CTTrackChange {
    public static final DocumentFactory<CTCellMergeTrackChange> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCellMergeTrackChange> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcellmergetrackchange3683type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STAnnotationVMerge.Enum getVMerge();

    STAnnotationVMerge.Enum getVMergeOrig();

    boolean isSetVMerge();

    boolean isSetVMergeOrig();

    void setVMerge(STAnnotationVMerge.Enum r1);

    void setVMergeOrig(STAnnotationVMerge.Enum r1);

    void unsetVMerge();

    void unsetVMergeOrig();

    STAnnotationVMerge xgetVMerge();

    STAnnotationVMerge xgetVMergeOrig();

    void xsetVMerge(STAnnotationVMerge sTAnnotationVMerge);

    void xsetVMergeOrig(STAnnotationVMerge sTAnnotationVMerge);
}

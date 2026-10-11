package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTReviewedRevisions extends XmlObject {
    public static final DocumentFactory<CTReviewedRevisions> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTReviewedRevisions> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctreviewedrevisionsed20type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTReviewed addNewReviewed();

    long getCount();

    CTReviewed getReviewedArray(int i);

    CTReviewed[] getReviewedArray();

    List<CTReviewed> getReviewedList();

    CTReviewed insertNewReviewed(int i);

    boolean isSetCount();

    void removeReviewed(int i);

    void setCount(long j);

    void setReviewedArray(int i, CTReviewed cTReviewed);

    void setReviewedArray(CTReviewed[] cTReviewedArr);

    int sizeOfReviewedArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}

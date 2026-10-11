package org.apache.xerces.p118xs;

import org.apache.xerces.p118xs.datatypes.ObjectList;

/* loaded from: classes13.dex */
public interface XSMultiValueFacet extends XSObject {
    XSObjectList getAnnotations();

    ObjectList getEnumerationValues();

    short getFacetKind();

    StringList getLexicalFacetValues();
}

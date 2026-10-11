package com.sun.org.apache.xerces.internal.xinclude;

import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentFilter;

/* loaded from: classes10.dex */
public interface XPointerSchema extends XMLComponent, XMLDocumentFilter {
    Object getParent();

    String getXPointerSchemaPointer();

    String getXpointerSchemaName();

    boolean isSubResourceIndentified();

    void reset();

    void setParent(Object obj);

    void setXPointerSchemaName(String str);

    void setXPointerSchemaPointer(String str);
}

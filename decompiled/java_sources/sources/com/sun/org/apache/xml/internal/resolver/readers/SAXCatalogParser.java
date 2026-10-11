package com.sun.org.apache.xml.internal.resolver.readers;

import com.sun.org.apache.xml.internal.resolver.Catalog;
import org.xml.sax.ContentHandler;
import org.xml.sax.DocumentHandler;

/* loaded from: classes10.dex */
public interface SAXCatalogParser extends ContentHandler, DocumentHandler {
    void setCatalog(Catalog catalog);
}

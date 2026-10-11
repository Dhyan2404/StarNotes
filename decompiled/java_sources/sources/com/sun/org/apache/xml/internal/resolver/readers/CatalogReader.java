package com.sun.org.apache.xml.internal.resolver.readers;

import com.sun.org.apache.xml.internal.resolver.Catalog;
import com.sun.org.apache.xml.internal.resolver.CatalogException;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;

/* loaded from: classes10.dex */
public interface CatalogReader {
    void readCatalog(Catalog catalog, InputStream inputStream) throws IOException, CatalogException;

    void readCatalog(Catalog catalog, String str) throws MalformedURLException, IOException, CatalogException;
}

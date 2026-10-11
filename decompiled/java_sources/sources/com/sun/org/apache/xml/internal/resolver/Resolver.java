package com.sun.org.apache.xml.internal.resolver;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader;
import com.sun.org.apache.xml.internal.resolver.readers.TR9401CatalogReader;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Enumeration;
import java.util.Vector;
import javax.xml.parsers.SAXParserFactory;
import org.apache.commons.lang3.SystemUtils;

/* loaded from: classes10.dex */
public class Resolver extends Catalog {
    public static final int URISUFFIX = CatalogEntry.addEntryType("URISUFFIX", 2);
    public static final int SYSTEMSUFFIX = CatalogEntry.addEntryType("SYSTEMSUFFIX", 2);
    public static final int RESOLVER = CatalogEntry.addEntryType("RESOLVER", 1);
    public static final int SYSTEMREVERSE = CatalogEntry.addEntryType("SYSTEMREVERSE", 1);

    private Vector appendVector(Vector vector, Vector vector2) {
        if (vector2 != null) {
            for (int i = 0; i < vector2.size(); i++) {
                vector.addElement(vector2.elementAt(i));
            }
        }
        return vector;
    }

    private Vector resolveAllLocalSystem(String str) {
        Vector vector = new Vector();
        boolean z = System.getProperty("os.name").indexOf(SystemUtils.f107420a) >= 0;
        Enumeration elements = this.catalogEntries.elements();
        while (elements.hasMoreElements()) {
            CatalogEntry catalogEntry = (CatalogEntry) elements.nextElement();
            if (catalogEntry.getEntryType() == Catalog.SYSTEM && (catalogEntry.getEntryArg(0).equals(str) || (z && catalogEntry.getEntryArg(0).equalsIgnoreCase(str)))) {
                vector.addElement(catalogEntry.getEntryArg(1));
            }
        }
        if (vector.size() == 0) {
            return null;
        }
        return vector;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00b6, code lost:
    
        if (r0 == null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00b9, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00bb, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized java.util.Vector resolveAllSubordinateCatalogs(int r8, java.lang.String r9, java.lang.String r10, java.lang.String r11) throws java.net.MalformedURLException, java.io.IOException {
        /*
            r7 = this;
            monitor-enter(r7)
            java.util.Vector r0 = new java.util.Vector     // Catch: java.lang.Throwable -> Lbd
            r0.<init>()     // Catch: java.lang.Throwable -> Lbd
            r1 = 0
        L7:
            java.util.Vector r2 = r7.catalogs     // Catch: java.lang.Throwable -> Lbd
            int r2 = r2.size()     // Catch: java.lang.Throwable -> Lbd
            if (r1 >= r2) goto Lb6
            java.util.Vector r2 = r7.catalogs     // Catch: java.lang.ClassCastException -> L18 java.lang.Throwable -> Lbd
            java.lang.Object r2 = r2.elementAt(r1)     // Catch: java.lang.ClassCastException -> L18 java.lang.Throwable -> Lbd
            com.sun.org.apache.xml.internal.resolver.Resolver r2 = (com.sun.org.apache.xml.internal.resolver.Resolver) r2     // Catch: java.lang.ClassCastException -> L18 java.lang.Throwable -> Lbd
            goto L4e
        L18:
            java.util.Vector r2 = r7.catalogs     // Catch: java.lang.Throwable -> Lbd
            java.lang.Object r2 = r2.elementAt(r1)     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> Lbd
            com.sun.org.apache.xml.internal.resolver.Catalog r3 = r7.newCatalog()     // Catch: java.lang.Throwable -> Lbd
            com.sun.org.apache.xml.internal.resolver.Resolver r3 = (com.sun.org.apache.xml.internal.resolver.Resolver) r3     // Catch: java.lang.Throwable -> Lbd
            r4 = 1
            r3.parseCatalog(r2)     // Catch: java.io.IOException -> L2b java.io.FileNotFoundException -> L35 java.net.MalformedURLException -> L3f java.lang.Throwable -> Lbd
            goto L48
        L2b:
            com.sun.org.apache.xml.internal.resolver.CatalogManager r5 = r7.catalogManager     // Catch: java.lang.Throwable -> Lbd
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r5 = r5.debug     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r6 = "Failed to load catalog, I/O error"
            r5.message(r4, r6, r2)     // Catch: java.lang.Throwable -> Lbd
            goto L48
        L35:
            com.sun.org.apache.xml.internal.resolver.CatalogManager r5 = r7.catalogManager     // Catch: java.lang.Throwable -> Lbd
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r5 = r5.debug     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r6 = "Failed to load catalog, file not found"
            r5.message(r4, r6, r2)     // Catch: java.lang.Throwable -> Lbd
            goto L48
        L3f:
            com.sun.org.apache.xml.internal.resolver.CatalogManager r5 = r7.catalogManager     // Catch: java.lang.Throwable -> Lbd
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r5 = r5.debug     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r6 = "Malformed Catalog URL"
            r5.message(r4, r6, r2)     // Catch: java.lang.Throwable -> Lbd
        L48:
            java.util.Vector r2 = r7.catalogs     // Catch: java.lang.Throwable -> Lbd
            r2.setElementAt(r3, r1)     // Catch: java.lang.Throwable -> Lbd
            r2 = r3
        L4e:
            int r3 = com.sun.org.apache.xml.internal.resolver.Catalog.DOCTYPE     // Catch: java.lang.Throwable -> Lbd
            if (r8 != r3) goto L5d
            java.lang.String r2 = r2.resolveDoctype(r9, r10, r11)     // Catch: java.lang.Throwable -> Lbd
            if (r2 == 0) goto Lb2
            r0.addElement(r2)     // Catch: java.lang.Throwable -> Lbd
            monitor-exit(r7)
            return r0
        L5d:
            int r3 = com.sun.org.apache.xml.internal.resolver.Catalog.DOCUMENT     // Catch: java.lang.Throwable -> Lbd
            if (r8 != r3) goto L6c
            java.lang.String r2 = r2.resolveDocument()     // Catch: java.lang.Throwable -> Lbd
            if (r2 == 0) goto Lb2
            r0.addElement(r2)     // Catch: java.lang.Throwable -> Lbd
            monitor-exit(r7)
            return r0
        L6c:
            int r3 = com.sun.org.apache.xml.internal.resolver.Catalog.ENTITY     // Catch: java.lang.Throwable -> Lbd
            if (r8 != r3) goto L7b
            java.lang.String r2 = r2.resolveEntity(r9, r10, r11)     // Catch: java.lang.Throwable -> Lbd
            if (r2 == 0) goto Lb2
            r0.addElement(r2)     // Catch: java.lang.Throwable -> Lbd
            monitor-exit(r7)
            return r0
        L7b:
            int r3 = com.sun.org.apache.xml.internal.resolver.Catalog.NOTATION     // Catch: java.lang.Throwable -> Lbd
            if (r8 != r3) goto L8a
            java.lang.String r2 = r2.resolveNotation(r9, r10, r11)     // Catch: java.lang.Throwable -> Lbd
            if (r2 == 0) goto Lb2
            r0.addElement(r2)     // Catch: java.lang.Throwable -> Lbd
            monitor-exit(r7)
            return r0
        L8a:
            int r3 = com.sun.org.apache.xml.internal.resolver.Catalog.PUBLIC     // Catch: java.lang.Throwable -> Lbd
            if (r8 != r3) goto L99
            java.lang.String r2 = r2.resolvePublic(r10, r11)     // Catch: java.lang.Throwable -> Lbd
            if (r2 == 0) goto Lb2
            r0.addElement(r2)     // Catch: java.lang.Throwable -> Lbd
            monitor-exit(r7)
            return r0
        L99:
            int r3 = com.sun.org.apache.xml.internal.resolver.Catalog.SYSTEM     // Catch: java.lang.Throwable -> Lbd
            if (r8 != r3) goto La6
            java.util.Vector r8 = r2.resolveAllSystem(r11)     // Catch: java.lang.Throwable -> Lbd
            java.util.Vector r0 = r7.appendVector(r0, r8)     // Catch: java.lang.Throwable -> Lbd
            goto Lb6
        La6:
            int r3 = com.sun.org.apache.xml.internal.resolver.Resolver.SYSTEMREVERSE     // Catch: java.lang.Throwable -> Lbd
            if (r8 != r3) goto Lb2
            java.util.Vector r2 = r2.resolveAllSystemReverse(r11)     // Catch: java.lang.Throwable -> Lbd
            java.util.Vector r0 = r7.appendVector(r0, r2)     // Catch: java.lang.Throwable -> Lbd
        Lb2:
            int r1 = r1 + 1
            goto L7
        Lb6:
            if (r0 == 0) goto Lba
            monitor-exit(r7)
            return r0
        Lba:
            monitor-exit(r7)
            r7 = 0
            return r7
        Lbd:
            r8 = move-exception
            monitor-exit(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.resolver.Resolver.resolveAllSubordinateCatalogs(int, java.lang.String, java.lang.String, java.lang.String):java.util.Vector");
    }

    private Vector resolveLocalSystemReverse(String str) {
        Vector vector = new Vector();
        boolean z = System.getProperty("os.name").indexOf(SystemUtils.f107420a) >= 0;
        Enumeration elements = this.catalogEntries.elements();
        while (elements.hasMoreElements()) {
            CatalogEntry catalogEntry = (CatalogEntry) elements.nextElement();
            if (catalogEntry.getEntryType() == Catalog.SYSTEM && (catalogEntry.getEntryArg(1).equals(str) || (z && catalogEntry.getEntryArg(1).equalsIgnoreCase(str)))) {
                vector.addElement(catalogEntry.getEntryArg(0));
            }
        }
        if (vector.size() == 0) {
            return null;
        }
        return vector;
    }

    @Override // com.sun.org.apache.xml.internal.resolver.Catalog
    public void addEntry(CatalogEntry catalogEntry) {
        int entryType = catalogEntry.getEntryType();
        if (entryType == URISUFFIX) {
            String normalizeURI = normalizeURI(catalogEntry.getEntryArg(0));
            String makeAbsolute = makeAbsolute(normalizeURI(catalogEntry.getEntryArg(1)));
            catalogEntry.setEntryArg(1, makeAbsolute);
            this.catalogManager.debug.message(4, "URISUFFIX", normalizeURI, makeAbsolute);
        } else if (entryType == SYSTEMSUFFIX) {
            String normalizeURI2 = normalizeURI(catalogEntry.getEntryArg(0));
            String makeAbsolute2 = makeAbsolute(normalizeURI(catalogEntry.getEntryArg(1)));
            catalogEntry.setEntryArg(1, makeAbsolute2);
            this.catalogManager.debug.message(4, "SYSTEMSUFFIX", normalizeURI2, makeAbsolute2);
        }
        super.addEntry(catalogEntry);
    }

    public Resolver queryResolver(String str, String str2, String str3, String str4) {
        String str5 = str + "?command=" + str2 + "&format=tr9401&uri=" + str3 + "&uri2=" + str4;
        try {
            URLConnection openConnection = new URL(str5).openConnection();
            openConnection.setUseCaches(false);
            Resolver resolver = (Resolver) newCatalog();
            String contentType = openConnection.getContentType();
            if (contentType.indexOf(AndroidTreeView.f47214k) > 0) {
                contentType = contentType.substring(0, contentType.indexOf(AndroidTreeView.f47214k));
            }
            resolver.parseCatalog(contentType, openConnection.getInputStream());
            return resolver;
        } catch (CatalogException e) {
            if (e.getExceptionType() == 6) {
                this.catalogManager.debug.message(1, "Unparseable catalog: " + str5);
            } else if (e.getExceptionType() == 5) {
                this.catalogManager.debug.message(1, "Unknown catalog format: " + str5);
            }
            return null;
        } catch (MalformedURLException unused) {
            this.catalogManager.debug.message(1, "Malformed resolver URL: " + str5);
            return null;
        } catch (IOException unused2) {
            this.catalogManager.debug.message(1, "I/O Exception opening resolver: " + str5);
            return null;
        }
    }

    public Vector resolveAllSystem(String str) throws MalformedURLException, IOException {
        Vector vector = new Vector();
        if (str != null) {
            vector = appendVector(vector, resolveAllLocalSystem(str));
        }
        Vector appendVector = appendVector(vector, resolveAllSubordinateCatalogs(Catalog.SYSTEM, null, null, str));
        if (appendVector.size() > 0) {
            return appendVector;
        }
        return null;
    }

    public Vector resolveAllSystemReverse(String str) throws MalformedURLException, IOException {
        Vector vector = new Vector();
        if (str != null) {
            vector = appendVector(vector, resolveLocalSystemReverse(str));
        }
        return appendVector(vector, resolveAllSubordinateCatalogs(SYSTEMREVERSE, null, null, str));
    }

    public String resolveExternalPublic(String str, String str2) throws MalformedURLException, IOException {
        Resolver queryResolver = queryResolver(str2, "fpi2l", str, null);
        if (queryResolver != null) {
            return queryResolver.resolvePublic(str, null);
        }
        return null;
    }

    public String resolveExternalSystem(String str, String str2) throws MalformedURLException, IOException {
        Resolver queryResolver = queryResolver(str2, "i2l", str, null);
        if (queryResolver != null) {
            return queryResolver.resolveSystem(str);
        }
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.resolver.Catalog
    public String resolvePublic(String str, String str2) throws MalformedURLException, IOException {
        String resolveExternalSystem;
        String resolvePublic = super.resolvePublic(str, str2);
        if (resolvePublic != null) {
            return resolvePublic;
        }
        Enumeration elements = this.catalogEntries.elements();
        while (elements.hasMoreElements()) {
            CatalogEntry catalogEntry = (CatalogEntry) elements.nextElement();
            if (catalogEntry.getEntryType() == RESOLVER) {
                if (str2 != null && (resolveExternalSystem = resolveExternalSystem(str2, catalogEntry.getEntryArg(0))) != null) {
                    return resolveExternalSystem;
                }
                String resolveExternalPublic = resolveExternalPublic(str, catalogEntry.getEntryArg(0));
                if (resolveExternalPublic != null) {
                    return resolveExternalPublic;
                }
            }
        }
        return resolveSubordinateCatalogs(Catalog.PUBLIC, null, str, str2);
    }

    @Override // com.sun.org.apache.xml.internal.resolver.Catalog
    public String resolveSystem(String str) throws MalformedURLException, IOException {
        String resolveSystem = super.resolveSystem(str);
        if (resolveSystem != null) {
            return resolveSystem;
        }
        Enumeration elements = this.catalogEntries.elements();
        while (elements.hasMoreElements()) {
            CatalogEntry catalogEntry = (CatalogEntry) elements.nextElement();
            if (catalogEntry.getEntryType() == RESOLVER) {
                String resolveExternalSystem = resolveExternalSystem(str, catalogEntry.getEntryArg(0));
                if (resolveExternalSystem != null) {
                    return resolveExternalSystem;
                }
            } else if (catalogEntry.getEntryType() == SYSTEMSUFFIX) {
                String entryArg = catalogEntry.getEntryArg(0);
                String entryArg2 = catalogEntry.getEntryArg(1);
                if (entryArg.length() <= str.length() && str.substring(str.length() - entryArg.length()).equals(entryArg)) {
                    return entryArg2;
                }
            } else {
                continue;
            }
        }
        return resolveSubordinateCatalogs(Catalog.SYSTEM, null, null, str);
    }

    public String resolveSystemReverse(String str) throws MalformedURLException, IOException {
        Vector resolveAllSystemReverse = resolveAllSystemReverse(str);
        if (resolveAllSystemReverse == null || resolveAllSystemReverse.size() <= 0) {
            return null;
        }
        return (String) resolveAllSystemReverse.elementAt(0);
    }

    @Override // com.sun.org.apache.xml.internal.resolver.Catalog
    public String resolveURI(String str) throws MalformedURLException, IOException {
        String resolveURI = super.resolveURI(str);
        if (resolveURI != null) {
            return resolveURI;
        }
        Enumeration elements = this.catalogEntries.elements();
        while (elements.hasMoreElements()) {
            CatalogEntry catalogEntry = (CatalogEntry) elements.nextElement();
            if (catalogEntry.getEntryType() == RESOLVER) {
                String resolveExternalSystem = resolveExternalSystem(str, catalogEntry.getEntryArg(0));
                if (resolveExternalSystem != null) {
                    return resolveExternalSystem;
                }
            } else if (catalogEntry.getEntryType() == URISUFFIX) {
                String entryArg = catalogEntry.getEntryArg(0);
                String entryArg2 = catalogEntry.getEntryArg(1);
                if (entryArg.length() <= str.length() && str.substring(str.length() - entryArg.length()).equals(entryArg)) {
                    return entryArg2;
                }
            } else {
                continue;
            }
        }
        return resolveSubordinateCatalogs(Catalog.URI, null, null, str);
    }

    @Override // com.sun.org.apache.xml.internal.resolver.Catalog
    public void setupReaders() {
        SAXParserFactory newInstance = SAXParserFactory.newInstance();
        newInstance.setNamespaceAware(true);
        newInstance.setValidating(false);
        SAXCatalogReader sAXCatalogReader = new SAXCatalogReader(newInstance);
        sAXCatalogReader.setCatalogParser(null, "XMLCatalog", "com.sun.org.apache.xml.internal.resolver.readers.XCatalogReader");
        sAXCatalogReader.setCatalogParser("urn:oasis:names:tc:entity:xmlns:xml:catalog", "catalog", "com.sun.org.apache.xml.internal.resolver.readers.ExtendedXMLCatalogReader");
        addReader("application/xml", sAXCatalogReader);
        addReader("text/plain", new TR9401CatalogReader());
    }
}

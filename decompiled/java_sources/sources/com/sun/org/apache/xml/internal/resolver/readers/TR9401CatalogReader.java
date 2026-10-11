package com.sun.org.apache.xml.internal.resolver.readers;

/* loaded from: classes10.dex */
public class TR9401CatalogReader extends TextCatalogReader {
    /* JADX WARN: Removed duplicated region for block: B:59:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    @Override // com.sun.org.apache.xml.internal.resolver.readers.TextCatalogReader, com.sun.org.apache.xml.internal.resolver.readers.CatalogReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void readCatalog(com.sun.org.apache.xml.internal.resolver.Catalog r10, java.io.InputStream r11) throws java.net.MalformedURLException, java.io.IOException {
        /*
            r9 = this;
            r9.catfile = r11
            if (r11 != 0) goto L5
            return
        L5:
            r11 = 0
        L6:
            r0 = r11
        L7:
            r1 = 8
            r2 = 1
            java.lang.String r3 = r9.nextToken()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            if (r3 != 0) goto L1d
            if (r0 == 0) goto L15
            r10.unknownEntry(r0)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
        L15:
            java.io.InputStream r0 = r9.catfile     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            r0.close()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            r9.catfile = r11     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            return
        L1d:
            boolean r4 = r9.caseSensitive     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            if (r4 == 0) goto L23
            r4 = r3
            goto L27
        L23:
            java.lang.String r4 = r3.toUpperCase()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
        L27:
            java.lang.String r5 = "DELEGATE"
            boolean r5 = r4.equals(r5)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            if (r5 == 0) goto L31
            java.lang.String r4 = "DELEGATE_PUBLIC"
        L31:
            int r5 = com.sun.org.apache.xml.internal.resolver.CatalogEntry.getEntryType(r4)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L5a
            int r5 = com.sun.org.apache.xml.internal.resolver.CatalogEntry.getEntryArgCount(r5)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L5a
            java.util.Vector r6 = new java.util.Vector     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L5a
            r6.<init>()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L5a
            if (r0 == 0) goto L44
            r10.unknownEntry(r0)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L5a
            r0 = r11
        L44:
            r7 = 0
        L45:
            if (r7 >= r5) goto L51
            java.lang.String r8 = r9.nextToken()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L5a
            r6.addElement(r8)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L5a
            int r7 = r7 + 1
            goto L45
        L51:
            com.sun.org.apache.xml.internal.resolver.CatalogEntry r5 = new com.sun.org.apache.xml.internal.resolver.CatalogEntry     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L5a
            r5.<init>(r4, r6)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L5a
            r10.addEntry(r5)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L5a
            goto L7
        L5a:
            r4 = move-exception
            int r5 = r4.getExceptionType()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            r6 = 3
            if (r5 != r6) goto L6d
            if (r0 != 0) goto L69
            java.util.Vector r0 = new java.util.Vector     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            r0.<init>()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
        L69:
            r0.addElement(r3)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            goto L7
        L6d:
            int r5 = r4.getExceptionType()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            r6 = 2
            if (r5 != r6) goto L80
            com.sun.org.apache.xml.internal.resolver.CatalogManager r0 = r10.getCatalogManager()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r0 = r0.debug     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            java.lang.String r4 = "Invalid catalog entry"
            r0.message(r2, r4, r3)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            goto L6
        L80:
            int r3 = r4.getExceptionType()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            if (r3 != r1) goto L7
            com.sun.org.apache.xml.internal.resolver.CatalogManager r3 = r10.getCatalogManager()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r3 = r3.debug     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            java.lang.String r4 = r4.getMessage()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            r3.message(r2, r4)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L95
            goto L7
        L95:
            r9 = move-exception
            int r11 = r9.getExceptionType()
            if (r11 != r1) goto La9
            com.sun.org.apache.xml.internal.resolver.CatalogManager r10 = r10.getCatalogManager()
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r10 = r10.debug
            java.lang.String r9 = r9.getMessage()
            r10.message(r2, r9)
        La9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.resolver.readers.TR9401CatalogReader.readCatalog(com.sun.org.apache.xml.internal.resolver.Catalog, java.io.InputStream):void");
    }
}

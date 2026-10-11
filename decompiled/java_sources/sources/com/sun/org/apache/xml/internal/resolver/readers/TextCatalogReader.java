package com.sun.org.apache.xml.internal.resolver.readers;

import com.sun.org.apache.xml.internal.resolver.Catalog;
import com.sun.org.apache.xml.internal.resolver.CatalogException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Stack;

/* loaded from: classes10.dex */
public class TextCatalogReader implements CatalogReader {
    protected InputStream catfile = null;
    protected int[] stack = new int[3];
    protected Stack tokenStack = new Stack();
    protected int top = -1;
    protected boolean caseSensitive = false;

    public void finalize() {
        InputStream inputStream = this.catfile;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        this.catfile = null;
    }

    public boolean getCaseSensitive() {
        return this.caseSensitive;
    }

    public int nextChar() throws IOException {
        int i = this.top;
        if (i < 0) {
            return this.catfile.read();
        }
        int[] iArr = this.stack;
        this.top = i - 1;
        return iArr[i];
    }

    public String nextToken() throws IOException, CatalogException {
        int nextChar;
        if (!this.tokenStack.empty()) {
            return (String) this.tokenStack.pop();
        }
        do {
            int read = this.catfile.read();
            do {
                int i = 32;
                if (read <= 32) {
                    read = this.catfile.read();
                } else {
                    int read2 = this.catfile.read();
                    if (read2 < 0) {
                        return null;
                    }
                    if (read == 45 && read2 == 45) {
                        nextChar = nextChar();
                        while (true) {
                            if ((i != 45 || nextChar != 45) && nextChar > 0) {
                                i = nextChar;
                                nextChar = nextChar();
                            }
                        }
                    } else {
                        int[] iArr = this.stack;
                        int i2 = this.top + 1;
                        iArr[i2] = read2;
                        int i3 = i2 + 1;
                        this.top = i3;
                        iArr[i3] = read;
                        int nextChar2 = nextChar();
                        String str = "";
                        if (nextChar2 != 34 && nextChar2 != 39) {
                            while (nextChar2 > 32) {
                                int nextChar3 = nextChar();
                                if (nextChar2 == 45 && nextChar3 == 45) {
                                    int[] iArr2 = this.stack;
                                    int i4 = this.top + 1;
                                    iArr2[i4] = nextChar2;
                                    int i5 = i4 + 1;
                                    this.top = i5;
                                    iArr2[i5] = nextChar3;
                                    return str;
                                }
                                str = str.concat(new String(new char[]{(char) nextChar2}));
                                nextChar2 = nextChar3;
                            }
                            return str;
                        }
                        while (true) {
                            int nextChar4 = nextChar();
                            if (nextChar4 == nextChar2) {
                                return str;
                            }
                            str = str.concat(new String(new char[]{(char) nextChar4}));
                        }
                    }
                }
            } while (read >= 0);
            return null;
        } while (nextChar >= 0);
        throw new CatalogException(8, "Unterminated comment in catalog file; EOF treated as end-of-comment.");
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.CatalogReader
    public void readCatalog(Catalog catalog, String str) throws MalformedURLException, IOException {
        URL url;
        try {
            url = new URL(str);
        } catch (MalformedURLException unused) {
            url = new URL("file:///" + str);
        }
        try {
            readCatalog(catalog, url.openConnection().getInputStream());
        } catch (FileNotFoundException unused2) {
            catalog.getCatalogManager().debug.message(1, "Failed to load catalog, file not found", url.toString());
        }
    }

    public void setCaseSensitive(boolean z) {
        this.caseSensitive = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    @Override // com.sun.org.apache.xml.internal.resolver.readers.CatalogReader
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
            java.lang.String r3 = r9.nextToken()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            if (r3 != 0) goto L1d
            if (r0 == 0) goto L15
            r10.unknownEntry(r0)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
        L15:
            java.io.InputStream r0 = r9.catfile     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            r0.close()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            r9.catfile = r11     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            return
        L1d:
            boolean r4 = r9.caseSensitive     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            if (r4 == 0) goto L23
            r4 = r3
            goto L27
        L23:
            java.lang.String r4 = r3.toUpperCase()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
        L27:
            int r5 = com.sun.org.apache.xml.internal.resolver.CatalogEntry.getEntryType(r4)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L50
            int r5 = com.sun.org.apache.xml.internal.resolver.CatalogEntry.getEntryArgCount(r5)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L50
            java.util.Vector r6 = new java.util.Vector     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L50
            r6.<init>()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L50
            if (r0 == 0) goto L3a
            r10.unknownEntry(r0)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L50
            r0 = r11
        L3a:
            r7 = 0
        L3b:
            if (r7 >= r5) goto L47
            java.lang.String r8 = r9.nextToken()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L50
            r6.addElement(r8)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L50
            int r7 = r7 + 1
            goto L3b
        L47:
            com.sun.org.apache.xml.internal.resolver.CatalogEntry r5 = new com.sun.org.apache.xml.internal.resolver.CatalogEntry     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L50
            r5.<init>(r4, r6)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L50
            r10.addEntry(r5)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L50
            goto L7
        L50:
            r4 = move-exception
            int r5 = r4.getExceptionType()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            r6 = 3
            if (r5 != r6) goto L63
            if (r0 != 0) goto L5f
            java.util.Vector r0 = new java.util.Vector     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            r0.<init>()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
        L5f:
            r0.addElement(r3)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            goto L7
        L63:
            int r5 = r4.getExceptionType()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            r6 = 2
            if (r5 != r6) goto L76
            com.sun.org.apache.xml.internal.resolver.CatalogManager r0 = r10.getCatalogManager()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r0 = r0.debug     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            java.lang.String r4 = "Invalid catalog entry"
            r0.message(r2, r4, r3)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            goto L6
        L76:
            int r3 = r4.getExceptionType()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            if (r3 != r1) goto L7
            com.sun.org.apache.xml.internal.resolver.CatalogManager r3 = r10.getCatalogManager()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r3 = r3.debug     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            java.lang.String r4 = r4.getMessage()     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            r3.message(r2, r4)     // Catch: com.sun.org.apache.xml.internal.resolver.CatalogException -> L8b
            goto L7
        L8b:
            r9 = move-exception
            int r11 = r9.getExceptionType()
            if (r11 != r1) goto L9f
            com.sun.org.apache.xml.internal.resolver.CatalogManager r10 = r10.getCatalogManager()
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r10 = r10.debug
            java.lang.String r9 = r9.getMessage()
            r10.message(r2, r9)
        L9f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.resolver.readers.TextCatalogReader.readCatalog(com.sun.org.apache.xml.internal.resolver.Catalog, java.io.InputStream):void");
    }
}

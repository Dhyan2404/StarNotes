package org.apache.poi.poifs.filesystem;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import net.p110sf.saxon.query.XQueryParser;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Removal;

@Internal
/* loaded from: classes12.dex */
public final class DocumentFactoryHelper {
    private DocumentFactoryHelper() {
    }

    public static InputStream getDecryptedStream(final POIFSFileSystem pOIFSFileSystem, String str) throws IOException {
        return new FilterInputStream(getDecryptedStream(pOIFSFileSystem.getRoot(), str)) { // from class: org.apache.poi.poifs.filesystem.DocumentFactoryHelper.1
            @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                pOIFSFileSystem.close();
                super.close();
            }
        };
    }

    @Removal(version = XQueryParser.XQUERY40)
    @Deprecated
    public static boolean hasOOXMLHeader(InputStream inputStream) throws IOException {
        return FileMagic.valueOf(inputStream) == FileMagic.OOXML;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032 A[Catch: GeneralSecurityException -> 0x0021, TryCatch #0 {GeneralSecurityException -> 0x0021, blocks: (B:23:0x0019, B:10:0x0026, B:14:0x0032, B:17:0x0039, B:18:0x0040, B:19:0x0041, B:20:0x0048), top: B:22:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.InputStream getDecryptedStream(org.apache.poi.poifs.filesystem.DirectoryNode r4, java.lang.String r5) throws java.io.IOException {
        /*
            java.lang.String r0 = "Package"
            boolean r1 = r4.hasEntry(r0)
            if (r1 == 0) goto Ld
            org.apache.poi.poifs.filesystem.DocumentInputStream r4 = r4.createDocumentInputStream(r0)
            return r4
        Ld:
            org.apache.poi.poifs.crypt.EncryptionInfo r0 = new org.apache.poi.poifs.crypt.EncryptionInfo
            r0.<init>(r4)
            org.apache.poi.poifs.crypt.Decryptor r0 = org.apache.poi.poifs.crypt.Decryptor.getInstance(r0)
            r1 = 1
            if (r5 == 0) goto L23
            boolean r2 = r0.verifyPassword(r5)     // Catch: java.security.GeneralSecurityException -> L21
            if (r2 == 0) goto L23
            r2 = r1
            goto L24
        L21:
            r4 = move-exception
            goto L49
        L23:
            r2 = 0
        L24:
            if (r2 != 0) goto L2f
            java.lang.String r3 = "VelvetSweatshop"
            boolean r3 = r0.verifyPassword(r3)     // Catch: java.security.GeneralSecurityException -> L21
            if (r3 == 0) goto L2f
            goto L30
        L2f:
            r1 = r2
        L30:
            if (r1 == 0) goto L37
            java.io.InputStream r4 = r0.getDataStream(r4)     // Catch: java.security.GeneralSecurityException -> L21
            return r4
        L37:
            if (r5 == 0) goto L41
            org.apache.poi.EncryptedDocumentException r4 = new org.apache.poi.EncryptedDocumentException     // Catch: java.security.GeneralSecurityException -> L21
            java.lang.String r5 = "Password incorrect"
            r4.<init>(r5)     // Catch: java.security.GeneralSecurityException -> L21
            throw r4     // Catch: java.security.GeneralSecurityException -> L21
        L41:
            org.apache.poi.EncryptedDocumentException r4 = new org.apache.poi.EncryptedDocumentException     // Catch: java.security.GeneralSecurityException -> L21
            java.lang.String r5 = "The supplied spreadsheet is protected, but no password was supplied"
            r4.<init>(r5)     // Catch: java.security.GeneralSecurityException -> L21
            throw r4     // Catch: java.security.GeneralSecurityException -> L21
        L49:
            java.io.IOException r5 = new java.io.IOException
            r5.<init>(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.poifs.filesystem.DocumentFactoryHelper.getDecryptedStream(org.apache.poi.poifs.filesystem.DirectoryNode, java.lang.String):java.io.InputStream");
    }
}

package com.google.i18n.phonenumbers.metadata.init;

import com.google.i18n.phonenumbers.Phonemetadata;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes6.dex */
public final class MetadataParser {

    /* renamed from: b */
    public static final Logger f36501b = Logger.getLogger(MetadataParser.class.getName());

    /* renamed from: a */
    public final boolean f36502a;

    public MetadataParser(boolean z) {
        this.f36502a = z;
    }

    public static MetadataParser newLenientParser() {
        return new MetadataParser(false);
    }

    public static MetadataParser newStrictParser() {
        return new MetadataParser(true);
    }

    /* renamed from: a */
    public final void m28514a(InputStream inputStream) {
        try {
            inputStream.close();
        } catch (IOException e) {
            f36501b.log(Level.WARNING, "Error closing input stream (ignored)", (Throwable) e);
        }
    }

    /* renamed from: b */
    public final List<Phonemetadata.PhoneMetadata> m28515b() {
        if (this.f36502a) {
            throw new IllegalArgumentException("Source cannot be null");
        }
        return Collections.emptyList();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<com.google.i18n.phonenumbers.Phonemetadata.PhoneMetadata> parse(java.io.InputStream r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L7
            java.util.List r5 = r5.m28515b()
            return r5
        L7:
            r0 = 0
            java.io.ObjectInputStream r1 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L36
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L36
            com.google.i18n.phonenumbers.Phonemetadata$PhoneMetadataCollection r0 = new com.google.i18n.phonenumbers.Phonemetadata$PhoneMetadataCollection     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            r0.<init>()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            r0.readExternal(r1)     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            java.util.List r2 = r0.getMetadataList()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            boolean r2 = r2.isEmpty()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            if (r2 != 0) goto L27
            java.util.List r6 = r0.getMetadataList()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            r5.m28514a(r1)
            return r6
        L27:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            java.lang.String r2 = "Empty metadata"
            r0.<init>(r2)     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            throw r0     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
        L2f:
            r0 = move-exception
            goto L3a
        L31:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L43
        L36:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L3a:
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L42
            java.lang.String r3 = "Unable to parse metadata file"
            r2.<init>(r3, r0)     // Catch: java.lang.Throwable -> L42
            throw r2     // Catch: java.lang.Throwable -> L42
        L42:
            r0 = move-exception
        L43:
            if (r1 == 0) goto L49
            r5.m28514a(r1)
            goto L4c
        L49:
            r5.m28514a(r6)
        L4c:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.metadata.init.MetadataParser.parse(java.io.InputStream):java.util.Collection");
    }
}

package com.google.i18n.phonenumbers.metadata.init;

import com.google.i18n.phonenumbers.MetadataLoader;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes6.dex */
public final class ClassPathResourceMetadataLoader implements MetadataLoader {

    /* renamed from: a */
    public static final Logger f36500a = Logger.getLogger(ClassPathResourceMetadataLoader.class.getName());

    @Override // com.google.i18n.phonenumbers.MetadataLoader
    public InputStream loadMetadata(String str) {
        InputStream resourceAsStream = ClassPathResourceMetadataLoader.class.getResourceAsStream(str);
        if (resourceAsStream == null) {
            f36500a.log(Level.WARNING, String.format("File %s not found", str));
        }
        return resourceAsStream;
    }
}

package com.google.i18n.phonenumbers.metadata.source;

import java.util.regex.Pattern;

/* loaded from: classes6.dex */
public final class MultiFileModeFileNameProvider implements PhoneMetadataFileNameProvider {

    /* renamed from: b */
    public static final Pattern f36507b = Pattern.compile("^[\\p{L}\\p{N}]+$");

    /* renamed from: a */
    public final String f36508a;

    public MultiFileModeFileNameProvider(String str) {
        this.f36508a = str + "_";
    }

    @Override // com.google.i18n.phonenumbers.metadata.source.PhoneMetadataFileNameProvider
    public String getFor(Object obj) {
        String obj2 = obj.toString();
        if (f36507b.matcher(obj2).matches()) {
            return this.f36508a + obj;
        }
        throw new IllegalArgumentException("Invalid key: " + obj2);
    }
}

package com.google.i18n.phonenumbers.metadata.source;

/* loaded from: classes6.dex */
public final class SingleFileModeFileNameProvider implements PhoneMetadataFileNameProvider {

    /* renamed from: a */
    public final String f36511a;

    public SingleFileModeFileNameProvider(String str) {
        this.f36511a = str;
    }

    @Override // com.google.i18n.phonenumbers.metadata.source.PhoneMetadataFileNameProvider
    public String getFor(Object obj) {
        return this.f36511a;
    }
}

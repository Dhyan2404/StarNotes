package com.google.i18n.phonenumbers.metadata.source;

import com.google.i18n.phonenumbers.MetadataLoader;
import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.metadata.init.MetadataParser;
import com.sunia.HTREnginev2.C14725ys;
import com.sunia.HTREnginev2.l8j;

/* loaded from: classes6.dex */
public final class FormattingMetadataSourceImpl implements FormattingMetadataSource {

    /* renamed from: a */
    public final PhoneMetadataFileNameProvider f36503a;

    /* renamed from: b */
    public final MetadataBootstrappingGuard<l8j<Integer>> f36504b;

    public FormattingMetadataSourceImpl(PhoneMetadataFileNameProvider phoneMetadataFileNameProvider, MetadataBootstrappingGuard<l8j<Integer>> metadataBootstrappingGuard) {
        this.f36503a = phoneMetadataFileNameProvider;
        this.f36504b = metadataBootstrappingGuard;
    }

    @Override // com.google.i18n.phonenumbers.metadata.source.FormattingMetadataSource
    public Phonemetadata.PhoneMetadata getFormattingMetadataForCountryCallingCode(int i) {
        return this.f36504b.getOrBootstrap(this.f36503a.getFor(Integer.valueOf(i))).m55402e(Integer.valueOf(i));
    }

    public FormattingMetadataSourceImpl(PhoneMetadataFileNameProvider phoneMetadataFileNameProvider, MetadataLoader metadataLoader, MetadataParser metadataParser) {
        this(phoneMetadataFileNameProvider, new C14725ys(metadataLoader, metadataParser, l8j.m55398b()));
    }
}

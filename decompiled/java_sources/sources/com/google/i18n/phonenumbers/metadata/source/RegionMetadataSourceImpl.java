package com.google.i18n.phonenumbers.metadata.source;

import com.google.i18n.phonenumbers.MetadataLoader;
import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.internal.GeoEntityUtility;
import com.google.i18n.phonenumbers.metadata.init.MetadataParser;
import com.sunia.HTREnginev2.C14725ys;
import com.sunia.HTREnginev2.l8j;

/* loaded from: classes6.dex */
public final class RegionMetadataSourceImpl implements RegionMetadataSource {

    /* renamed from: a */
    public final PhoneMetadataFileNameProvider f36509a;

    /* renamed from: b */
    public final MetadataBootstrappingGuard<l8j<String>> f36510b;

    public RegionMetadataSourceImpl(PhoneMetadataFileNameProvider phoneMetadataFileNameProvider, MetadataBootstrappingGuard<l8j<String>> metadataBootstrappingGuard) {
        this.f36509a = phoneMetadataFileNameProvider;
        this.f36510b = metadataBootstrappingGuard;
    }

    @Override // com.google.i18n.phonenumbers.metadata.source.RegionMetadataSource
    public Phonemetadata.PhoneMetadata getMetadataForRegion(String str) {
        if (GeoEntityUtility.isGeoEntity(str)) {
            return this.f36510b.getOrBootstrap(this.f36509a.getFor(str)).m55402e(str);
        }
        throw new IllegalArgumentException(str + " region code is a non-geo entity");
    }

    public RegionMetadataSourceImpl(PhoneMetadataFileNameProvider phoneMetadataFileNameProvider, MetadataLoader metadataLoader, MetadataParser metadataParser) {
        this(phoneMetadataFileNameProvider, new C14725ys(metadataLoader, metadataParser, l8j.m55399c()));
    }
}

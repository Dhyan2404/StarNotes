package com.google.i18n.phonenumbers.metadata.source;

import com.google.i18n.phonenumbers.MetadataLoader;
import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.internal.GeoEntityUtility;
import com.google.i18n.phonenumbers.metadata.init.MetadataParser;
import com.sunia.HTREnginev2.C14725ys;
import com.sunia.HTREnginev2.o7e;

/* loaded from: classes6.dex */
public final class MetadataSourceImpl implements MetadataSource {

    /* renamed from: a */
    public final PhoneMetadataFileNameProvider f36505a;

    /* renamed from: b */
    public final MetadataBootstrappingGuard<o7e> f36506b;

    public MetadataSourceImpl(PhoneMetadataFileNameProvider phoneMetadataFileNameProvider, MetadataBootstrappingGuard<o7e> metadataBootstrappingGuard) {
        this.f36505a = phoneMetadataFileNameProvider;
        this.f36506b = metadataBootstrappingGuard;
    }

    @Override // com.google.i18n.phonenumbers.metadata.source.NonGeographicalEntityMetadataSource
    public Phonemetadata.PhoneMetadata getMetadataForNonGeographicalRegion(int i) {
        if (!GeoEntityUtility.isGeoEntity(i)) {
            return this.f36506b.getOrBootstrap(this.f36505a.getFor(Integer.valueOf(i))).m55921b(i);
        }
        throw new IllegalArgumentException(i + " calling code belongs to a geo entity");
    }

    @Override // com.google.i18n.phonenumbers.metadata.source.RegionMetadataSource
    public Phonemetadata.PhoneMetadata getMetadataForRegion(String str) {
        if (GeoEntityUtility.isGeoEntity(str)) {
            return this.f36506b.getOrBootstrap(this.f36505a.getFor(str)).m55922c(str);
        }
        throw new IllegalArgumentException(str + " region code is a non-geo entity");
    }

    public MetadataSourceImpl(PhoneMetadataFileNameProvider phoneMetadataFileNameProvider, MetadataLoader metadataLoader, MetadataParser metadataParser) {
        this(phoneMetadataFileNameProvider, new C14725ys(metadataLoader, metadataParser, new o7e()));
    }
}

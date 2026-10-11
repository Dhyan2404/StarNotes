package com.google.i18n.phonenumbers.metadata;

import com.google.i18n.phonenumbers.MetadataLoader;
import com.google.i18n.phonenumbers.metadata.init.ClassPathResourceMetadataLoader;
import com.google.i18n.phonenumbers.metadata.init.MetadataParser;
import com.google.i18n.phonenumbers.metadata.source.FormattingMetadataSource;
import com.google.i18n.phonenumbers.metadata.source.FormattingMetadataSourceImpl;
import com.google.i18n.phonenumbers.metadata.source.MetadataSource;
import com.google.i18n.phonenumbers.metadata.source.MetadataSourceImpl;
import com.google.i18n.phonenumbers.metadata.source.MultiFileModeFileNameProvider;
import com.google.i18n.phonenumbers.metadata.source.PhoneMetadataFileNameProvider;
import com.google.i18n.phonenumbers.metadata.source.RegionMetadataSource;
import com.google.i18n.phonenumbers.metadata.source.RegionMetadataSourceImpl;

/* loaded from: classes6.dex */
public final class DefaultMetadataDependenciesProvider {

    /* renamed from: i */
    public static final DefaultMetadataDependenciesProvider f36491i = new DefaultMetadataDependenciesProvider();

    /* renamed from: a */
    public final MetadataParser f36492a;

    /* renamed from: b */
    public final MetadataLoader f36493b;

    /* renamed from: c */
    public final PhoneMetadataFileNameProvider f36494c;

    /* renamed from: d */
    public final MetadataSource f36495d;

    /* renamed from: e */
    public final PhoneMetadataFileNameProvider f36496e;

    /* renamed from: f */
    public final RegionMetadataSource f36497f;

    /* renamed from: g */
    public final PhoneMetadataFileNameProvider f36498g;

    /* renamed from: h */
    public final FormattingMetadataSource f36499h;

    public DefaultMetadataDependenciesProvider() {
        MetadataParser newLenientParser = MetadataParser.newLenientParser();
        this.f36492a = newLenientParser;
        ClassPathResourceMetadataLoader classPathResourceMetadataLoader = new ClassPathResourceMetadataLoader();
        this.f36493b = classPathResourceMetadataLoader;
        MultiFileModeFileNameProvider multiFileModeFileNameProvider = new MultiFileModeFileNameProvider("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto");
        this.f36494c = multiFileModeFileNameProvider;
        this.f36495d = new MetadataSourceImpl(multiFileModeFileNameProvider, classPathResourceMetadataLoader, newLenientParser);
        MultiFileModeFileNameProvider multiFileModeFileNameProvider2 = new MultiFileModeFileNameProvider("/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto");
        this.f36496e = multiFileModeFileNameProvider2;
        this.f36497f = new RegionMetadataSourceImpl(multiFileModeFileNameProvider2, classPathResourceMetadataLoader, newLenientParser);
        MultiFileModeFileNameProvider multiFileModeFileNameProvider3 = new MultiFileModeFileNameProvider("/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto");
        this.f36498g = multiFileModeFileNameProvider3;
        this.f36499h = new FormattingMetadataSourceImpl(multiFileModeFileNameProvider3, classPathResourceMetadataLoader, newLenientParser);
    }

    public static DefaultMetadataDependenciesProvider getInstance() {
        return f36491i;
    }

    public PhoneMetadataFileNameProvider getAlternateFormatsMetadataFileNameProvider() {
        return this.f36498g;
    }

    public FormattingMetadataSource getAlternateFormatsMetadataSource() {
        return this.f36499h;
    }

    public String getCarrierDataDirectory() {
        return "/com/google/i18n/phonenumbers/carrier/data/";
    }

    public String getGeocodingDataDirectory() {
        return "/com/google/i18n/phonenumbers/geocoding/data/";
    }

    public MetadataLoader getMetadataLoader() {
        return this.f36493b;
    }

    public MetadataParser getMetadataParser() {
        return this.f36492a;
    }

    public PhoneMetadataFileNameProvider getPhoneNumberMetadataFileNameProvider() {
        return this.f36494c;
    }

    public MetadataSource getPhoneNumberMetadataSource() {
        return this.f36495d;
    }

    public PhoneMetadataFileNameProvider getShortNumberMetadataFileNameProvider() {
        return this.f36496e;
    }

    public RegionMetadataSource getShortNumberMetadataSource() {
        return this.f36497f;
    }
}

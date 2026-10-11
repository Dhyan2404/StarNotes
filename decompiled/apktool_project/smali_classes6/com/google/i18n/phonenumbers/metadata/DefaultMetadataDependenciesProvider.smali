.class public final Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;


# instance fields
.field public final a:Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;

.field public final b:Lcom/google/i18n/phonenumbers/MetadataLoader;

.field public final c:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

.field public final d:Lcom/google/i18n/phonenumbers/metadata/source/MetadataSource;

.field public final e:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

.field public final f:Lcom/google/i18n/phonenumbers/metadata/source/RegionMetadataSource;

.field public final g:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

.field public final h:Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;-><init>()V

    sput-object v0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->i:Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;->newLenientParser()Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->a:Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;

    new-instance v1, Lcom/google/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->b:Lcom/google/i18n/phonenumbers/MetadataLoader;

    new-instance v2, Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    const-string v3, "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-direct {v2, v3}, Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->c:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    new-instance v3, Lcom/google/i18n/phonenumbers/metadata/source/MetadataSourceImpl;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/i18n/phonenumbers/metadata/source/MetadataSourceImpl;-><init>(Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/google/i18n/phonenumbers/MetadataLoader;Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;)V

    iput-object v3, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->d:Lcom/google/i18n/phonenumbers/metadata/source/MetadataSource;

    new-instance v2, Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    const-string v3, "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto"

    invoke-direct {v2, v3}, Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->e:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    new-instance v3, Lcom/google/i18n/phonenumbers/metadata/source/RegionMetadataSourceImpl;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/i18n/phonenumbers/metadata/source/RegionMetadataSourceImpl;-><init>(Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/google/i18n/phonenumbers/MetadataLoader;Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;)V

    iput-object v3, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->f:Lcom/google/i18n/phonenumbers/metadata/source/RegionMetadataSource;

    new-instance v2, Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    const-string v3, "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

    invoke-direct {v2, v3}, Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->g:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    new-instance v3, Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;-><init>(Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/google/i18n/phonenumbers/MetadataLoader;Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;)V

    iput-object v3, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->h:Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSource;

    return-void
.end method

.method public static getInstance()Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;
    .locals 1

    sget-object v0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->i:Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    return-object v0
.end method


# virtual methods
.method public getAlternateFormatsMetadataFileNameProvider()Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;
    .locals 0

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->g:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    return-object p0
.end method

.method public getAlternateFormatsMetadataSource()Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSource;
    .locals 0

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->h:Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSource;

    return-object p0
.end method

.method public getCarrierDataDirectory()Ljava/lang/String;
    .locals 0

    const-string p0, "/com/google/i18n/phonenumbers/carrier/data/"

    return-object p0
.end method

.method public getGeocodingDataDirectory()Ljava/lang/String;
    .locals 0

    const-string p0, "/com/google/i18n/phonenumbers/geocoding/data/"

    return-object p0
.end method

.method public getMetadataLoader()Lcom/google/i18n/phonenumbers/MetadataLoader;
    .locals 0

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->b:Lcom/google/i18n/phonenumbers/MetadataLoader;

    return-object p0
.end method

.method public getMetadataParser()Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;
    .locals 0

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->a:Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;

    return-object p0
.end method

.method public getPhoneNumberMetadataFileNameProvider()Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;
    .locals 0

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->c:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    return-object p0
.end method

.method public getPhoneNumberMetadataSource()Lcom/google/i18n/phonenumbers/metadata/source/MetadataSource;
    .locals 0

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->d:Lcom/google/i18n/phonenumbers/metadata/source/MetadataSource;

    return-object p0
.end method

.method public getShortNumberMetadataFileNameProvider()Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;
    .locals 0

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->e:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    return-object p0
.end method

.method public getShortNumberMetadataSource()Lcom/google/i18n/phonenumbers/metadata/source/RegionMetadataSource;
    .locals 0

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->f:Lcom/google/i18n/phonenumbers/metadata/source/RegionMetadataSource;

    return-object p0
.end method

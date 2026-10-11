.class public final Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSource;


# instance fields
.field public final a:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

.field public final b:Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard<",
            "Lcom/sunia/HTREnginev2/l8j<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/google/i18n/phonenumbers/MetadataLoader;Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/ys;

    .line 5
    invoke-static {}, Lcom/sunia/HTREnginev2/l8j;->b()Lcom/sunia/HTREnginev2/l8j;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/sunia/HTREnginev2/ys;-><init>(Lcom/google/i18n/phonenumbers/MetadataLoader;Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;Lcom/sunia/HTREnginev2/mnj;)V

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;-><init>(Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;",
            "Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard<",
            "Lcom/sunia/HTREnginev2/l8j<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;->a:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 3
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;->b:Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    return-void
.end method


# virtual methods
.method public getFormattingMetadataForCountryCallingCode(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 2

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;->b:Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;->a:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;->getFor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;->getOrBootstrap(Ljava/lang/String;)Lcom/sunia/HTREnginev2/mnj;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/l8j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/l8j;->e(Ljava/lang/Object;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method

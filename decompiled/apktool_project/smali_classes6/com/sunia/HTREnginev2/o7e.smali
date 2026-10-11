.class public final Lcom/sunia/HTREnginev2/o7e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/mnj;


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/l8j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/l8j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/sunia/HTREnginev2/l8j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/l8j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sunia/HTREnginev2/l8j;->b()Lcom/sunia/HTREnginev2/l8j;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/o7e;->a:Lcom/sunia/HTREnginev2/l8j;

    invoke-static {}, Lcom/sunia/HTREnginev2/l8j;->c()Lcom/sunia/HTREnginev2/l8j;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/o7e;->b:Lcom/sunia/HTREnginev2/l8j;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/o7e;->b:Lcom/sunia/HTREnginev2/l8j;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/l8j;->d()Lcom/sunia/HTREnginev2/l8j$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/l8j$c;->a(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/i18n/phonenumbers/internal/GeoEntityUtility;->isGeoEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o7e;->b:Lcom/sunia/HTREnginev2/l8j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/l8j;->a(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/o7e;->a:Lcom/sunia/HTREnginev2/l8j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/l8j;->a(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)V

    :goto_0
    return-void
.end method

.method public b(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o7e;->a:Lcom/sunia/HTREnginev2/l8j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/l8j;->e(Ljava/lang/Object;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o7e;->b:Lcom/sunia/HTREnginev2/l8j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/l8j;->e(Ljava/lang/Object;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method

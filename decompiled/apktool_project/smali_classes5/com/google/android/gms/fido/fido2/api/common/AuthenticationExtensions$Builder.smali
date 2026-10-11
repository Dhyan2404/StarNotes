.class public final Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

.field public b:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

.field public c:Lcom/google/android/gms/fido/fido2/api/common/zzs;

.field public d:Lcom/google/android/gms/fido/fido2/api/common/zzz;

.field public e:Lcom/google/android/gms/fido/fido2/api/common/zzab;

.field public f:Lcom/google/android/gms/fido/fido2/api/common/zzad;

.field public g:Lcom/google/android/gms/fido/fido2/api/common/zzu;

.field public h:Lcom/google/android/gms/fido/fido2/api/common/zzag;

.field public i:Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

.field public j:Lcom/google/android/gms/fido/fido2/api/common/zzai;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->getFidoAppIdExtension()Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->a:Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->getUserVerificationMethodExtension()Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->b:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zza()Lcom/google/android/gms/fido/fido2/api/common/zzs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->c:Lcom/google/android/gms/fido/fido2/api/common/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzc()Lcom/google/android/gms/fido/fido2/api/common/zzz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->d:Lcom/google/android/gms/fido/fido2/api/common/zzz;

    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzd()Lcom/google/android/gms/fido/fido2/api/common/zzab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->e:Lcom/google/android/gms/fido/fido2/api/common/zzab;

    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zze()Lcom/google/android/gms/fido/fido2/api/common/zzad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->f:Lcom/google/android/gms/fido/fido2/api/common/zzad;

    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzb()Lcom/google/android/gms/fido/fido2/api/common/zzu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->g:Lcom/google/android/gms/fido/fido2/api/common/zzu;

    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzg()Lcom/google/android/gms/fido/fido2/api/common/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->h:Lcom/google/android/gms/fido/fido2/api/common/zzag;

    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzf()Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->i:Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzh()Lcom/google/android/gms/fido/fido2/api/common/zzai;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->j:Lcom/google/android/gms/fido/fido2/api/common/zzai;

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v11, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->a:Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->c:Lcom/google/android/gms/fido/fido2/api/common/zzs;

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->b:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->d:Lcom/google/android/gms/fido/fido2/api/common/zzz;

    iget-object v5, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->e:Lcom/google/android/gms/fido/fido2/api/common/zzab;

    iget-object v6, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->f:Lcom/google/android/gms/fido/fido2/api/common/zzad;

    iget-object v7, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->g:Lcom/google/android/gms/fido/fido2/api/common/zzu;

    iget-object v8, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->h:Lcom/google/android/gms/fido/fido2/api/common/zzag;

    iget-object v9, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->i:Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    iget-object v10, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->j:Lcom/google/android/gms/fido/fido2/api/common/zzai;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;-><init>(Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;Lcom/google/android/gms/fido/fido2/api/common/zzs;Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;Lcom/google/android/gms/fido/fido2/api/common/zzz;Lcom/google/android/gms/fido/fido2/api/common/zzab;Lcom/google/android/gms/fido/fido2/api/common/zzad;Lcom/google/android/gms/fido/fido2/api/common/zzu;Lcom/google/android/gms/fido/fido2/api/common/zzag;Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;Lcom/google/android/gms/fido/fido2/api/common/zzai;)V

    return-object v11
.end method

.method public setFido2Extension(Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->a:Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    return-object p0
.end method

.method public setGoogleThirdPartyPaymentExtension(Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->i:Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    return-object p0
.end method

.method public setUserVerificationMethodExtension(Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->b:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    return-object p0
.end method

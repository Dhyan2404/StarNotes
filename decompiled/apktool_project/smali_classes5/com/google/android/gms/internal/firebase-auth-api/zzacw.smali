.class final Lcom/google/android/gms/internal/firebase-auth-api/zzacw;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzadk;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaee;


# instance fields
.field private zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

.field private final zze:Lcom/google/firebase/FirebaseApp;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzact;Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;Lcom/google/android/gms/internal/firebase-auth-api/zzacp;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzact;Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;Lcom/google/android/gms/internal/firebase-auth-api/zzacp;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadk;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zze:Lcom/google/firebase/FirebaseApp;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1, p1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;Lcom/google/android/gms/internal/firebase-auth-api/zzacp;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaec;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaee;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;Lcom/google/android/gms/internal/firebase-auth-api/zzacp;)V
    .locals 1

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    .line 103
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 104
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

    const-string p1, "firebear.secureToken"

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaed;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "LocalClient"

    if-eqz p2, :cond_0

    .line 107
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaec;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Found hermetic configuration for secureToken URL: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    if-nez p2, :cond_1

    .line 110
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    :cond_1
    const-string p1, "firebear.identityToolkit"

    .line 112
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaed;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 114
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaec;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 115
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Found hermetic configuration for identityToolkit URL: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    if-nez p2, :cond_3

    .line 117
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 118
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    :cond_3
    const-string p1, "firebear.identityToolkitV2"

    .line 119
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaed;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 121
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaec;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 122
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Found hermetic configuration for identityToolkitV2 URL: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

    if-nez p2, :cond_5

    .line 124
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

    :cond_5
    return-void
.end method

.method private final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacv;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zze:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    return-object p0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0, v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;Lcom/google/android/gms/internal/firebase-auth-api/zzacp;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaen;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaen;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/createAuthUri"

    .line 4
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaem;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaeo;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaeo;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaer;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/emailLinkSignin"

    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaer;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaep;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaep;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/deleteAccount"

    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    const-class v1, Ljava/lang/Void;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaet;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/accounts/mfaEnrollment:finalize"

    .line 19
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 20
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaet;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaes;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaes;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaev;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/accounts/mfaSignIn:finalize"

    .line 24
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaev;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafa;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafa;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafm;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/token"

    .line 29
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafd;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafd;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafc;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/getAccountInfo"

    .line 34
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 35
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafh;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafh;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafg;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafh;->zzb()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafh;->zzb()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zzb(Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/getOobConfirmationCode"

    .line 41
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafg;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafj;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafj;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafi;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v0, "/getRecaptchaParam"

    .line 46
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafi;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p2, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafk;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafk;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafn;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/recaptchaConfig"

    .line 51
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzb()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;->zzc()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&clientType="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&version="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 54
    const-class p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafw;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafw;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafz;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/resetPassword"

    .line 59
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 60
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafz;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafy;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafy;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaga;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/accounts:revokeToken"

    .line 64
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 65
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagd;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagd;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagc;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagd;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zzb(Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/sendVerificationCode"

    .line 71
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 72
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzagc;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagf;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagf;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzage;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/setAccountInfo"

    .line 76
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 77
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzage;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagh;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagh;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagg;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/signupNewUser"

    .line 84
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 85
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzagg;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagj;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagi;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzagn;

    if-eqz v0, :cond_0

    .line 89
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagn;

    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagn;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagn;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zzb(Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/accounts/mfaEnrollment:start"

    .line 93
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 94
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzagi;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagl;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagl;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagk;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagl;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagl;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zzb(Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/accounts/mfaSignIn:start"

    .line 100
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 101
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzagk;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzags;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzags;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagu;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/verifyAssertion"

    .line 129
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 130
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagx;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagx;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagw;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/verifyCustomToken"

    .line 134
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 135
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzagw;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagz;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagz;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagy;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/verifyPassword"

    .line 139
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 140
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzagy;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahb;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahb;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaha;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/verifyPhoneNumber"

    .line 144
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 145
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaha;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahd;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahc;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzf:Ljava/lang/String;

    const-string v1, "/accounts/mfaEnrollment:withdraw"

    .line 149
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 150
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzahc;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacr;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadm<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 80
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;->zza(Ljava/lang/Object;)V

    return-void
.end method

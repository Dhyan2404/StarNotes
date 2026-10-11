.class public final Lcom/sunia/HTREnginev2/xmp;
.super Lcom/google/firebase/auth/internal/zzf;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzf;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/sunia/HTREnginev2/xmp;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final zza()Lcom/google/firebase/auth/internal/zzg;
    .locals 3

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/hnp;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xmp;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xmp;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/sunia/HTREnginev2/hnp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzm;)V

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzf;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xmp;->a:Ljava/lang/String;

    return-object p0
.end method

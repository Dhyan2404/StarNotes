.class public final Lcom/sunia/HTREnginev2/xsp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:J

.field public c:Lcom/google/android/gms/internal/common/zzag;

.field public d:Lcom/google/android/gms/internal/common/zzag;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xsp;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/xsp;->b:J

    invoke-static {}, Lcom/google/android/gms/internal/common/zzag;->zzl()Lcom/google/android/gms/internal/common/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xsp;->c:Lcom/google/android/gms/internal/common/zzag;

    invoke-static {}, Lcom/google/android/gms/internal/common/zzag;->zzl()Lcom/google/android/gms/internal/common/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xsp;->d:Lcom/google/android/gms/internal/common/zzag;

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/sunia/HTREnginev2/xsp;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/xsp;->b:J

    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/sunia/HTREnginev2/xsp;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzag;->zzk(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xsp;->d:Lcom/google/android/gms/internal/common/zzag;

    return-object p0
.end method

.method public final c(Ljava/util/List;)Lcom/sunia/HTREnginev2/xsp;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzag;->zzk(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xsp;->c:Lcom/google/android/gms/internal/common/zzag;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/sunia/HTREnginev2/xsp;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xsp;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Lcom/sunia/HTREnginev2/pfp;
    .locals 8

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xsp;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/xsp;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xsp;->c:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xsp;->d:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Either orderedTestCerts or orderedProdCerts must have at least one cert"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lcom/sunia/HTREnginev2/pfp;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xsp;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/xsp;->b:J

    iget-object v5, p0, Lcom/sunia/HTREnginev2/xsp;->c:Lcom/google/android/gms/internal/common/zzag;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/xsp;->d:Lcom/google/android/gms/internal/common/zzag;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sunia/HTREnginev2/pfp;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/common/zzag;Lcom/google/android/gms/internal/common/zzag;Lcom/google/android/gms/common/zzaa;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "minimumStampedVersionNumber must be greater than or equal to 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "packageName must be defined"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public final Lcom/google/android/gms/measurement/internal/zzoj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Lcom/google/android/gms/internal/measurement/zzfy$zzj;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/google/android/gms/measurement/internal/zznt;


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/measurement/zzfy$zzj;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zznt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzj;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zznt;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzoj;->a:J

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzoj;->b:Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzoj;->c:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzoj;->d:Ljava/util/Map;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzoj;->e:Lcom/google/android/gms/measurement/internal/zznt;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/google/android/gms/internal/measurement/zzfy$zzj;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzol;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/measurement/internal/zzoj;-><init>(JLcom/google/android/gms/internal/measurement/zzfy$zzj;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zznt;)V

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzoj;->a:J

    return-wide v0
.end method

.method public final zzb()Lcom/sunia/HTREnginev2/mqp;
    .locals 3

    new-instance v0, Lcom/sunia/HTREnginev2/mqp;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzoj;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzoj;->d:Ljava/util/Map;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzoj;->e:Lcom/google/android/gms/measurement/internal/zznt;

    invoke-direct {v0, v1, v2, p0}, Lcom/sunia/HTREnginev2/mqp;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zznt;)V

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzfy$zzj;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzoj;->b:Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzoj;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzoj;->d:Ljava/util/Map;

    return-object p0
.end method

.class public final Lcom/sunia/HTREnginev2/xqp;
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/measurement/internal/zzoj;
    .locals 9

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzoj;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/xqp;->a:J

    iget-object v3, p0, Lcom/sunia/HTREnginev2/xqp;->b:Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/xqp;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/xqp;->d:Ljava/util/Map;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/xqp;->e:Lcom/google/android/gms/measurement/internal/zznt;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzoj;-><init>(JLcom/google/android/gms/internal/measurement/zzfy$zzj;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzol;)V

    return-object v8
.end method

.method public final b(J)Lcom/sunia/HTREnginev2/xqp;
    .locals 0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/xqp;->a:J

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/measurement/zzfy$zzj;)Lcom/sunia/HTREnginev2/xqp;
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xqp;->b:Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/measurement/internal/zznt;)Lcom/sunia/HTREnginev2/xqp;
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xqp;->e:Lcom/google/android/gms/measurement/internal/zznt;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/sunia/HTREnginev2/xqp;
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xqp;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Ljava/util/Map;)Lcom/sunia/HTREnginev2/xqp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sunia/HTREnginev2/xqp;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xqp;->d:Ljava/util/Map;

    return-object p0
.end method

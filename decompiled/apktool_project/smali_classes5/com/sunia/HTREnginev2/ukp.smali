.class public final Lcom/sunia/HTREnginev2/ukp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field public final e:Lcom/sunia/HTREnginev2/vkp;

.field public final f:I

.field public final g:Ljava/lang/Throwable;

.field public final h:[B

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sunia/HTREnginev2/vkp;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sunia/HTREnginev2/vkp;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/sunia/HTREnginev2/ukp;->e:Lcom/sunia/HTREnginev2/vkp;

    .line 5
    iput p3, p0, Lcom/sunia/HTREnginev2/ukp;->f:I

    .line 6
    iput-object p4, p0, Lcom/sunia/HTREnginev2/ukp;->g:Ljava/lang/Throwable;

    .line 7
    iput-object p5, p0, Lcom/sunia/HTREnginev2/ukp;->h:[B

    .line 8
    iput-object p1, p0, Lcom/sunia/HTREnginev2/ukp;->i:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/sunia/HTREnginev2/ukp;->j:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/sunia/HTREnginev2/vkp;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgv;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/sunia/HTREnginev2/ukp;-><init>(Ljava/lang/String;Lcom/sunia/HTREnginev2/vkp;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ukp;->e:Lcom/sunia/HTREnginev2/vkp;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ukp;->i:Ljava/lang/String;

    iget v2, p0, Lcom/sunia/HTREnginev2/ukp;->f:I

    iget-object v3, p0, Lcom/sunia/HTREnginev2/ukp;->g:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/ukp;->h:[B

    iget-object v5, p0, Lcom/sunia/HTREnginev2/ukp;->j:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/sunia/HTREnginev2/vkp;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

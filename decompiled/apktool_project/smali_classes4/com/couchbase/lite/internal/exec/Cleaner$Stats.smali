.class public Lcom/couchbase/lite/internal/exec/Cleaner$Stats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/exec/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field public final alive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final maxSize:I

.field public final minSize:I

.field public final timeIn:J


# direct methods
.method public constructor <init>(JIILjava/util/List;)V
    .locals 0
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/couchbase/lite/internal/exec/Cleaner$Stats;->timeIn:J

    iput p3, p0, Lcom/couchbase/lite/internal/exec/Cleaner$Stats;->minSize:I

    iput p4, p0, Lcom/couchbase/lite/internal/exec/Cleaner$Stats;->maxSize:I

    iput-object p5, p0, Lcom/couchbase/lite/internal/exec/Cleaner$Stats;->alive:Ljava/util/List;

    return-void
.end method

.class public final synthetic Lcom/sunia/HTREnginev2/na;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/concurrent/Executor;

.field public final synthetic f:Ljava/lang/Runnable;

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/na;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/na;->f:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/na;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/na;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/na;->f:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/na;->g:J

    invoke-static {v0, v1, v2, v3}, Lcom/couchbase/lite/internal/AndroidExecutionService;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;J)V

    return-void
.end method

.class public final synthetic Lcom/sunia/HTREnginev2/s2f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/f3f$c;


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/e3f;

.field public final synthetic b:Ljava/util/concurrent/Callable;

.field public final synthetic c:J

.field public final synthetic d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/e3f;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/s2f;->a:Lcom/sunia/HTREnginev2/e3f;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/s2f;->b:Ljava/util/concurrent/Callable;

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/s2f;->c:J

    iput-object p5, p0, Lcom/sunia/HTREnginev2/s2f;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/s2f;->a:Lcom/sunia/HTREnginev2/e3f;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/s2f;->b:Ljava/util/concurrent/Callable;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/s2f;->c:J

    iget-object v4, p0, Lcom/sunia/HTREnginev2/s2f;->d:Ljava/util/concurrent/TimeUnit;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sunia/HTREnginev2/e3f;->g(Lcom/sunia/HTREnginev2/e3f;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

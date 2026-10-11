.class public final synthetic Lcom/sunia/HTREnginev2/z2f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/f3f$c;


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/e3f;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z2f;->a:Lcom/sunia/HTREnginev2/e3f;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/z2f;->b:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/z2f;->c:J

    iput-wide p5, p0, Lcom/sunia/HTREnginev2/z2f;->d:J

    iput-object p7, p0, Lcom/sunia/HTREnginev2/z2f;->e:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8

    iget-object v0, p0, Lcom/sunia/HTREnginev2/z2f;->a:Lcom/sunia/HTREnginev2/e3f;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/z2f;->b:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/z2f;->c:J

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/z2f;->d:J

    iget-object v6, p0, Lcom/sunia/HTREnginev2/z2f;->e:Ljava/util/concurrent/TimeUnit;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/sunia/HTREnginev2/e3f;->i(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

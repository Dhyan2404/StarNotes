.class public Lorg/apache/commons/lang3/concurrent/TimedSemaphore$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->startTimer()Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/lang3/concurrent/TimedSemaphore;


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/concurrent/TimedSemaphore;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore$a;->e:Lorg/apache/commons/lang3/concurrent/TimedSemaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore$a;->e:Lorg/apache/commons/lang3/concurrent/TimedSemaphore;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->b()V

    return-void
.end method

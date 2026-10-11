.class public Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lorg/apache/http/impl/conn/tsccm/WaitingThread;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->b:Z

    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->a:Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->interrupt()V

    :cond_0
    return-void
.end method

.method public setWaitingThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->a:Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    iget-boolean p0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->b:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->interrupt()V

    :cond_0
    return-void
.end method

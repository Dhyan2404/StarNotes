.class public Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper$ThreadController;
    }
.end annotation


# static fields
.field private static m_tpool:Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper$ThreadController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper$ThreadController;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper$ThreadController;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper;->m_tpool:Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper$ThreadController;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper;->m_tpool:Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper$ThreadController;

    invoke-virtual {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper$ThreadController;->run(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper;->m_tpool:Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper$ThreadController;

    invoke-virtual {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ThreadControllerWrapper$ThreadController;->waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

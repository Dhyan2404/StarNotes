.class Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/status/StatusLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BoundedQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentLinkedQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x36c2d800669ec029L


# instance fields
.field private final size:I

.field final synthetic this$0:Lorg/apache/logging/log4j/status/StatusLogger;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/status/StatusLogger;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            "this$0",
            "size"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;->this$0:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput p2, p0, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;->size:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;->this$0:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-static {p1}, Lorg/apache/logging/log4j/status/StatusLogger;->access$000(Lorg/apache/logging/log4j/status/StatusLogger;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    iget v0, p0, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;->size:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;->this$0:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-static {p1}, Lorg/apache/logging/log4j/status/StatusLogger;->access$000(Lorg/apache/logging/log4j/status/StatusLogger;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

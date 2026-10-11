.class Lsun/font/FontDesignMetrics$KeyReference;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/DisposerRecord;
.implements Lsun/java2d/Disposer$PollDisposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/FontDesignMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyReference"
.end annotation


# static fields
.field static queue:Ljava/lang/ref/ReferenceQueue;


# instance fields
.field key:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/java2d/Disposer;->getQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    sput-object v0, Lsun/font/FontDesignMetrics$KeyReference;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lsun/font/FontDesignMetrics$KeyReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lsun/font/FontDesignMetrics$KeyReference;->key:Ljava/lang/Object;

    invoke-static {p0, p0}, Lsun/java2d/Disposer;->addReference(Ljava/lang/ref/Reference;Lsun/java2d/DisposerRecord;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    invoke-static {}, Lsun/font/FontDesignMetrics;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lsun/font/FontDesignMetrics$KeyReference;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-static {}, Lsun/font/FontDesignMetrics;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object p0, p0, Lsun/font/FontDesignMetrics$KeyReference;->key:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

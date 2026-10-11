.class public Lcom/tencent/qimei/aa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qimei/aa/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/tencent/qimei/ac/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/aa/a;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qimei/aa/a;->b:Ljava/lang/String;

    new-instance v0, Lcom/tencent/qimei/ac/b;

    invoke-direct {v0, p1}, Lcom/tencent/qimei/ac/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/aa/a;->c:Lcom/tencent/qimei/ac/b;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/qimei/aa/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/aa/a;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/aa/a;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/qimei/aa/a;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/aa/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()Lcom/tencent/qimei/ac/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/qimei/aa/a;->c:Lcom/tencent/qimei/ac/b;

    return-object p0
.end method

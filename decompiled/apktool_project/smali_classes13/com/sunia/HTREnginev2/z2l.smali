.class public final Lcom/sunia/HTREnginev2/z2l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/z2l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/sunia/HTREnginev2/k5n;

.field public c:Lcom/sunia/HTREnginev2/z2l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/z2l;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/sunia/HTREnginev2/k5n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z2l;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/z2l;->b:Lcom/sunia/HTREnginev2/k5n;

    return-void
.end method

.method public static a(Lcom/sunia/HTREnginev2/k5n;Ljava/lang/Object;)Lcom/sunia/HTREnginev2/z2l;
    .locals 2

    sget-object v0, Lcom/sunia/HTREnginev2/z2l;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/z2l;

    iput-object p1, v1, Lcom/sunia/HTREnginev2/z2l;->a:Ljava/lang/Object;

    iput-object p0, v1, Lcom/sunia/HTREnginev2/z2l;->b:Lcom/sunia/HTREnginev2/k5n;

    const/4 p0, 0x0

    iput-object p0, v1, Lcom/sunia/HTREnginev2/z2l;->c:Lcom/sunia/HTREnginev2/z2l;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/sunia/HTREnginev2/z2l;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/z2l;-><init>(Ljava/lang/Object;Lcom/sunia/HTREnginev2/k5n;)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static b(Lcom/sunia/HTREnginev2/z2l;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/z2l;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/z2l;->b:Lcom/sunia/HTREnginev2/k5n;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/z2l;->c:Lcom/sunia/HTREnginev2/z2l;

    sget-object v0, Lcom/sunia/HTREnginev2/z2l;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

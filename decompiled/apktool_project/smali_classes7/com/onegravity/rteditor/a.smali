.class public Lcom/onegravity/rteditor/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/a$a;,
        Lcom/onegravity/rteditor/a$b;
    }
.end annotation


# static fields
.field public static final c:I = 0x32

.field public static final d:I = 0x12c


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Stack<",
            "Lcom/onegravity/rteditor/a$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Stack<",
            "Lcom/onegravity/rteditor/a$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/a;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/a$a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/a;->e(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/a;->c(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/a$a;

    invoke-virtual {p2, v1}, Lcom/onegravity/rteditor/a$a;->a(Lcom/onegravity/rteditor/a$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/a$a;

    invoke-virtual {p2, v1}, Lcom/onegravity/rteditor/a$a;->b(Lcom/onegravity/rteditor/a$a;)Lcom/onegravity/rteditor/a$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/onegravity/rteditor/a;->f(Lcom/onegravity/rteditor/a$a;Ljava/util/Stack;)V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/onegravity/rteditor/RTEditText;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/a;->e(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/a;->c(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/RTEditText;",
            ")",
            "Ljava/util/Stack<",
            "Lcom/onegravity/rteditor/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/a;->b:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/a;->d(Ljava/util/Map;Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/util/Map;Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Stack<",
            "Lcom/onegravity/rteditor/a$a;",
            ">;>;",
            "Lcom/onegravity/rteditor/RTEditText;",
            ")",
            "Ljava/util/Stack<",
            "Lcom/onegravity/rteditor/a$a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Stack;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/Stack;

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final e(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/RTEditText;",
            ")",
            "Ljava/util/Stack<",
            "Lcom/onegravity/rteditor/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/a;->a:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/a;->d(Ljava/util/Map;Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lcom/onegravity/rteditor/a$a;Ljava/util/Stack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/a$a;",
            "Ljava/util/Stack<",
            "Lcom/onegravity/rteditor/a$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized g(Lcom/onegravity/rteditor/RTEditText;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/a;->c(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/a;->e(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onegravity/rteditor/a$a;

    invoke-virtual {p0, v2, v1}, Lcom/onegravity/rteditor/a;->f(Lcom/onegravity/rteditor/a$a;Ljava/util/Stack;)V

    invoke-virtual {v2, p1}, Lcom/onegravity/rteditor/a$a;->c(Lcom/onegravity/rteditor/RTEditText;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onegravity/rteditor/a$a;

    invoke-virtual {v2, v3}, Lcom/onegravity/rteditor/a$a;->a(Lcom/onegravity/rteditor/a$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onegravity/rteditor/a$a;

    invoke-virtual {p0, v2, v1}, Lcom/onegravity/rteditor/a;->f(Lcom/onegravity/rteditor/a$a;Ljava/util/Stack;)V

    invoke-virtual {v2, p1}, Lcom/onegravity/rteditor/a$a;->c(Lcom/onegravity/rteditor/RTEditText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(Lcom/onegravity/rteditor/RTEditText;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/a;->e(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/a;->c(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onegravity/rteditor/a$a;

    invoke-virtual {p0, v2, v1}, Lcom/onegravity/rteditor/a;->f(Lcom/onegravity/rteditor/a$a;Ljava/util/Stack;)V

    invoke-virtual {v2, p1}, Lcom/onegravity/rteditor/a$a;->d(Lcom/onegravity/rteditor/RTEditText;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onegravity/rteditor/a$a;

    invoke-virtual {v2, v3}, Lcom/onegravity/rteditor/a$a;->a(Lcom/onegravity/rteditor/a$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onegravity/rteditor/a$a;

    invoke-virtual {p0, v2, v1}, Lcom/onegravity/rteditor/a;->f(Lcom/onegravity/rteditor/a$a;Ljava/util/Stack;)V

    invoke-virtual {v2, p1}, Lcom/onegravity/rteditor/a$a;->d(Lcom/onegravity/rteditor/RTEditText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

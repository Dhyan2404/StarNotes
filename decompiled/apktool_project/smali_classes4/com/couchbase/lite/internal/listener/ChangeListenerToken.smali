.class public Lcom/couchbase/lite/internal/listener/ChangeListenerToken;
.super Lcom/couchbase/lite/ListenerToken;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/couchbase/lite/ListenerToken;"
    }
.end annotation


# static fields
.field public static final DUMMY:Lcom/couchbase/lite/internal/listener/ChangeListenerToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/listener/ChangeListenerToken<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private key:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final listener:Lcom/couchbase/lite/ChangeListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/ChangeListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken$1;

    new-instance v1, Lcom/sunia/HTREnginev2/mqd;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/mqd;-><init>()V

    new-instance v2, Lcom/sunia/HTREnginev2/nqd;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/nqd;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/couchbase/lite/internal/listener/ChangeListenerToken$1;-><init>(Lcom/couchbase/lite/ChangeListener;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    sput-object v0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->DUMMY:Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/ChangeListener;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/ChangeListener<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Lcom/couchbase/lite/ListenerToken;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/ListenerToken;-><init>(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    const-string p2, "listener"

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/ChangeListener;

    iput-object p1, p0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->listener:Lcom/couchbase/lite/ChangeListener;

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/listener/ChangeListenerToken;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->lambda$postChange$2(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/Void;)V
    .locals 0

    invoke-static {p0}, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->lambda$static$0(Ljava/lang/Void;)V

    return-void
.end method

.method private synthetic lambda$postChange$2(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->listener:Lcom/couchbase/lite/ChangeListener;

    invoke-interface {p0, p1}, Lcom/couchbase/lite/ChangeListener;->changed(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$static$1(Lcom/couchbase/lite/ListenerToken;)V
    .locals 0

    return-void
.end method

.method public static synthetic w(Lcom/couchbase/lite/ListenerToken;)V
    .locals 0

    invoke-static {p0}, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->lambda$static$1(Lcom/couchbase/lite/ListenerToken;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->key:Ljava/lang/String;

    return-object p0
.end method

.method public postChange(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/oqd;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/oqd;-><init>(Lcom/couchbase/lite/internal/listener/ChangeListenerToken;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/ListenerToken;->send(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->key:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeListenerToken{@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->listener:Lcom/couchbase/lite/ChangeListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/couchbase/lite/ListenerToken;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

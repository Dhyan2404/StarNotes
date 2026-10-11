.class final Lcom/oplus/ocs/base/task/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/ocs/base/task/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/ocs/base/task/Continuation<",
        "Ljava/lang/Void;",
        "Lcom/oplus/ocs/base/task/Task<",
        "Ljava/util/List<",
        "Lcom/oplus/ocs/base/task/Task<",
        "*>;>;>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/ocs/base/task/o;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/oplus/ocs/base/task/Task;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/oplus/ocs/base/task/o;->a:Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lcom/oplus/ocs/base/task/Tasks;->forResult(Ljava/lang/Object;)Lcom/oplus/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method

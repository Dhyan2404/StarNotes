.class public final synthetic Lcom/couchbase/lite/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/ConflictResolver;

.field public final synthetic f:Lcom/couchbase/lite/Conflict;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/Conflict;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/a;->e:Lcom/couchbase/lite/ConflictResolver;

    iput-object p2, p0, Lcom/couchbase/lite/a;->f:Lcom/couchbase/lite/Conflict;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/a;->e:Lcom/couchbase/lite/ConflictResolver;

    iget-object p0, p0, Lcom/couchbase/lite/a;->f:Lcom/couchbase/lite/Conflict;

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractDatabase;->f(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/Conflict;)Lcom/couchbase/lite/Document;

    move-result-object p0

    return-object p0
.end method

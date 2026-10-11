.class public final synthetic Lcom/sunia/HTREnginev2/p4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/ConflictResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/ConflictResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p4;->a:Lcom/couchbase/lite/ConflictResolver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p4;->a:Lcom/couchbase/lite/ConflictResolver;

    check-cast p1, Lcom/couchbase/lite/CollectionConfiguration;

    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->a(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/CollectionConfiguration;)V

    return-void
.end method

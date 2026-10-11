.class public final synthetic Lcom/couchbase/lite/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NullablePredicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/couchbase/lite/internal/core/C4DocumentChange;

    invoke-static {p1}, Lcom/couchbase/lite/CollectionChangeNotifier;->j(Lcom/couchbase/lite/internal/core/C4DocumentChange;)Z

    move-result p0

    return p0
.end method

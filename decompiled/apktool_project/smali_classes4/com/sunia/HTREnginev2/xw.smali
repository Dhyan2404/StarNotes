.class public final synthetic Lcom/sunia/HTREnginev2/xw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xw;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xw;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xw;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xw;->b:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->j(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;

    move-result-object p0

    return-object p0
.end method

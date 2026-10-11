.class public final synthetic Lcom/couchbase/lite/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/AbstractQuery;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/AbstractQuery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/f;->e:Lcom/couchbase/lite/AbstractQuery;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/f;->e:Lcom/couchbase/lite/AbstractQuery;

    invoke-static {p0}, Lcom/couchbase/lite/AbstractQuery;->e(Lcom/couchbase/lite/AbstractQuery;)V

    return-void
.end method

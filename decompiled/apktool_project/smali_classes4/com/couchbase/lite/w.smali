.class public final synthetic Lcom/couchbase/lite/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/couchbase/lite/w;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/w;->a:I

    check-cast p1, Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    invoke-static {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->j(ILcom/couchbase/lite/internal/core/C4IndexUpdater;)V

    return-void
.end method

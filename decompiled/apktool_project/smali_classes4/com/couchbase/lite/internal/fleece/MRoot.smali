.class public final Lcom/couchbase/lite/internal/fleece/MRoot;
.super Lcom/couchbase/lite/internal/fleece/MCollection;
.source "SourceFile"


# instance fields
.field private final content:Lcom/couchbase/lite/internal/fleece/MValue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/MContext;Lcom/couchbase/lite/internal/fleece/FLValue;Z)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/MContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/FLValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3}, Lcom/couchbase/lite/internal/fleece/MCollection;-><init>(Lcom/couchbase/lite/internal/fleece/MContext;Z)V

    new-instance p1, Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-direct {p1, p2}, Lcom/couchbase/lite/internal/fleece/MValue;-><init>(Lcom/couchbase/lite/internal/fleece/FLValue;)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/MRoot;->content:Lcom/couchbase/lite/internal/fleece/MValue;

    return-void
.end method


# virtual methods
.method public asNative()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MRoot;->content:Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-virtual {v0, p0}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLEncoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MRoot;->content:Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/MValue;->encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V

    return-void
.end method

.method public isMutated()Z
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MRoot;->content:Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MValue;->isMutated()Z

    move-result p0

    return p0
.end method

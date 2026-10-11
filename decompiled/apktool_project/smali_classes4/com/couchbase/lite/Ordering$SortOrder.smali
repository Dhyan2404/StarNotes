.class public Lcom/couchbase/lite/Ordering$SortOrder;
.super Lcom/couchbase/lite/Ordering;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortOrder"
.end annotation


# instance fields
.field private final expression:Lcom/couchbase/lite/Expression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private isAscending:Z


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Expression;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/Ordering;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/Ordering$SortOrder;->expression:Lcom/couchbase/lite/Expression;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/couchbase/lite/Ordering$SortOrder;->isAscending:Z

    return-void
.end method


# virtual methods
.method public asJSON()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/couchbase/lite/Ordering$SortOrder;->isAscending:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/couchbase/lite/Ordering$SortOrder;->expression:Lcom/couchbase/lite/Expression;

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "DESC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/couchbase/lite/Ordering$SortOrder;->expression:Lcom/couchbase/lite/Expression;

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public ascending()Lcom/couchbase/lite/Ordering;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/couchbase/lite/Ordering$SortOrder;->isAscending:Z

    return-object p0
.end method

.method public descending()Lcom/couchbase/lite/Ordering;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/couchbase/lite/Ordering$SortOrder;->isAscending:Z

    return-object p0
.end method

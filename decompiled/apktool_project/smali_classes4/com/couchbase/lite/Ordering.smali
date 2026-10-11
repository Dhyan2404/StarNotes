.class public abstract Lcom/couchbase/lite/Ordering;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/Ordering$SortOrder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Ordering$SortOrder;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Ordering$SortOrder;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Ordering$SortOrder;-><init>(Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method

.method public static property(Ljava/lang/String;)Lcom/couchbase/lite/Ordering$SortOrder;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/Ordering;->expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Ordering$SortOrder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract asJSON()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

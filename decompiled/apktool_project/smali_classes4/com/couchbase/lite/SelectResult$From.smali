.class public final Lcom/couchbase/lite/SelectResult$From;
.super Lcom/couchbase/lite/SelectResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/SelectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "From"
.end annotation


# direct methods
.method private constructor <init>(Lcom/couchbase/lite/Expression;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lcom/couchbase/lite/SelectResult;-><init>(Lcom/couchbase/lite/Expression;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/SelectResult$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/SelectResult$From;-><init>(Lcom/couchbase/lite/Expression;)V

    return-void
.end method


# virtual methods
.method public from(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "alias"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/couchbase/lite/PropertyExpression;->allFrom(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/SelectResult;->setExpression(Lcom/couchbase/lite/Expression;)V

    return-object p0
.end method

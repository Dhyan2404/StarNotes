.class public final Lcom/couchbase/lite/FullTextExpression;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/FullTextExpression$FullTextMatchExpression;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/FullTextExpression;->name:Ljava/lang/String;

    return-void
.end method

.method public static index(Ljava/lang/String;)Lcom/couchbase/lite/FullTextExpression;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/FullTextExpression;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/FullTextExpression;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/FullTextExpression$FullTextMatchExpression;

    iget-object p0, p0, Lcom/couchbase/lite/FullTextExpression;->name:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/FullTextExpression$FullTextMatchExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

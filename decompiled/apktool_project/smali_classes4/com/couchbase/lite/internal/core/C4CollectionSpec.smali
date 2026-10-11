.class public final Lcom/couchbase/lite/internal/core/C4CollectionSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final collectionName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final scopeName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4CollectionSpec;->scopeName:Ljava/lang/String;

    iput-object p2, p0, Lcom/couchbase/lite/internal/core/C4CollectionSpec;->collectionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCollectionName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4CollectionSpec;->collectionName:Ljava/lang/String;

    return-object p0
.end method

.method public getScopeName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4CollectionSpec;->scopeName:Ljava/lang/String;

    return-object p0
.end method

.class final Lcom/couchbase/lite/internal/ReplicationCollection$CollectionFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/ReplicationCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionFilter"
.end annotation


# instance fields
.field private final collection:Lcom/couchbase/lite/internal/BaseCollection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final filter:Lcom/couchbase/lite/ReplicationFilter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/ReplicationFilter;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/ReplicationCollection$CollectionFilter;->collection:Lcom/couchbase/lite/internal/BaseCollection;

    iput-object p2, p0, Lcom/couchbase/lite/internal/ReplicationCollection$CollectionFilter;->filter:Lcom/couchbase/lite/ReplicationFilter;

    return-void
.end method

.method private getDocumentFlags(I)Ljava/util/EnumSet;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lcom/couchbase/lite/DocumentFlag;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/couchbase/lite/DocumentFlag;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/core/C4Constants;->hasFlags(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/couchbase/lite/DocumentFlag;->DELETED:Lcom/couchbase/lite/DocumentFlag;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/core/C4Constants;->hasFlags(II)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/couchbase/lite/DocumentFlag;->ACCESS_REMOVED:Lcom/couchbase/lite/DocumentFlag;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method


# virtual methods
.method public test(Ljava/lang/String;Ljava/lang/String;JI)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/internal/ReplicationCollection$CollectionFilter;->filter:Lcom/couchbase/lite/ReplicationFilter;

    iget-object v1, p0, Lcom/couchbase/lite/internal/ReplicationCollection$CollectionFilter;->collection:Lcom/couchbase/lite/internal/BaseCollection;

    invoke-static {p3, p4}, Lcom/couchbase/lite/internal/fleece/FLDict;->create(J)Lcom/couchbase/lite/internal/fleece/FLDict;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3}, Lcom/couchbase/lite/internal/BaseCollection;->createFilterDocument(Ljava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLDict;)Lcom/couchbase/lite/Document;

    move-result-object p1

    invoke-direct {p0, p5}, Lcom/couchbase/lite/internal/ReplicationCollection$CollectionFilter;->getDocumentFlags(I)Ljava/util/EnumSet;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/couchbase/lite/ReplicationFilter;->filtered(Lcom/couchbase/lite/Document;Ljava/util/EnumSet;)Z

    move-result p0

    return p0
.end method

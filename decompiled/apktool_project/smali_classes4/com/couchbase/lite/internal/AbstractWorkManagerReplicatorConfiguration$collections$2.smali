.class final synthetic Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration$collections$2;
.super Lkotlin/jvm/internal/PropertyReference0Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const-class v2, Lcom/couchbase/lite/ReplicatorConfiguration;

    const-string v3, "collections"

    const-string v4, "getCollections()Ljava/util/Set;"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getCollections()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->computeFileMD5Observable(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$a;->e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/KSyncBundle;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/KSyncBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$a;->e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$a;->f:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->access$compute(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$a;->a(Lcom/onyx/android/sdk/replicator/KSyncBundle;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method

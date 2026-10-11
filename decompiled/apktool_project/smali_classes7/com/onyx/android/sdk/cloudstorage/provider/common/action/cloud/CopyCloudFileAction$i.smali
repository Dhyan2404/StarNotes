.class public final Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->o(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCopyCloudFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$findConflict$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,325:1\n766#2:326\n857#2,2:327\n2634#2:329\n1855#2,2:331\n1#3:330\n*S KotlinDebug\n*F\n+ 1 CopyCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$findConflict$3\n*L\n138#1:326\n138#1:327,2\n141#1:329\n143#1:331,2\n141#1:330\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCopyCloudFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$findConflict$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,325:1\n766#2:326\n857#2,2:327\n2634#2:329\n1855#2,2:331\n1#3:330\n*S KotlinDebug\n*F\n+ 1 CopyCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$findConflict$3\n*L\n138#1:326\n138#1:327,2\n141#1:329\n143#1:331,2\n141#1:330\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$i;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)Ljava/lang/Boolean;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$i;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-static {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->access$getDestDataMap$p(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conflict file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$i;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-static {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->access$getDestDataMap$p(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->getConflictBeanMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$i;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->getConflictBeanMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Map;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction$i;->a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

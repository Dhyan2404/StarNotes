.class final Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$onImportTotalComplete$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImportDocumentsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportDocumentsAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$onImportTotalComplete$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,554:1\n1549#2:555\n1620#2,3:556\n766#2:559\n857#2,2:560\n1549#2:562\n1620#2,3:563\n*S KotlinDebug\n*F\n+ 1 ImportDocumentsAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$onImportTotalComplete$1\n*L\n471#1:555\n471#1:556,3\n472#1:559\n472#1:560,2\n473#1:562\n473#1:563,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImportDocumentsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportDocumentsAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$onImportTotalComplete$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,554:1\n1549#2:555\n1620#2,3:556\n766#2:559\n857#2,2:560\n1549#2:562\n1620#2,3:563\n*S KotlinDebug\n*F\n+ 1 ImportDocumentsAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$onImportTotalComplete$1\n*L\n471#1:555\n471#1:556,3\n472#1:559\n472#1:560,2\n473#1:562\n473#1:563,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$onImportTotalComplete$1;->this$0:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$onImportTotalComplete$1;->invoke(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->importDocumentTempFileDir()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$onImportTotalComplete$1;->this$0:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->access$getTaskInfoList$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    .line 7
    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;->getDocPath()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 11
    invoke-static {v3, p1, v6, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p1
.end method

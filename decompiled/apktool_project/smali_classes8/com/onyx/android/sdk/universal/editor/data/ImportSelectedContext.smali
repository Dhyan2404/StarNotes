.class public final Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ImportInfo;,
        Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;,
        Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImportSelectedContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportSelectedContext.kt\ncom/onyx/android/sdk/universal/editor/data/ImportSelectedContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1045#2:126\n1549#2:130\n1620#2,3:131\n2634#2:134\n2634#2:136\n2634#2:138\n187#3,3:127\n1#4:135\n1#4:137\n1#4:139\n*S KotlinDebug\n*F\n+ 1 ImportSelectedContext.kt\ncom/onyx/android/sdk/universal/editor/data/ImportSelectedContext\n*L\n31#1:126\n61#1:130\n61#1:131,3\n82#1:134\n95#1:136\n103#1:138\n57#1:127,3\n82#1:135\n95#1:137\n103#1:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0003EFGB\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010(\u001a\u00020)2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003J\u0014\u0010*\u001a\u00020)2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003J?\u0010+\u001a\u00020)2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010,\u001a\u00020\"2!\u0010-\u001a\u001d\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u00020)0.J\u0008\u00102\u001a\u00020)H\u0002J\u0006\u00103\u001a\u00020\"J\u0008\u00104\u001a\u0004\u0018\u00010\u0008J\u0008\u00105\u001a\u0004\u0018\u00010\u0008J\u0008\u00106\u001a\u000207H\u0002J\u0008\u00108\u001a\u000207H\u0002J\u0006\u00109\u001a\u000207J\u0006\u0010:\u001a\u000207J\u0014\u0010;\u001a\u00020)2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003J\u000e\u0010<\u001a\u00020)2\u0006\u0010=\u001a\u00020>J\u000e\u0010?\u001a\u00020)2\u0006\u0010=\u001a\u00020@J\u0016\u0010A\u001a\u00020)2\u0006\u0010B\u001a\u00020\u00042\u0006\u0010C\u001a\u00020\"J\u0012\u0010D\u001a\u00020\u0008*\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u0005R\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001a\"\u0004\u0008\u001e\u0010\u0005R\u001a\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020 0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001a\u00a8\u0006H"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "",
        "uriList",
        "",
        "Landroid/net/Uri;",
        "(Ljava/util/List;)V",
        "importInfoMap",
        "",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ImportInfo;",
        "modifyItem",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;",
        "getModifyItem",
        "()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;",
        "setModifyItem",
        "(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;)V",
        "selectedFolderId",
        "getSelectedFolderId",
        "()Ljava/lang/String;",
        "setSelectedFolderId",
        "(Ljava/lang/String;)V",
        "selectedFolderName",
        "getSelectedFolderName",
        "setSelectedFolderName",
        "selectedTagIdList",
        "getSelectedTagIdList",
        "()Ljava/util/List;",
        "setSelectedTagIdList",
        "selectedTagNameList",
        "getSelectedTagNameList",
        "setSelectedTagNameList",
        "taskInfoMap",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;",
        "totalDocCount",
        "",
        "getTotalDocCount",
        "()I",
        "setTotalDocCount",
        "(I)V",
        "getUriList",
        "addDefaultImportInfo",
        "",
        "addTaskInfo",
        "completeCount",
        "importedCount",
        "importSuccessCallback",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "agr",
        "countTotalImportInfo",
        "getCompleteTaskCount",
        "getModifyFileName",
        "getModifyName",
        "isAllComplete",
        "",
        "isImportSuccess",
        "isMultipleDoc",
        "isOpenDocument",
        "removeTaskInfo",
        "resetImportImageAgr",
        "arg",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;",
        "resetNoteImportArg",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "updateImportInfo",
        "uri",
        "totalTaskCount",
        "toKey",
        "ImportInfo",
        "ModifyItem",
        "TaskInfo",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImportSelectedContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportSelectedContext.kt\ncom/onyx/android/sdk/universal/editor/data/ImportSelectedContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1045#2:126\n1549#2:130\n1620#2,3:131\n2634#2:134\n2634#2:136\n2634#2:138\n187#3,3:127\n1#4:135\n1#4:137\n1#4:139\n*S KotlinDebug\n*F\n+ 1 ImportSelectedContext.kt\ncom/onyx/android/sdk/universal/editor/data/ImportSelectedContext\n*L\n31#1:126\n61#1:130\n61#1:131,3\n82#1:134\n95#1:136\n103#1:138\n57#1:127,3\n82#1:135\n95#1:137\n103#1:139\n*E\n"
    }
.end annotation


# instance fields
.field private final importInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ImportInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private modifyItem:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectedFolderId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectedFolderName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectedTagIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectedTagNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private totalDocCount:I

.field private final uriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uriList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->uriList:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->importInfoMap:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->taskInfoMap:Ljava/util/Map;

    return-void
.end method

.method private final countTotalImportInfo()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->totalDocCount:I

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->importInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ImportInfo;

    iget v2, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->totalDocCount:I

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ImportInfo;->getFileCount()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->totalDocCount:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final isAllComplete()Z
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->taskInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;->isComplete()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    move v0, v2

    :goto_0
    xor-int/2addr v0, v2

    if-nez v0, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->taskInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;->getUriList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->uriList:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method private final isImportSuccess()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->getCompleteTaskCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final toKey(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$toKey$$inlined$sortedBy$1;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$toKey$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    const-string v1, "|"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addDefaultImportInfo(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uriList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->importInfoMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ImportInfo;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6, v4, v5}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ImportInfo;-><init>(Landroid/net/Uri;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->countTotalImportInfo()V

    return-void
.end method

.method public final addTaskInfo(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uriList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->taskInfoMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->toKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;-><init>(Ljava/util/List;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final completeCount(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uriList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importSuccessCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->taskInfoMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->toKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;->setComplete(Z)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;->setImportedCount(I)V

    :cond_0
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->isAllComplete()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->isImportSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final getCompleteTaskCount()I
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->taskInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$TaskInfo;->getImportedCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getModifyFileName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->modifyItem:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;->getFileName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getModifyItem()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->modifyItem:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;

    return-object p0
.end method

.method public final getModifyName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->modifyItem:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;->getFileName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSelectedFolderId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedFolderId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectedFolderName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedFolderName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectedTagIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedTagIdList:Ljava/util/List;

    return-object p0
.end method

.method public final getSelectedTagNameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedTagNameList:Ljava/util/List;

    return-object p0
.end method

.method public final getTotalDocCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->totalDocCount:I

    return p0
.end method

.method public final getUriList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->uriList:Ljava/util/List;

    return-object p0
.end method

.method public final isMultipleDoc()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->totalDocCount:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isOpenDocument()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->isMultipleDoc()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final removeTaskInfo(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uriList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->taskInfoMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->toKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final resetImportImageAgr(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedFolderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;->setParentId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedTagIdList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;->setTagList(Ljava/util/List;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;->setImportSelectedContext(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public final resetNoteImportArg(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setImportSelectedContext(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedFolderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setParentId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedTagIdList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setTagIdList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedFolderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setImportFolderName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedTagNameList:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setImportTagNameList(Ljava/util/List;)V

    return-void
.end method

.method public final setModifyItem(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->modifyItem:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ModifyItem;

    return-void
.end method

.method public final setSelectedFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedFolderId:Ljava/lang/String;

    return-void
.end method

.method public final setSelectedFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedFolderName:Ljava/lang/String;

    return-void
.end method

.method public final setSelectedTagIdList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedTagIdList:Ljava/util/List;

    return-void
.end method

.method public final setSelectedTagNameList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->selectedTagNameList:Ljava/util/List;

    return-void
.end method

.method public final setTotalDocCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->totalDocCount:I

    return-void
.end method

.method public final updateImportInfo(Landroid/net/Uri;I)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->importInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ImportInfo;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext$ImportInfo;->setFileCount(I)V

    :goto_0
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->countTotalImportInfo()V

    return-void
.end method

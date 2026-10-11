.class public final Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteImportArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteImportArgs.kt\ncom/onyx/android/sdk/universal/editor/data/NoteImportArgs\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n526#2:156\n511#2,6:157\n526#2:166\n511#2,6:167\n187#3,3:163\n167#3,3:173\n215#3,2:176\n288#4,2:178\n*S KotlinDebug\n*F\n+ 1 NoteImportArgs.kt\ncom/onyx/android/sdk/universal/editor/data/NoteImportArgs\n*L\n53#1:156\n53#1:157,6\n57#1:166\n57#1:167,6\n53#1:163,3\n57#1:173,3\n67#1:176,2\n74#1:178,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0003\n\u0002\u0008\u000c\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u0000 X2\u00020\u0001:\u0001XB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010R\u001a\u00020\u0012J\u0006\u0010S\u001a\u00020\u0012J\u0006\u0010T\u001a\u00020\u0005J\u0008\u0010U\u001a\u0004\u0018\u00010>J\u0006\u0010V\u001a\u00020WR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R \u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010(\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010%\"\u0004\u0008*\u0010\'R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001c\u0010/\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010%\"\u0004\u00081\u0010\'R\u001c\u00102\u001a\u0004\u0018\u000103X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\"\u00108\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u000109X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u001b\"\u0004\u0008;\u0010\u001dR\u001d\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020>0=\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010,\"\u0004\u0008C\u0010.R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010%\"\u0004\u0008E\u0010\'R\"\u0010F\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u000109X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010\u001b\"\u0004\u0008H\u0010\u001dR\u001c\u0010I\u001a\u0004\u0018\u00010JX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR\u001a\u0010O\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010\u0014\"\u0004\u0008Q\u0010\u0016\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "",
        "importFileUri",
        "Landroid/net/Uri;",
        "parentId",
        "",
        "(Landroid/net/Uri;Ljava/lang/String;)V",
        "cloudFileBean",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "getCloudFileBean",
        "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "setCloudFileBean",
        "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
        "copyNoteListArgs",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;",
        "getCopyNoteListArgs",
        "()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;",
        "deleteSourceOnImported",
        "",
        "getDeleteSourceOnImported",
        "()Z",
        "setDeleteSourceOnImported",
        "(Z)V",
        "fileList",
        "",
        "Ljava/io/File;",
        "getFileList",
        "()Ljava/util/List;",
        "setFileList",
        "(Ljava/util/List;)V",
        "importCacheDir",
        "getImportCacheDir",
        "()Ljava/io/File;",
        "setImportCacheDir",
        "(Ljava/io/File;)V",
        "importFilePassword",
        "getImportFilePassword",
        "()Ljava/lang/String;",
        "setImportFilePassword",
        "(Ljava/lang/String;)V",
        "importFilePath",
        "getImportFilePath",
        "setImportFilePath",
        "getImportFileUri",
        "()Landroid/net/Uri;",
        "setImportFileUri",
        "(Landroid/net/Uri;)V",
        "importFolderName",
        "getImportFolderName",
        "setImportFolderName",
        "importSelectedContext",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "getImportSelectedContext",
        "()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "setImportSelectedContext",
        "(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V",
        "importTagNameList",
        "",
        "getImportTagNameList",
        "setImportTagNameList",
        "noteProgressInfoMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;",
        "getNoteProgressInfoMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "originUri",
        "getOriginUri",
        "setOriginUri",
        "getParentId",
        "setParentId",
        "tagIdList",
        "getTagIdList",
        "setTagIdList",
        "throwable",
        "",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "setThrowable",
        "(Ljava/lang/Throwable;)V",
        "useOriginParentId",
        "getUseOriginParentId",
        "setUseOriginParentId",
        "allErrorImported",
        "anySuccessImported",
        "getImportFileName",
        "getImportingNote",
        "getNoteProgress",
        "",
        "Companion",
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
        "SMAP\nNoteImportArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteImportArgs.kt\ncom/onyx/android/sdk/universal/editor/data/NoteImportArgs\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n526#2:156\n511#2,6:157\n526#2:166\n511#2,6:167\n187#3,3:163\n167#3,3:173\n215#3,2:176\n288#4,2:178\n*S KotlinDebug\n*F\n+ 1 NoteImportArgs.kt\ncom/onyx/android/sdk/universal/editor/data/NoteImportArgs\n*L\n53#1:156\n53#1:157,6\n57#1:166\n57#1:167,6\n53#1:163,3\n57#1:173,3\n67#1:176,2\n74#1:178,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private cloudFileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final copyNoteListArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private deleteSourceOnImported:Z

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private importCacheDir:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private importFilePassword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private importFilePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private importFileUri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private importFolderName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private importSelectedContext:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private importTagNameList:Ljava/util/List;
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

.field private final noteProgressInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private originUri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tagIdList:Ljava/util/List;
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

.field private throwable:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private useOriginParentId:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "importFileUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importFileUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->parentId:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->fileList:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->noteProgressInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importCacheDir:Ljava/io/File;

    .line 5
    new-instance p1, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;-><init>()V

    .line 6
    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importCacheDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getAbsolutePath(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->setSrcDirFilePath(Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->copyNoteListArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final allErrorImported()Z
    .locals 4

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->noteProgressInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->getIgnoreResult()Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->isError()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2
.end method

.method public final anySuccessImported()Z
    .locals 4

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->noteProgressInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->getIgnoreResult()Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    return v2
.end method

.method public final getCloudFileBean()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->cloudFileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-object p0
.end method

.method public final getCopyNoteListArgs()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->copyNoteListArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    return-object p0
.end method

.method public final getDeleteSourceOnImported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->deleteSourceOnImported:Z

    return p0
.end method

.method public final getFileList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->fileList:Ljava/util/List;

    return-object p0
.end method

.method public final getImportCacheDir()Ljava/io/File;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importCacheDir:Ljava/io/File;

    return-object p0
.end method

.method public final getImportFileName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->cloudFileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$getImportFileName$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$getImportFileName$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElseNull(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$getImportFileName$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$getImportFileName$2;-><init>(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getImportFilePassword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importFilePassword:Ljava/lang/String;

    return-object p0
.end method

.method public final getImportFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getImportFileUri()Landroid/net/Uri;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importFileUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final getImportFolderName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importFolderName:Ljava/lang/String;

    return-object p0
.end method

.method public final getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importSelectedContext:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    return-object p0
.end method

.method public final getImportTagNameList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importTagNameList:Ljava/util/List;

    return-object p0
.end method

.method public final getImportingNote()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->noteProgressInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "<get-values>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->isError()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    return-object v0
.end method

.method public final getNoteProgress()F
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->noteProgressInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->noteProgressInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Map;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->noteProgressInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v3

    double-to-float v0, v3

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getNoteProgressInfoMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->noteProgressInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final getOriginUri()Landroid/net/Uri;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->originUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTagIdList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->tagIdList:Ljava/util/List;

    return-object p0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getUseOriginParentId()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->useOriginParentId:Z

    return p0
.end method

.method public final setCloudFileBean(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->cloudFileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method

.method public final setDeleteSourceOnImported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->deleteSourceOnImported:Z

    return-void
.end method

.method public final setFileList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->fileList:Ljava/util/List;

    return-void
.end method

.method public final setImportCacheDir(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importCacheDir:Ljava/io/File;

    return-void
.end method

.method public final setImportFilePassword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importFilePassword:Ljava/lang/String;

    return-void
.end method

.method public final setImportFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importFilePath:Ljava/lang/String;

    return-void
.end method

.method public final setImportFileUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importFileUri:Landroid/net/Uri;

    return-void
.end method

.method public final setImportFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importFolderName:Ljava/lang/String;

    return-void
.end method

.method public final setImportSelectedContext(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importSelectedContext:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    return-void
.end method

.method public final setImportTagNameList(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->importTagNameList:Ljava/util/List;

    return-void
.end method

.method public final setOriginUri(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->originUri:Landroid/net/Uri;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->parentId:Ljava/lang/String;

    return-void
.end method

.method public final setTagIdList(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->tagIdList:Ljava/util/List;

    return-void
.end method

.method public final setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public final setUseOriginParentId(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->useOriginParentId:Z

    return-void
.end method

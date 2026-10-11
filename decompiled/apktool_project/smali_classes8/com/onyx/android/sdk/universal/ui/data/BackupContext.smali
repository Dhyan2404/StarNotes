.class public final Lcom/onyx/android/sdk/universal/ui/data/BackupContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupContext.kt\ncom/onyx/android/sdk/universal/ui/data/BackupContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1855#2,2:36\n1747#2,3:38\n*S KotlinDebug\n*F\n+ 1 BackupContext.kt\ncom/onyx/android/sdk/universal/ui/data/BackupContext\n*L\n28#1:36,2\n33#1:38,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u001b\n\u0002\u0010\u0003\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000f\u00a2\u0006\u0004\u0008X\u0010YJ\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0006\u0010\u0008\u001a\u00020\u0007R\u0017\u0010\u000e\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R(\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u0006\u0010\u001bR\"\u0010\u001f\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\"\u0010&\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u001e\u001a\u0004\u0008$\u0010 \"\u0004\u0008%\u0010\"R\"\u0010*\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u001e\u001a\u0004\u0008(\u0010 \"\u0004\u0008)\u0010\"R$\u00102\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\"\u00106\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010\u001e\u001a\u0004\u00084\u0010 \"\u0004\u00085\u0010\"R\"\u0010:\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010\u001e\u001a\u0004\u00088\u0010 \"\u0004\u00089\u0010\"R\"\u0010>\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010\u001e\u001a\u0004\u0008<\u0010 \"\u0004\u0008=\u0010\"R\"\u0010B\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010\u001e\u001a\u0004\u0008@\u0010 \"\u0004\u0008A\u0010\"R\"\u0010F\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010\u001e\u001a\u0004\u0008D\u0010 \"\u0004\u0008E\u0010\"R.\u0010O\u001a\u000e\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020+0G8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR(\u0010S\u001a\u0008\u0012\u0004\u0012\u00020H0\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010\u0018\u001a\u0004\u0008Q\u0010\u001a\"\u0004\u0008R\u0010\u001bR\"\u0010W\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010\u0011\u001a\u0004\u0008U\u0010\u0013\"\u0004\u0008V\u0010\u0015\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "list",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
        "setNoteExportList",
        "",
        "isError",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "a",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "getNoteQueryArgs",
        "()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "noteQueryArgs",
        "",
        "b",
        "Ljava/lang/String;",
        "getBackupFilePath",
        "()Ljava/lang/String;",
        "setBackupFilePath",
        "(Ljava/lang/String;)V",
        "backupFilePath",
        "c",
        "Ljava/util/List;",
        "getNoteExportList",
        "()Ljava/util/List;",
        "(Ljava/util/List;)V",
        "noteExportList",
        "d",
        "Z",
        "isAutoBackup",
        "()Z",
        "setAutoBackup",
        "(Z)V",
        "e",
        "getUpdateLastTime",
        "setUpdateLastTime",
        "updateLastTime",
        "f",
        "getCloudBackup",
        "setCloudBackup",
        "cloudBackup",
        "",
        "g",
        "Ljava/lang/Throwable;",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "setThrowable",
        "(Ljava/lang/Throwable;)V",
        "throwable",
        "h",
        "getDeleteLocalFile",
        "setDeleteLocalFile",
        "deleteLocalFile",
        "i",
        "getExportAllFolder",
        "setExportAllFolder",
        "exportAllFolder",
        "j",
        "getExportAllTag",
        "setExportAllTag",
        "exportAllTag",
        "k",
        "getExportFont",
        "setExportFont",
        "exportFont",
        "l",
        "getExportStashArchivedData",
        "setExportStashArchivedData",
        "exportStashArchivedData",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "m",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "getFailedProviderMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "setFailedProviderMap",
        "(Ljava/util/concurrent/ConcurrentHashMap;)V",
        "failedProviderMap",
        "n",
        "getProviders",
        "setProviders",
        "providers",
        "o",
        "getDocumentId",
        "setDocumentId",
        "documentId",
        "<init>",
        "(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/String;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBackupContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupContext.kt\ncom/onyx/android/sdk/universal/ui/data/BackupContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1855#2,2:36\n1747#2,3:38\n*S KotlinDebug\n*F\n+ 1 BackupContext.kt\ncom/onyx/android/sdk/universal/ui/data/BackupContext\n*L\n28#1:36,2\n33#1:38,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteQueryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->a:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    .line 2
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->c:Ljava/util/List;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->e:Z

    .line 5
    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->h:Z

    .line 6
    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->l:Z

    .line 7
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->n:Ljava/util/List;

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->o:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;-><init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBackupFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getCloudBackup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->f:Z

    return p0
.end method

.method public final getDeleteLocalFile()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->h:Z

    return p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final getExportAllFolder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->i:Z

    return p0
.end method

.method public final getExportAllTag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->j:Z

    return p0
.end method

.method public final getExportFont()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->k:Z

    return p0
.end method

.method public final getExportStashArchivedData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->l:Z

    return p0
.end method

.method public final getFailedProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->m:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final getNoteExportList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->c:Ljava/util/List;

    return-object p0
.end method

.method public final getNoteQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->a:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object p0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->n:Ljava/util/List;

    return-object p0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->g:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getUpdateLastTime()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->e:Z

    return p0
.end method

.method public final isAutoBackup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->d:Z

    return p0
.end method

.method public final isError()Z
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->g:Ljava/lang/Throwable;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->c:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move p0, v2

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteProgressInfo()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    move p0, v1

    :goto_0
    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method public final setAutoBackup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->d:Z

    return-void
.end method

.method public final setBackupFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->b:Ljava/lang/String;

    return-void
.end method

.method public final setCloudBackup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->f:Z

    return-void
.end method

.method public final setDeleteLocalFile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->h:Z

    return-void
.end method

.method public final setDocumentId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->o:Ljava/lang/String;

    return-void
.end method

.method public final setExportAllFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->i:Z

    return-void
.end method

.method public final setExportAllTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->j:Z

    return-void
.end method

.method public final setExportFont(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->k:Z

    return-void
.end method

.method public final setExportStashArchivedData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->l:Z

    return-void
.end method

.method public final setFailedProviderMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/ConcurrentHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->m:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public final setNoteExportList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs$Companion;->toNoteExportArgsList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->c:Ljava/util/List;

    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    .line 5
    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->l:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->setExportStashArchivedData(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->c:Ljava/util/List;

    return-object p0
.end method

.method public final setNoteExportList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->c:Ljava/util/List;

    return-void
.end method

.method public final setProviders(Ljava/util/List;)V
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
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->n:Ljava/util/List;

    return-void
.end method

.method public final setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->g:Ljava/lang/Throwable;

    return-void
.end method

.method public final setUpdateLastTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->e:Z

    return-void
.end method

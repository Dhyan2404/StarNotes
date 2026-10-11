.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;
.super Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction<",
        "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,437:1\n1855#2,2:438\n1726#2,3:440\n1855#2,2:443\n1855#2,2:445\n288#2,2:447\n*S KotlinDebug\n*F\n+ 1 AutoBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction\n*L\n130#1:438,2\n134#1:440,3\n211#1:443,2\n223#1:445,2\n390#1:447,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 Q2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001QB\u0017\u0012\u0006\u00109\u001a\u000204\u0012\u0006\u0010<\u001a\u00020\u0006\u00a2\u0006\u0004\u0008O\u0010PJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000b\u001a\u00020\u0003H\u0002J\u0008\u0010\u000c\u001a\u00020\u0003H\u0002J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0005H\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J \u0010\u0015\u001a\u00020\u00002\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0002J\u0012\u0010\u0016\u001a\u00020\t2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0002J\u0016\u0010\u0018\u001a\u00020\u00032\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0012H\u0002J\u000e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0012H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0008\u0010\u001e\u001a\u00020\u001cH\u0002J\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\t0\u00052\u0006\u0010\u001f\u001a\u00020\tH\u0002J\u0008\u0010!\u001a\u00020\tH\u0002J2\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00052\u0006\u0010#\u001a\u00020\"2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100$2\u0006\u0010\u001f\u001a\u00020\tH\u0002J\u0008\u0010\'\u001a\u00020\u000eH\u0002J\u0010\u0010*\u001a\u00020)2\u0006\u0010(\u001a\u00020\"H\u0002J,\u0010,\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100$2\u0006\u0010\u001f\u001a\u00020\tH\u0002J$\u0010.\u001a\u00020\u00032\u0006\u0010#\u001a\u00020-2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100$H\u0002J,\u0010/\u001a\u00020\u00032\u0006\u0010#\u001a\u00020-2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100$2\u0006\u0010\u001f\u001a\u00020\tH\u0002J\u0012\u00101\u001a\u00020\u00032\u0008\u00100\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u00102\u001a\u00020\u0003H\u0002J\u000e\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u0014R\u0017\u00109\u001a\u0002048\u0006\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108R\u0014\u0010<\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0014\u0010?\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0016\u0010C\u001a\u00020@8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0016\u0010G\u001a\u00020D8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010K\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010IR\u0014\u0010N\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008L\u0010M\u00a8\u0006R"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;",
        "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;",
        "",
        "D",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;",
        "L",
        "x",
        "",
        "p",
        "w",
        "M",
        "C",
        "",
        "noteBackupFilePath",
        "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
        "K",
        "",
        "localBackupModels",
        "autoBackupModel",
        "G",
        "I",
        "models",
        "r",
        "B",
        "",
        "type",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "z",
        "A",
        "localBackupSuccess",
        "s",
        "q",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "provider",
        "",
        "cloudAutoBackupModelMap",
        "O",
        "E",
        "baseCloudStorageProvider",
        "Ljava/io/File;",
        "t",
        "backupModelMap",
        "J",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
        "F",
        "H",
        "msg",
        "v",
        "N",
        "create",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "g",
        "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;",
        "autoBackupContext",
        "h",
        "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;",
        "autoBackupResult",
        "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;",
        "autoBackupProvider",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "j",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "k",
        "Ljava/lang/String;",
        "l",
        "noteCloudLocalPath",
        "m",
        "Z",
        "debugAutoBackup",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;)V",
        "Companion",
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
        "SMAP\nAutoBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,437:1\n1855#2,2:438\n1726#2,3:440\n1855#2,2:443\n1855#2,2:445\n288#2,2:447\n*S KotlinDebug\n*F\n+ 1 AutoBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction\n*L\n130#1:438,2\n134#1:440,3\n211#1:443,2\n223#1:445,2\n390#1:447,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final n:Ljava/lang/String; = "AutoBackupAction"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

.field public j:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoBackupContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    new-instance p1, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->h:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->l:Ljava/lang/String;

    return-void
.end method

.method public static final P(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->cleanExpiredDriverLocalFiles(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V

    return-void
.end method

.method public static final synthetic access$checkBackupCondition(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->p()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$cloudBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->s(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAutoBackupContext$p(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    return-object p0
.end method

.method public static final synthetic access$getAutoBackupResult$p(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->h:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;

    return-object p0
.end method

.method public static final synthetic access$localBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->C()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onCompleteCloudAutoBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->F(Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$onCompleteLocalAutoBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->G(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onErrorCloudAutoBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;Ljava/util/Map;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->H(Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;Ljava/util/Map;Z)V

    return-void
.end method

.method public static final synthetic access$onErrorLocalAutoBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->I(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onPrepareCloudAutoBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/Map;Z)Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->J(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/Map;Z)Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$printAutoModels(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->M()V

    return-void
.end method

.method public static final synthetic access$setAutoBackupProvider$p(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    return-void
.end method

.method public static final synthetic access$setNoteModel$p(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->j:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method

.method public static final synthetic access$uploadObservable(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/Map;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->O(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/Map;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->u(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Z)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->y(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->P(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V

    return-void
.end method

.method public static final u(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->D()V

    return-void
.end method

.method public static final y(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->w()V

    return-void
.end method


# virtual methods
.method public final A()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v1, v4, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const-string v4, "type"

    invoke-virtual {v1, v4, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "association"

    const-string v4, "associationType"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->nestedInExpression(Ljava/util/List;[Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    const-string v2, "uniqueId"

    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object v0
.end method

.method public final B()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->z(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    const/4 v3, 0x0

    const-string v4, "autoBackupProvider"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;->loadAutoBackupList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->getLocalFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->getStatus()I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v7, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v8, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "path not exist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->getLocalFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9, v10}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    if-nez p0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v3, p0

    :goto_2
    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;->deleteAutoBackupList(Ljava/util/List;)V

    :cond_5
    return-object v5
.end method

.method public final C()Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getAutoBackupModels()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getAutoBackupModels()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->B()Ljava/util/List;

    move-result-object v5

    sget-object v0, Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->j:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-nez v2, :cond_4

    const-string v2, "noteModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;->localNoteBackupFilePath(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->A()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localBackup noteFilePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->v(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->k:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->K(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    move-result-object v8

    new-instance v2, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->k:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;-><init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getLocalBackup()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setUpdateLastTime(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->setBackupContext(Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getDocManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupProviderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v9, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;

    move-object v1, v9

    move-object v3, p0

    move-object v4, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;-><init>(Lcom/onyx/android/sdk/universal/ui/data/BackupContext;Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v9}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$t;

    invoke-direct {v1, v7, p0, v8}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$t;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$u;

    invoke-direct {v1, p0, v7}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$u;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$v;

    invoke-direct {v0, v7}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$v;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final D()V
    .locals 1

    const-string p0, "do not enable backup or filter by cloud network condition"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "AutoBackupAction"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->dTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final E()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->j:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-nez p0, :cond_0

    const-string p0, "noteModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v1, ".note"

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getValidFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final F(Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->N()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    if-nez p2, :cond_1

    const-string p2, "autoBackupProvider"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;->deleteAutoBackupList(Ljava/util/List;)V

    const-string p1, "onCompleteCloudAutoBackup"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final G(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ")",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->setStatus(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    if-nez v0, :cond_1

    const-string v0, "autoBackupProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;->saveAutoBackup(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->r(Ljava/util/List;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCompleteLocalAutoBackup:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->v(Ljava/lang/String;)V

    return-object p0
.end method

.method public final H(Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->setStatus(I)V

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    if-nez p2, :cond_2

    const-string p2, "autoBackupProvider"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_2
    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;->saveAutoBackup(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)V

    const-string p1, "onErrorCloudAutoBackup"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final I(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->setStatus(I)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    if-nez v1, :cond_1

    const-string v1, "autoBackupProvider"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;->saveAutoBackup(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorLocalAutoBackup:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->v(Ljava/lang/String;)V

    return v0
.end method

.method public final J(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/Map;Z)Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;Z)",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    const-string v2, "autoBackupProvider"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->z(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v5

    sget-object v6, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v7, "providerName"

    invoke-virtual {v6, v7, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "status"

    invoke-virtual {v6, v8, v7}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;->deleteAutoBackupList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getAutoBackupModels()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_0
    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    if-nez v5, :cond_4

    new-instance v5, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    invoke-direct {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;-><init>()V

    invoke-virtual {v5, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->setProviderName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->setType(I)V

    if-eqz p3, :cond_3

    const/4 v4, 0x2

    :cond_3
    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->setStatus(I)V

    :cond_4
    new-instance p3, Ljava/io/File;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_5

    sget-object p3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->k:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->t(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const-string v1, "getAbsolutePath(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->setLocalFilePath(Ljava/lang/String;)V

    :cond_5
    iget-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    if-nez p3, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v3, p3

    :goto_1
    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;->saveAutoBackup(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)V

    invoke-interface {p2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPrepareCloudAutoBackup: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p3, v5}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->v(Ljava/lang/String;)V

    return-object p1
.end method

.method public final K(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getLocalBackup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->setLocalFilePath(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->setType(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->setStatus(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    if-nez p0, :cond_1

    const-string p0, "autoBackupProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;->saveAutoBackup(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)V

    return-object v0
.end method

.method public final L()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getCloudBackup()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getAuthProviders()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$w;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$w;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final M()V
    .locals 5

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    if-nez v0, :cond_1

    const-string v0, "autoBackupProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "documentId"

    invoke-virtual {v2, v4, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;->loadAutoBackupList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printAutoModels count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->v(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printAutoModels: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final N()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HHMMSS()Ljava/text/SimpleDateFormat;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudBackupLastTime()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    return-void
.end method

.method public final O(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/Map;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->H(Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;Ljava/util/Map;Z)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v2, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->A()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;-><init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setAutoBackup(Z)V

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setDocumentId(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;

    invoke-direct {v3, p1, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V

    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->setNoteFile(Ljava/io/File;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->setNoteFileName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupProviderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$x;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$x;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/Map;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$y;

    invoke-direct {v0, p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$y;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/Map;)V

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object p3, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$z;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$z;

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p3, Lcom/sunia/HTREnginev2/fj;

    invoke-direct {p3, p0, p1}, Lcom/sunia/HTREnginev2/fj;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->L()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/ej;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ej;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfFalse(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->x()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->onlyCloudBackup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->q()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->backupEnabled()Z

    move-result p0

    return p0
.end method

.method public final q()Z
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudBackupWifiOnlyOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final r(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->i:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    if-nez v0, :cond_2

    const-string v0, "autoBackupProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;->deleteAutoBackupList(Ljava/util/List;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRemoveLastAutoBackupModels removeModel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final s(Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getCloudBackup()Z

    move-result v0

    const-string v1, "just(...)"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->h:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;->setCloudBackupResult(Z)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->h:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;->setCloudBackupResult(Z)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getAuthProviders()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$a;

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$b;

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupProviderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$c;

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$d;

    invoke-direct {v3, p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Ljava/util/Map;Z)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupIoObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$e;

    invoke-direct {v3, p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Ljava/util/Map;Z)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$f;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$g;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)Ljava/io/File;
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ensureCreateRootPath()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getProviderRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "StarNote"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HH_MM_SS()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->j:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-nez v3, :cond_0

    const-string v3, "noteModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".note"

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getValidFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->k:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lonyx/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getAbsolutePath(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->l:Ljava/lang/String;

    return-object v1
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->m:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final w()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getLocalBackup()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteLocalBackupFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->v(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->l:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    return-void
.end method

.method public final x()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$k;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$k;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$m;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$m;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getNoteObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$o;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupIoObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$p;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupProviderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$q;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$q;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupProviderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$r;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupIoObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/dj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dj;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final z(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "documentId"

    invoke-virtual {v1, p1, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/couchbase/lite/Ordering;

    const-string p1, "updatedAt"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargOrdering([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object v0
.end method

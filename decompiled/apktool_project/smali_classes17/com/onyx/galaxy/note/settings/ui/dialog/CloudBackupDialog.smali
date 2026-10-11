.class public final Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudBackupDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudBackupDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1747#2,3:184\n766#2:195\n857#2,2:196\n1549#2:198\n1620#2,3:199\n1549#2:202\n1620#2,3:203\n766#2:206\n857#2,2:207\n256#3,2:187\n256#3,2:189\n256#3,2:191\n256#3,2:193\n256#3,2:209\n256#3,2:212\n256#3,2:214\n256#3,2:216\n256#3,2:218\n256#3,2:220\n1#4:211\n*S KotlinDebug\n*F\n+ 1 CloudBackupDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog\n*L\n74#1:184,3\n95#1:195\n95#1:196,2\n104#1:198\n104#1:199,3\n114#1:202\n114#1:203,3\n138#1:206\n138#1:207,2\n84#1:187,2\n85#1:189,2\n86#1:191,2\n87#1:193,2\n139#1:209,2\n167#1:212,2\n170#1:214,2\n171#1:216,2\n172#1:218,2\n173#1:220,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010$\u001a\u00020\"\u0012\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00040%\u00a2\u0006\u0004\u00081\u00102J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u000cH\u0007J\u0008\u0010\u000e\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0016\u0010\u0014\u001a\u00020\u00042\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0016\u0010\u0018\u001a\u00020\u00042\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\u0016\u0010\u0019\u001a\u00020\u00042\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0003J\u0014\u0010\u001c\u001a\u00020\u00042\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002J\u0008\u0010\u001d\u001a\u00020\u0004H\u0002R\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010#R\u001a\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00040%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u001b\u0010-\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010*\u001a\u0004\u0008+\u0010,R\u0014\u00100\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010/\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;",
        "Landroid/app/Dialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "dismiss",
        "Lcom/onyx/android/sdk/universal/editor/events/note/CloudBackupCompleteEvent;",
        "event",
        "onCloudBackupCompleteEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ExportNoteProgressEvent;",
        "onExportNoteProgressEvent",
        "Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageUploadFileEvent;",
        "onCloudStorageUploadFileEvent",
        "h",
        "",
        "b",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
        "list",
        "i",
        "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFileStatus",
        "k",
        "j",
        "",
        "throwable",
        "f",
        "d",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;",
        "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;",
        "backupContext",
        "Lkotlin/Function0;",
        "g",
        "Lkotlin/jvm/functions/Function0;",
        "onCancel",
        "Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;",
        "Lkotlin/Lazy;",
        "c",
        "()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/BackupErrorAdapter;",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/BackupErrorAdapter;",
        "errorListAdapter",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;Lkotlin/jvm/functions/Function0;)V",
        "note_overseasRelease"
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
        "SMAP\nCloudBackupDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudBackupDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1747#2,3:184\n766#2:195\n857#2,2:196\n1549#2:198\n1620#2,3:199\n1549#2:202\n1620#2,3:203\n766#2:206\n857#2,2:207\n256#3,2:187\n256#3,2:189\n256#3,2:191\n256#3,2:193\n256#3,2:209\n256#3,2:212\n256#3,2:214\n256#3,2:216\n256#3,2:218\n256#3,2:220\n1#4:211\n*S KotlinDebug\n*F\n+ 1 CloudBackupDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog\n*L\n74#1:184,3\n95#1:195\n95#1:196,2\n104#1:198\n104#1:199,3\n114#1:202\n114#1:203,3\n138#1:206\n138#1:207,2\n84#1:187,2\n85#1:189,2\n86#1:191,2\n87#1:193,2\n139#1:209,2\n167#1:212,2\n170#1:214,2\n171#1:216,2\n172#1:218,2\n173#1:220,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/galaxy/note/settings/ui/adapter/BackupErrorAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/ui/data/BackupContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCancel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->commonDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->f:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    iput-object p3, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->g:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->h:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/adapter/BackupErrorAdapter;

    sget-object p2, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/settings/ui/adapter/BackupErrorAdapter;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->i:Lcom/onyx/galaxy/note/settings/ui/adapter/BackupErrorAdapter;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->e(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static final e(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->dismiss()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->f(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->cloud_backup_done:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->f:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getProviders()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    iget-object v7, v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->f:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getFailedProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->f:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getFailedProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v4, "<get-keys>(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "StarNote"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "format(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v5

    if-nez v6, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_3

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\r"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v5

    const/16 v7, 0xa

    if-eqz v6, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget-object v10, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    iget-object v11, v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->e:Landroid/content/Context;

    invoke-virtual {v10, v11, v9}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getNameByProvider(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v9, ","

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v9, Lcom/onyx/galaxy/note/R$string;->cloud_backup_completed_cloud:I

    invoke-virtual {v8, v9}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_9

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    iget-object v9, v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->e:Landroid/content/Context;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v9, v3}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getNameByProvider(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v9, Lcom/onyx/galaxy/note/R$string;->error_code:I

    invoke-virtual {v7, v9}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->f:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getFailedProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    sget-object v7, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ThrowableUtils;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v3}, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;->getErrorCode(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/data/ErrorCode;->getCode()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const-string v9, ","

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->cloud_backup_fail_cloud:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method public final c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    return-object p0
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/ovd;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ovd;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->itemErrorList:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->i:Lcom/onyx/galaxy/note/settings/ui/adapter/BackupErrorAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Throwable;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_0
    const-class v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExportFail e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->tvSubErrorTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "tvSubErrorTitle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->tvSubErrorTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v2, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ThrowableUtils;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;->getErrorCode(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->groupError:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupError"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->groupProgress:Landroidx/constraintlayout/widget/Group;

    const-string v0, "groupProgress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->groupFinished:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupFinished"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->tvCount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string p1, "tvCount"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->groupError:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupError"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->groupProgress:Landroidx/constraintlayout/widget/Group;

    const-string v2, "groupProgress"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->groupFinished:Landroidx/constraintlayout/widget/Group;

    const-string v2, "groupFinished"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->tvCount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "tvCount"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->e:Landroid/content/Context;

    sget v2, Lcom/onyx/galaxy/note/R$string;->cloud_backup_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->tvFinishSubTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteProgressInfo()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->itemErrorListLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v1, "itemErrorListLayout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->i:Lcom/onyx/galaxy/note/settings/ui/adapter/BackupErrorAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final j(Ljava/util/List;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteProgressInfo()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteProgressInfo()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v3

    double-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->e:Landroid/content/Context;

    sget v5, Lcom/onyx/galaxy/note/R$string;->backup_note_progress_hint:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->progress:Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->tvCount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v0, v2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getEntry()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getDefaultProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getNameByProvider(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->e:Landroid/content/Context;

    sget v2, Lcom/onyx/galaxy/note/R$string;->upload_note_progress_hint:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getProgress()D

    move-result-wide v1

    double-to-int p1, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->progress:Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCloudBackupCompleteEvent(Lcom/onyx/android/sdk/universal/editor/events/note/CloudBackupCompleteEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/CloudBackupCompleteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CloudBackupCompleteEvent;->getBackupContext()Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CloudBackupCompleteEvent;->getBackupContext()Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->f(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CloudBackupCompleteEvent;->getBackupContext()Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getNoteExportList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteProgressInfo()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v2

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->h()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v0, v2, v0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->g(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CloudBackupCompleteEvent;->getBackupContext()Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getNoteExportList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->i(Ljava/util/List;)V

    return-void
.end method

.method public final onCloudStorageUploadFileEvent(Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageUploadFileEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageUploadFileEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->f:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getBackupFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageUploadFileEvent;->getCloudFileStatus()Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getEntry()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageUploadFileEvent;->getCloudFileStatus()Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->k(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffab

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onExportNoteProgressEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ExportNoteProgressEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ExportNoteProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ExportNoteProgressEvent;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;->j(Ljava/util/List;)V

    return-void
.end method

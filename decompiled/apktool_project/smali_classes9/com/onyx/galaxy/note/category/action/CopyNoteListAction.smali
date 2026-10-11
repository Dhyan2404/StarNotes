.class public final Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCopyNoteListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNoteListAction.kt\ncom/onyx/galaxy/note/category/action/CopyNoteListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,346:1\n766#2:347\n857#2,2:348\n1855#2,2:350\n766#2:352\n857#2,2:353\n1855#2,2:355\n1549#2:357\n1620#2,3:358\n766#2:361\n857#2,2:362\n1855#2,2:364\n1855#2:366\n1549#2:367\n1620#2,3:368\n766#2:371\n857#2,2:372\n1855#2,2:374\n1856#2:376\n1#3:377\n*S KotlinDebug\n*F\n+ 1 CopyNoteListAction.kt\ncom/onyx/galaxy/note/category/action/CopyNoteListAction\n*L\n114#1:347\n114#1:348,2\n116#1:350,2\n134#1:352\n134#1:353,2\n136#1:355,2\n156#1:357\n156#1:358,3\n158#1:361\n158#1:362,2\n162#1:364,2\n169#1:366\n172#1:367\n172#1:368,3\n174#1:371\n174#1:372,2\n179#1:374,2\n169#1:376\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0012\u0006\u0010+\u001a\u00020(\u0012\u0008\u0010.\u001a\u0004\u0018\u00010\u0016\u0012\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000c\u00a2\u0006\u0004\u0008M\u0010NJ\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000cH\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u001c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000c2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000cH\u0002J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0018\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0002J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0002J\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0018\u0010#\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u00162\u0006\u0010\"\u001a\u00020!H\u0002J\u0010\u0010$\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020!H\u0002J\u001c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000cH\u0002J\u000e\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010.\u001a\u0004\u0018\u00010\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u001a\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R!\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u0016068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:R\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R \u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010@R\u0014\u0010D\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010CR\u001b\u0010G\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u00108\u001a\u0004\u0008E\u0010FR\u001b\u0010I\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u00108\u001a\u0004\u0008H\u0010FR\u0016\u0010L\u001a\u00020J8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010K\u00a8\u0006O"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "result",
        "Lio/reactivex/rxjava3/core/Observable;",
        "E",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "C",
        "rootTreeNode",
        "",
        "w",
        "",
        "p",
        "s",
        "folders",
        "m",
        "srcModel",
        "dstModel",
        "n",
        "v",
        "o",
        "",
        "srcDocId",
        "destDocId",
        "r",
        "q",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
        "pbDataContext",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
        "copyNoteArgs",
        "B",
        "originTitle",
        "",
        "modelType",
        "u",
        "x",
        "saveModels",
        "D",
        "create",
        "Landroid/content/Context;",
        "g",
        "Landroid/content/Context;",
        "context",
        "h",
        "Ljava/lang/String;",
        "dstId",
        "i",
        "Ljava/util/List;",
        "nodes",
        "Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
        "j",
        "Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
        "dbProviderBundle",
        "",
        "k",
        "Lkotlin/Lazy;",
        "A",
        "()Ljava/util/List;",
        "topNodeIds",
        "l",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "srcTree",
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap;",
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap;",
        "srcIdByDstIdMap",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;",
        "copyNoteListArgs",
        "y",
        "()I",
        "folderMaxLength",
        "z",
        "noteMaxLength",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "provider",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V",
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
        "SMAP\nCopyNoteListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNoteListAction.kt\ncom/onyx/galaxy/note/category/action/CopyNoteListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,346:1\n766#2:347\n857#2,2:348\n1855#2,2:350\n766#2:352\n857#2,2:353\n1855#2,2:355\n1549#2:357\n1620#2,3:358\n766#2:361\n857#2,2:362\n1855#2,2:364\n1855#2:366\n1549#2:367\n1620#2,3:368\n766#2:371\n857#2,2:372\n1855#2,2:374\n1856#2:376\n1#3:377\n*S KotlinDebug\n*F\n+ 1 CopyNoteListAction.kt\ncom/onyx/galaxy/note/category/action/CopyNoteListAction\n*L\n114#1:347\n114#1:348,2\n116#1:350,2\n134#1:352\n134#1:353,2\n136#1:355,2\n156#1:357\n156#1:358,3\n158#1:361\n158#1:362,2\n162#1:364,2\n169#1:366\n172#1:367\n172#1:368,3\n174#1:371\n174#1:372,2\n179#1:374,2\n169#1:376\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/bundle/DBProviderBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/android/sdk/base/data/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nodes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->i:Ljava/util/List;

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->j:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    new-instance p1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$topNodeIds$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$topNodeIds$2;-><init>(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->k:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/data/Tree;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->l:Lcom/onyx/android/sdk/base/data/Tree;

    new-instance p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->m:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->n:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    sget-object p1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$folderMaxLength$2;->INSTANCE:Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$folderMaxLength$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->o:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$noteMaxLength$2;->INSTANCE:Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$noteMaxLength$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->p:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$copyDoc(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->m(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$copyFolder(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->p()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$copyUserData(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->s()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$generateTree(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->w(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public static final synthetic access$getDstId$p(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getNodes$p(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->i:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$importStashShapes(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->B(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V

    return-void
.end method

.method public static final synthetic access$loadNoteModelTree(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)Lcom/onyx/android/sdk/base/data/Tree;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->C()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveModels(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->D(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->q:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method

.method public static final synthetic access$updateFolderCover(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->E(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->t(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->Companion:Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->j:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->dumpDocProviderInfo$default(Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;Lcom/onyx/android/sdk/bundle/DBProviderBundle;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final B(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    .locals 0

    :try_start_0
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;->importStashShape(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final C()Lcom/onyx/android/sdk/base/data/Tree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/NoteConfigKt;->getCommonNoteArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/couchbase/lite/Ordering;

    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v4, "orderIndex"

    invoke-virtual {v3, v4, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargOrdering([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->q:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_0

    const-string p0, "provider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->loadNoteModelTree(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p0

    return-object p0
.end method

.method public final D(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->q:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v0, :cond_0

    const-string v0, "provider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->h:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p0, Lcom/onyx/galaxy/note/category/action/SaveNoteAction;

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/onyx/galaxy/note/category/action/SaveNoteAction;-><init>(Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final E(Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->h:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$i;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$i;-><init>(Z)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$f;-><init>(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$g;-><init>(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$h;-><init>(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/fce;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fce;-><init>(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->l:Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->q(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->n(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->m:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->l:Lcom/onyx/android/sdk/base/data/Tree;

    new-instance v5, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$copyDoc$2$srcFolderTreeNode$1;

    invoke-direct {v5, v2}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$copyDoc$2$srcFolderTreeNode$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/data/Tree;->findChild(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->q(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->n(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    return-object v0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->v(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->o(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 10

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/SyncConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->appDocDir()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->m:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->docDirFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setUserId(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setSrcDocId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setDstDocId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setDstParentId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setDocNote(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setSrcDirFilePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setDstGroupId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getAssociation()Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setDstAssociation(Lcom/onyx/android/sdk/replicator/note/data/info/Association;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setCopyGlobalPage(Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->n:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->addArgs(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V

    sget-object v3, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->Companion:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->j:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$copyDocPB$1;

    invoke-direct {v7, v2, p0, v0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$copyDocPB$1;-><init>(Ljava/lang/String;Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;->withOnce$default(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setParentUniqueId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstGroupId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstAssociation()Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setAssociation(Lcom/onyx/android/sdk/replicator/note/data/info/Association;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;->updateNotePageInfo(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getPageIdCopyMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->addAll(Ljava/util/List;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setPageNameList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;-><init>()V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setRemovePageList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    return-void
.end method

.method public final p()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->l:Lcom/onyx/android/sdk/base/data/Tree;

    sget-object v2, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$copyFolder$1;->INSTANCE:Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$copyFolder$1;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/Tree;->mapChildren(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->q(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final q(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->updateModelField(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    sget-object v1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setOrderIndex(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->m:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getType()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->u(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->A()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setParentUniqueId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->m:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setParentUniqueId(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->appDocDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->appDocDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {v1, p0}, Lonyx/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public final s()Z
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->n:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->setCopyNoteListArgs(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;->copyDBToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V

    return v2
.end method

.method public final u(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->q:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v0, :cond_0

    const-string v0, "provider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$ensureUniqueName$uniqueName$1;

    invoke-direct {v1, p2, p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$ensureUniqueName$uniqueName$1;-><init>(ILcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V

    const-string v2, "_1"

    invoke-static {v0, p1, v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->generateUniqueName(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/extension/StringRuleLengthKt;->toRuleLength(Ljava/lang/String;)I

    move-result v0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->y()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->x(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->z()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->x(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final v(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->Companion:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->j:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    const/4 v2, 0x0

    new-instance v4, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$exportDocPB$1;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$exportDocPB$1;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;->withOnce$default(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final w(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->childrenToList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$generateTree$noteModelMap$2;->INSTANCE:Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$generateTree$noteModelMap$2;

    sget-object v1, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$generateTree$noteModelMap$3;->INSTANCE:Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$generateTree$noteModelMap$3;

    invoke-static {v0, p1, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->i:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v2

    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->l:Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/base/data/Tree;->addToChildren(Ljava/lang/Object;I)V

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->l:Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/Tree;->addToChildren(Lcom/onyx/android/sdk/base/data/Tree;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final x(I)Ljava/lang/String;
    .locals 9

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->option_copy:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/NoteConfigKt;->getCommonNoteArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    sget-object v8, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    const-string v2, "title"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v2, "singletonList(...)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->orPrefixLikeExpression$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, "parentUniqueId"

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->h:Ljava/lang/String;

    invoke-virtual {v8, p1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalOrNullExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->q:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_1

    const-string p0, "provider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-static {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->getCount(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide p0

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final y()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->o:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final z()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->p:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

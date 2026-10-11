.class public final Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocCollectionBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocCollectionBundle.kt\ncom/onyx/galaxy/note/category/data/DocCollectionBundle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1855#2,2:74\n*S KotlinDebug\n*F\n+ 1 DocCollectionBundle.kt\ncom/onyx/galaxy/note/category/data/DocCollectionBundle\n*L\n56#1:74,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0001J\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u001e\u0010\u0016\u001a\u00020\n2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00182\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u0001R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;",
        "",
        "()V",
        "docManagerHandler",
        "Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;",
        "getDocManagerHandler",
        "()Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;",
        "docManagerHandler$delegate",
        "Lkotlin/Lazy;",
        "createNoteByTemplate",
        "",
        "noteCreateInfo",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "noteCreateFrom",
        "Lcom/onyx/android/sdk/data/NoteCreateFrom;",
        "docManagerBundle",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "ensureRegister",
        "subscriber",
        "ensureUnRegister",
        "hwrBundle",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "importDocuments",
        "importArgs",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "importImage",
        "args",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;",
        "postEvent",
        "event",
        "note_overseasRelease"
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
        "SMAP\nDocCollectionBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocCollectionBundle.kt\ncom/onyx/galaxy/note/category/data/DocCollectionBundle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1855#2,2:74\n*S KotlinDebug\n*F\n+ 1 DocCollectionBundle.kt\ncom/onyx/galaxy/note/category/data/DocCollectionBundle\n*L\n56#1:74,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final docManagerHandler$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle$docManagerHandler$2;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle$docManagerHandler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerHandler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic createNoteByTemplate$default(Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lcom/onyx/android/sdk/data/NoteCreateFrom;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/data/NoteCreateFrom;->NORMAL_CREATE:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->createNoteByTemplate(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V

    return-void
.end method

.method private final getDocManagerHandler()Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;

    return-object p0
.end method

.method public static synthetic importDocuments$default(Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/data/NoteCreateFrom;->IMPORT_FILE:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->importDocuments(Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V

    return-void
.end method

.method public static synthetic importImage$default(Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;Lcom/onyx/android/sdk/data/NoteCreateFrom;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/data/NoteCreateFrom;->IMPORT_FILE:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->importImage(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V

    return-void
.end method


# virtual methods
.method public final createNoteByTemplate(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/NoteCreateFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteCreateInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteCreateFrom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->getDocManagerHandler()Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;->createNoteByTemplate(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    new-instance p0, Lcom/onyx/android/sdk/event/StatisticsNoteCreateEvent;

    sget-object p1, Lcom/onyx/android/sdk/data/NoteCreateType;->CREATE:Lcom/onyx/android/sdk/data/NoteCreateType;

    invoke-direct {p0, p2, p1}, Lcom/onyx/android/sdk/event/StatisticsNoteCreateEvent;-><init>(Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/data/NoteCreateType;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->getDocManagerHandler()Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;->getDocManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public final ensureRegister(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final ensureUnRegister(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final hwrBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->getHwrBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object p0

    return-object p0
.end method

.method public final importDocuments(Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/NoteCreateFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
            ">;",
            "Lcom/onyx/android/sdk/data/NoteCreateFrom;",
            ")V"
        }
    .end annotation

    const-string v0, "importArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteCreateFrom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->getDocManagerHandler()Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;->importDocuments(Ljava/util/List;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    new-instance p1, Lcom/onyx/android/sdk/event/StatisticsNoteCreateEvent;

    sget-object v0, Lcom/onyx/android/sdk/data/NoteCreateType;->IMPORT:Lcom/onyx/android/sdk/data/NoteCreateType;

    invoke-direct {p1, p2, v0}, Lcom/onyx/android/sdk/event/StatisticsNoteCreateEvent;-><init>(Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/data/NoteCreateType;)V

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final importImage(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/NoteCreateFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteCreateFrom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->getDocManagerHandler()Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;->importImage(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;)V

    new-instance p0, Lcom/onyx/android/sdk/event/StatisticsNoteCreateEvent;

    sget-object p1, Lcom/onyx/android/sdk/data/NoteCreateType;->IMPORT:Lcom/onyx/android/sdk/data/NoteCreateType;

    invoke-direct {p0, p2, p1}, Lcom/onyx/android/sdk/event/StatisticsNoteCreateEvent;-><init>(Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/data/NoteCreateType;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final postEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

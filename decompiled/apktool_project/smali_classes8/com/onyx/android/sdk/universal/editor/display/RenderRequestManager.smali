.class public final Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderRequestManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderRequestManager.kt\ncom/onyx/android/sdk/universal/editor/display/RenderRequestManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n766#2:246\n857#2,2:247\n2634#2:249\n766#2:251\n857#2,2:252\n2634#2:254\n1360#2:256\n1446#2,5:257\n1360#2:263\n1446#2,5:264\n766#2:269\n857#2,2:270\n766#2:272\n857#2,2:273\n766#2:275\n857#2,2:276\n766#2:278\n857#2,2:279\n766#2:281\n857#2,2:282\n766#2:284\n857#2,2:285\n1855#2,2:287\n1855#2,2:289\n1855#2,2:291\n1855#2,2:293\n1#3:250\n1#3:255\n1#3:262\n*S KotlinDebug\n*F\n+ 1 RenderRequestManager.kt\ncom/onyx/android/sdk/universal/editor/display/RenderRequestManager\n*L\n42#1:246\n42#1:247,2\n43#1:249\n47#1:251\n47#1:252,2\n48#1:254\n54#1:256\n54#1:257,5\n61#1:263\n61#1:264,5\n80#1:269\n80#1:270,2\n87#1:272\n87#1:273,2\n94#1:275\n94#1:276,2\n95#1:278\n95#1:279,2\n109#1:281\n109#1:282,2\n110#1:284\n110#1:285,2\n136#1:287,2\n139#1:289,2\n187#1:291,2\n194#1:293,2\n43#1:250\n48#1:255\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u000c\n\u0002\u0010%\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00080\u00101J\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008J\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0015\u001a\u00020\u0008J\"\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\"\u0008\u0008\u0000\u0010\u0017*\u00020\u0016*\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0002J\u0018\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\n*\u0008\u0012\u0004\u0012\u00020\u00190\nH\u0002J\u0018\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n*\u0008\u0012\u0004\u0012\u00020\u001b0\nH\u0002J\u0018\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n*\u0008\u0012\u0004\u0012\u00020\u00190\nH\u0002J*\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\"\u0008\u0008\u0000\u0010\u0017*\u00020\u0016*\u0008\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00190\n*\u0008\u0012\u0004\u0012\u00020\u00190\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J2\u0010#\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00172\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000 2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u0008H\u0002J\u0016\u0010\'\u001a\u00020\u00042\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010)\u001a\u00020\u00042\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002R\u001a\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u001b0 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010*R\u001a\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00190 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010*R \u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000b0-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010.\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;",
        "",
        "",
        "pendingRenderTaskMaxCount",
        "",
        "cancelLimitPendingRequestList",
        "cancelAllRequest",
        "cancelAllNoteRequest",
        "",
        "pageId",
        "",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "cancelNoteRequest",
        "cancelContentRequest",
        "Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;",
        "info",
        "addPageRenderRequestInfo",
        "removePageRenderRequestInfo",
        "cancelPageRenderingRequestList",
        "cacheKey",
        "getRenderingSlice",
        "getDebugString",
        "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;",
        "T",
        "b",
        "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;",
        "a",
        "Lcom/onyx/android/sdk/reader/request/RenderContentRequest;",
        "g",
        "h",
        "e",
        "d",
        "",
        "pendingList",
        "cancelList",
        "c",
        "msg",
        "f",
        "list",
        "j",
        "sliceInfoList",
        "i",
        "Ljava/util/List;",
        "contentRequestList",
        "noteActionList",
        "",
        "Ljava/util/Map;",
        "sliceMap",
        "<init>",
        "()V",
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
        "SMAP\nRenderRequestManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderRequestManager.kt\ncom/onyx/android/sdk/universal/editor/display/RenderRequestManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n766#2:246\n857#2,2:247\n2634#2:249\n766#2:251\n857#2,2:252\n2634#2:254\n1360#2:256\n1446#2,5:257\n1360#2:263\n1446#2,5:264\n766#2:269\n857#2,2:270\n766#2:272\n857#2,2:273\n766#2:275\n857#2,2:276\n766#2:278\n857#2,2:279\n766#2:281\n857#2,2:282\n766#2:284\n857#2,2:285\n1855#2,2:287\n1855#2,2:289\n1855#2,2:291\n1855#2,2:293\n1#3:250\n1#3:255\n1#3:262\n*S KotlinDebug\n*F\n+ 1 RenderRequestManager.kt\ncom/onyx/android/sdk/universal/editor/display/RenderRequestManager\n*L\n42#1:246\n42#1:247,2\n43#1:249\n47#1:251\n47#1:252,2\n48#1:254\n54#1:256\n54#1:257,5\n61#1:263\n61#1:264,5\n80#1:269\n80#1:270,2\n87#1:272\n87#1:273,2\n94#1:275\n94#1:276,2\n95#1:278\n95#1:279,2\n109#1:281\n109#1:282,2\n110#1:284\n110#1:285,2\n136#1:287,2\n139#1:289,2\n187#1:291,2\n194#1:293,2\n43#1:250\n48#1:255\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/request/RenderContentRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->b:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->c:Ljava/util/Map;

    return-void
.end method

.method public static synthetic cancelLimitPendingRequestList$default(Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getPendingRenderTaskMaxCount()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->cancelLimitPendingRequestList(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->isAbort()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->setAbort()V

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public final addPageRenderRequestInfo(Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getContentRequest()Lcom/onyx/android/sdk/reader/request/RenderContentRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getContentRenderArgs()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->getSliceInfoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->j(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getNoteAction()Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getNoteRenderArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->noteSliceList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->j(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->isAbort()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->setAbort()V

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public final c(Ljava/util/List;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    return-void
.end method

.method public final cancelAllNoteRequest()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->h(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public final cancelAllRequest()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->g(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->cancelAllNoteRequest()V

    return-void
.end method

.method public final cancelContentRequest(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->getReaderRenderArgs()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->getVirtualPageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final cancelLimitPendingRequestList(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->a:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->e(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->g(Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->b:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->d(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->h(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public final cancelNoteRequest(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->getNoteRenderArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final cancelPageRenderingRequestList(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->cancelNoteRequest(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->cancelContentRequest(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelPageRenderingRequestList, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", noteCancelList = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", contentCancelList = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final d(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;",
            ">;"
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

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->isAbort()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->getRunning()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->c(Ljava/util/List;Ljava/util/List;I)V

    return-object v0
.end method

.method public final e(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
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

    check-cast v2, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->isAbort()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->getRunning()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->c(Ljava/util/List;Ljava/util/List;I)V

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final g(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/request/RenderContentRequest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->a:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->getReaderRenderArgs()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->getSliceInfoList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->i(Ljava/util/List;)V

    return-object v0
.end method

.method public final getDebugString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sliceMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", contentRequestList = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", noteActionList = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRenderingSlice(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-object p0
.end method

.method public final h(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->b:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->getNoteRenderArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->noteSliceList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->i(Ljava/util/List;)V

    return-object v0
.end method

.method public final i(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    sget-object v1, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->RENDERING:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->updateState(Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copy()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removePageRenderRequestInfo(Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getContentRequest()Lcom/onyx/android/sdk/reader/request/RenderContentRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getContentRenderArgs()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->getSliceInfoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->i(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getNoteAction()Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getNoteRenderArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->noteSliceList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->i(Ljava/util/List;)V

    :cond_1
    return-void
.end method

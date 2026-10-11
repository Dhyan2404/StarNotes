.class public final Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifyPagesTemplateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifyPagesTemplateAction.kt\ncom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,227:1\n1855#2,2:228\n1855#2,2:230\n766#2:233\n857#2,2:234\n1855#2,2:236\n1#3:232\n*S KotlinDebug\n*F\n+ 1 ModifyPagesTemplateAction.kt\ncom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction\n*L\n65#1:228,2\n85#1:230,2\n155#1:233\n155#1:234,2\n156#1:236,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u000e\u0008\u0002\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001e\u00a2\u0006\u0004\u0008-\u0010.J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0000H\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J*\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\rH\u0002J\u0012\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\tH\u0002J\u000c\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002R\u0016\u0010\n\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001a\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00070\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00070\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010$R\u0018\u0010*\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010)\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "s",
        "n",
        "",
        "documentId",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "templateJsonBean",
        "o",
        "pageId",
        "",
        "updatePageRect",
        "p",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "virtualPage",
        "v",
        "Landroid/graphics/RectF;",
        "pageRect",
        "u",
        "t",
        "m",
        "l",
        "h",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "",
        "i",
        "Ljava/util/List;",
        "pageIds",
        "",
        "j",
        "Ljava/util/Set;",
        "closeContentPathSet",
        "k",
        "changedNotePageIdSet",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "readerPageInfo",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;)V",
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
        "SMAP\nModifyPagesTemplateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifyPagesTemplateAction.kt\ncom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,227:1\n1855#2,2:228\n1855#2,2:230\n766#2:233\n857#2,2:234\n1855#2,2:236\n1#3:232\n*S KotlinDebug\n*F\n+ 1 ModifyPagesTemplateAction.kt\ncom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction\n*L\n65#1:228,2\n85#1:230,2\n155#1:233\n155#1:234,2\n156#1:236,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
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
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->h:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->i:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->j:Ljava/util/Set;

    .line 7
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->k:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getCloseContentPathSet$p(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->j:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$loadReaderPageInfo(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$modify(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;)Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->n()Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setReaderPageInfo$p(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->l:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    return-void
.end method

.method public static final synthetic access$updateNotePageData(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->s()V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->p(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Z)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/data/ContentConstants;->INSTANCE:Lcom/onyx/android/sdk/base/data/ContentConstants;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->h:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getContentType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/ContentConstants;->isTemplatePDF(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "just(...)"

    if-nez v0, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->h:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getRelativePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->templateResAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    new-instance v0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->setPath(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToReader(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$e;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v1, "doOnNext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)Landroid/graphics/RectF;
    .locals 8

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->isCoverPage(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserCoverProvider()Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;->loadCoverById(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getSizeFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->setSizeFormat(Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->coverTemplateRect(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Landroid/graphics/RectF;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserTemplateProvider()Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->loadTemplateListById(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getSizeFormat()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSizeFormat(Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->paperTemplateRect(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Landroid/graphics/RectF;

    move-result-object v1

    :cond_1
    move-object p0, v1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotateSize$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    :cond_3
    return-object p0
.end method

.method public final n()Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;
    .locals 10

    iget-object v7, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->h:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    if-nez v7, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->getWorkFeature(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;->supportMultiPage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->i:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v8

    move-object v3, v7

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->q(Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v8, v7}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->o(Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    :cond_3
    return-object p0
.end method

.method public final o(Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->p(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Z)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    :goto_0
    if-ge p2, p1, :cond_1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getColorTheme()I

    move-result v5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getColorTheme()I

    move-result v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->copy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->setConfig(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->setPageId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->updateBoxExtraInfo()V

    invoke-interface {v0, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->updatePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->k:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateBoxInfoContentPath(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v5, v0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->j:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getColorTheme()I

    move-result v5

    sget-object v6, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v7

    iget-object v8, v0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->h:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-virtual {v6, v7, v8, v2}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->updatePageConfigByTemplate(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v7

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getColorTheme()I

    move-result v8

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    :goto_0
    iget-object v7, v0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->h:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-virtual {v6, v2, v4, v7}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->copyVirtualPageTemplateAndUpdateConfig(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual {v6, v3, v2, v1}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->saveTemplateToFileIfNeed(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p4, :cond_3

    invoke-virtual {v0, v4, v3}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->v(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    iget-object v10, v0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->l:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    if-eqz v10, :cond_3

    sget-object v9, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getUniqueId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getContentType()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x18

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createVirtualPageByReader$default(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v2

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentOriginRectF()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->setContentOriginRectF(Landroid/graphics/RectF;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentOriginRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setOriginRectF(Landroid/graphics/RectF;)V

    :cond_3
    :goto_1
    if-eq v5, v8, :cond_4

    iget-object v2, v0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->k:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->updateBoxExtraInfo()V

    if-eqz p4, :cond_5

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->t(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->updatePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateBoxInfoContentPath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterMarkerShapes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterSubTypeMarkerShapes(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v2}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isBottom(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isUnderContent$default(Lcom/onyx/android/sdk/note/common/shape/Shape;ZILjava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setUnderContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->saveShape(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->getWorkFeature(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;->supportMultiPage()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->r(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getCacheNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->r(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getBoxManager()Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->boxInfoSnapshot()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateDataAndApplyScale(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo(Ljava/lang/String;FF)Z

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->alignCenter()V

    return-void
.end method

.method public final u(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Landroid/graphics/RectF;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageIndex(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->updateOriginPageRectF(ILandroid/graphics/RectF;)V

    return-void
.end method

.method public final v(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->m(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;->u(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Landroid/graphics/RectF;)V

    return-void
.end method

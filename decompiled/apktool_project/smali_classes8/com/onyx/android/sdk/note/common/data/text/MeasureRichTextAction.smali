.class public final Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u000e\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J$\u0010\u000b\u001a\u00020\n2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00082\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0008\u0010\u000c\u001a\u00020\u0000H\u0002J\u0008\u0010\r\u001a\u00020\u0000H\u0002R\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R$\u0010!\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R(\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00050\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "",
        "fontList",
        "o",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "subject",
        "",
        "n",
        "q",
        "m",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "e",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "getRenderContext",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "setRenderContext",
        "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "f",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "Lcom/onyx/android/sdk/note/common/data/text/TextRender;",
        "g",
        "Lcom/onyx/android/sdk/note/common/data/text/TextRender;",
        "getTextRender",
        "()Lcom/onyx/android/sdk/note/common/data/text/TextRender;",
        "setTextRender",
        "(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V",
        "textRender",
        "",
        "h",
        "Ljava/util/List;",
        "getFontDirs",
        "()Ljava/util/List;",
        "setFontDirs",
        "(Ljava/util/List;)V",
        "fontDirs",
        "<init>",
        "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/util/List;
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textShape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object p1, Lcom/onyx/android/sdk/data/common/path/AppPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/AppPaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/path/AppPaths;->appFontDir()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->h:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$checkFontMap(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;)Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->m()Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTextShape$p(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public static final synthetic access$renderText(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->o(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resetRenderSize(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;)Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->q()Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->p(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/util/List;)V

    return-void
.end method

.method public static final p(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$subject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fontList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->n(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$a;-><init>(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getTextRenderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$b;-><init>(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$c;-><init>(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$d;-><init>(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getFontDirs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->h:Ljava/util/List;

    return-object p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final getTextRender()Lcom/onyx/android/sdk/note/common/data/text/TextRender;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    return-object p0
.end method

.method public final m()Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->getFontMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FontUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FontUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->h:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/data/font/FontType;->CUSTOMIZE:Lcom/onyx/android/sdk/base/data/font/FontType;

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/onyx/android/sdk/base/utils/FontUtils;->buildFontItemAdapter(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/base/data/font/FontType;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Lcom/sunia/HTREnginev2/zgj;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/zgj;-><init>()V

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections4/MapUtils;->populateMap(Ljava/util/Map;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)V

    new-instance v2, Lcom/sunia/HTREnginev2/ahj;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/ahj;-><init>()V

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections4/MapUtils;->populateMap(Ljava/util/Map;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->setFontMap(Ljava/util/Map;)V

    :cond_2
    return-object p0
.end method

.method public final n(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$loadContent$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$loadContent$1;-><init>(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->setVisualStateCallback(Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->loadContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final o(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/sunia/HTREnginev2/ygj;

    invoke-direct {v2, p0, v0, p1}, Lcom/sunia/HTREnginev2/ygj;-><init>(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->setPageFinishCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->n(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/util/List;)V

    :goto_0
    return-object v0
.end method

.method public final q()Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getTextRender()Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_1
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-object p0
.end method

.method public final setFontDirs(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->h:Ljava/util/List;

    return-void
.end method

.method public final setRenderContext(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-void
.end method

.method public final setTextRender(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/text/TextRender;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->g:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    return-void
.end method

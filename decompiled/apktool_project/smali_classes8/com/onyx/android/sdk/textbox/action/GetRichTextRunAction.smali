.class public final Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetRichTextRunAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetRichTextRunAction.kt\ncom/onyx/android/sdk/textbox/action/GetRichTextRunAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n1855#2,2:92\n*S KotlinDebug\n*F\n+ 1 GetRichTextRunAction.kt\ncom/onyx/android/sdk/textbox/action/GetRichTextRunAction\n*L\n83#1:92,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\u0008\u0010\u0006\u001a\u00020\u0000H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004H\u0002J\u0012\u0010\u000b\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;",
        "getRichTextRun",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "r",
        "m",
        "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;",
        "p",
        "textRun",
        "o",
        "",
        "richTextRunStr",
        "q",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "e",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "f",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "g",
        "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;",
        "richTextRun",
        "<init>",
        "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "sdk-textbox_overseasRelease"
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
        "SMAP\nGetRichTextRunAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetRichTextRunAction.kt\ncom/onyx/android/sdk/textbox/action/GetRichTextRunAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n1855#2,2:92\n*S KotlinDebug\n*F\n+ 1 GetRichTextRunAction.kt\ncom/onyx/android/sdk/textbox/action/GetRichTextRunAction\n*L\n83#1:92,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p2, p0, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method

.method public static final synthetic access$evaluateTextRun(Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleResult(Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;)Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->o(Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;)Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$measureRichTextAction(Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$renderContent(Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;)Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->r()Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->n(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;Ljava/lang/String;)V

    return-void
.end method

.method public static final n(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$subject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->q(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction$a;-><init>(Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction$b;-><init>(Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction$c;-><init>(Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction$d;-><init>(Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRichTextRun()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->blockingSubscribe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->g:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getTextRender()Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/o2h;

    invoke-direct {v2, v0, p0}, Lcom/sunia/HTREnginev2/o2h;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;)V

    const-string p0, "javascript:RE.getTextRun()"

    invoke-virtual {v1, p0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-object v0
.end method

.method public final o(Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;)Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->g:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    return-object p0
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v1, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;->getItems()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getStyle()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getStyle()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->getFontPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getStyle()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getTextRender()Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->getFontMap()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getStyle()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v0

    :goto_3
    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->setFontPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method public final r()Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getTextRender()Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0
.end method

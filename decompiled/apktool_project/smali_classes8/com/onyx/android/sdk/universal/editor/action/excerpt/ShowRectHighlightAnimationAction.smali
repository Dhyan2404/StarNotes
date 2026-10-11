.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShowRectHighlightAnimationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n288#2,2:246\n1855#2:248\n1855#2,2:249\n1856#2:251\n1864#2,3:252\n*S KotlinDebug\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction\n*L\n119#1:246,2\n123#1:248\n125#1:249,2\n123#1:251\n136#1:252,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001M\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\u0006\u0010Q\u001a\u00020P\u0012\u0006\u0010\u001e\u001a\u00020\u0019\u0012\u0012\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\t\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\"\u00a2\u0006\u0004\u0008R\u0010SJ\u000c\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0008\u001a\u00020\u0006H\u0002J\u0016\u0010\r\u001a\u00020\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0016\u0010\u000e\u001a\u00020\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0010*\u0004\u0018\u00010\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u0006H\u0002J\u0018\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J\u0018\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0018\u001a\u00020\u0006H\u0016R\u0017\u0010\u001e\u001a\u00020\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR \u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\"\u00101\u001a\u00020&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010(\u001a\u0004\u0008/\u0010*\"\u0004\u00080\u0010,R\"\u00107\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\"\u0010;\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u001b\u001a\u0004\u00088\u0010\u001d\"\u0004\u00089\u0010:R\u0016\u0010=\u001a\u00020\u000f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010<R\'\u0010C\u001a\u0015\u0012\u000c\u0012\n @*\u0004\u0018\u00010?0?0>\u00a2\u0006\u0002\u0008A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010BR \u0010E\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010 R\u001a\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u000c0D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010 R#\u0010L\u001a\n @*\u0004\u0018\u00010H0H8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u0010J\u001a\u0004\u0008F\u0010KR\u001b\u0010O\u001a\u00020M8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010J\u001a\u0004\u0008I\u0010N\u00a8\u0006T"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "x",
        "n",
        "",
        "o",
        "w",
        "",
        "Landroid/graphics/RectF;",
        "rectangles",
        "Landroid/graphics/Path;",
        "q",
        "p",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Landroid/graphics/Matrix;",
        "t",
        "m",
        "firstRectF",
        "secondRect",
        "u",
        "v",
        "create",
        "dispose",
        "",
        "h",
        "Ljava/lang/String;",
        "getPageId",
        "()Ljava/lang/String;",
        "pageId",
        "i",
        "Ljava/util/List;",
        "groupRectList",
        "",
        "j",
        "J",
        "animationDuration",
        "Landroid/graphics/Paint;",
        "k",
        "Landroid/graphics/Paint;",
        "getStrokePaint",
        "()Landroid/graphics/Paint;",
        "setStrokePaint",
        "(Landroid/graphics/Paint;)V",
        "strokePaint",
        "l",
        "getFillPaint",
        "setFillPaint",
        "fillPaint",
        "Z",
        "getVerticalWritingMode",
        "()Z",
        "setVerticalWritingMode",
        "(Z)V",
        "verticalWritingMode",
        "getRendererKey",
        "setRendererKey",
        "(Ljava/lang/String;)V",
        "rendererKey",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "publishSubject",
        "",
        "groupRectangles",
        "r",
        "groupPathList",
        "Landroid/animation/ValueAnimator;",
        "s",
        "Lkotlin/Lazy;",
        "()Landroid/animation/ValueAnimator;",
        "animator",
        "com/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1",
        "()Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;",
        "renderHandler",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;J)V",
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
        "SMAP\nShowRectHighlightAnimationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n288#2,2:246\n1855#2:248\n1855#2,2:249\n1856#2:251\n1864#2,3:252\n*S KotlinDebug\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction\n*L\n119#1:246,2\n123#1:248\n125#1:249,2\n123#1:251\n136#1:252,3\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:J

.field public k:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Z

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public final p:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;J)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;>;J)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupRectList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->h:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->i:Ljava/util/List;

    .line 6
    iput-wide p4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->j:J

    .line 7
    sget-object p3, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p3, p4, p5, v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;->createStrokePaint$default(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;IFILjava/lang/Object;)Landroid/graphics/Paint;

    move-result-object p5

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->k:Landroid/graphics/Paint;

    .line 8
    invoke-static {p1, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isCurDarkTheme(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)Z

    move-result p2

    const/4 p5, 0x2

    invoke-static {p3, p2, p4, p5, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;->createFillPaint$default(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;ZIILjava/lang/Object;)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->l:Landroid/graphics/Paint;

    const-string p2, "render_key_shape_highlight"

    .line 9
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->n:Ljava/lang/String;

    .line 10
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p2

    const-string p3, "create(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->p:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->q:Ljava/util/List;

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->r:Ljava/util/List;

    .line 13
    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->s:Lkotlin/Lazy;

    .line 14
    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2;

    invoke-direct {p2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->t:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 1
    sget-object p4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p5, Lcom/onyx/android/sdk/universal/R$integer;->shape_highlight_animation_duration:I

    invoke-virtual {p4, p5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;J)V

    return-void
.end method

.method public static final synthetic access$addRender(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->m()V

    return-void
.end method

.method public static final synthetic access$findBoxInfo(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateBounding(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->o()V

    return-void
.end method

.method public static final synthetic access$getAnimationDuration$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->j:J

    return-wide v0
.end method

.method public static final synthetic access$getGroupPathList$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->r:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getPublishSubject$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->p:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$getVirtualPageBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->o:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public static final synthetic access$prepareRenderPath(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->w()V

    return-void
.end method

.method public static final synthetic access$setVirtualPageBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->o:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public static final synthetic access$startAnim(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->x()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->y(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    return-void
.end method

.method public static final y(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->r()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->r()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->r()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$c;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public dispose()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->n:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    return-void
.end method

.method public final getFillPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->l:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final getRendererKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrokePaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->k:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getVerticalWritingMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->m:Z

    return p0
.end method

.method public final m()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->s()Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->addRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;ZILjava/lang/Object;)V

    return-void
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->visibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->h:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->t(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->i:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copyRectFList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final p(Ljava/util/List;)Landroid/graphics/Path;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    move-object v6, v4

    check-cast v6, Landroid/graphics/RectF;

    invoke-virtual {p0, v6, v5}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->v(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v6}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    new-instance v5, Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/RectF;->left:F

    move-object v7, v4

    check-cast v7, Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->top:F

    invoke-direct {v5, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v5}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v5, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    new-instance v2, Landroid/graphics/PointF;

    check-cast v4, Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v4, Landroid/graphics/RectF;->right:F

    iget v5, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    :cond_3
    iget v2, v4, Landroid/graphics/RectF;->right:F

    iget v5, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    iget v2, v4, Landroid/graphics/RectF;->right:F

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v2, v4

    goto :goto_0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    iget p1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-object v1
.end method

.method public final q(Ljava/util/List;)Landroid/graphics/Path;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v6, v3

    move v7, v6

    move v8, v4

    move v9, v8

    :goto_0
    if-ge v5, v1, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, v10}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->u(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->toPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v2

    sget-object v6, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move v6, v3

    move v7, v6

    move v8, v4

    move v9, v8

    :cond_0
    iget v2, v10, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v2, v10, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v2, v10, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v2, v10, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-int/lit8 v5, v5, 0x1

    move-object v2, v10

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->toPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object p0

    sget-object p1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-object v0
.end method

.method public final r()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final s()Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->t:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;

    return-object p0
.end method

.method public final setFillPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->l:Landroid/graphics/Paint;

    return-void
.end method

.method public final setRendererKey(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->n:Ljava/lang/String;

    return-void
.end method

.method public final setStrokePaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->k:Landroid/graphics/Paint;

    return-void
.end method

.method public final setVerticalWritingMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->m:Z

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageRenderNode(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationY()F

    move-result p0

    neg-float p0, p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr p0, v2

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 p0, 0x1

    int-to-float p0, p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    div-float/2addr p0, p1

    invoke-virtual {v0, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object p0
.end method

.method public final u(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2

    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_0

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float p2, p0, p2

    if-lez p2, :cond_1

    :cond_0
    cmpl-float p0, v0, p0

    if-ltz p0, :cond_2

    iget p0, p1, Landroid/graphics/RectF;->right:F

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final v(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2

    iget p0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_0

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, p0, p2

    if-lez p2, :cond_1

    :cond_0
    cmpl-float p0, v0, p0

    if-ltz p0, :cond_2

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final w()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->q:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v2, Ljava/util/List;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->r:Ljava/util/List;

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->r:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->m:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->q(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->p(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final x()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->p:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/opm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/opm;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnDispose(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

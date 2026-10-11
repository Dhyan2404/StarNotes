.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRConvertToTextShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRConvertToTextShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,231:1\n766#2:232\n857#2,2:233\n288#2,2:235\n288#2,2:237\n766#2:239\n857#2,2:240\n766#2:242\n857#2,2:243\n1#3:245\n*S KotlinDebug\n*F\n+ 1 HWRConvertToTextShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction\n*L\n89#1:232\n89#1:233,2\n97#1:235,2\n99#1:237,2\n129#1:239\n129#1:240,2\n172#1:242\n172#1:243,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B;\u0012\u0006\u0010E\u001a\u00020D\u0012\u0006\u0010%\u001a\u00020 \u0012\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001a\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020302\u00a2\u0006\u0004\u0008F\u0010GJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002J$\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u001e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0014\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u001a0\u0002H\u0002J\u001c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001aH\u0002J\u000e\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0017\u0010%\u001a\u00020 8\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R(\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\"\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001d\u00106\u001a\u0008\u0012\u0004\u0012\u000203028\u0006\u00a2\u0006\u000c\n\u0004\u00084\u0010\'\u001a\u0004\u00085\u0010)R\u0018\u00109\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0018\u0010<\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010@R\u001c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u0016028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010\'\u00a8\u0006H"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "r",
        "t",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "v",
        "insertPoint",
        "n",
        "Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;",
        "x",
        "",
        "content",
        "",
        "width",
        "Lkotlin/Pair;",
        "y",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "page",
        "q",
        "Landroid/graphics/RectF;",
        "w",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "",
        "u",
        "",
        "o",
        "shapeList",
        "s",
        "m",
        "create",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "getRenderContext",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "i",
        "Ljava/util/List;",
        "getShapeList",
        "()Ljava/util/List;",
        "setShapeList",
        "(Ljava/util/List;)V",
        "j",
        "Ljava/lang/String;",
        "getContent",
        "()Ljava/lang/String;",
        "setContent",
        "(Ljava/lang/String;)V",
        "",
        "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
        "k",
        "getTextContentTypes",
        "textContentTypes",
        "l",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "compositeCommand",
        "p",
        "deletedShapes",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V",
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
        "SMAP\nHWRConvertToTextShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRConvertToTextShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,231:1\n766#2:232\n857#2,2:233\n288#2,2:235\n288#2,2:237\n766#2:239\n857#2,2:240\n766#2:242\n857#2,2:243\n1#3:245\n*S KotlinDebug\n*F\n+ 1 HWRConvertToTextShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction\n*L\n89#1:232\n89#1:233,2\n97#1:235,2\n99#1:237,2\n129#1:239\n129#1:240,2\n172#1:242\n172#1:243,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textContentTypes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->i:Ljava/util/List;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->k:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->p:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$addToUndoCommand(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convert(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->n(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createCrossPageShapes(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deleteOriginalShape(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$display(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->s(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureNotePage(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->t()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInsertTouchPoint(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->v()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setNotePage$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->l:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    return-void
.end method

.method public static final synthetic access$setTextShape$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method

.method public static final synthetic access$setVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;Ljava/util/Map;)V

    return-void
.end method

.method public static final p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;Ljava/util/Map;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, v0}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->o:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;->addCompositeCommand(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;",
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

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final getShapeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->i:Ljava/util/List;

    return-object p0
.end method

.method public final getTextContentTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->k:Ljava/util/List;

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->o:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    if-nez v0, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->p:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->removeShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->addShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;->addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/command/AddUndoRedoCommandAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/command/AddUndoRedoCommandAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->l:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->q(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v7, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {v8, v2, v0, v2}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v9, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v9, v8}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt;->addCrossPageShapes(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$k;

    invoke-direct {v1, v7}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$k;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$l;

    invoke-direct {v1, v7, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$l;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$createCrossPageShapes$3;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$createCrossPageShapes$3;

    new-instance v2, Lcom/sunia/HTREnginev2/afh;

    invoke-direct {v2, p0, v8}, Lcom/sunia/HTREnginev2/afh;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$m;

    invoke-direct {v0, v7}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$m;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->i:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {v7, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-static {v7}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->j:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->setInputText(Ljava/lang/String;)Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->x()Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->setInputConfig(Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;)Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object p2

    invoke-interface {p2}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->limitShapeRectInCurrentPage()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->limitShapeRectInNotePage(Z)Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->w()Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->j:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->y(Ljava/lang/String;F)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->defaultShapeTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setAlignType(I)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextWidth(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextHeight(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$n;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$o;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->i:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v4, Lcom/onyx/android/sdk/data/common/data/TextContentType;->Companion:Lcom/onyx/android/sdk/data/common/data/TextContentType$Companion;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->k:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/data/common/data/TextContentType$Companion;->containsHwrContent(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isSupportHWR(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->p:Ljava/util/List;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->p:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$p;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$display$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$display$1;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->findBoxInfoList(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$display$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$display$2;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$display$3;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$display$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$q;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$q;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->j:Ljava/lang/String;

    return-void
.end method

.method public final setShapeList(Ljava/util/List;)V
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
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->i:Ljava/util/List;

    return-void
.end method

.method public final t()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->i:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isReferenceShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->visibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v3

    :cond_5
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$ensureNotePage$boxInfo$2;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$ensureNotePage$boxInfo$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$r;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$s;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$s;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isSupportHWR(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/TextContentType;->Companion:Lcom/onyx/android/sdk/data/common/data/TextContentType$Companion;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->k:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/data/common/data/TextContentType$Companion;->containsHwrContent(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isSupportOCR(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/data/common/data/TextContentType;->Companion:Lcom/onyx/android/sdk/data/common/data/TextContentType$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->k:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/common/data/TextContentType$Companion;->containsOcrContent(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final v()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->w()Landroid/graphics/RectF;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    return-object v0
.end method

.method public final w()Landroid/graphics/RectF;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->i:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterNormalShapes(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

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

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->u(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRectWithWidth(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRectWithWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object p0

    if-eqz p0, :cond_2

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_2
    return-object v0
.end method

.method public final x()Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTextInputConfigOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    return-object p0
.end method

.method public final y(Ljava/lang/String;F)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->x()Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    move-result-object p0

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;->getTextSize()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->pt2px(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_2

    :cond_3
    const v8, 0x3fa66666    # 1.3f

    mul-float v3, p2, v8

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->Companion:Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper$Companion;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;->getTextSpacing()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper$Companion;->create(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/Layout$Alignment;FFZ)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->measureText(Ljava/lang/String;)F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getHeight()F

    move-result p0

    mul-float/2addr p0, v8

    new-instance p2, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

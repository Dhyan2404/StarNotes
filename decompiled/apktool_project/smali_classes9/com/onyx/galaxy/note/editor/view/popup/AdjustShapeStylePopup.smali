.class public final Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdjustShapeStylePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdjustShapeStylePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,353:1\n1747#2,3:354\n1726#2,3:361\n766#2:368\n857#2,2:369\n288#2,2:371\n288#2,2:373\n288#2,2:375\n1726#2,3:377\n1855#2,2:380\n766#2:382\n857#2,2:383\n1855#2,2:385\n766#2:387\n857#2,2:388\n1855#2,2:390\n766#2:392\n857#2,2:393\n1855#2,2:395\n256#3,2:357\n256#3,2:359\n256#3,2:364\n256#3,2:366\n*S KotlinDebug\n*F\n+ 1 AdjustShapeStylePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup\n*L\n106#1:354,3\n132#1:361,3\n158#1:368\n158#1:369,2\n163#1:371,2\n169#1:373,2\n175#1:375,2\n179#1:377,3\n247#1:380,2\n262#1:382\n262#1:383,2\n263#1:385,2\n274#1:387\n274#1:388,2\n275#1:390,2\n290#1:392\n290#1:393,2\n291#1:395,2\n107#1:357,2\n108#1:359,2\n132#1:364,2\n149#1:366,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010T\u001a\u00020S\u0012\u0006\u00105\u001a\u000203\u0012\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u000e06\u00a2\u0006\u0004\u0008U\u0010VJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\n\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0002J\n\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0006H\u0002J\u0010\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u000cH\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J4\u0010\'\u001a\u00020\u00022\"\u0010%\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020#0\"j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020#`$2\u0006\u0010&\u001a\u00020\u000cH\u0002J\u0008\u0010(\u001a\u00020\u0006H\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\u000cH\u0002J\u0008\u0010+\u001a\u00020\u0002H\u0016J(\u0010/\u001a\u00020\u00022\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0016J\u0012\u00101\u001a\u00020\u00022\u0008\u00100\u001a\u0004\u0018\u00010,H\u0016J\u0010\u00102\u001a\u00020\u00022\u0006\u00100\u001a\u00020,H\u0016R\u0014\u00105\u001a\u0002038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u00104R\u001a\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u000e068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u00107R$\u0010?\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001b\u0010D\u001a\u00020@8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010A\u001a\u0004\u0008B\u0010CR$\u0010J\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u0018\u0010L\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010KR\u0014\u0010N\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010MR\u001c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020P0O8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010Q\u00a8\u0006W"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "x",
        "G",
        "C",
        "",
        "style",
        "L",
        "A",
        "K",
        "z",
        "",
        "w",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "u",
        "s",
        "t",
        "Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;",
        "seekBarThickness",
        "initStrokeWidthView",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;",
        "colorLayout",
        "y",
        "originColor",
        "colorIndex",
        "H",
        "color",
        "o",
        "fillColor",
        "p",
        "enabled",
        "q",
        "r",
        "Ljava/util/HashMap;",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
        "Lkotlin/collections/HashMap;",
        "shapeAttrMap",
        "postImmediately",
        "I",
        "v",
        "shouldShow",
        "J",
        "dismiss",
        "Landroid/view/View;",
        "parent",
        "gravity",
        "showAtLocation",
        "anchor",
        "showAsDropDown",
        "show",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "Ljava/util/List;",
        "shapes",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "getViewShape",
        "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "setViewShape",
        "(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V",
        "viewShape",
        "Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;",
        "binding",
        "Landroid/view/View;",
        "getAnchorView",
        "()Landroid/view/View;",
        "setAnchorView",
        "(Landroid/view/View;)V",
        "anchorView",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Z",
        "hasPencilShape",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "attrChangesFilter",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V",
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
        "SMAP\nAdjustShapeStylePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdjustShapeStylePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,353:1\n1747#2,3:354\n1726#2,3:361\n766#2:368\n857#2,2:369\n288#2,2:371\n288#2,2:373\n288#2,2:375\n1726#2,3:377\n1855#2,2:380\n766#2:382\n857#2,2:383\n1855#2,2:385\n766#2:387\n857#2,2:388\n1855#2,2:390\n766#2:392\n857#2,2:393\n1855#2,2:395\n256#3,2:357\n256#3,2:359\n256#3,2:364\n256#3,2:366\n*S KotlinDebug\n*F\n+ 1 AdjustShapeStylePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup\n*L\n106#1:354,3\n132#1:361,3\n158#1:368\n158#1:369,2\n163#1:371,2\n169#1:373,2\n175#1:375,2\n179#1:377,3\n247#1:380,2\n262#1:382\n262#1:383,2\n263#1:385,2\n274#1:387\n274#1:388,2\n275#1:390,2\n290#1:392\n290#1:393,2\n291#1:395,2\n107#1:357,2\n108#1:359,2\n132#1:364,2\n149#1:366,2\n*E\n"
    }
.end annotation


# instance fields
.field public final q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Ljava/util/List;
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

.field public s:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final w:Z

.field public x:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
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
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->t:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->firstTargetShape(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->v:Lcom/onyx/android/sdk/note/common/shape/Shape;

    check-cast p3, Ljava/lang/Iterable;

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$hasPencilShape$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$hasPencilShape$1;

    invoke-static {p3, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->w:Z

    new-instance p1, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->x:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->G()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->x()V

    return-void
.end method

.method public static final B(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->q(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->K()V

    return-void
.end method

.method public static final D(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->L(I)V

    return-void
.end method

.method public static final E(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->L(I)V

    return-void
.end method

.method public static final F(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->L(I)V

    return-void
.end method

.method public static final synthetic access$changeColor(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->o(I)V

    return-void
.end method

.method public static final synthetic access$changeFillColor(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->p(I)V

    return-void
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getShapes$p(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$pickColor(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->H(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;II)V

    return-void
.end method

.method public static final synthetic access$postAttrChangesEvent(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Ljava/util/HashMap;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->I(Ljava/util/HashMap;Z)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->D(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->E(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->F(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->B(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Landroid/widget/CompoundButton;Z)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->shapeFillGroup:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v1, "shapeFillGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v5, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isSupportFillColor(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v2

    if-nez v2, :cond_1

    move v4, v3

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->s()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->fillColorSwitch:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->isFillColorEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->fillColorSwitch:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v2, Lcom/sunia/HTREnginev2/z8;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/z8;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->fillColorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->setShapeType(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v1

    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->fillColorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v4

    const-string v1, "getRoot(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getDockType$note_overseasRelease()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initFillLayout$3;

    invoke-direct {v7, p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initFillLayout$3;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;)V

    invoke-virtual/range {v2 .. v7}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->initFillColorLayout(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->fillColorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->updateFillColor(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->K()V

    return-void
.end method

.method public final C()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isSupportLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->penStrokeStyleTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "penStrokeStyleTitle"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->penStrokeStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v1

    const-string v4, "getRoot(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->t()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getLineStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->L(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->penStrokeStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->solidStyle:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "solidStyle"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/a9;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/a9;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->penStrokeStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->dashStyle:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "dashStyle"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/b9;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/b9;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->penStrokeStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->dotStyle:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "dotStyle"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/c9;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/c9;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final G()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->C()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    const-string v1, "colorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->y(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarThickness"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->initStrokeWidthView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->A()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->z()V

    return-void
.end method

.method public final H(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;II)V
    .locals 15

    move-object v5, p0

    iget-object v1, v5, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->u:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v6, v5, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v7, v5, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->s:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->getViewColors()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;

    move-object v0, v9

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;-><init>(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Ljava/util/List;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final I(Ljava/util/HashMap;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->x()V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;-><init>(Ljava/util/Map;)V

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSelectionBitmapEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSelectionBitmapEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->x:Lcom/onyx/android/sdk/base/rx/RxFilter;

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final J(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final K()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->fillColorSwitch:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->fillColorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    const-string v1, "fillColorLayout"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final L(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->penStrokeStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->solidStyle:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->penStrokeStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->dashStyle:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->penStrokeStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->dotStyle:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->x:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    return-void
.end method

.method public final getAnchorView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->u:Landroid/view/View;

    return-object p0
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->t:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    return-object p0
.end method

.method public final getViewShape()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->s:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-object p0
.end method

.method public final initStrokeWidthView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->disableThicknessStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->J(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->u()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->v()I

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PenUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMaxStrokeWidth(I)F

    move-result v3

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMinStrokeWidth(I)F

    move-result v1

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v1

    const-string v2, "between(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result v1

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;->toPhysicsStrokeWidth(F)F

    move-result v0

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initStrokeWidthView$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initStrokeWidthView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final o(I)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->v:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;->buildAttributes(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isFillColorShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setFillColor(I)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setColor(I)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->I(Ljava/util/HashMap;Z)V

    return-void
.end method

.method public final p(I)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

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

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v5, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isSupportFillColor(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

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

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;->buildAttributes(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setFillColor(I)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->I(Ljava/util/HashMap;Z)V

    return-void
.end method

.method public final q(Z)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

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

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v5, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isSupportFillColor(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

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

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v4, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;->buildAttributes(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setFillColorEnabled(Z)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    if-eqz p1, :cond_2

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v5, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$changeFillColorEnabled$2$1;

    invoke-direct {v5, v4, p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$changeFillColorEnabled$2$1;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;)V

    invoke-static {v3, v5}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->takeIfTrue(Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->I(Ljava/util/HashMap;Z)V

    return-void
.end method

.method public final r(I)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterNormalShapes(Ljava/util/Collection;)Ljava/util/List;

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

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v5, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isSupportLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

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

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;->buildAttributes(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setStrokeStyle(I)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->I(Ljava/util/HashMap;Z)V

    return-void
.end method

.method public final s()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterNormalShapes(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isSupportFillColor(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object v0
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->u:Landroid/view/View;

    return-void
.end method

.method public final setViewShape(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->s:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->u:Landroid/view/View;

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->u:Landroid/view/View;

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->u:Landroid/view/View;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final t()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterNormalShapes(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isSupportLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object v0
.end method

.method public final u()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 4

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isReferenceShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->disableThicknessStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object v0
.end method

.method public final v()I
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->u()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public final w()Z
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->r:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->disableThicknessStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->hasSameStrokeRange(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final x()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->x:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->w:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->x:Lcom/onyx/android/sdk/base/rx/RxFilter;

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$a;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$a;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeThrottleLast(JLio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public final y(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->v:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->setShape(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->setSaveColorProperty(Z)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getPrimaryColor(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->setSelectColor(I)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initColorLayout$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initColorLayout$1;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;)V

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->setListener(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout$ColorSelectedListener;)V

    return-void
.end method

.method public final z()V
    .locals 8

    new-instance v7, Lcom/onyx/android/sdk/ui/PopupDragHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object v0

    iget-object v2, v0, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->titleBar:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v0, "titleBar"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/ui/PopupDragHandler;-><init>(Landroid/widget/PopupWindow;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/ui/PopupDragHandler;->initialize()V

    return-void
.end method

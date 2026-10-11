.class public final Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEraserPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraserPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/EraserPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,354:1\n256#2,2:355\n256#2,2:357\n256#2,2:359\n256#2,2:361\n*S KotlinDebug\n*F\n+ 1 EraserPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/EraserPopup\n*L\n104#1:355,2\n251#1:357,2\n252#1:359,2\n153#1:361,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 O2\u00020\u0001:\u0001OB\'\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u0010+\u001a\u00020$\u0012\u0006\u00103\u001a\u00020,\u0012\u0006\u0010L\u001a\u00020K\u00a2\u0006\u0004\u0008M\u0010NJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u000e\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u000bJ\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dH\u0007J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020 H\u0007J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\"H\u0007R\"\u0010+\u001a\u00020$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\"\u00103\u001a\u00020,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001b\u00109\u001a\u0002048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108R\u001d\u0010@\u001a\u0008\u0012\u0004\u0012\u00020;0:8\u0006\u00a2\u0006\u000c\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?R\u001a\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\t0A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010G\u00a8\u0006P"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "R",
        "Q",
        "A",
        "C",
        "B",
        "U",
        "",
        "elementType",
        "",
        "add",
        "y",
        "eraserType",
        "Y",
        "X",
        "z",
        "V",
        "W",
        "isChecked",
        "S",
        "Landroid/view/View;",
        "anchor",
        "show",
        "dismiss",
        "isShowing",
        "Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;",
        "makeReportEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;",
        "event",
        "reportEvent",
        "Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;",
        "onVipRoleChanged",
        "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;",
        "onLoginAccountChanged",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setEditorBundle",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "editorBundle",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "r",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "getPenViewModel",
        "()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "setPenViewModel",
        "(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V",
        "penViewModel",
        "Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;",
        "s",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;",
        "binding",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "t",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "getPenArgsOption",
        "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "penArgsOption",
        "Lcom/onyx/android/sdk/data/utils/JSONListOption;",
        "u",
        "Lcom/onyx/android/sdk/data/utils/JSONListOption;",
        "eraserElementsOnlyOption",
        "",
        "v",
        "F",
        "popupHeight",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
        "Companion",
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
        "SMAP\nEraserPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraserPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/EraserPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,354:1\n256#2,2:355\n256#2,2:357\n256#2,2:359\n256#2,2:361\n*S KotlinDebug\n*F\n+ 1 EraserPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/EraserPopup\n*L\n104#1:355,2\n251#1:357,2\n252#1:359,2\n153#1:361,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lcom/onyx/android/sdk/data/utils/JSONListOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/utils/JSONListOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "penViewModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p4}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->r:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->s:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->t:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserElementsOnlyOption()Lcom/onyx/android/sdk/data/utils/JSONListOption;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->u:Lcom/onyx/android/sdk/data/utils/JSONListOption;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_570:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->v:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->R()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->C()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->B()V

    return-void
.end method

.method public static final D(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->z()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->U()V

    return-void
.end method

.method public static final E(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->Y(I)V

    return-void
.end method

.method public static final F(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->V()V

    return-void
.end method

.method public static final G(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->W()V

    return-void
.end method

.method public static final H()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/EraserPopupDismissEvent;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/event/EraserPopupDismissEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final I(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->Y(I)V

    return-void
.end method

.method public static final J(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->Y(I)V

    return-void
.end method

.method public static final K(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getPressureSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->seekBarPressure:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarPressure"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->X(I)V

    return-void
.end method

.method public static final L(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->S(Z)V

    return-void
.end method

.method public static final M(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xf

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->y(IZ)V

    return-void
.end method

.method public static final N(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x27

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->y(IZ)V

    return-void
.end method

.method public static final O(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserAllContainsSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->Y(I)V

    return-void
.end method

.method public static final P(Landroid/widget/CompoundButton;Z)V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserAutoCancelSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method

.method public static final T(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Z)V
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;-><init>()V

    const-string v0, "noteEditor_eraser_param_ScribbletoErase"

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;->setFunctionFrom(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;-><init>(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->E(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->G(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->P(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->F(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->D(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->M(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->L(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic r(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->J(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->T(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Z)V

    return-void
.end method

.method public static synthetic t(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->N(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic u(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->K(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic v(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->I(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w()V
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->H()V

    return-void
.end method

.method public static synthetic x(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->O(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;Landroid/widget/CompoundButton;Z)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getDockType$note_overseasRelease()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->flContentLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final B()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initAttachStateReportListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initAttachStateReportListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final C()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->tvClearPage:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/crf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/crf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->pixelEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/krf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/krf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->strokeEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/lrf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lrf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->selectEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/mrf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mrf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchPressureEraser:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/nrf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nrf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->scribbleErase:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/orf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/orf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchOnlyMarkPen:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/prf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/prf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchOnlyTape:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/drf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/drf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchAllContains:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/erf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/erf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchEraserCancel:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/frf;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/frf;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->ivEraseCancelGuide:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivEraseCancelGuide"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/hrf;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/hrf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->ivScribbleEraseGuide:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivScribbleEraseGuide"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/irf;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/irf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initListener$13;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initListener$13;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->seekBarPressure:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initListener$14;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initListener$14;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    new-instance v0, Lcom/sunia/HTREnginev2/jrf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/jrf;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public final Q()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchOnlyMarkPen:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->u:Lcom/onyx/android/sdk/data/utils/JSONListOption;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONListOption;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchOnlyTape:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->u:Lcom/onyx/android/sdk/data/utils/JSONListOption;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/utils/JSONListOption;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public final R()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->X(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PenUtils;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMaxStrokeWidth(I)F

    move-result v4

    invoke-static {v4}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMinStrokeWidth(I)F

    move-result v2

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v2

    const-string v3, "between(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->t:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result v2

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchPressureEraser:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getPressureSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->seekBarPressure:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getPressure()Lcom/onyx/android/sdk/data/utils/FloatOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/FloatOption;->get()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->seekBarPressure:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v2, "seekBarPressure"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchPressureEraser:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->scribbleErase:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getScribbleEraseSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->Q()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->A()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->tvClearPage:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportClearPage()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchAllContains:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserAllContainsSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchEraserCancel:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserAutoCancelSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public final S(Z)V
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVIPPermanent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->scribbleErase:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance p1, Lcom/onyx/galaxy/note/account/action/CheckLoginStateAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/account/action/CheckLoginStateAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/grf;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/grf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getScribbleEraseSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method

.method public final U()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string v1, "view"

    const/4 v2, 0x0

    const-string v3, "click_galaxy_eraser_param_0002"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final V()V
    .locals 11

    new-instance v9, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->erase_cancel_tips:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v4, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->ivEraseCancelGuide:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivEraseCancelGuide"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/lang/CharSequence;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-direct {v0, v9}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->ivEraseCancelGuide:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final W()V
    .locals 11

    new-instance v9, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->scribble_erase_tips:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v4, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->ivScribbleEraseGuide:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivScribbleEraseGuide"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/lang/CharSequence;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-direct {v0, v9}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->ivScribbleEraseGuide:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final X(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->pixelEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->strokeEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->selectEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v4, "seekBarThickness"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, v3, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    const/16 v5, 0x8

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    move v4, v5

    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->eraserAllContains:Landroid/widget/FrameLayout;

    const-string v4, "eraserAllContains"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v3, :cond_5

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move v1, v5

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserAllContainsSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->selectEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->ic_eraser_all_contains:I

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->selectEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->ic_eraser_select:I

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    return-void
.end method

.method public final Y(I)V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;->eraserTypeChange(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->X(I)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getPenArgsOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->t:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
.end method

.method public final getPenViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->r:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    return-object p0
.end method

.method public final makeReportEvent(Z)Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "view_galaxy_eraser_param_0001"

    goto :goto_0

    :cond_0
    const-string p1, "click_galaxy_eraser_param_0001"

    :goto_0
    move-object v2, p1

    new-instance p1, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string v3, "view"

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->pixelEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->strokeEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->selectEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->t:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result v0

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchPressureEraser:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchOnlyMarkPen:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->switchOnlyTape:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZFZZZ)V

    return-object p1
.end method

.method public final onLoginAccountChanged(Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVIPPermanent()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->scribbleErase:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public final onVipRoleChanged(Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVIPPermanent()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;->scribbleErase:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public final reportEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->makeReportEvent(Z)Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEraserPopupMenuEvent(Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;)V

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setPenViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->r:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

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

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final y(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->u:Lcom/onyx/android/sdk/data/utils/JSONListOption;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$addEraserElementOnlyType$1;

    invoke-direct {v1, p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$addEraserElementOnlyType$1;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->Q()V

    return-void
.end method

.method public final z()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->hasLockedLayer(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/android/sdk/universal/R$string;->has_locked_layer_tip:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ClearCurrentPageEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ClearCurrentPageEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.class public final Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorPickPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPickPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ColorPickPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,312:1\n766#2:313\n857#2,2:314\n*S KotlinDebug\n*F\n+ 1 ColorPickPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ColorPickPopup\n*L\n215#1:313\n215#1:314,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009b\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001F\u0018\u0000 Q2\u00020\u00012\u00020\u0002:\u0001QB;\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u0010L\u001a\u00020K\u0012\u0008\u0008\u0002\u0010N\u001a\u00020M\u0012\u000e\u0008\u0002\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000800\u0012\u0008\u0008\u0002\u00105\u001a\u00020\u0008\u00a2\u0006\u0004\u0008O\u0010PJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u0003H\u0002J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0014\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130\u0012H\u0002J\u001c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\u0010\u0010\u0019\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00180\u0012H\u0002J\u0008\u0010\u001a\u001a\u00020\u0003H\u0002J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0008H\u0002J\u0008\u0010\u001d\u001a\u00020\u0003H\u0002J\u0008\u0010\u001e\u001a\u00020\u0003H\u0002J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u001fH\u0007J\u0006\u0010\"\u001a\u00020\u0003J\u0006\u0010#\u001a\u00020\u0003J\u0010\u0010%\u001a\u00020\u00032\u0008\u0008\u0002\u0010$\u001a\u00020\u000fJ\u000e\u0010&\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0008J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\'H\u0007J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010 \u001a\u00020)H\u0007J\u0008\u0010+\u001a\u00020\u0003H\u0014J\u0008\u0010,\u001a\u00020\u0003H\u0014J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0008H\u0016J\u0008\u0010/\u001a\u00020\u0003H\u0016R\u001a\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u0008008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0014\u00105\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u0010\u001cR\u0016\u00107\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u00106R\u001b\u0010<\u001a\u0002088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u00089\u0010;R\u001b\u0010@\u001a\u00020=8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010:\u001a\u0004\u0008>\u0010?R\u0016\u0010A\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001cR\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0014\u0010H\u001a\u00020F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010G\u00a8\u0006R"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;",
        "",
        "x",
        "v",
        "Landroid/view/View;",
        "view",
        "",
        "pos",
        "G",
        "Landroid/view/MenuItem;",
        "menuItem",
        "B",
        "p",
        "",
        "hasFocus",
        "H",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        "A",
        "colorSetModels",
        "s",
        "",
        "z",
        "y",
        "color",
        "I",
        "E",
        "F",
        "Lcom/onyx/android/sdk/universal/editor/events/note/BeforeChangePenArgsEvent;",
        "event",
        "onBeforeChangePenEvent",
        "setSelectColorTabOnly",
        "setOpaqueColorOnly",
        "disable",
        "setDisableAlphaColor",
        "setOriginColor",
        "Lcom/onyx/galaxy/note/editor/event/DeleteColorSetModelEvent;",
        "onDeleteColorSetModelEvent",
        "Lcom/onyx/galaxy/note/editor/event/RenameColorSetModelEvent;",
        "onRenameColorSetModelEvent",
        "onShow",
        "onDismiss",
        "keyboardHeight",
        "onKeyboardOpen",
        "onKeyboardClose",
        "",
        "q",
        "Ljava/util/List;",
        "colors",
        "r",
        "colorIndex",
        "Z",
        "opaqueColorOnly",
        "Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;",
        "t",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;",
        "u",
        "()Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;",
        "colorSetAdapter",
        "originColorPanelHeight",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;",
        "w",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;",
        "keyboardHelper",
        "com/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1",
        "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;",
        "wrapperColorPickerCallback",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;",
        "callback",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;I)V",
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
        "SMAP\nColorPickPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPickPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ColorPickPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,312:1\n766#2:313\n857#2,2:314\n*S KotlinDebug\n*F\n+ 1 ColorPickPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ColorPickPopup\n*L\n215#1:313\n215#1:314,2\n*E\n"
    }
.end annotation


# static fields
.field public static final COLOR_PALETTE_TAB_INDEX:I = 0x0

.field public static final COLOR_SET_TAB_INDEX:I = 0x1

.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:I

.field public s:Z

.field public final t:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:I

.field public w:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    .line 5
    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->q:Ljava/util/List;

    .line 6
    iput p5, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->r:I

    .line 7
    new-instance p3, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$binding$2;

    invoke-direct {p3, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t:Lkotlin/Lazy;

    .line 8
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$colorSetAdapter$2;

    invoke-direct {p1, p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$colorSetAdapter$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->u:Lkotlin/Lazy;

    .line 9
    new-instance p1, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->w:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    .line 10
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;

    invoke-direct {p1, p2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;-><init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->x:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;

    .line 11
    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->setDefaultAttribute(Landroid/widget/PopupWindow;)V

    .line 12
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->x()V

    .line 13
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->colorPickView:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->setCallback(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;)V

    .line 14
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->v()V

    .line 15
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->p()V

    .line 16
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->y()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 1
    sget-object p3, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 2
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, -0x1

    :cond_2
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;I)V

    return-void
.end method

.method public static final C(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;Z)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->u()Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public static final D(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->u()Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->updateOrder()V

    return-void
.end method

.method public static final synthetic access$generateColorData(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getColorSetAdapter(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->u()Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getColors$p(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->q:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$loadFromLocal(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->A()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onActionClick(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;ILandroid/view/MenuItem;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->B(ILandroid/view/MenuItem;)V

    return-void
.end method

.method public static final synthetic access$updateSelectedColors(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->I(I)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->D(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Z)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->q(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->w(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->C(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;Z)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Landroid/view/View;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->H(Z)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Landroid/view/View;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->H(Z)V

    return-void
.end method

.method public static synthetic setDisableAlphaColor$default(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->setDisableAlphaColor(Z)V

    return-void
.end method

.method public static final w(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "v"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->G(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final A()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$b;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$c;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$d;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final B(ILandroid/view/MenuItem;)V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->u()Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget v0, Lcom/onyx/galaxy/note/R$id;->rename:I

    if-ne p2, v0, :cond_1

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_1
    sget v0, Lcom/onyx/galaxy/note/R$id;->delete:I

    if-ne p2, v0, :cond_2

    new-instance p2, Lcom/onyx/galaxy/note/editor/action/colorset/DeleteColorSetAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/onyx/galaxy/note/editor/action/colorset/DeleteColorSetAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/v1e;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/v1e;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/w1e;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/w1e;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method public final E()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v1

    const-string v2, "getRoot(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivityContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->w:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->init(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->bindRootLayout(Landroid/view/ViewGroup;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->setOnKeyboardStateListener(Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    return-void
.end method

.method public final F()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->colorPickView:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;->colorPanel:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    const-string v1, "colorPanel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->v:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    return-void
.end method

.method public final G(Landroid/view/View;I)V
    .locals 8

    new-instance v7, Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$menu;->color_set_more_action_menu:I

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$showMoreActionPopup$1;

    invoke-direct {v3, p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$showMoreActionPopup$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;I)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;-><init>(Landroid/content/Context;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, p1}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showAsDropDownCenter(Landroid/view/View;)V

    return-void
.end method

.method public final H(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method public final I(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->q:Ljava/util/List;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->r:I

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->q:Ljava/util/List;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->r:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->u()Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->q:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->updateSelectedPos(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onBeforeChangePenEvent(Lcom/onyx/android/sdk/universal/editor/events/note/BeforeChangePenArgsEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/BeforeChangePenArgsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasPenBox()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public final onDeleteColorSetModelEvent(Lcom/onyx/galaxy/note/editor/event/DeleteColorSetModelEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/DeleteColorSetModelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->y()V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->F()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->w:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->release()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onDismiss()V

    return-void
.end method

.method public onKeyboardClose()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->F()V

    return-void
.end method

.method public onKeyboardOpen(I)V
    .locals 2

    sget-object p1, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->v:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->colorPickView:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;->colorPanel:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    const-string v0, "colorPanel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    return-void
.end method

.method public final onRenameColorSetModelEvent(Lcom/onyx/galaxy/note/editor/event/RenameColorSetModelEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/RenameColorSetModelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->y()V

    return-void
.end method

.method public onShow()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onShow()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->E()V

    return-void
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v1, "tabLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$addEvent$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$addEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->colorPickView:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;->colorValueText:Lcom/onyx/galaxy/note/ui/view/ColorInputView;

    new-instance v1, Lcom/sunia/HTREnginev2/t1e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/t1e;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->colorPickView:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;->alphaValueText:Lcom/onyx/galaxy/note/ui/view/AlphaInputView;

    new-instance v1, Lcom/sunia/HTREnginev2/u1e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u1e;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final s(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
            ">;"
        }
    .end annotation

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->s:Z

    if-eqz p0, :cond_2

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

    check-cast v1, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getColors()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$generateColorData$1$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$generateColorData$1$1;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->containsAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    return-object p1
.end method

.method public final setDisableAlphaColor(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->colorPickView:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->setDisableAlphaColor(Z)V

    return-void
.end method

.method public final setOpaqueColorOnly()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->s:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->colorPickView:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    const-string v2, "colorPickView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->setOpaqueColorOnly$default(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->y()V

    return-void
.end method

.method public final setOriginColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->colorPickView:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->setSelectionColor(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->colorPickView:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;->colorPanel:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;->setSelectionColor(I)V

    return-void
.end method

.method public final setSelectColorTabOnly()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->removeTabAt(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    :cond_0
    return-void
.end method

.method public final t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    return-object p0
.end method

.method public final u()Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->u:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

    return-object p0
.end method

.method public final v()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->u()Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_menu:I

    new-instance v2, Lcom/sunia/HTREnginev2/s1e;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/s1e;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->rvColorSet:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->u()Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageColorSetHandlerImpl;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->u()Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageColorSetHandlerImpl;-><init>(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->u()Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;-><init>(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;ZZZ)V

    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->rvColorSet:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final x()V
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_340:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v3

    const-string v1, "getRoot(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentViewWithLoading$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IIIIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->colorPickView:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;->colorPanel:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->v:I

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public final y()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->A()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->z()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final z()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/colorset/action/ColorSyncAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/colorset/action/ColorSyncAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->continueOnFail(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$a;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

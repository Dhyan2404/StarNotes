.class public final Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;
.super Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$Companion;,
        Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLongPressPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongPressPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LongPressPopup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,265:1\n1#2:266\n1855#3,2:267\n*S KotlinDebug\n*F\n+ 1 LongPressPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LongPressPopup\n*L\n162#1:267,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 C2\u00020\u0001:\u0001CB7\u0012\u0006\u0010>\u001a\u00020=\u0012\u0006\u0010)\u001a\u00020\'\u0012\u0006\u0010@\u001a\u00020?\u0012\u0006\u0010/\u001a\u00020*\u0012\u000e\u0008\u0002\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00100#\u00a2\u0006\u0004\u0008A\u0010BJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002J\u001e\u0010\u000f\u001a\u00020\u00042\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J \u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0002J\u0008\u0010\u0018\u001a\u00020\u0004H\u0002J\u0008\u0010\u0019\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0016\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0008\u0010\"\u001a\u00020\u001dH\u0002J\u0016\u0010&\u001a\u00020\u00042\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0#H\u0002R\u0014\u0010)\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010(R\u0017\u0010/\u001a\u00020*8\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R(\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00100#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001b\u00109\u001a\u0002068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u00107\u001a\u0004\u0008+\u00108R\u0016\u0010<\u001a\u00020:8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\t\u0010;\u00a8\u0006D"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;",
        "Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;",
        "Landroid/view/View;",
        "editorView",
        "",
        "show",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "t",
        "A",
        "v",
        "y",
        "",
        "menuViews",
        "Landroid/view/ViewGroup;",
        "menuRoot",
        "x",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "menu",
        "itemView",
        "Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;",
        "menuContainer",
        "w",
        "u",
        "n",
        "l",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "model",
        "z",
        "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;",
        "editTagForNoteContext",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;",
        "p",
        "r",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "list",
        "o",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "s",
        "I",
        "getMaxWidth",
        "()I",
        "maxWidth",
        "Ljava/util/List;",
        "getSpecifiedMenus",
        "()Ljava/util/List;",
        "setSpecifiedMenus",
        "(Ljava/util/List;)V",
        "specifiedMenus",
        "Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;",
        "Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;",
        "menuAdapter",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;ILjava/util/List;)V",
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
        "SMAP\nLongPressPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongPressPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LongPressPopup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,265:1\n1#2:266\n1855#3,2:267\n*S KotlinDebug\n*F\n+ 1 LongPressPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LongPressPopup\n*L\n162#1:267,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "LongPressPopup"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:I

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;ILjava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
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
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specifiedMenus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 5
    iput p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->s:I

    .line 6
    iput-object p5, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->t:Ljava/util/List;

    .line 7
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->u:Lkotlin/Lazy;

    const/16 p1, 0x1d

    .line 8
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    :cond_0
    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->v()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;ILjava/util/List;)V

    return-void
.end method

.method public static final synthetic access$generateAddTagAction(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->p(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateAddTagContext(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->r()Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->s()Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$onMenuItemClick(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->w(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;)V

    return-void
.end method

.method public static final synthetic access$onMenuUpdated(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->x(Ljava/util/List;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic access$showAddToTocDialog(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->z(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->q(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V
    .locals 4

    const-string v0, "$editTagForNoteContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectedNoteTagBean()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsTagAddEvent;

    sget-object v2, Lcom/onyx/android/sdk/data/TagAddFrom;->PAGE_LONG_CLICK:Lcom/onyx/android/sdk/data/TagAddFrom;

    sget-object v3, Lcom/onyx/android/sdk/data/TagAddType;->PAGE:Lcom/onyx/android/sdk/data/TagAddType;

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/event/StatisticsTagAddEvent;-><init>(Lcom/onyx/android/sdk/data/TagAddFrom;Lcom/onyx/android/sdk/data/TagAddType;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->o(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->t(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getContentView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method

.method public final getMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->s:I

    return p0
.end method

.method public final getSpecifiedMenus()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->t:Ljava/util/List;

    return-object p0
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "click_galaxy_noteEditor_page_0003"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$a;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$b;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$c;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$d;->e:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$e;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final n()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsPageInkCreateEvent;

    sget-object v2, Lcom/onyx/android/sdk/data/PageInkCreateFrom;->LONG_CLICK:Lcom/onyx/android/sdk/data/PageInkCreateFrom;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/event/StatisticsPageInkCreateEvent;-><init>(Lcom/onyx/android/sdk/data/PageInkCreateFrom;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$g;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$h;->e:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$h;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$i;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$i;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$j;->e:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$j;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$k;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final o(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->getTagList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/InsertTagEvent;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/events/note/InsertTagEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;Lcom/onyx/android/sdk/base/data/TouchPoint;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public final p(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;

    const-string v1, "LongPressPopup"

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;-><init>(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/k5j;

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/k5j;-><init>(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnComplete(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r()Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;
    .locals 0

    new-instance p0, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;-><init>()V

    return-object p0
.end method

.method public final s()Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->u:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;

    return-object p0
.end method

.method public final setSpecifiedMenus(Ljava/util/List;)V
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
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->t:Ljava/util/List;

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->t(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v0

    const v2, 0x800033

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final t(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    invoke-direct {v4, v5, v6, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p1

    add-float/2addr p1, v5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    add-float/2addr v1, v6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    const-string v5, "getContentView(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v3, v2, v2, v5, v6}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, p1, v5

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v1, v7

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr p1, v2

    invoke-direct {v3, v5, v7, p1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p1, v3, Landroid/graphics/RectF;->left:F

    iget v1, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p1, v1

    const/4 v5, 0x0

    if-gez v2, :cond_0

    sub-float/2addr v1, p1

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    iget p1, v3, Landroid/graphics/RectF;->right:F

    iget v2, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v2

    if-lez v4, :cond_1

    sub-float v1, v2, p1

    :cond_1
    invoke-virtual {v3, v1, v5}, Landroid/graphics/RectF;->offset(FF)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_30:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    sub-float v2, p1, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v0

    sub-float/2addr v4, p1

    invoke-static {v1, v2, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->s()Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;->arrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    neg-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    new-instance p0, Lcom/onyx/android/sdk/base/data/Size;

    iget p1, v3, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iget v0, v3, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    return-object p0
.end method

.method public final u(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->clearClipData()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPastePopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPastePopup$Companion;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPastePopup$Companion;->paste(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->m()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->n()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->l()V

    :goto_0
    return-void
.end method

.method public final v()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->s()Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "getRoot(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->v:Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->y()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->v:Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;

    const-string v2, "menuAdapter"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$initView$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$initView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    invoke-virtual {v1, v3}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setCallback(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->t:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$initView$menus$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$initView$menus$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->v:Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setMenus(Ljava/util/List;)V

    return-void
.end method

.method public final w(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;)V
    .locals 0

    sget-object p2, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->LAST_PAGE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->NEXT_PAGE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->u(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V

    return-void
.end method

.method public final x(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->s:I

    if-lez p2, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getParentViewRef()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->A(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final y()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_150:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->s:I

    sub-int/2addr v1, v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->v:Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;

    if-nez p0, :cond_0

    const-string p0, "menuAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setMaxWidth(I)V

    return-void
.end method

.method public final z(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V
    .locals 12

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "click_galaxy_noteEditor_page_0004"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    sget-object v9, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$showAddToTocDialog$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$showAddToTocDialog$1;

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v4, v0

    move-object v7, p1

    invoke-direct/range {v4 .. v11}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

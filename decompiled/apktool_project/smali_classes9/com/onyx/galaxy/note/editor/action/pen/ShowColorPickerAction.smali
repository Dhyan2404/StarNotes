.class public Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003BM\u0012\u0006\u0010J\u001a\u00020I\u0012\u0008\u0010&\u001a\u0004\u0018\u00010!\u0012\u0006\u0010+\u001a\u00020\u0015\u0012\u0006\u0010.\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u00101\u001a\u00020\n\u0012\u0008\u0008\u0002\u00107\u001a\u000202\u0012\u000e\u0008\u0002\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\n08\u00a2\u0006\u0004\u0008K\u0010LJ\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u000e\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0019J\u0010\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0008\u0010\u001d\u001a\u00020\u0008H\u0002J\u0008\u0010\u001e\u001a\u00020\u0008H\u0002J\u0008\u0010\u001f\u001a\u00020\u0008H\u0002J\u0010\u0010 \u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0019H\u0002R\u001c\u0010&\u001a\u0004\u0018\u00010!8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u001a\u0010+\u001a\u00020\u00158\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u001a\u0010.\u001a\u00020\u00158\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008,\u0010(\u001a\u0004\u0008-\u0010*R\u0016\u00101\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0017\u00107\u001a\u0002028\u0006\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106R\u001a\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\n088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0017\u0010@\u001a\u00020<8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010=\u001a\u0004\u0008>\u0010?R\u0019\u0010E\u001a\u0004\u0018\u00010A8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010B\u001a\u0004\u0008C\u0010DR\u0016\u0010H\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008F\u0010G\u00a8\u0006N\u00b2\u0006\u0012\u0010E\u001a\u0008\u0012\u0004\u0012\u00020A0M8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;",
        "popup",
        "",
        "showPopupWindow",
        "",
        "color",
        "onColorSelected",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        "colorSet",
        "onColorSetSelected",
        "",
        "message",
        "showMessageDialog",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;",
        "colorPickView",
        "Landroid/view/View;",
        "cellView",
        "Landroid/widget/PopupWindow;",
        "showDeleteDialog",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;",
        "colorPanelView",
        "screenCapture",
        "startScreenCapture",
        "q",
        "n",
        "o",
        "s",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "h",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "getShapeToolType",
        "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "shapeToolType",
        "i",
        "Landroid/view/View;",
        "getRootView",
        "()Landroid/view/View;",
        "rootView",
        "j",
        "getAnchor",
        "anchor",
        "k",
        "I",
        "originColor",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "l",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "getDockType",
        "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "",
        "m",
        "Ljava/util/List;",
        "colors",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "getPenProperty",
        "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "penProperty",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "getPenArgsOption",
        "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "penArgsOption",
        "p",
        "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;",
        "colorPickPopup",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;)V",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:I

.field public final l:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Ljava/util/List;
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

.field public final n:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 6
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->h:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    .line 7
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->i:Landroid/view/View;

    .line 8
    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->j:Landroid/view/View;

    .line 9
    iput p5, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->k:I

    .line 10
    iput-object p6, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->l:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    .line 11
    iput-object p7, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->m:Ljava/util/List;

    .line 12
    sget-object p2, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->n:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    .line 13
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->uiDrawingArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->o:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    .line 14
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/colorset/data/ColorPickerValues;->INSTANCE:Lcom/onyx/android/sdk/replicator/colorset/data/ColorPickerValues;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorPickerValues;->getRecentColorOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p6

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 4
    invoke-direct/range {v1 .. v8}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$reportEvent(Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->o()V

    return-void
.end method

.method public static final synthetic access$setOriginColor$p(Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->k:I

    return-void
.end method

.method public static final synthetic access$showColorPicker(Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->q()V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->r(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->t(Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;Z)V

    return-void
.end method

.method public static final p(Lkotlin/Lazy;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;>;)",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
.end method

.method public static final r(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V
    .locals 1

    const-string v0, "$colorPickView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->removeSelectedCell()V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;Z)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$colorPanelView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->screenCapture(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V

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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$b;->e:Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$b;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "onErrorReturnItem(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getAnchor()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->j:Landroid/view/View;

    return-object p0
.end method

.method public final getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->l:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-object p0
.end method

.method public final getPenArgsOption()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->o:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    return-object p0
.end method

.method public final getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->n:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    return-object p0
.end method

.method public final getRootView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->i:Landroid/view/View;

    return-object p0
.end method

.method public final getShapeToolType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->h:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-object p0
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->p:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez v0, :cond_0

    const-string v0, "colorPickPopup"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$initAttachStateReportListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$initAttachStateReportListener$1;-><init>(Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final o()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->h:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$reportEvent$penArgsOption$2;

    invoke-direct {v2, v1, v0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$reportEvent$penArgsOption$2;-><init>(Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v2, v3

    const-string v4, ""

    packed-switch v3, :pswitch_data_0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    const-string v3, "click_galaxy_lasso_param_0002"

    goto :goto_0

    :pswitch_1
    const-string v3, "click_galaxy_eraser_param_0003"

    goto :goto_0

    :pswitch_2
    const-string v3, "click_galaxy_shape_param_0002"

    goto :goto_0

    :pswitch_3
    const-string v3, "click_galaxy_laserpointer_param_0002"

    goto :goto_0

    :pswitch_4
    const-string v3, "click_galaxy_tap_param_0002"

    goto :goto_0

    :pswitch_5
    const-string v3, "click_galaxy_pencil_param_0002"

    goto :goto_0

    :pswitch_6
    const-string v3, "click_galaxy_highlighter_param_0002"

    goto :goto_0

    :pswitch_7
    const-string v3, "click_galaxy_ballpen_param_0002"

    goto :goto_0

    :pswitch_8
    const-string v3, "click_galaxy_pen_param_0002"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_9
    const-string v4, "lasso_data"

    goto :goto_1

    :pswitch_a
    const-string v4, "eraser_data"

    goto :goto_1

    :pswitch_b
    const-string v4, "figure_data"

    goto :goto_1

    :pswitch_c
    const-string v4, "laser_data"

    goto :goto_1

    :pswitch_d
    const-string v4, "tape_data"

    goto :goto_1

    :pswitch_e
    const-string v4, "pencil_data"

    goto :goto_1

    :pswitch_f
    const-string v4, "markerpen_data"

    goto :goto_1

    :pswitch_10
    const-string v4, "ballpen_data"

    goto :goto_1

    :pswitch_11
    const-string v4, "pen_data"

    :goto_1
    invoke-static {v4}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->p(Lkotlin/Lazy;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v0, p0, v4, v3, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportShowPopupMenuEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public onColorChange(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback$DefaultImpls;->onColorChange(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;I)V

    return-void
.end method

.method public onColorSelected(I)V
    .locals 0

    return-void
.end method

.method public onColorSetSelected(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "colorSet"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final q()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->p:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez v0, :cond_1

    new-instance v6, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->l:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->m:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->m:Ljava/util/List;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;I)V

    iput-object v6, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->p:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->p:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    const/4 v1, 0x0

    const-string v2, "colorPickPopup"

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget v3, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->k:I

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->setOriginColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->h:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->TAPE_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->p:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->setOpaqueColorOnly()V

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->n()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->p:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->showPopupWindow(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    return-void
.end method

.method public final s(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v3, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_FLOATING_COLOR_PICKER_FUNCTION_NAME()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_FLOATING_COLOR_PICKER_INTENT_NAME()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestFloatingWindowPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/mpm;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/mpm;-><init>(Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final screenCapture(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorPanelView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/data/R$integer;->delay_time_dialog_close:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->p:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez v2, :cond_0

    const-string v2, "colorPickPopup"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    new-instance v2, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$c;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$c;-><init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$d;-><init>(Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public showDeleteDialog(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 10
    .param p1    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "colorPickView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cellView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/popup/CommonDeletePopup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/npm;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/npm;-><init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V

    invoke-direct {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/CommonDeletePopup;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v3, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;ILjava/lang/Object;)Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public showMessageDialog(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "message"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void
.end method

.method public showPopupWindow(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "popup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->j:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public startScreenCapture(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorPanelView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->s(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V

    return-void
.end method

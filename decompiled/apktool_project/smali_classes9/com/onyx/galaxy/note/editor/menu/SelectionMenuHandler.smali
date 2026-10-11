.class public Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;
.super Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u000b\u001a\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0002J\u0008\u0010\r\u001a\u00020\u0006H\u0002J\u0008\u0010\u000e\u001a\u00020\u0006H\u0002J\u0008\u0010\u000f\u001a\u00020\u0006H\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J\u0008\u0010\u0012\u001a\u00020\u0006H\u0002J\u0008\u0010\u0013\u001a\u00020\u0006H\u0002J\u0008\u0010\u0014\u001a\u00020\u0006H\u0002J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0008\u0010\u0019\u001a\u00020\u0006H\u0002J\u0008\u0010\u001a\u001a\u00020\u0006H\u0002J\u0008\u0010\u001b\u001a\u00020\u0006H\u0002R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;",
        "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "menu",
        "Landroid/view/View;",
        "itemView",
        "",
        "onMenuClick",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "updateSelectedShapes",
        "d",
        "g",
        "j",
        "n",
        "view",
        "c",
        "k",
        "f",
        "e",
        "shape",
        "i",
        "o",
        "p",
        "l",
        "b",
        "h",
        "",
        "Ljava/util/List;",
        "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;",
        "manager",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V",
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
.field public final b:Ljava/util/List;
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
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->m(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;)V

    return-void
.end method

.method public static final synthetic access$getShapes$p(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->b:Ljava/util/List;

    return-object p0
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 9

    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->sticker_check_network:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionAddToStickerEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionAddToStickerEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    new-instance v3, Lcom/onyx/galaxy/note/account/action/CheckLoginStateAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->requireMenuView()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/account/action/CheckLoginStateAction;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->firstTargetShape(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(Z)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getFragmentManager$note_overseasRelease()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->firstTargetShape(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    const/16 v2, 0x21

    if-eq v1, v2, :cond_2

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->p(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->i(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->o(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 10

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->firstTargetShape(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v3, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final g()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getFragmentManager$note_overseasRelease()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/CheckBeautifyPermissionEvent;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;->SELECTION_CONVERT:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/CheckBeautifyPermissionEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->requireMenuView()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->requireMenuView()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$onLinkShapeEditMenuClick$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$onLinkShapeEditMenuClick$1;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->setUpdatedCallback(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->updateLocation()Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->show()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/events/note/CloseSelectionMenuEvent;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/events/note/CloseSelectionMenuEvent;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final j()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/OcrTextConvertDialog;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/OcrTextConvertDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getFragmentManager$note_overseasRelease()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/OcrTextConvertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final k()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->firstTargetShape(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkAudioEvent;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkAudioEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final l()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->firstTargetShape(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->requireMenuView()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "getContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$a;->e:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/mgm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mgm;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final n()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->requireMenuView()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationInWindow(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-static {v2, v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;FF)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$b;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$b;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$c;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$c;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionEditTextShapeEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionEditTextShapeEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public onMenuClick(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V
    .locals 5
    .param p1    # Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ShowSelectMoveLayerPopupEvent;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->b:Ljava/util/List;

    invoke-direct {v1, v4, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowSelectMoveLayerPopupEvent;-><init>(Ljava/util/List;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCreateShapeLinkEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCreateShapeLinkEvent;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionLockEvent;

    invoke-direct {v1, v3}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionLockEvent;-><init>(Z)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionLockEvent;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionLockEvent;-><init>(Z)V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionDeleteEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionDeleteEvent;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionOCREvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionOCREvent;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionBottomingEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionBottomingEvent;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionToppingEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionToppingEvent;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCopyEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCopyEvent;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionGotoSourceEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionGotoSourceEvent;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCutEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCutEvent;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->h()V

    goto :goto_1

    :pswitch_c
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->b()V

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->l()V

    goto :goto_1

    :pswitch_e
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->e()V

    goto :goto_1

    :pswitch_f
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->f()V

    goto :goto_1

    :pswitch_10
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->k()V

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->d()V

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->c(Landroid/view/View;)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->n()V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->g()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->j()V

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->copy_success_and_long_press_paste:I

    invoke-static {p0, p1, v3, v1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->cut_success_and_long_press_paste:I

    invoke-static {p0, p1, v3, v1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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
    .packed-switch 0xc
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public final p(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionEditUniversalShapeEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionEditUniversalShapeEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public updateSelectedShapes(Ljava/util/List;)V
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

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->b:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

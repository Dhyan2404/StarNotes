.class public final Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010/\u001a\u00020,\u0012\u0006\u00103\u001a\u000200\u00a2\u0006\u0004\u0008I\u0010JJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J,\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u000e2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0002J\u0012\u0010\u001e\u001a\u00020\u00022\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0014J\u0006\u0010\u001f\u001a\u00020\u0000J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0008\u0010 \u001a\u00020\u0002H\u0016J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0007J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020$H\u0007R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u00105\u001a\u0004\u00086\u00107R\u0016\u0010;\u001a\u0002098\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010:R\u0016\u0010>\u001a\u00020<8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010=R=\u0010H\u001a\u001d\u0012\u0013\u0012\u001109\u00a2\u0006\u000c\u0008@\u0012\u0008\u0008A\u0012\u0004\u0008\u0008(B\u0012\u0004\u0012\u00020\u00020?8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010G\u00a8\u0006K"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;",
        "Landroid/app/Dialog;",
        "",
        "w",
        "A",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "j",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;",
        "docBean",
        "",
        "pageId",
        "Lio/reactivex/rxjava3/core/Observable;",
        "C",
        "u",
        "o",
        "l",
        "",
        "show",
        "z",
        "Landroid/view/View;",
        "editText",
        "m",
        "k",
        "i",
        "x",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "updateLocation",
        "dismiss",
        "Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;",
        "event",
        "onKeyboardOpen",
        "Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;",
        "onKeyboardClose",
        "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;",
        "e",
        "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;",
        "parentView",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "g",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "h",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;",
        "binding",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "shapeLinkBean",
        "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
        "linkModel",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "linkBean",
        "Lkotlin/jvm/functions/Function1;",
        "getUpdatedCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "setUpdatedCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "updatedCallback",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
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
.field public final e:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

.field public k:Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

.field public l:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchPoint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$style;->Custom_NoTitle_Dialog:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->e:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->i:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$updatedCallback$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$updatedCallback$1;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->l:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-interface {p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object p2

    const-class p4, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {p1, p2, p4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->createLinkModel(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->k:Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->w()V

    :cond_0
    return-void
.end method

.method public static final B(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targetDocBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->s(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$displayLinkContent(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->l()V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getShapeLinkBean$p(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    return-object p0
.end method

.method public static final synthetic access$updateLinkPageIndexObservable(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->C(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->p(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->B(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->t(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->v(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->r(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->y(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    return-void
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->q(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;Z)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->edittext:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthEditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->close:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->m(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final s(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->z(Z)V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->x()V

    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->k()V

    return-void
.end method

.method public static final y(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    const/4 v1, 0x0

    const-string v2, "shapeLinkBean"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isLinkPageType()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getPageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelAction;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$f;

    invoke-direct {v3, p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$f;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    const-string p0, "flatMap(...)"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->Companion:Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;->createInstance()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelAction;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$g;

    invoke-direct {v4, v2}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$g;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$h;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$h;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/izi;

    invoke-direct {v1, p0, v2}, Lcom/sunia/HTREnginev2/izi;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string p0, "doFinally(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_1
    return-void
.end method

.method public final C(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIndexFromIdAction;

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {v0, p1, p4}, Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIndexFromIdAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p4, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$i;->e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$i;

    invoke-virtual {p1, p4}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p4, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$j;->e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$j;

    invoke-virtual {p1, p4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p4, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$k;

    invoke-direct {p4, p0, p3, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$k;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p1, p4}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$l;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$l;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final getUpdatedCallback()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->l:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    const/4 v1, 0x0

    const-string v2, "shapeLinkBean"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isLinkNoteType()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->isLinkPageValid()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->linkPositionInvalidTip:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getPageId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$a;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_6
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$b;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$b;-><init>(Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$c;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final j(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 7

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$d;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$d;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnNext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final k()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->valueEdittext:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    const-string v2, "shapeLinkBean"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isLinkUrlType()Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/android/sdk/base/R$string;->input_empty:I

    invoke-static {p0, v0, v5, v4, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isLinkUrlType()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/android/sdk/cloudstorage/R$string;->please_input_correct_url:I

    invoke-static {p0, v0, v5, v4, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->linkPosition:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->z(Z)V

    return-void
.end method

.method public final l()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    const-string v1, "shapeLinkBean"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isLinkUrlType()Z

    move-result v0

    const-string v3, "linkModel"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->linkTo:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v1, Lcom/onyx/galaxy/note/R$string;->website:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->linkPosition:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->k:Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->linkTo:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v4, Lcom/onyx/galaxy/note/R$string;->note:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->linkPosition:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v4, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v5, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_3
    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->getLinkValue(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->linkTargetLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->edittext:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthEditText;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->k:Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    if-nez p0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, p0

    :goto_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->loadDisplayTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public final n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    return-object p0
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->close:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/bzi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bzi;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->edittext:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthEditText;

    new-instance v1, Lcom/sunia/HTREnginev2/czi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/czi;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->edittext:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthEditText;

    new-instance v1, Lcom/sunia/HTREnginev2/dzi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dzi;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->linkTargetLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/ezi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ezi;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->finish:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/fzi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fzi;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->l()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffae

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onKeyboardClose(Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->updateLocation()Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

    return-void
.end method

.method public final onKeyboardOpen(Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->e:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;->getKeyboardHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/base/extension/DialogExtKt;->moveAboveKeyboard(Landroid/app/Dialog;Landroid/view/View;Ljava/lang/Number;)Landroid/app/Dialog;

    return-void
.end method

.method public final setUpdatedCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->l:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final u()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->valueEdittext:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v1, :cond_0

    const-string v1, "shapeLinkBean"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->back:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/hzi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hzi;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final updateLocation()Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->e:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getSelectionRect$note_overseasRelease()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_48:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenContentSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object v2

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_248:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    int-to-float v1, v1

    cmpl-float v3, v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v1

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v2, v6

    sub-float/2addr v5, v2

    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    const/16 v7, 0x31

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x38

    const/4 v14, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v14}, Lcom/onyx/android/sdk/base/extension/DialogExtKt;->setDialogLocation$default(Landroid/app/Dialog;ILjava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ZILjava/lang/Object;)Landroid/app/Dialog;

    goto :goto_2

    :cond_2
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/16 v7, 0x31

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x38

    const/4 v14, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v14}, Lcom/onyx/android/sdk/base/extension/DialogExtKt;->setDialogLocation$default(Landroid/app/Dialog;ILjava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ZILjava/lang/Object;)Landroid/app/Dialog;

    :goto_2
    return-object p0
.end method

.method public final w()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->o()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->u()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->i()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->A()V

    return-void
.end method

.method public final x()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->edittext:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/android/sdk/base/R$string;->input_empty:I

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->valueEdittext:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->k:Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    if-nez v3, :cond_1

    const-string v3, "linkModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->loadDisplayTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "shapeLinkBean"

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v3, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->dismiss()V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v3, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setRemark(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setValue(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v5, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v2, v5

    :goto_0
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$e;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/gzi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gzi;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final z(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->valueEditLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->n()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->titleEditLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

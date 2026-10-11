.class public final Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0018\u0000 M2\u00020\u0001:\u0001MB\u0007\u00a2\u0006\u0004\u0008K\u0010LJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0006J\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008J\u0016\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010J\u0014\u0010\u0016\u001a\u00020\u00022\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u000e\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017J\u001c\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001a2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u000e\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u001dJ\u000e\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fJ\u001c\u0010\"\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001a2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u0008\u0010#\u001a\u00020\u0002H\u0002R \u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010%R\u0016\u0010)\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R$\u00100\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\"\u00102\u001a\u0002018\u0000@\u0000X\u0080.\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\"\u00109\u001a\u0002088\u0000@\u0000X\u0080.\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\"\u0010F\u001a\u00020?8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\"\u0010J\u001a\u00020?8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010A\u001a\u0004\u0008H\u0010C\"\u0004\u0008I\u0010E\u00a8\u0006N"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;",
        "",
        "",
        "release",
        "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;",
        "requireMenuView",
        "",
        "key",
        "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;",
        "handler",
        "registerHandler",
        "providerName",
        "activeProvider",
        "getActiveHandler",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "menu",
        "Landroid/view/View;",
        "itemView",
        "onMenuClick",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "updateSelectedShapes",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;",
        "info",
        "updateTextSelection",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "updateEditTextShapeSelection",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;",
        "updateAnnotationSelection",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;",
        "args",
        "updateExcerptSelection",
        "updateUniversalShapeSelection",
        "a",
        "",
        "Ljava/util/Map;",
        "handlerMap",
        "b",
        "Ljava/lang/String;",
        "activeProviderName",
        "c",
        "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;",
        "getMenuView$note_overseasRelease",
        "()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;",
        "setMenuView$note_overseasRelease",
        "(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V",
        "menuView",
        "Landroidx/fragment/app/FragmentManager;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "getFragmentManager$note_overseasRelease",
        "()Landroidx/fragment/app/FragmentManager;",
        "setFragmentManager$note_overseasRelease",
        "(Landroidx/fragment/app/FragmentManager;)V",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle$note_overseasRelease",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setEditorBundle$note_overseasRelease",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "",
        "d",
        "I",
        "getOffsetX$note_overseasRelease",
        "()I",
        "setOffsetX$note_overseasRelease",
        "(I)V",
        "offsetX",
        "e",
        "getOffsetY$note_overseasRelease",
        "setOffsetY$note_overseasRelease",
        "offsetY",
        "<init>",
        "()V",
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


# static fields
.field public static final ANNOTATION_SELECTION:Ljava/lang/String; = "annotation_selection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EDIT_TEXT_SHAPE_SELECTION:Ljava/lang/String; = "edit_text_shape_selection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXCERPT_SELECTION:Ljava/lang/String; = "excerpt_selection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHAPE_SELECTION:Ljava/lang/String; = "shape_selection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEXT_SELECTION:Ljava/lang/String; = "text_selection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNIVERSAL_SHAPE_SELECTION:Ljava/lang/String; = "universal_shape_selection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I

.field public e:I

.field public editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public fragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->Companion:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->a:Ljava/util/Map;

    const-string v0, "shape_selection"

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V

    const-string v1, "shape_selection"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V

    const-string v1, "text_selection"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V

    const-string v1, "annotation_selection"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V

    const-string v1, "excerpt_selection"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V

    const-string v1, "edit_text_shape_selection"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/menu/UniversalShapeSelectionHandler;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/menu/UniversalShapeSelectionHandler;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V

    const-string v1, "universal_shape_selection"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;)V

    return-void
.end method

.method public final activeProvider(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "providerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->b:Ljava/lang/String;

    return-void
.end method

.method public final getActiveHandler()Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->a:Ljava/util/Map;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->b:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;

    return-object p0
.end method

.method public final getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFragmentManager$note_overseasRelease()Landroidx/fragment/app/FragmentManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fragmentManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->c:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    return-object p0
.end method

.method public final getOffsetX$note_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->d:I

    return p0
.end method

.method public final getOffsetY$note_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->e:I

    return p0
.end method

.method public final onMenuClick(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V
    .locals 1
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getActiveHandler()Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->onMenuClick(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final registerHandler(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->c:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final requireMenuView()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->c:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setEditorBundle$note_overseasRelease(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setFragmentManager$note_overseasRelease(Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public final setMenuView$note_overseasRelease(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->c:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    return-void
.end method

.method public final setOffsetX$note_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->d:I

    return-void
.end method

.method public final setOffsetY$note_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->e:I

    return-void
.end method

.method public final updateAnnotationSelection(Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getActiveHandler()Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->updateAnnotationSelection(Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;)V

    :cond_0
    return-void
.end method

.method public final updateEditTextShapeSelection(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getActiveHandler()Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->updateEditTextShapeSelection(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final updateExcerptSelection(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getActiveHandler()Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->updateExcerptSelection(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V

    :cond_0
    return-void
.end method

.method public final updateSelectedShapes(Ljava/util/List;)V
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getActiveHandler()Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->updateSelectedShapes(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final updateTextSelection(Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getActiveHandler()Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->updateTextSelection(Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;)V

    :cond_0
    return-void
.end method

.method public final updateUniversalShapeSelection(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getActiveHandler()Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->updateUniversalShapeSelection(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.class public abstract Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001a\u00a2\u0006\u0004\u0008.\u0010/J\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0016\u0010\r\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0011H\u0016J\u0010\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u001e\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00162\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u001e\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00162\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016R\u0017\u0010\u001f\u001a\u00020\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0014\u0010\'\u001a\u00020$8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0014\u0010+\u001a\u00020(8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u0014\u0010-\u001a\u00020(8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010*\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;",
        "",
        "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;",
        "requireMenuView",
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
        "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;",
        "info",
        "updateTextSelection",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;",
        "updateAnnotationSelection",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;",
        "args",
        "updateExcerptSelection",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "updateEditTextShapeSelection",
        "updateUniversalShapeSelection",
        "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;",
        "a",
        "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;",
        "getManager",
        "()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;",
        "manager",
        "Landroidx/fragment/app/FragmentManager;",
        "getFragmentManager$note_overseasRelease",
        "()Landroidx/fragment/app/FragmentManager;",
        "fragmentManager",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle$note_overseasRelease",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "getOffsetX$note_overseasRelease",
        "()I",
        "offsetX",
        "getOffsetY$note_overseasRelease",
        "offsetY",
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
.field public final a:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->a:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    return-void
.end method


# virtual methods
.method public final getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->a:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public final getFragmentManager$note_overseasRelease()Landroidx/fragment/app/FragmentManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->a:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getFragmentManager$note_overseasRelease()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    return-object p0
.end method

.method public final getManager()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->a:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    return-object p0
.end method

.method public final getOffsetX$note_overseasRelease()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->a:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getOffsetX$note_overseasRelease()I

    move-result p0

    return p0
.end method

.method public final getOffsetY$note_overseasRelease()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->a:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getOffsetY$note_overseasRelease()I

    move-result p0

    return p0
.end method

.method public abstract onMenuClick(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V
    .param p1    # Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final requireMenuView()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->a:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->requireMenuView()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object p0

    return-object p0
.end method

.method public updateAnnotationSelection(Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateEditTextShapeSelection(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V
    .locals 0
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

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shapes"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateExcerptSelection(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "args"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateSelectedShapes(Ljava/util/List;)V
    .locals 0
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

    const-string p0, "shapes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateTextSelection(Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateUniversalShapeSelection(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V
    .locals 0
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

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shapes"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

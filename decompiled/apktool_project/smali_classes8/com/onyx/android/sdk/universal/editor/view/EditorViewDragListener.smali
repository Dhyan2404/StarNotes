.class public final Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorViewDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorViewDragListener.kt\ncom/onyx/android/sdk/universal/editor/view/EditorViewDragListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,267:1\n288#2,2:268\n*S KotlinDebug\n*F\n+ 1 EditorViewDragListener.kt\ncom/onyx/android/sdk/universal/editor/view/EditorViewDragListener\n*L\n117#1:268,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010)\u001a\u00020\u001d\u0012\u0006\u0010.\u001a\u00020*\u0012\u0006\u00103\u001a\u00020/\u00a2\u0006\u0004\u0008;\u0010<J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\n\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0010\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0008H\u0002J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010 \u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J \u0010!\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010#\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u0004H\u0002J\u0008\u0010%\u001a\u00020$H\u0002R\u0017\u0010)\u001a\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010&\u001a\u0004\u0008\'\u0010(R\u0017\u0010.\u001a\u00020*8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010+\u001a\u0004\u0008,\u0010-R\u0017\u00103\u001a\u00020/8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u00100\u001a\u0004\u00081\u00102R\u0018\u00105\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u00104R\u0018\u00107\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u00106R\u0016\u0010:\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u00109\u00a8\u0006="
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;",
        "Landroid/view/View$OnDragListener;",
        "Landroid/view/View;",
        "v",
        "Landroid/view/DragEvent;",
        "event",
        "",
        "onDrag",
        "",
        "l",
        "p",
        "m",
        "q",
        "view",
        "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;",
        "receiverEntry",
        "a",
        "o",
        "c",
        "Landroid/content/ClipData;",
        "clipData",
        "e",
        "j",
        "f",
        "i",
        "Landroid/content/ClipData$Item;",
        "item",
        "k",
        "g",
        "",
        "docId",
        "n",
        "r",
        "d",
        "dragEvent",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;",
        "b",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "id",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "getManager",
        "()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "manager",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Landroid/view/View;",
        "highlightView",
        "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;",
        "currentReceiverEntry",
        "Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;",
        "Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;",
        "dragHelper",
        "<init>",
        "(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
        "SMAP\nEditorViewDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorViewDragListener.kt\ncom/onyx/android/sdk/universal/editor/view/EditorViewDragListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,267:1\n288#2,2:268\n*S KotlinDebug\n*F\n+ 1 EditorViewDragListener.kt\ncom/onyx/android/sdk/universal/editor/view/EditorViewDragListener\n*L\n117#1:268,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->j:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;)V
    .locals 7

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;->hintRegion(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActivityHelper()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/view/EditorHighlightView;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorHighlightView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    invoke-static {p2, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->translateCoordinates(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    iget v4, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v4}, Landroid/view/View;->setX(F)V

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, p2}, Landroid/view/View;->setY(F)V

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addHighlightView, x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ",\nviewGroupGlobalVisibleRect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", contentViewGlobalVisibleRect = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v4, p1, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->h:Landroid/view/View;

    return-void
.end method

.method public final b()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getAnotherEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    return-object p0
.end method

.method public final c(Landroid/view/DragEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->getCustomDragDropType(Landroid/content/ClipData;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Toc"

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActivityHelper()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->requestDragAndDropPermissionsSafely(Landroid/app/Activity;Landroid/view/DragEvent;)Z

    move-result v1

    const-class v2, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;

    const/4 v3, 0x0

    if-nez v1, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "requestDragAndDropPermissions fail"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6, v5}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v4, "handleDrop"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->e(Landroid/content/ClipData;Landroid/view/DragEvent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->i(Landroid/content/ClipData;Landroid/view/DragEvent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final d(Landroid/content/ClipData$Item;Landroid/content/ClipData;Landroid/view/DragEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/content/Intent;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/DragEventData;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p3}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/DragEvent;->getY()F

    move-result p3

    invoke-direct {v1, v2, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-direct {v0, p2, v1, p1}, Lcom/onyx/android/sdk/universal/editor/data/DragEventData;-><init>(Landroid/content/ClipData;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/note/HandleImageDropEvent;

    iget-object p3, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-direct {p2, v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/HandleImageDropEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/DragEventData;Z)V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Landroid/content/ClipData;Landroid/view/DragEvent;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ClipBoard;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ClipBoard;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/extension/ClipBoard;->hasImageContent(Landroid/content/ClipData;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->f(Landroid/content/ClipData;Landroid/view/DragEvent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/extension/ClipBoard;->hasTextContent(Landroid/content/ClipData;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->j(Landroid/content/ClipData;Landroid/view/DragEvent;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "multi drop, no image, do nothing"

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final f(Landroid/content/ClipData;Landroid/view/DragEvent;)V
    .locals 7

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/data/DragEventData;

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-direct {v2, v0, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/data/DragEventData;-><init>(Landroid/content/ClipData;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/content/Intent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/HandleMultiImageDropEvent;

    invoke-direct {p1, v6}, Lcom/onyx/android/sdk/universal/editor/events/note/HandleMultiImageDropEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/DragEventData;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Landroid/content/ClipData$Item;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "docId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isEnabledSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->n(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->r(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getManager()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    return-object p0
.end method

.method public final h(Landroid/view/DragEvent;)V
    .locals 4

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/config/EditorConstantsKt;->isQuickCopyEvent(Landroid/view/DragEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->j:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->isEntered()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->e:Ljava/lang/String;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->j:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->getLastDragX()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->j:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->getLastDragY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Landroid/content/ClipData;Landroid/view/DragEvent;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->k(Landroid/content/ClipData$Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->g(Landroid/content/ClipData$Item;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/extension/ClipBoard;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ClipBoard;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/extension/ClipBoard;->hasImageContent(Landroid/content/ClipData;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->d(Landroid/content/ClipData$Item;Landroid/content/ClipData;Landroid/view/DragEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/extension/ClipBoard;->hasTextContent(Landroid/content/ClipData;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->j(Landroid/content/ClipData;Landroid/view/DragEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final j(Landroid/content/ClipData;Landroid/view/DragEvent;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ClipBoard;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ClipBoard;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/extension/ClipBoard;->findFirstTextContent(Landroid/content/ClipData;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-direct {v0, v1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;-><init>(Ljava/lang/String;ZLcom/onyx/android/sdk/base/data/TouchPoint;Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Landroid/content/ClipData$Item;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "docId"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final l(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 1

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/config/EditorConstantsKt;->isStarSplitScreenEvent(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isEnabledSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->p(Landroid/view/View;Landroid/view/DragEvent;)V

    :cond_0
    return-void
.end method

.method public final m(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 1

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/config/EditorConstantsKt;->isStarSplitScreenEvent(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isEnabledSplitScreen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->q(Landroid/view/View;Landroid/view/DragEvent;)V

    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "current doc is open, do not open again"

    invoke-virtual {p0, p1, v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/data/FocusedEditorDocSwitchEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->e:Ljava/lang/String;

    invoke-direct {v2, p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/FocusedEditorDocSwitchEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->openAnotherDocument(Ljava/lang/String;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->h:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActivityHelper()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->h:Landroid/view/View;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->i:Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "removeHighlightView"

    invoke-virtual {p0, v0, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->o()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->l(Landroid/view/View;Landroid/view/DragEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->o()V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->h(Landroid/view/DragEvent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->c(Landroid/view/DragEvent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->m(Landroid/view/View;Landroid/view/DragEvent;)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->j:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final p(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->o()V

    sget-object p2, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;->Companion:Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry$Companion;->getFullReceiver()Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->a(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;)V

    return-void
.end method

.method public final q(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;->Companion:Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry$Companion;->getSplitScreenReceiverEntryList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;->contains(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->i:Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "highlightRect changed"

    invoke-virtual {p2, v0, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->o()V

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->a(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->i:Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;

    :cond_3
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->b()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isDocumentOpen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "doc is open, do not switch document"

    invoke-virtual {p0, p1, v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->i:Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;->getPosition()Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->ensureEnableSpiltScreen(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->openAnotherDocument(Ljava/lang/String;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

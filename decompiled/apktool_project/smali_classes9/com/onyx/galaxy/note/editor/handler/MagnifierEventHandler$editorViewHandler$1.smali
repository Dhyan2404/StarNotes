.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1;
.super Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0014\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;",
        "createDragListener",
        "Landroid/view/View$OnDragListener;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V
    .locals 1

    const-string v0, "magnifier"

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;)V

    return-void
.end method

.method public static synthetic j(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1;->k(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static final k(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createDragListener()Landroid/view/View$OnDragListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/sunia/HTREnginev2/z6j;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/z6j;-><init>()V

    return-object p0
.end method

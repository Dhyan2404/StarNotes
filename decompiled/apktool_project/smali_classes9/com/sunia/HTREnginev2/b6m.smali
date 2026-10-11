.class public final synthetic Lcom/sunia/HTREnginev2/b6m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/window/EasyWindow$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b6m;->a:Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;

    return-void
.end method


# virtual methods
.method public final onTouch(Lcom/hjq/window/EasyWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/b6m;->a:Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->b(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;Lcom/hjq/window/EasyWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

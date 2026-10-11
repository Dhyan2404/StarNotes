.class public final synthetic Lcom/sunia/HTREnginev2/tsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tsj;->e:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tsj;->e:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->a(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

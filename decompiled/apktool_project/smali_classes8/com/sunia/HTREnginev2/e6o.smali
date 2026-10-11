.class public final synthetic Lcom/sunia/HTREnginev2/e6o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/textbox/editor/WebEditor;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e6o;->e:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e6o;->e:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

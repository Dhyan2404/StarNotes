.class public final synthetic Lcom/sunia/HTREnginev2/ubn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ubn;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ubn;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->a(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

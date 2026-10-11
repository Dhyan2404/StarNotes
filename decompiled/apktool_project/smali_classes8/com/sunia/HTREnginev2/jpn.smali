.class public final synthetic Lcom/sunia/HTREnginev2/jpn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/UIBundle;

.field public final synthetic f:Landroid/view/View$OnTouchListener;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/UIBundle;Landroid/view/View$OnTouchListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jpn;->e:Lcom/onyx/android/sdk/universal/editor/UIBundle;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jpn;->f:Landroid/view/View$OnTouchListener;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jpn;->e:Lcom/onyx/android/sdk/universal/editor/UIBundle;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jpn;->f:Landroid/view/View$OnTouchListener;

    invoke-static {v0, p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->a(Lcom/onyx/android/sdk/universal/editor/UIBundle;Landroid/view/View$OnTouchListener;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

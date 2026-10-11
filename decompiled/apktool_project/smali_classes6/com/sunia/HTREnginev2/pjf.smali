.class public final synthetic Lcom/sunia/HTREnginev2/pjf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/rjf;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/rjf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pjf;->e:Lcom/sunia/HTREnginev2/rjf;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pjf;->e:Lcom/sunia/HTREnginev2/rjf;

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/rjf;->w(Lcom/sunia/HTREnginev2/rjf;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

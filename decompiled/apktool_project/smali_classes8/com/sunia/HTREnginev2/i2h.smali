.class public final synthetic Lcom/sunia/HTREnginev2/i2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/rxgesture/RxGesture;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/rxgesture/RxGesture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i2h;->e:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i2h;->e:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.class public final synthetic Lcom/onyx/android/sdk/universal/editor/handler/finger/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

.field public final synthetic f:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/a;->e:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/a;->f:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/a;->e:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/a;->f:Landroid/view/MotionEvent;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager$onSingleTapUp$5;->a(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;)V

    return-void
.end method

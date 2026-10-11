.class public final synthetic Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$e;->a:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/atomic/AtomicReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$e;->a:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->access$handleScreenBitmapCaptureResult(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Landroidx/activity/result/ActivityResultCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$e;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Function<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Lkotlin/jvm/internal/FunctionReferenceImpl;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$e;->a:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    const-class v3, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    const-string v4, "handleScreenBitmapCaptureResult"

    const-string v5, "handleScreenBitmapCaptureResult(Ljava/util/concurrent/atomic/AtomicReference;)V"

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$e;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$e;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

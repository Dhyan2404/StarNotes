.class public final Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$b;->e:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$b;->e:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->access$getResultLauncher$p(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$b;->a(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V

    return-void
.end method

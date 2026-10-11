.class public final Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;->access$startCapture(Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction$a;->a(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

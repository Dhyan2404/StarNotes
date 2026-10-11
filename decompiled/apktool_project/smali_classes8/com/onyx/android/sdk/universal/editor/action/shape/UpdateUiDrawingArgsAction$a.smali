.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction;->access$updateArgs(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction;)V

    return-void
.end method

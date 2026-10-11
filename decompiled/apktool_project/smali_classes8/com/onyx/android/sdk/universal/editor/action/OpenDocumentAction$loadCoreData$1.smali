.class public final Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->L()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1;->e:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1;->e:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1$1;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    const-string v0, "loadCoreData"

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->access$logMeasureTimeSinceBeginOpen(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1;->a(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    return-void
.end method

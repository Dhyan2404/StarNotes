.class public final Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteData$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->P()Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteData$2;->e:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteData$2;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteData$2;->g:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteData$2;->e:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteData$2;->f:Ljava/lang/String;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteData$2$1;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteData$2;->g:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteData$2$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->access$logMeasureTimeSinceBeginOpen(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteData$2;->a(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    return-void
.end method

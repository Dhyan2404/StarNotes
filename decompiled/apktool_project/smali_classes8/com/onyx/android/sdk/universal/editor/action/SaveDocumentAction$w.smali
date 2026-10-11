.class public final Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->u()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$w;->e:Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/SaveNoteModelRequest;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/request/SaveNoteModelRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$w;->e:Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->isDirty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/SaveNoteModelRequest;->getDirty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->access$setDirty$p(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/SaveNoteModelRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$w;->a(Lcom/onyx/android/sdk/note/request/SaveNoteModelRequest;)V

    return-void
.end method

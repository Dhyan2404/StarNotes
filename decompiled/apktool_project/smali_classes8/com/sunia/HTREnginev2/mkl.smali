.class public final synthetic Lcom/sunia/HTREnginev2/mkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mkl;->e:Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mkl;->e:Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    check-cast p1, Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->m(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;)V

    return-void
.end method

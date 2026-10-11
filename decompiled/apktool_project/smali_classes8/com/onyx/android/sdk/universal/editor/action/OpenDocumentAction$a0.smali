.class public final Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->D()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$a0;->e:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/GetContentViewSizeAction;)Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/GetContentViewSizeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$a0;->e:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/GetContentViewSizeAction;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;->copy$default(Lcom/onyx/android/sdk/base/data/Size;IIILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setViewSize(Lcom/onyx/android/sdk/base/data/Size;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$a0;->e:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/GetContentViewSizeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$a0;->a(Lcom/onyx/android/sdk/universal/editor/action/GetContentViewSizeAction;)Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    move-result-object p0

    return-object p0
.end method

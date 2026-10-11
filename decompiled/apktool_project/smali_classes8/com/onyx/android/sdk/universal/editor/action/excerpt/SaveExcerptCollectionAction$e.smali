.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;)Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->getShapeList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;->setShapeList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction$e;->a(Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;)Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->o()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$m;->e:Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$m;->e:Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->access$insertPage(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$m;->a(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method

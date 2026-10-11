.class public final Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;->access$getPageId$p(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;->access$export(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;Ljava/lang/String;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction$a;->a(I)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method

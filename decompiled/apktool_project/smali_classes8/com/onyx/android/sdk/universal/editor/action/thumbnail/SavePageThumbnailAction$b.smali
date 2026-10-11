.class public final Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;->l(Ljava/lang/String;I)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction$b;->f:Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction$b;->f:Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;->setOrientation(Lcom/onyx/android/sdk/base/data/Orientation;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction$b;->a(Ljava/lang/String;)V

    return-void
.end method

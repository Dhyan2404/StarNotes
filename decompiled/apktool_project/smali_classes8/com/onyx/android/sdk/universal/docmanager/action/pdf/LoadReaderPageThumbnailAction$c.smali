.class public final Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;)Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction$c;->a(Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;)Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;

    move-result-object p0

    return-object p0
.end method

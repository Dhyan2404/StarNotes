.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;->m(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$g;->f:Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;->getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$g;->f:Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;->getImgPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;->setImgPath(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$g;->a(Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveRegionScreenshotRequest;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

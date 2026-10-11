.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;)Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->getImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;->setImgPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;->getExcerptInfoBean()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;->setExcerptInfoBean(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction$c;->a(Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;)Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;

    move-result-object p0

    return-object p0
.end method

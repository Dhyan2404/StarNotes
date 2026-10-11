.class public final Lcom/onyx/galaxy/note/common/glide/ExcerptThumbnailLoader$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/glide/ExcerptThumbnailLoader$a;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
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
.field public final synthetic e:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/glide/ExcerptThumbnailLoader$a$a;->e:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/glide/ExcerptThumbnailLoader$a$a;->e:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/ExcerptThumbnailLoader$a$a;->a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;)V

    return-void
.end method

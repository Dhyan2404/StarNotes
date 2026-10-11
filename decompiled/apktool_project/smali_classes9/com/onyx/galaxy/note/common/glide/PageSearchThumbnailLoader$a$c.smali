.class public final Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$c;->e:Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$c;->e:Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->a(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;)Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->c(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$c;->a(Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method

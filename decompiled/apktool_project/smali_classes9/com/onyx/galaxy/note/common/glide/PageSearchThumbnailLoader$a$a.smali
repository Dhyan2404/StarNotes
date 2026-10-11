.class public final Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->f(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

.field public final synthetic g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$a;->e:Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;

    iput-object p2, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$a;->f:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    iput-object p3, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$a;->g:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$a;->e:Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$a;->f:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$a;->g:Landroid/graphics/Bitmap;

    invoke-static {p1, v0, p0}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->b(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$a;->a(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

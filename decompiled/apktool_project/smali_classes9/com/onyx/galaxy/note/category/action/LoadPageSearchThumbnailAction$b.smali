.class public final Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$b;->e:Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$b;->e:Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->access$setGroupImageViewVisible(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$b;->e:Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->access$setThumbnailViewErrorImage(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

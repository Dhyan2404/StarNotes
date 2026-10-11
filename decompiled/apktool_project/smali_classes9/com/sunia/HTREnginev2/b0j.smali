.class public final synthetic Lcom/sunia/HTREnginev2/b0j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;

.field public final synthetic f:Landroid/widget/ImageView;

.field public final synthetic g:Lio/reactivex/rxjava3/subjects/PublishSubject;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;Landroid/widget/ImageView;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b0j;->e:Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/b0j;->f:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/b0j;->g:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/b0j;->e:Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/b0j;->f:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/b0j;->g:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->l(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;Landroid/widget/ImageView;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/Object;)V

    return-void
.end method

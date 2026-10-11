.class public final synthetic Lcom/sunia/HTREnginev2/itn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/onyx/galaxy/note/databinding/LayoutUniversalFavoriteItemBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;Ljava/lang/String;Lcom/onyx/galaxy/note/databinding/LayoutUniversalFavoriteItemBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/itn;->e:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/itn;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/itn;->g:Lcom/onyx/galaxy/note/databinding/LayoutUniversalFavoriteItemBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/itn;->e:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/itn;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/itn;->g:Lcom/onyx/galaxy/note/databinding/LayoutUniversalFavoriteItemBinding;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;->d(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;Ljava/lang/String;Lcom/onyx/galaxy/note/databinding/LayoutUniversalFavoriteItemBinding;Landroid/view/View;)V

    return-void
.end method

.class public final synthetic Lcom/sunia/HTREnginev2/ftn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ftn;->e:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ftn;->f:Landroid/view/View;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ftn;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ftn;->e:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ftn;->f:Landroid/view/View;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ftn;->g:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;->e(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

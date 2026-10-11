.class public final synthetic Lcom/sunia/HTREnginev2/mem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog;

.field public final synthetic f:Z

.field public final synthetic g:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog;ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mem;->e:Lcom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/mem;->f:Z

    iput-object p3, p0, Lcom/sunia/HTREnginev2/mem;->g:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mem;->e:Lcom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog;

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/mem;->f:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mem;->g:Landroid/net/Uri;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog;->e(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog;ZLandroid/net/Uri;Landroid/view/View;)V

    return-void
.end method

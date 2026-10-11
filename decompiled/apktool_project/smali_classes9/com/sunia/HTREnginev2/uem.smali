.class public final synthetic Lcom/sunia/HTREnginev2/uem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(ZLcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/uem;->e:Z

    iput-object p2, p0, Lcom/sunia/HTREnginev2/uem;->f:Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/uem;->g:Ljava/lang/String;

    iput p4, p0, Lcom/sunia/HTREnginev2/uem;->h:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/uem;->e:Z

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uem;->f:Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/uem;->g:Ljava/lang/String;

    iget p0, p0, Lcom/sunia/HTREnginev2/uem;->h:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;->l(ZLcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method

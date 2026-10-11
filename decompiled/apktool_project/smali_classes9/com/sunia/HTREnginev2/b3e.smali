.class public final synthetic Lcom/sunia/HTREnginev2/b3e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

.field public final synthetic f:Ljava/lang/Integer;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Ljava/lang/Integer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b3e;->e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/b3e;->f:Ljava/lang/Integer;

    iput p3, p0, Lcom/sunia/HTREnginev2/b3e;->g:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/b3e;->e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/b3e;->f:Ljava/lang/Integer;

    iget p0, p0, Lcom/sunia/HTREnginev2/b3e;->g:I

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->l(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Ljava/lang/Integer;ILandroid/view/View;)V

    return-void
.end method

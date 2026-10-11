.class public final synthetic Lcom/sunia/HTREnginev2/a3k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:I

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a3k;->e:Landroid/view/View;

    iput p2, p0, Lcom/sunia/HTREnginev2/a3k;->f:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/a3k;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a3k;->e:Landroid/view/View;

    iget v1, p0, Lcom/sunia/HTREnginev2/a3k;->f:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a3k;->g:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeTouchListener;->a(Landroid/view/View;ILandroid/view/View;)V

    return-void
.end method

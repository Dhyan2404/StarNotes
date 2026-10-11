.class public final synthetic Lcom/sunia/HTREnginev2/xsk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;

.field public final synthetic f:I

.field public final synthetic g:Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;ILcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xsk;->e:Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;

    iput p2, p0, Lcom/sunia/HTREnginev2/xsk;->f:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/xsk;->g:Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xsk;->e:Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;

    iget v1, p0, Lcom/sunia/HTREnginev2/xsk;->f:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xsk;->g:Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->n(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;ILcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;Landroid/view/View;)V

    return-void
.end method

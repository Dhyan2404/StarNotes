.class public final synthetic Lcom/sunia/HTREnginev2/qii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;

.field public final synthetic f:Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;

.field public final synthetic g:Lcom/onyx/galaxy/note/settings/data/ImportResultBean;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;Lcom/onyx/galaxy/note/settings/data/ImportResultBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qii;->e:Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qii;->f:Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qii;->g:Lcom/onyx/galaxy/note/settings/data/ImportResultBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qii;->e:Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qii;->f:Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qii;->g:Lcom/onyx/galaxy/note/settings/data/ImportResultBean;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->l(Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;Lcom/onyx/galaxy/note/settings/data/ImportResultBean;Landroid/view/View;)V

    return-void
.end method

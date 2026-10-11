.class public final synthetic Lcom/sunia/HTREnginev2/f4f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;

.field public final synthetic f:Lcom/onyx/galaxy/note/account/model/AreaCodeModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;Lcom/onyx/galaxy/note/account/model/AreaCodeModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f4f;->e:Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/f4f;->f:Lcom/onyx/galaxy/note/account/model/AreaCodeModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/f4f;->e:Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f4f;->f:Lcom/onyx/galaxy/note/account/model/AreaCodeModel;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;->l(Lcom/onyx/galaxy/note/account/view/adapter/DialogAreaCodeAdapter;Lcom/onyx/galaxy/note/account/model/AreaCodeModel;Landroid/view/View;)V

    return-void
.end method

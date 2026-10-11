.class public final synthetic Lcom/sunia/HTREnginev2/p3j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p3j;->e:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/p3j;->f:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p3j;->e:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p3j;->f:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;->m(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;Landroid/view/View;)V

    return-void
.end method

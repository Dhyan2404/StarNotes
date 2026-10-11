.class public Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickListenerImpl3"
.end annotation


# instance fields
.field public e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl3;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->resetPassword(Landroid/view/View;)V

    return-void
.end method

.method public setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl3;
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl3;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

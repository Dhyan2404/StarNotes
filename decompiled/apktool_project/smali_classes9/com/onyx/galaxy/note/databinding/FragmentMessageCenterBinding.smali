.class public abstract Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final backButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final loadingView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final readAllButton:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleBar:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final webViewTimeoutLayout:Lcom/onyx/galaxy/note/databinding/LayoutWebviewTimeoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Lcom/onyx/galaxy/note/databinding/LayoutWebviewTimeoutBinding;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->backButton:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->loadingView:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->readAllButton:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->titleBar:Landroid/widget/FrameLayout;

    iput-object p9, p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->titleText:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iput-object p11, p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webViewTimeoutLayout:Lcom/onyx/galaxy/note/databinding/LayoutWebviewTimeoutBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_message_center:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_message_center:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_message_center:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    return-object p0
.end method

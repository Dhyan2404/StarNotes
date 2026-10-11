.class public Landroidx/databinding/ViewStubProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/ViewStub;

.field public b:Landroidx/databinding/ViewDataBinding;

.field public c:Landroid/view/View;

.field public d:Landroid/view/ViewStub$OnInflateListener;

.field public e:Landroidx/databinding/ViewDataBinding;

.field public f:Landroid/view/ViewStub$OnInflateListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 1
    .param p1    # Landroid/view/ViewStub;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/databinding/ViewStubProxy$a;

    invoke-direct {v0, p0}, Landroidx/databinding/ViewStubProxy$a;-><init>(Landroidx/databinding/ViewStubProxy;)V

    iput-object v0, p0, Landroidx/databinding/ViewStubProxy;->f:Landroid/view/ViewStub$OnInflateListener;

    iput-object p1, p0, Landroidx/databinding/ViewStubProxy;->a:Landroid/view/ViewStub;

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    return-void
.end method

.method public static synthetic a(Landroidx/databinding/ViewStubProxy;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Landroidx/databinding/ViewStubProxy;->c:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic b(Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewDataBinding;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    iput-object p1, p0, Landroidx/databinding/ViewStubProxy;->b:Landroidx/databinding/ViewDataBinding;

    return-object p1
.end method

.method public static synthetic c(Landroidx/databinding/ViewStubProxy;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/ViewStubProxy;->e:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method public static synthetic d(Landroidx/databinding/ViewStubProxy;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0

    iput-object p1, p0, Landroidx/databinding/ViewStubProxy;->a:Landroid/view/ViewStub;

    return-object p1
.end method

.method public static synthetic e(Landroidx/databinding/ViewStubProxy;)Landroid/view/ViewStub$OnInflateListener;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/ViewStubProxy;->d:Landroid/view/ViewStub$OnInflateListener;

    return-object p0
.end method

.method public static synthetic f(Landroidx/databinding/ViewStubProxy;Landroid/view/ViewStub$OnInflateListener;)Landroid/view/ViewStub$OnInflateListener;
    .locals 0

    iput-object p1, p0, Landroidx/databinding/ViewStubProxy;->d:Landroid/view/ViewStub$OnInflateListener;

    return-object p1
.end method


# virtual methods
.method public getBinding()Landroidx/databinding/ViewDataBinding;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/databinding/ViewStubProxy;->b:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/ViewStubProxy;->c:Landroid/view/View;

    return-object p0
.end method

.method public getViewStub()Landroid/view/ViewStub;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/databinding/ViewStubProxy;->a:Landroid/view/ViewStub;

    return-object p0
.end method

.method public isInflated()Z
    .locals 0

    iget-object p0, p0, Landroidx/databinding/ViewStubProxy;->c:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setContainingBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 0
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/databinding/ViewStubProxy;->e:Landroidx/databinding/ViewDataBinding;

    return-void
.end method

.method public setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V
    .locals 1
    .param p1    # Landroid/view/ViewStub$OnInflateListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/databinding/ViewStubProxy;->a:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroidx/databinding/ViewStubProxy;->d:Landroid/view/ViewStub$OnInflateListener;

    :cond_0
    return-void
.end method

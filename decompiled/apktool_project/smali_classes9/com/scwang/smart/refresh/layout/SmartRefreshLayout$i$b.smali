.class public Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;


# direct methods
.method public constructor <init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i$b;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i$b;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;->h:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;->g:Z

    invoke-interface {v0, p1, p0}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->onAutoRefreshAnimationEnd(Landroid/animation/Animator;Z)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    return-void
.end method

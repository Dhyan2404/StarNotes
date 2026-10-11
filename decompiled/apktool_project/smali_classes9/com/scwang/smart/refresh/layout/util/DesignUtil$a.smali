.class public final Lcom/scwang/smart/refresh/layout/util/DesignUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smart/refresh/layout/util/DesignUtil;->checkCoordinatorLayout(Landroid/view/View;Lcom/scwang/smart/refresh/layout/api/RefreshKernel;Lcom/scwang/smart/refresh/layout/listener/CoordinatorLayoutListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/scwang/smart/refresh/layout/listener/CoordinatorLayoutListener;


# direct methods
.method public constructor <init>(Lcom/scwang/smart/refresh/layout/listener/CoordinatorLayoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/util/DesignUtil$a;->a:Lcom/scwang/smart/refresh/layout/listener/CoordinatorLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/util/DesignUtil$a;->a:Lcom/scwang/smart/refresh/layout/listener/CoordinatorLayoutListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    add-int/2addr p1, p2

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-interface {p0, v2, v0}, Lcom/scwang/smart/refresh/layout/listener/CoordinatorLayoutListener;->onCoordinatorUpdate(ZZ)V

    return-void
.end method

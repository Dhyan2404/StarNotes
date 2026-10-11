.class public Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;
.super Landroidx/core/view/ActionProvider;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public e:Landroidx/core/view/ActionProvider$VisibilityListener;

.field public final f:Landroid/view/ActionProvider;

.field public final synthetic g:Landroidx/appcompat/view/menu/MenuItemWrapperICS;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->g:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-direct {p0, p2}, Landroidx/core/view/ActionProvider;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->f:Landroid/view/ActionProvider;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;)Landroid/view/ActionProvider;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->f:Landroid/view/ActionProvider;

    return-object p0
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->f:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result p0

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->f:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result p0

    return p0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->e:Landroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/core/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->f:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->f:Landroid/view/ActionProvider;

    invoke-virtual {p0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPerformDefaultAction()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->f:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result p0

    return p0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->f:Landroid/view/ActionProvider;

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->g:Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/sn;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->f:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result p0

    return p0
.end method

.method public refreshVisibility()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->f:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->refreshVisibility()V

    return-void
.end method

.method public setVisibilityListener(Landroidx/core/view/ActionProvider$VisibilityListener;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->e:Landroidx/core/view/ActionProvider$VisibilityListener;

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$a;->f:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

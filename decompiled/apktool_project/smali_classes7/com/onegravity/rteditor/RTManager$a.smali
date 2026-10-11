.class public Lcom/onegravity/rteditor/RTManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/rteditor/RTManager;->i(Lcom/onegravity/rteditor/RTToolbar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/view/ViewGroup;

.field public final synthetic f:Lcom/onegravity/rteditor/RTManager;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/RTManager;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onegravity/rteditor/RTManager$a;->f:Lcom/onegravity/rteditor/RTManager;

    iput-object p2, p0, Lcom/onegravity/rteditor/RTManager$a;->e:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/onegravity/rteditor/RTManager$a;->e:Landroid/view/ViewGroup;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/onegravity/rteditor/RTManager$a;->e:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager$a;->f:Lcom/onegravity/rteditor/RTManager;

    invoke-static {p0}, Lcom/onegravity/rteditor/RTManager;->a(Lcom/onegravity/rteditor/RTManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.class public final Lcom/hjq/window/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final e:Lcom/hjq/window/EasyWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation
.end field

.field public final f:Lcom/hjq/window/EasyWindow$OnLongClickListener;


# direct methods
.method public constructor <init>(Lcom/hjq/window/EasyWindow;Lcom/hjq/window/EasyWindow$OnLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;",
            "Lcom/hjq/window/EasyWindow$OnLongClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hjq/window/c;->e:Lcom/hjq/window/EasyWindow;

    iput-object p2, p0, Lcom/hjq/window/c;->f:Lcom/hjq/window/EasyWindow$OnLongClickListener;

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/hjq/window/c;->f:Lcom/hjq/window/EasyWindow$OnLongClickListener;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/hjq/window/c;->e:Lcom/hjq/window/EasyWindow;

    invoke-interface {v0, p0, p1}, Lcom/hjq/window/EasyWindow$OnLongClickListener;->onLongClick(Lcom/hjq/window/EasyWindow;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

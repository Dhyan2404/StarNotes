.class public final Lcom/hjq/window/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final e:Lcom/hjq/window/EasyWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation
.end field

.field public final f:Lcom/hjq/window/EasyWindow$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/hjq/window/EasyWindow;Lcom/hjq/window/EasyWindow$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;",
            "Lcom/hjq/window/EasyWindow$OnClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hjq/window/b;->e:Lcom/hjq/window/EasyWindow;

    iput-object p2, p0, Lcom/hjq/window/b;->f:Lcom/hjq/window/EasyWindow$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hjq/window/b;->f:Lcom/hjq/window/EasyWindow$OnClickListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hjq/window/b;->e:Lcom/hjq/window/EasyWindow;

    invoke-interface {v0, p0, p1}, Lcom/hjq/window/EasyWindow$OnClickListener;->onClick(Lcom/hjq/window/EasyWindow;Landroid/view/View;)V

    return-void
.end method

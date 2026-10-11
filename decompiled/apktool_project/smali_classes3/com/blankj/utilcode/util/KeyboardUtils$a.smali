.class public final Lcom/blankj/utilcode/util/KeyboardUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/view/Window;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/view/Window;

.field public final synthetic f:[I

.field public final synthetic g:Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;


# direct methods
.method public constructor <init>(Landroid/view/Window;[ILcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$a;->e:Landroid/view/Window;

    iput-object p2, p0, Lcom/blankj/utilcode/util/KeyboardUtils$a;->f:[I

    iput-object p3, p0, Lcom/blankj/utilcode/util/KeyboardUtils$a;->g:Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/KeyboardUtils$a;->e:Landroid/view/Window;

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->a(Landroid/view/Window;)I

    move-result v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$a;->f:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$a;->g:Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;

    invoke-interface {v1, v0}, Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;->onSoftInputChanged(I)V

    iget-object p0, p0, Lcom/blankj/utilcode/util/KeyboardUtils$a;->f:[I

    aput v0, p0, v2

    :cond_0
    return-void
.end method

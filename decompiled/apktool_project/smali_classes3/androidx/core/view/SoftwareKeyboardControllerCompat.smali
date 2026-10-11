.class public final Landroidx/core/view/SoftwareKeyboardControllerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/SoftwareKeyboardControllerCompat$b;,
        Landroidx/core/view/SoftwareKeyboardControllerCompat$c;,
        Landroidx/core/view/SoftwareKeyboardControllerCompat$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/core/view/SoftwareKeyboardControllerCompat$c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Landroidx/core/view/SoftwareKeyboardControllerCompat$b;

    invoke-direct {v0, p1}, Landroidx/core/view/SoftwareKeyboardControllerCompat$b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat;->a:Landroidx/core/view/SoftwareKeyboardControllerCompat$c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroidx/core/view/SoftwareKeyboardControllerCompat$a;

    invoke-direct {v0, p1}, Landroidx/core/view/SoftwareKeyboardControllerCompat$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat;->a:Landroidx/core/view/SoftwareKeyboardControllerCompat$c;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroidx/core/view/SoftwareKeyboardControllerCompat$b;

    invoke-direct {v0, p1}, Landroidx/core/view/SoftwareKeyboardControllerCompat$b;-><init>(Landroid/view/WindowInsetsController;)V

    iput-object v0, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat;->a:Landroidx/core/view/SoftwareKeyboardControllerCompat$c;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat;->a:Landroidx/core/view/SoftwareKeyboardControllerCompat$c;

    invoke-virtual {p0}, Landroidx/core/view/SoftwareKeyboardControllerCompat$c;->a()V

    return-void
.end method

.method public show()V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat;->a:Landroidx/core/view/SoftwareKeyboardControllerCompat$c;

    invoke-virtual {p0}, Landroidx/core/view/SoftwareKeyboardControllerCompat$c;->b()V

    return-void
.end method

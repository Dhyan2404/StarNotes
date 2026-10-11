.class public Lcom/sunia/HTREnginev2/w4o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/sunia/HTREnginev2/x4o;

.field public static final b:Ljava/lang/String; = "ViewUtils"

.field public static final c:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/HTREnginev2/b5o;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/b5o;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/w4o;->a:Lcom/sunia/HTREnginev2/x4o;

    new-instance v0, Lcom/sunia/HTREnginev2/w4o$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/w4o$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/HTREnginev2/w4o;->c:Landroid/util/Property;

    new-instance v0, Lcom/sunia/HTREnginev2/w4o$b;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/w4o$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/HTREnginev2/w4o;->d:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sunia/HTREnginev2/w4o;->a:Lcom/sunia/HTREnginev2/x4o;

    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/x4o;->a(Landroid/view/View;)V

    return-void
.end method

.method public static b(Landroid/view/View;)F
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sunia/HTREnginev2/w4o;->a:Lcom/sunia/HTREnginev2/x4o;

    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/x4o;->c(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sunia/HTREnginev2/w4o;->a:Lcom/sunia/HTREnginev2/x4o;

    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/x4o;->d(Landroid/view/View;)V

    return-void
.end method

.method public static d(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/sunia/HTREnginev2/w4o;->a:Lcom/sunia/HTREnginev2/x4o;

    invoke-virtual {v0, p0, p1}, Lcom/sunia/HTREnginev2/x4o;->e(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static e(Landroid/view/View;IIII)V
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sunia/HTREnginev2/w4o;->a:Lcom/sunia/HTREnginev2/x4o;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/x4o;->f(Landroid/view/View;IIII)V

    return-void
.end method

.method public static f(Landroid/view/View;F)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sunia/HTREnginev2/w4o;->a:Lcom/sunia/HTREnginev2/x4o;

    invoke-virtual {v0, p0, p1}, Lcom/sunia/HTREnginev2/x4o;->g(Landroid/view/View;F)V

    return-void
.end method

.method public static g(Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sunia/HTREnginev2/w4o;->a:Lcom/sunia/HTREnginev2/x4o;

    invoke-virtual {v0, p0, p1}, Lcom/sunia/HTREnginev2/x4o;->h(Landroid/view/View;I)V

    return-void
.end method

.method public static h(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sunia/HTREnginev2/w4o;->a:Lcom/sunia/HTREnginev2/x4o;

    invoke-virtual {v0, p0, p1}, Lcom/sunia/HTREnginev2/x4o;->i(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static i(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sunia/HTREnginev2/w4o;->a:Lcom/sunia/HTREnginev2/x4o;

    invoke-virtual {v0, p0, p1}, Lcom/sunia/HTREnginev2/x4o;->j(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

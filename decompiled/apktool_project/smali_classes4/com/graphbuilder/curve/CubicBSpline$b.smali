.class public Lcom/graphbuilder/curve/CubicBSpline$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphbuilder/curve/CubicBSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:[[D

.field public d:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/graphbuilder/curve/CubicBSpline$b;->a:I

    .line 3
    iput v0, p0, Lcom/graphbuilder/curve/CubicBSpline$b;->b:I

    const/4 v0, 0x4

    new-array v1, v0, [[D

    .line 4
    iput-object v1, p0, Lcom/graphbuilder/curve/CubicBSpline$b;->c:[[D

    new-array v0, v0, [D

    .line 5
    iput-object v0, p0, Lcom/graphbuilder/curve/CubicBSpline$b;->d:[D

    return-void
.end method

.method public synthetic constructor <init>(Lcom/graphbuilder/curve/CubicBSpline$a;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/graphbuilder/curve/CubicBSpline$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/graphbuilder/curve/CubicBSpline$b;)I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/CubicBSpline$b;->b:I

    return p0
.end method

.method public static synthetic b(Lcom/graphbuilder/curve/CubicBSpline$b;I)I
    .locals 0

    iput p1, p0, Lcom/graphbuilder/curve/CubicBSpline$b;->b:I

    return p1
.end method

.method public static synthetic c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/CubicBSpline$b;->d:[D

    return-object p0
.end method

.method public static synthetic d(Lcom/graphbuilder/curve/CubicBSpline$b;)I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/CubicBSpline$b;->a:I

    return p0
.end method

.method public static synthetic e(Lcom/graphbuilder/curve/CubicBSpline$b;I)I
    .locals 0

    iput p1, p0, Lcom/graphbuilder/curve/CubicBSpline$b;->a:I

    return p1
.end method

.method public static synthetic f(Lcom/graphbuilder/curve/CubicBSpline$b;)I
    .locals 2

    iget v0, p0, Lcom/graphbuilder/curve/CubicBSpline$b;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/graphbuilder/curve/CubicBSpline$b;->a:I

    return v0
.end method

.method public static synthetic g(Lcom/graphbuilder/curve/CubicBSpline$b;)[[D
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/CubicBSpline$b;->c:[[D

    return-object p0
.end method

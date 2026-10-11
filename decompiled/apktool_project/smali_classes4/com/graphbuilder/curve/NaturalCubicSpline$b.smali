.class public Lcom/graphbuilder/curve/NaturalCubicSpline$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphbuilder/curve/NaturalCubicSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[[D

.field public b:[[D

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [[D

    .line 2
    iput-object v1, p0, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a:[[D

    new-array v1, v0, [[D

    .line 3
    iput-object v1, p0, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->b:[[D

    .line 4
    iput v0, p0, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/graphbuilder/curve/NaturalCubicSpline$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->b:[[D

    return-object p0
.end method

.method public static synthetic b(Lcom/graphbuilder/curve/NaturalCubicSpline$b;[[D)[[D
    .locals 0

    iput-object p1, p0, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->b:[[D

    return-object p1
.end method

.method public static synthetic c(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->c:I

    return p0
.end method

.method public static synthetic d(Lcom/graphbuilder/curve/NaturalCubicSpline$b;I)I
    .locals 0

    iput p1, p0, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->c:I

    return p1
.end method

.method public static synthetic e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a:[[D

    return-object p0
.end method

.method public static synthetic f(Lcom/graphbuilder/curve/NaturalCubicSpline$b;[[D)[[D
    .locals 0

    iput-object p1, p0, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a:[[D

    return-object p1
.end method

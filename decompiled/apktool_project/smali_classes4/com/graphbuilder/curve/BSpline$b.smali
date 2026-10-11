.class public Lcom/graphbuilder/curve/BSpline$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphbuilder/curve/BSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/graphbuilder/curve/BSpline$b;->a:[I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/graphbuilder/curve/BSpline$b;->b:[I

    new-array v0, v0, [D

    .line 4
    iput-object v0, p0, Lcom/graphbuilder/curve/BSpline$b;->c:[D

    return-void
.end method

.method public synthetic constructor <init>(Lcom/graphbuilder/curve/BSpline$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/graphbuilder/curve/BSpline$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/graphbuilder/curve/BSpline$b;)[D
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/BSpline$b;->c:[D

    return-object p0
.end method

.method public static synthetic b(Lcom/graphbuilder/curve/BSpline$b;[D)[D
    .locals 0

    iput-object p1, p0, Lcom/graphbuilder/curve/BSpline$b;->c:[D

    return-object p1
.end method

.method public static synthetic c(Lcom/graphbuilder/curve/BSpline$b;)[I
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/BSpline$b;->a:[I

    return-object p0
.end method

.method public static synthetic d(Lcom/graphbuilder/curve/BSpline$b;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/graphbuilder/curve/BSpline$b;->a:[I

    return-object p1
.end method

.method public static synthetic e(Lcom/graphbuilder/curve/BSpline$b;)[I
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/BSpline$b;->b:[I

    return-object p0
.end method

.method public static synthetic f(Lcom/graphbuilder/curve/BSpline$b;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/graphbuilder/curve/BSpline$b;->b:[I

    return-object p1
.end method

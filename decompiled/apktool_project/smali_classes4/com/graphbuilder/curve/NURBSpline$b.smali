.class public Lcom/graphbuilder/curve/NURBSpline$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphbuilder/curve/NURBSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[D

.field public b:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [D

    .line 2
    iput-object v1, p0, Lcom/graphbuilder/curve/NURBSpline$b;->a:[D

    new-array v0, v0, [D

    .line 3
    iput-object v0, p0, Lcom/graphbuilder/curve/NURBSpline$b;->b:[D

    return-void
.end method

.method public synthetic constructor <init>(Lcom/graphbuilder/curve/NURBSpline$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/graphbuilder/curve/NURBSpline$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/graphbuilder/curve/NURBSpline$b;)[D
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/NURBSpline$b;->a:[D

    return-object p0
.end method

.method public static synthetic b(Lcom/graphbuilder/curve/NURBSpline$b;[D)[D
    .locals 0

    iput-object p1, p0, Lcom/graphbuilder/curve/NURBSpline$b;->a:[D

    return-object p1
.end method

.method public static synthetic c(Lcom/graphbuilder/curve/NURBSpline$b;)[D
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/NURBSpline$b;->b:[D

    return-object p0
.end method

.method public static synthetic d(Lcom/graphbuilder/curve/NURBSpline$b;[D)[D
    .locals 0

    iput-object p1, p0, Lcom/graphbuilder/curve/NURBSpline$b;->b:[D

    return-object p1
.end method

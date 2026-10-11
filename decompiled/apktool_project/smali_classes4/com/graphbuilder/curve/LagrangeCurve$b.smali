.class public Lcom/graphbuilder/curve/LagrangeCurve$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphbuilder/curve/LagrangeCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [[D

    .line 2
    iput-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve$b;->a:[[D

    return-void
.end method

.method public synthetic constructor <init>(Lcom/graphbuilder/curve/LagrangeCurve$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/graphbuilder/curve/LagrangeCurve$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/graphbuilder/curve/LagrangeCurve$b;)[[D
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/LagrangeCurve$b;->a:[[D

    return-object p0
.end method

.method public static synthetic b(Lcom/graphbuilder/curve/LagrangeCurve$b;[[D)[[D
    .locals 0

    iput-object p1, p0, Lcom/graphbuilder/curve/LagrangeCurve$b;->a:[[D

    return-object p1
.end method

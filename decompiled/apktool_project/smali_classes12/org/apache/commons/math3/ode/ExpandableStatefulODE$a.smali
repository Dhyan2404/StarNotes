.class public Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/ode/SecondaryEquations;

.field public final b:Lorg/apache/commons/math3/ode/EquationsMapper;

.field public final c:[D

.field public final d:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/SecondaryEquations;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/SecondaryEquations;->getDimension()I

    move-result v0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->a:Lorg/apache/commons/math3/ode/SecondaryEquations;

    new-instance p1, Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;-><init>(II)V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->b:Lorg/apache/commons/math3/ode/EquationsMapper;

    new-array p1, v0, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->c:[D

    new-array p1, v0, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->d:[D

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)Lorg/apache/commons/math3/ode/EquationsMapper;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->b:Lorg/apache/commons/math3/ode/EquationsMapper;

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->c:[D

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->d:[D

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)Lorg/apache/commons/math3/ode/SecondaryEquations;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->a:Lorg/apache/commons/math3/ode/SecondaryEquations;

    return-object p0
.end method

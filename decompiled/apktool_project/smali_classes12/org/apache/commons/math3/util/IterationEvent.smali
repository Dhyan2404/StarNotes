.class public Lorg/apache/commons/math3/util/IterationEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1330240L


# instance fields
.field private final iterations:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Lorg/apache/commons/math3/util/IterationEvent;->iterations:I

    return-void
.end method


# virtual methods
.method public getIterations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/IterationEvent;->iterations:I

    return p0
.end method

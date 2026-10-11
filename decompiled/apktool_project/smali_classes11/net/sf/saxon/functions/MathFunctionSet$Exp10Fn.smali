.class public Lnet/sf/saxon/functions/MathFunctionSet$Exp10Fn;
.super Lnet/sf/saxon/functions/MathFunctionSet$TrigFn1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/MathFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Exp10Fn"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/MathFunctionSet$TrigFn1;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(D)D
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

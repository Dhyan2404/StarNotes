.class public final synthetic Lorg/apache/poi/ss/formula/functions/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(D)D
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/MathX;->asinh(D)D

    move-result-wide p0

    return-wide p0
.end method

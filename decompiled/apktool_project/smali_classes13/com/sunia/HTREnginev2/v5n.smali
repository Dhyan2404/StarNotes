.class public final synthetic Lcom/sunia/HTREnginev2/v5n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accumulate(DD)D
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/functions/Sumxmy2;->a(DD)D

    move-result-wide p0

    return-wide p0
.end method

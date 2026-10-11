.class public final synthetic Lcom/sunia/HTREnginev2/h8p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic a:D


# direct methods
.method public synthetic constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/h8p;->a:D

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/h8p;->a:D

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/HTREnginev2/u;->e(DD)D

    move-result-wide p0

    return-wide p0
.end method

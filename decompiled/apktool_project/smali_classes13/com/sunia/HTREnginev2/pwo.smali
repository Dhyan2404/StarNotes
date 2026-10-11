.class public final synthetic Lcom/sunia/HTREnginev2/pwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getDoubleValue()D

    move-result-wide p0

    return-wide p0
.end method

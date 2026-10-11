.class public final synthetic Lcom/sunia/HTREnginev2/zhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lorg/apache/poi/sl/draw/PathGradientPaint;

    check-cast p1, [F

    check-cast p2, [Ljava/awt/Color;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/draw/PathGradientPaint;-><init>([F[Ljava/awt/Color;)V

    return-object p0
.end method

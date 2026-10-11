.class public final synthetic Lcom/sunia/HTREnginev2/u9i;
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

    check-cast p1, Ljava/awt/Shape;

    check-cast p2, Ljava/awt/Shape;

    invoke-static {p1, p2}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->d(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

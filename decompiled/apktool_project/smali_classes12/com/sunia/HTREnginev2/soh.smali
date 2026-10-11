.class public final synthetic Lcom/sunia/HTREnginev2/soh;
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

    check-cast p1, Lorg/apache/poi/util/LittleEndianInputStream;

    check-cast p2, Ljava/awt/geom/Point2D;

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readPointF(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

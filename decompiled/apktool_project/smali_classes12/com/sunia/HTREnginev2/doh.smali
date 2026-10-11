.class public final synthetic Lcom/sunia/HTREnginev2/doh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/util/PrimitiveIterator$OfInt;

.field public final synthetic f:Lorg/apache/poi/hemf/draw/HemfGraphics;


# direct methods
.method public synthetic constructor <init>(Ljava/util/PrimitiveIterator$OfInt;Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/doh;->e:Ljava/util/PrimitiveIterator$OfInt;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/doh;->f:Lorg/apache/poi/hemf/draw/HemfGraphics;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/doh;->e:Ljava/util/PrimitiveIterator$OfInt;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/doh;->f:Lorg/apache/poi/hemf/draw/HemfGraphics;

    check-cast p1, Ljava/awt/geom/Point2D;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->e(Ljava/util/PrimitiveIterator$OfInt;Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/awt/geom/Point2D;)V

    return-void
.end method

.class public final synthetic Lcom/sunia/HTREnginev2/ygh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfEllipse;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfEllipse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ygh;->e:Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfEllipse;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ygh;->e:Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfEllipse;

    check-cast p1, Ljava/awt/geom/Path2D;

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfEllipse;->a(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfEllipse;Ljava/awt/geom/Path2D;)V

    return-void
.end method

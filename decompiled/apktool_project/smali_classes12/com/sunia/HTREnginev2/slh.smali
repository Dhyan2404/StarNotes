.class public final synthetic Lcom/sunia/HTREnginev2/slh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic a:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public synthetic constructor <init>(Ljava/awt/geom/Rectangle2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/slh;->a:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/slh;->a:Ljava/awt/geom/Rectangle2D;

    check-cast p1, Ljava/awt/geom/Rectangle2D;

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->a(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)D

    move-result-wide p0

    return-wide p0
.end method

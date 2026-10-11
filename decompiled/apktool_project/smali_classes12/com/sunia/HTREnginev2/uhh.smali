.class public final synthetic Lcom/sunia/HTREnginev2/uhh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/awt/geom/Area;


# direct methods
.method public synthetic constructor <init>(Ljava/awt/geom/Area;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uhh;->e:Ljava/awt/geom/Area;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uhh;->e:Ljava/awt/geom/Area;

    check-cast p1, Ljava/awt/geom/Rectangle2D;

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfFill;->a(Ljava/awt/geom/Area;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

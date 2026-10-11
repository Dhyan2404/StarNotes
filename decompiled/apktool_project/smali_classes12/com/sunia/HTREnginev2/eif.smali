.class public final synthetic Lcom/sunia/HTREnginev2/eif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/sl/draw/DrawSimpleShape;

.field public final synthetic f:Ljava/awt/Graphics2D;

.field public final synthetic g:Ljava/awt/geom/Path2D;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/sl/draw/DrawSimpleShape;Ljava/awt/Graphics2D;Ljava/awt/geom/Path2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/eif;->e:Lorg/apache/poi/sl/draw/DrawSimpleShape;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/eif;->f:Ljava/awt/Graphics2D;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/eif;->g:Ljava/awt/geom/Path2D;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/eif;->e:Lorg/apache/poi/sl/draw/DrawSimpleShape;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/eif;->f:Ljava/awt/Graphics2D;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/eif;->g:Ljava/awt/geom/Path2D;

    check-cast p1, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->a(Lorg/apache/poi/sl/draw/DrawSimpleShape;Ljava/awt/Graphics2D;Ljava/awt/geom/Path2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    return-void
.end method

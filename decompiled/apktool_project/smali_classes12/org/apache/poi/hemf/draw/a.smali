.class public final synthetic Lorg/apache/poi/hemf/draw/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/awt/geom/AffineTransform;

.field public final synthetic f:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Ljava/awt/geom/AffineTransform;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hemf/draw/a;->e:Ljava/awt/geom/AffineTransform;

    iput-object p2, p0, Lorg/apache/poi/hemf/draw/a;->f:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hemf/draw/a;->e:Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/a;->f:Ljava/util/Iterator;

    check-cast p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->b(Ljava/awt/geom/AffineTransform;Ljava/util/Iterator;Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;)V

    return-void
.end method

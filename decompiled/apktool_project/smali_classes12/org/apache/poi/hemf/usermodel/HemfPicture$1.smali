.class Lorg/apache/poi/hemf/usermodel/HemfPicture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hemf/usermodel/HemfPicture;->getInnerBounds(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private state:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

.field final synthetic this$0:Lorg/apache/poi/hemf/usermodel/HemfPicture;

.field final synthetic val$bounds:Ljava/awt/geom/Rectangle2D;

.field final synthetic val$viewport:Ljava/awt/geom/Rectangle2D;

.field final synthetic val$window:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hemf/usermodel/HemfPicture;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture$1;->this$0:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    iput-object p2, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture$1;->val$window:Ljava/awt/geom/Rectangle2D;

    iput-object p3, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture$1;->val$viewport:Ljava/awt/geom/Rectangle2D;

    iput-object p4, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture$1;->val$bounds:Ljava/awt/geom/Rectangle2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;->INITIAL:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    iput-object p1, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture$1;->state:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    return-void
.end method


# virtual methods
.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture$1;->val$bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getState()Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture$1;->state:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    return-object p0
.end method

.method public getViewport()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture$1;->val$viewport:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getWindow()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture$1;->val$window:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public setState(Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture$1;->state:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    return-void
.end method

.class Lsun/java2d/pipe/GeneralCompositePipe$TileContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/pipe/GeneralCompositePipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TileContext"
.end annotation


# instance fields
.field compCtxt:Ljava/awt/CompositeContext;

.field compModel:Ljava/awt/image/ColorModel;

.field paintCtxt:Ljava/awt/PaintContext;

.field pipeState:Ljava/lang/Object;

.field sunG2D:Lsun/java2d/SunGraphics2D;

.field final synthetic this$0:Lsun/java2d/pipe/GeneralCompositePipe;


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/GeneralCompositePipe;Lsun/java2d/SunGraphics2D;Ljava/awt/PaintContext;Ljava/awt/CompositeContext;Ljava/awt/image/ColorModel;)V
    .locals 0

    iput-object p1, p0, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;->this$0:Lsun/java2d/pipe/GeneralCompositePipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;->sunG2D:Lsun/java2d/SunGraphics2D;

    iput-object p3, p0, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;->paintCtxt:Ljava/awt/PaintContext;

    iput-object p4, p0, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;->compCtxt:Ljava/awt/CompositeContext;

    iput-object p5, p0, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;->compModel:Ljava/awt/image/ColorModel;

    return-void
.end method

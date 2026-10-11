.class Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/CompositeContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rop3Context"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[I>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->stack:Ljava/util/Deque;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;-><init>(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)V

    return-void
.end method

.method private fillPattern([IIIIII)V
    .locals 1

    if-eqz p1, :cond_3

    add-int/2addr p4, p2

    add-int/2addr p4, p6

    iget-object p2, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-static {p2}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->access$400(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)I

    move-result p2

    rem-int/2addr p4, p2

    if-gez p4, :cond_0

    iget-object p2, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-static {p2}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->access$400(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)I

    move-result p2

    add-int/2addr p4, p2

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-static {p2}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->access$500(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)I

    move-result p2

    mul-int/2addr p4, p2

    const/4 p2, 0x0

    :goto_0
    array-length p6, p1

    if-ge p2, p6, :cond_3

    add-int p6, p3, p2

    add-int/2addr p6, p5

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-static {v0}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->access$500(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)I

    move-result v0

    rem-int/2addr p6, v0

    if-gez p6, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-static {v0}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->access$500(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)I

    move-result v0

    add-int/2addr p6, v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-static {v0}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->access$600(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)[B

    move-result-object v0

    add-int/2addr p6, p4

    aget-byte p6, v0, p6

    if-nez p6, :cond_2

    iget-object p6, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-static {p6}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->access$700(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)I

    move-result p6

    goto :goto_1

    :cond_2
    iget-object p6, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-static {p6}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->access$800(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)I

    move-result p6

    :goto_1
    aput p6, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public compose(Ljava/awt/image/Raster;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)V
    .locals 21

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    iget-object v0, v7, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-static {v0}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->access$100(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)Ljava/awt/geom/Point2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-int v6, v0

    iget-object v0, v7, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-static {v0}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->access$100(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)Ljava/awt/geom/Point2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-int v5, v0

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v17

    new-array v4, v14, [I

    new-array v3, v14, [I

    iget-object v0, v7, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-static {v0}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->access$200(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v14, [I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    const/4 v0, 0x0

    :goto_1
    move v1, v0

    if-ge v1, v15, :cond_1

    const/4 v9, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p2

    move v10, v1

    move v11, v14

    move-object v13, v3

    invoke-virtual/range {v8 .. v13}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, p1

    move-object v13, v4

    invoke-virtual/range {v8 .. v13}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object v1, v2

    move-object v13, v2

    move/from16 v2, v18

    move-object v12, v3

    move v3, v6

    move-object v11, v4

    move v4, v5

    move/from16 v19, v5

    move/from16 v5, v17

    move/from16 v20, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->fillPattern([IIIIII)V

    iget-object v0, v7, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->this$0:Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;

    invoke-static {v0}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->access$300(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object v0

    iget-object v1, v7, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->stack:Ljava/util/Deque;

    invoke-virtual {v0, v1, v12, v11, v13}, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->process(Ljava/util/Deque;[I[I[I)V

    iget-object v0, v7, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v9, 0x0

    const/4 v1, 0x1

    move-object/from16 v8, p3

    move/from16 v10, v18

    move-object v2, v11

    move v11, v14

    move-object v3, v12

    move v12, v1

    move-object v1, v13

    move-object v13, v0

    invoke-virtual/range {v8 .. v13}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v0, v18, 0x1

    move-object v4, v2

    move/from16 v5, v19

    move/from16 v6, v20

    move-object v2, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

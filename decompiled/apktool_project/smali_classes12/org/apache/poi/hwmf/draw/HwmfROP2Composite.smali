.class public Lorg/apache/poi/hwmf/draw/HwmfROP2Composite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Composite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/draw/HwmfROP2Composite$ROP2Context;
    }
.end annotation


# instance fields
.field private final op:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfROP2Composite;->op:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    return-void
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;Ljava/awt/RenderingHints;)Ljava/awt/CompositeContext;
    .locals 0

    new-instance p1, Lorg/apache/poi/hwmf/draw/HwmfROP2Composite$ROP2Context;

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP2Composite;->op:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    invoke-direct {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfROP2Composite$ROP2Context;-><init>(Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;)V

    return-object p1
.end method

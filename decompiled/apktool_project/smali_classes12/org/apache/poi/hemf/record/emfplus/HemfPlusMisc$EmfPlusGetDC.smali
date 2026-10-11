.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusGetDC;
.super Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusGetDC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;-><init>()V

    return-void
.end method


# virtual methods
.method public calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;->EMF_DCONTEXT:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    invoke-interface {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->setState(Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;->EMF_DCONTEXT:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->setRenderState(Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;)V

    return-void
.end method

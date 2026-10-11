.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusResetWorldTransform;
.super Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusResetWorldTransform"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->clearTransform()V

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->updateWindowMapMode()V

    return-void
.end method

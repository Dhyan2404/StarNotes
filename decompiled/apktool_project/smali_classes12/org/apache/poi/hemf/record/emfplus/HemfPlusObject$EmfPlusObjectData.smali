.class public interface abstract Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmfPlusObjectData"
.end annotation


# virtual methods
.method public abstract applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hemf/draw/HemfGraphics;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getGraphicsVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;
.end method

.method public abstract init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isContinuedRecord()Z
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;->getGraphicsVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;->getGraphicsVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;->getMetafileSignature()I

    move-result p0

    const v0, 0xdbc01

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

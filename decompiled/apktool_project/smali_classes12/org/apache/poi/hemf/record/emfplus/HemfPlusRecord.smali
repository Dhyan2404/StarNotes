.class public interface abstract Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# virtual methods
.method public calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V
    .locals 0

    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 0

    return-void
.end method

.method public abstract getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
.end method

.method public abstract getFlags()I
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    .line 2
    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;->getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    move-result-object p0

    return-object p0
.end method

.method public abstract init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

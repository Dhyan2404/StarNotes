.class public interface abstract Lorg/apache/poi/hemf/record/emf/HemfRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# virtual methods
.method public calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V
    .locals 0

    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/hwmf/record/HwmfRecord;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfRecord;

    invoke-interface {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfRecord;->draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V

    :cond_0
    return-void
.end method

.method public abstract getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emf/HemfRecord;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emf/HemfRecord;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public abstract init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setHeader(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V
    .locals 0

    return-void
.end method

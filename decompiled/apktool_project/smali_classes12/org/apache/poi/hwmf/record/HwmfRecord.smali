.class public interface abstract Lorg/apache/poi/hwmf/record/HwmfRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# virtual methods
.method public abstract draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/poi/hwmf/record/HwmfRecord;->getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public abstract getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
.end method

.method public abstract init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

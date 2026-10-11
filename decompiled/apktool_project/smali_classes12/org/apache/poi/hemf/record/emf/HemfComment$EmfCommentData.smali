.class public interface abstract Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmfCommentData"
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

.method public abstract getCommentRecordType()Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
    .locals 0

    .line 2
    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;->getCommentRecordType()Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    move-result-object p0

    return-object p0
.end method

.method public abstract init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

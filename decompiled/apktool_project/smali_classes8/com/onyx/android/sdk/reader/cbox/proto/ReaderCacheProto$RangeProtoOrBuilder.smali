.class public interface abstract Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProtoOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RangeProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getPosition()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
.end method

.method public abstract getPositionOrBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;
.end method

.method public abstract getTableRow(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;
.end method

.method public abstract getTableRowCount()I
.end method

.method public abstract getTableRowList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTableRowOrBuilder(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProtoOrBuilder;
.end method

.method public abstract getTableRowOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasPosition()Z
.end method

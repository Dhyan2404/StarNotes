.class public interface abstract Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProtoOrBuilder;
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
    name = "TableRowProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getPin()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
.end method

.method public abstract getPinOrBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;
.end method

.method public abstract getTableCell(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;
.end method

.method public abstract getTableCellCount()I
.end method

.method public abstract getTableCellList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTableCellOrBuilder(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProtoOrBuilder;
.end method

.method public abstract getTableCellOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasPin()Z
.end method

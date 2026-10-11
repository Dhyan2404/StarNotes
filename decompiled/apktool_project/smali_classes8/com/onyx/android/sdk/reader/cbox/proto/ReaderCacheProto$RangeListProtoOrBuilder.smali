.class public interface abstract Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProtoOrBuilder;
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
    name = "RangeListProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getChapter()I
.end method

.method public abstract getRange(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto;
.end method

.method public abstract getRangeCount()I
.end method

.method public abstract getRangeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRangeOrBuilder(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProtoOrBuilder;
.end method

.method public abstract getRangeOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

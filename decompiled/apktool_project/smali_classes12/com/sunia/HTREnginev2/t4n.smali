.class public final synthetic Lcom/sunia/HTREnginev2/t4n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/apache/poi/util/LittleEndianInput;II)Lorg/apache/poi/hssf/record/SubRecord;
    .locals 0

    new-instance p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/FtCfSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object p0
.end method

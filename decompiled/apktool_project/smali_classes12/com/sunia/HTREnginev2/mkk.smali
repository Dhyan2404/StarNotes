.class public final synthetic Lcom/sunia/HTREnginev2/mkk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ddf/EscherRecordTypes;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ddf/EscherRecordTypes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mkk;->e:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mkk;->e:Lorg/apache/poi/ddf/EscherRecordTypes;

    check-cast p1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/record/PPDrawing;->e(Lorg/apache/poi/ddf/EscherRecordTypes;Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.class public Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutOptions;
.super Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfExtTextOutOptions"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lorg/apache/poi/util/LittleEndianInputStream;)I
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->flags:I

    const/4 p0, 0x4

    return p0
.end method

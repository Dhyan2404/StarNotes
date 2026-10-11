.class public Lorg/apache/poi/hwmf/record/HwmfDraw$WmfChord;
.super Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfChord"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;-><init>()V

    return-void
.end method


# virtual methods
.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->chord:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

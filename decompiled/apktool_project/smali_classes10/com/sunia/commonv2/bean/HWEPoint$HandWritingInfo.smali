.class public Lcom/sunia/commonv2/bean/HWEPoint$HandWritingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/commonv2/bean/HWEPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandWritingInfo"
.end annotation


# instance fields
.field private endTimestamp:J

.field private startTimestamp:J

.field private strokeTouchEventInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/HWEPoint$strokeTouchEventInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/commonv2/bean/HWEPoint$HandWritingInfo;->strokeTouchEventInfoList:Ljava/util/List;

    return-void
.end method

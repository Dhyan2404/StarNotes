.class public Lcom/sunia/commonv2/bean/HWEPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/commonv2/bean/HWEPoint$strokeTouchEventInfo;,
        Lcom/sunia/commonv2/bean/HWEPoint$HandWritingInfo;
    }
.end annotation


# instance fields
.field private handwritingInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/HWEPoint$HandWritingInfo;",
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

    iput-object v0, p0, Lcom/sunia/commonv2/bean/HWEPoint;->handwritingInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getHandwritingInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/HWEPoint$HandWritingInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/HWEPoint;->handwritingInfoList:Ljava/util/List;

    return-object p0
.end method

.class public abstract Lcom/tencent/qcloud/track/service/ATrackService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/track/IReport;


# instance fields
.field private debug:Z

.field private isCloseReport:Z

.field protected isInit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qcloud/track/service/ATrackService;->debug:Z

    iput-boolean v0, p0, Lcom/tencent/qcloud/track/service/ATrackService;->isCloseReport:Z

    iput-boolean v0, p0, Lcom/tencent/qcloud/track/service/ATrackService;->isInit:Z

    return-void
.end method


# virtual methods
.method public isCloseReport()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/qcloud/track/service/ATrackService;->isCloseReport:Z

    return p0
.end method

.method public isDebug()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/qcloud/track/service/ATrackService;->debug:Z

    return p0
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qcloud/track/service/ATrackService;->debug:Z

    return-void
.end method

.method public setIsCloseReport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qcloud/track/service/ATrackService;->isCloseReport:Z

    return-void
.end method

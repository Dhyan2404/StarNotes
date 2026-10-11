.class public Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:I

.field private resBuffer:[B

.field private resCode:I

.field private resMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(II[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->code:I

    iput p2, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->resCode:I

    iput-object p3, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->resBuffer:[B

    iput-object p4, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->resMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->code:I

    return p0
.end method

.method public getResBuffer()[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->resBuffer:[B

    return-object p0
.end method

.method public getResCode()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->resCode:I

    return p0
.end method

.method public getResMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->resMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->code:I

    return-void
.end method

.method public setResBuffer([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->resBuffer:[B

    return-void
.end method

.method public setResCode(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->resCode:I

    return-void
.end method

.method public setResMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->resMsg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeaconQuicReportResult{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bizCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->resCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bizBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->resBuffer:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bizMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/beacon/event/quic/BeaconQuicReportResult;->resMsg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

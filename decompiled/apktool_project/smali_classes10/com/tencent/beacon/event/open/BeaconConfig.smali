.class public Lcom/tencent/beacon/event/open/BeaconConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    }
.end annotation


# instance fields
.field private final A:Z

.field private final B:Z

.field private final C:I

.field private final D:I

.field private final E:Z

.field private final F:I

.field private final G:Z

.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:J

.field private final e:J

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Z

.field private final m:Z

.field private final n:Z

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Z

.field private final z:Z


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->a(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->a:I

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->b(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->b:Z

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->m(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->c:Z

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->x(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->d:J

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->B(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->e:J

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->C(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->f:I

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->D(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->g:I

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->E(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->h:Z

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->F(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->i:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->G(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->c(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->d(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->l:Z

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->e(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->m:Z

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->f(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->n:Z

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->g(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->o:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->h(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->i(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->q:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->j(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->k(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->l(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->t:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->n(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->u:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->o(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->v:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->p(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->w:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->q(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->x:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->r(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->y:Z

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->s(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->z:Z

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->t(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->A:Z

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->u(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->B:Z

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->v(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->C:I

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->w(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->D:I

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->y(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->E:Z

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->z(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->F:I

    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->A(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->G:Z

    return-void
.end method

.method public static builder()Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 1

    new-instance v0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;

    invoke-direct {v0}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAndroidID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->o:Ljava/lang/String;

    return-object p0
.end method

.method public getCompressType()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->C:I

    return p0
.end method

.method public getConfigHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getHttpAdapter()Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->i:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    return-object p0
.end method

.method public getImei()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->p:Ljava/lang/String;

    return-object p0
.end method

.method public getImei2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->q:Ljava/lang/String;

    return-object p0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->r:Ljava/lang/String;

    return-object p0
.end method

.method public getLongConnectionType()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->F:I

    return p0
.end method

.method public getMac()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->u:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxDBCount()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->a:I

    return p0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->s:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->t:Ljava/lang/String;

    return-object p0
.end method

.method public getNormalPollingTIme()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->e:J

    return-wide v0
.end method

.method public getNormalUploadNum()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->g:I

    return p0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->x:Ljava/lang/String;

    return-object p0
.end method

.method public getRealtimePollingTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->d:J

    return-wide v0
.end method

.method public getRealtimeUploadNum()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->f:I

    return p0
.end method

.method public getRetryAfterQuicFailImme()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->G:Z

    return p0
.end method

.method public getRsaPubKeyType()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->D:I

    return p0
.end method

.method public getUploadHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getWifiMacAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->v:Ljava/lang/String;

    return-object p0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->w:Ljava/lang/String;

    return-object p0
.end method

.method public isAuditEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->b:Z

    return p0
.end method

.method public isBidEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->c:Z

    return p0
.end method

.method public isEnableQmsp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->m:Z

    return p0
.end method

.method public isForceEnableAtta()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->l:Z

    return p0
.end method

.method public isHighPerformanceMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->B:Z

    return p0
.end method

.method public isNeedInitQimei()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->y:Z

    return p0
.end method

.method public isNeedLifeCycleListener()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->E:Z

    return p0
.end method

.method public isPagePathEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->n:Z

    return p0
.end method

.method public isSocketMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->h:Z

    return p0
.end method

.method public needAttaReport()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->A:Z

    return p0
.end method

.method public needReportRqdEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->z:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeaconConfig{maxDBCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", auditEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bidEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", realtimePollingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", normalPollingTIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", normalUploadNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", realtimeUploadNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", httpAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->i:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uploadHost=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", configHost=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", forceEnableAtta="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->l:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", enableQmsp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->m:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pagePathEnable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->n:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", androidID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imei=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imei2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imsi=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", meid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mac=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", wifiMacAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", wifiSSID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oaid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", needInitQ=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig;->y:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

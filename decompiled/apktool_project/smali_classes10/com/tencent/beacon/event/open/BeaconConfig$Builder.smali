.class public final Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/event/open/BeaconConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:Z

.field private G:I

.field private H:Z

.field private a:I

.field private b:Z

.field private c:Z

.field private d:Ljava/util/concurrent/ScheduledExecutorService;

.field private e:Z

.field private f:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

.field private g:J

.field private h:J

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->b:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->c:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->e:Z

    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->g:J

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->h:J

    const/16 v1, 0x30

    iput v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->i:I

    iput v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->j:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->m:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->n:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->o:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->s:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->t:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->u:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->w:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->x:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->y:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->z:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->A:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->B:Z

    iput-boolean v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->C:Z

    const/4 v2, 0x2

    iput v2, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->D:I

    iput v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->E:I

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->F:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->G:I

    iput-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->H:Z

    return-void
.end method

.method public static synthetic A(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->H:Z

    return p0
.end method

.method public static synthetic B(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->h:J

    return-wide v0
.end method

.method public static synthetic C(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->i:I

    return p0
.end method

.method public static synthetic D(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->j:I

    return p0
.end method

.method public static synthetic E(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->e:Z

    return p0
.end method

.method public static synthetic F(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->f:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    return-object p0
.end method

.method public static synthetic G(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->a:I

    return p0
.end method

.method public static synthetic b(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->b:Z

    return p0
.end method

.method public static synthetic c(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->m:Z

    return p0
.end method

.method public static synthetic e(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->n:Z

    return p0
.end method

.method public static synthetic f(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->o:Z

    return p0
.end method

.method public static synthetic g(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->q:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->t:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->u:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic m(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->c:Z

    return p0
.end method

.method public static synthetic n(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->v:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic o(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->w:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->x:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic q(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->y:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic r(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->z:Z

    return p0
.end method

.method public static synthetic s(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->A:Z

    return p0
.end method

.method public static synthetic t(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->B:Z

    return p0
.end method

.method public static synthetic u(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->C:Z

    return p0
.end method

.method public static synthetic v(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->D:I

    return p0
.end method

.method public static synthetic w(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->E:I

    return p0
.end method

.method public static synthetic x(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->g:J

    return-wide v0
.end method

.method public static synthetic y(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->F:Z

    return p0
.end method

.method public static synthetic z(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->G:I

    return p0
.end method


# virtual methods
.method public auditEnable(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->b:Z

    return-object p0
.end method

.method public bidEnable(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->c:Z

    return-object p0
.end method

.method public build()Lcom/tencent/beacon/event/open/BeaconConfig;
    .locals 1

    iget-object v0, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/beacon/a/b/b;->a(Ljava/util/concurrent/ScheduledExecutorService;)V

    :cond_0
    new-instance v0, Lcom/tencent/beacon/event/open/BeaconConfig;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/open/BeaconConfig;-><init>(Lcom/tencent/beacon/event/open/BeaconConfig$Builder;)V

    return-object v0
.end method

.method public eventReportEnable(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "eventReportEnable is deprecated!"

    invoke-static {v0, p1}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public maxDBCount(I)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->a:I

    return-object p0
.end method

.method public pagePathEnable(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->o:Z

    return-object p0
.end method

.method public qmspEnable(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->n:Z

    return-object p0
.end method

.method public setAndroidID(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->p:Ljava/lang/String;

    return-object p0
.end method

.method public setCompressType(I)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->D:I

    return-object p0
.end method

.method public setConfigHost(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public setExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public setForceEnableAtta(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->m:Z

    return-object p0
.end method

.method public setHighPerformanceMode(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->C:Z

    return-object p0
.end method

.method public setHttpAdapter(Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->f:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    return-object p0
.end method

.method public setImei(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->q:Ljava/lang/String;

    return-object p0
.end method

.method public setImei2(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->r:Ljava/lang/String;

    return-object p0
.end method

.method public setImsi(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->s:Ljava/lang/String;

    return-object p0
.end method

.method public setIsSocketMode(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->e:Z

    return-object p0
.end method

.method public setLongConnectionType(I)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->G:I

    return-object p0
.end method

.method public setMac(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->v:Ljava/lang/String;

    return-object p0
.end method

.method public setMeid(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->t:Ljava/lang/String;

    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->u:Ljava/lang/String;

    return-object p0
.end method

.method public setNeedAttaReport(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->B:Z

    return-object p0
.end method

.method public setNeedInitQimei(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->z:Z

    return-object p0
.end method

.method public setNeedLifeCycleListener(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->F:Z

    return-object p0
.end method

.method public setNeedReportRqdEvent(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->A:Z

    return-object p0
.end method

.method public setNormalPollingTime(J)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->h:J

    return-object p0
.end method

.method public setNormalUploadNum(I)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->j:I

    return-object p0
.end method

.method public setOaid(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->y:Ljava/lang/String;

    return-object p0
.end method

.method public setRealtimePollingTime(J)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->g:J

    return-object p0
.end method

.method public setRealtimeUploadNum(I)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->i:I

    return-object p0
.end method

.method public setRetryAfterQuicFailImme(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->H:Z

    return-object p0
.end method

.method public setRsaPubKeyType(I)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->E:I

    return-object p0
.end method

.method public setUploadHost(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setWifiMacAddress(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->w:Ljava/lang/String;

    return-object p0
.end method

.method public setWifiSSID(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->x:Ljava/lang/String;

    return-object p0
.end method

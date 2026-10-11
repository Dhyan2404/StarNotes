.class public final Lcom/tencent/beacon/event/open/BeaconEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/event/open/BeaconEvent$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/beacon/event/open/EventType;

.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/beacon/event/open/EventType;ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/beacon/event/open/EventType;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->c:Lcom/tencent/beacon/event/open/EventType;

    .line 6
    iput-boolean p4, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->d:Z

    .line 7
    iput-object p5, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->e:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/beacon/event/open/EventType;ZLjava/util/Map;Lcom/tencent/beacon/event/open/a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/tencent/beacon/event/open/BeaconEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/beacon/event/open/EventType;ZLjava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/beacon/event/open/BeaconEvent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/beacon/event/open/BeaconEvent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static builder()Lcom/tencent/beacon/event/open/BeaconEvent$Builder;
    .locals 2

    new-instance v0, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;-><init>(Lcom/tencent/beacon/event/open/a;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventType;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->c:Lcom/tencent/beacon/event/open/EventType;

    return-object p0
.end method

.method public static synthetic d(Lcom/tencent/beacon/event/open/BeaconEvent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->d:Z

    return p0
.end method

.method public static synthetic e(Lcom/tencent/beacon/event/open/BeaconEvent;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->e:Ljava/util/Map;

    return-object p0
.end method

.method public static newBuilder(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;
    .locals 2

    new-instance v0, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;-><init>(Lcom/tencent/beacon/event/open/BeaconEvent;Lcom/tencent/beacon/event/open/a;)V

    return-object v0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getLogidPrefix()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/beacon/event/open/a;->a:[I

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->c:Lcom/tencent/beacon/event/open/EventType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "Y"

    goto :goto_0

    :pswitch_1
    const-string p0, "I"

    goto :goto_0

    :pswitch_2
    const-string p0, "N"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getParams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->e:Ljava/util/Map;

    return-object p0
.end method

.method public getType()Lcom/tencent/beacon/event/open/EventType;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->c:Lcom/tencent/beacon/event/open/EventType;

    return-object p0
.end method

.method public isSucceed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->d:Z

    return p0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->a:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->b:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->e:Ljava/util/Map;

    return-void
.end method

.method public setSucceed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->d:Z

    return-void
.end method

.method public setType(Lcom/tencent/beacon/event/open/EventType;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconEvent;->c:Lcom/tencent/beacon/event/open/EventType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

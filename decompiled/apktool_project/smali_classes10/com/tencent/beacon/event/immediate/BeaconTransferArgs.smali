.class public abstract Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;->a:[B

    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;->b:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getCommand()Ljava/lang/String;
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;->a:[B

    return-object p0
.end method

.method public getEventCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;->b:Ljava/lang/String;

    return-void
.end method

.method public abstract setCommand(Ljava/lang/String;)V
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;->a:[B

    return-void
.end method

.method public setEventCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;->c:Ljava/lang/String;

    return-void
.end method

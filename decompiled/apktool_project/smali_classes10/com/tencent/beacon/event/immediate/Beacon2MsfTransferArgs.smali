.class public Lcom/tencent/beacon/event/immediate/Beacon2MsfTransferArgs;
.super Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;-><init>([B)V

    const-string p1, "trpc.Beacon.BeaconLogServerLC.blslongconnection.SsoProcess"

    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/Beacon2MsfTransferArgs;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/immediate/Beacon2MsfTransferArgs;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/Beacon2MsfTransferArgs;->d:Ljava/lang/String;

    return-void
.end method

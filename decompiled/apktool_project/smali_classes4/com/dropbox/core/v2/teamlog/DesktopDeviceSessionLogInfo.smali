.class public Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;
.super Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$Builder;
    }
.end annotation


# instance fields
.field protected final clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

.field protected final clientVersion:Ljava/lang/String;

.field protected final hostName:Ljava/lang/String;

.field protected final isDeleteOnUnlinkSupported:Z

.field protected final platform:Ljava/lang/String;

.field protected final sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Z)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 11
    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5, p6, p7}, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 2
    iput-object p8, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    if-eqz p1, :cond_2

    .line 3
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->hostName:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 4
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    .line 5
    iput-object p9, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 6
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->platform:Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->isDeleteOnUnlinkSupported:Z

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'platform\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'clientType\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'hostName\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newBuilder(Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Z)Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$Builder;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    check-cast p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->hostName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->hostName:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->platform:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->isDeleteOnUnlinkSupported:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->isDeleteOnUnlinkSupported:Z

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->created:Ljava/util/Date;

    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->updated:Ljava/util/Date;

    if-eq v2, v3, :cond_7

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    if-eq v2, v3, :cond_8

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    move v0, v1

    :cond_a
    :goto_0
    return v0

    :cond_b
    return v1
.end method

.method public getClientType()Lcom/dropbox/core/v2/team/DesktopPlatform;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    return-object p0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->created:Ljava/util/Date;

    return-object p0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->hostName:Ljava/lang/String;

    return-object p0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getIsDeleteOnUnlinkSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->isDeleteOnUnlinkSupported:Z

    return p0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionInfo()Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    return-object p0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->updated:Ljava/util/Date;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->hostName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->platform:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->isDeleteOnUnlinkSupported:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-super {p0}, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;->b:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;->b:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

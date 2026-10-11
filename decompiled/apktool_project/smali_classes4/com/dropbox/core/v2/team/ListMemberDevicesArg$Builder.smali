.class public Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/ListMemberDevicesArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected includeDesktopClients:Z

.field protected includeMobileClients:Z

.field protected includeWebSessions:Z

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->teamMemberId:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeWebSessions:Z

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeDesktopClients:Z

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeMobileClients:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'teamMemberId\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/ListMemberDevicesArg;
    .locals 4

    new-instance v0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->teamMemberId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeWebSessions:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeDesktopClients:Z

    iget-boolean p0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeMobileClients:Z

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public withIncludeDesktopClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeDesktopClients:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeDesktopClients:Z

    :goto_0
    return-object p0
.end method

.method public withIncludeMobileClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeMobileClients:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeMobileClients:Z

    :goto_0
    return-object p0
.end method

.method public withIncludeWebSessions(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeWebSessions:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeWebSessions:Z

    :goto_0
    return-object p0
.end method

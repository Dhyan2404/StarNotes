.class public Lcom/dropbox/core/v2/teamlog/EventType$b;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/EventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/dropbox/core/v2/teamlog/EventType$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventType$b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EventType$b;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventType$b;->b:Lcom/dropbox/core/v2/teamlog/EventType$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/EventType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/CompositeSerializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1ae

    const-string v2, "app_link_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppLinkTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/AppLinkTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AppLinkTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppLinkTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->appLinkTeam(Lcom/dropbox/core/v2/teamlog/AppLinkTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    const-string v2, "app_link_user"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppLinkUserType$a;->b:Lcom/dropbox/core/v2/teamlog/AppLinkUserType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AppLinkUserType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppLinkUserType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->appLinkUser(Lcom/dropbox/core/v2/teamlog/AppLinkUserType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_2
    const-string v2, "app_unlink_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->appUnlinkTeam(Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_3
    const-string v2, "app_unlink_user"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType$a;->b:Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->appUnlinkUser(Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_4
    const-string v2, "integration_connected"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/IntegrationConnectedType$a;->b:Lcom/dropbox/core/v2/teamlog/IntegrationConnectedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/IntegrationConnectedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/IntegrationConnectedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->integrationConnected(Lcom/dropbox/core/v2/teamlog/IntegrationConnectedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_5
    const-string v2, "integration_disconnected"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedType$a;->b:Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->integrationDisconnected(Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_6
    const-string v2, "file_add_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileAddCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileAddCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileAddCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileAddCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileAddComment(Lcom/dropbox/core/v2/teamlog/FileAddCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_7
    const-string v2, "file_change_comment_subscription"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType$a;->b:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileChangeCommentSubscription(Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_8
    const-string v2, "file_delete_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileDeleteComment(Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_9
    const-string v2, "file_edit_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileEditCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileEditCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileEditCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileEditCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileEditComment(Lcom/dropbox/core/v2/teamlog/FileEditCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_a
    const-string v2, "file_like_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileLikeCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileLikeCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileLikeCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileLikeCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileLikeComment(Lcom/dropbox/core/v2/teamlog/FileLikeCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_b
    const-string v2, "file_resolve_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileResolveCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileResolveCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileResolveCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileResolveCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileResolveComment(Lcom/dropbox/core/v2/teamlog/FileResolveCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_c
    const-string v2, "file_unlike_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileUnlikeComment(Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_d
    const-string v2, "file_unresolve_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileUnresolveComment(Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_e
    const-string v2, "device_change_ip_desktop"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceChangeIpDesktop(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_f
    const-string v2, "device_change_ip_mobile"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceChangeIpMobile(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_10
    const-string v2, "device_change_ip_web"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceChangeIpWeb(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_11
    const-string v2, "device_delete_on_unlink_fail"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceDeleteOnUnlinkFail(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_12
    const-string v2, "device_delete_on_unlink_success"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceDeleteOnUnlinkSuccess(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_13
    const-string v2, "device_link_fail"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceLinkFail(Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_14
    const-string v2, "device_link_success"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceLinkSuccess(Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_15
    const-string v2, "device_management_disabled"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceManagementDisabled(Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_16
    const-string v2, "device_management_enabled"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceManagementEnabled(Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_17
    const-string v2, "device_unlink"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceUnlink(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_18
    const-string v2, "emm_refresh_auth_token"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmRefreshAuthToken(Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_19
    const-string v2, "account_capture_change_availability"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->accountCaptureChangeAvailability(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a
    const-string v2, "account_capture_migrate_account"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->accountCaptureMigrateAccount(Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1b
    const-string v2, "account_capture_notification_emails_sent"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->accountCaptureNotificationEmailsSent(Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1c
    const-string v2, "account_capture_relinquish_account"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->accountCaptureRelinquishAccount(Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1d
    const-string v2, "disabled_domain_invites"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType$a;->b:Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->disabledDomainInvites(Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1e
    const-string v2, "domain_invites_approve_request_to_join_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainInvitesApproveRequestToJoinTeam(Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1f
    const-string v2, "domain_invites_decline_request_to_join_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainInvitesDeclineRequestToJoinTeam(Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_20
    const-string v2, "domain_invites_email_existing_users"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainInvitesEmailExistingUsers(Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_21
    const-string v2, "domain_invites_request_to_join_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainInvitesRequestToJoinTeam(Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_22
    const-string v2, "domain_invites_set_invite_new_user_pref_to_no"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainInvitesSetInviteNewUserPrefToNo(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_23
    const-string v2, "domain_invites_set_invite_new_user_pref_to_yes"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainInvitesSetInviteNewUserPrefToYes(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_24
    const-string v2, "domain_verification_add_domain_fail"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainVerificationAddDomainFail(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_25
    const-string v2, "domain_verification_add_domain_success"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainVerificationAddDomainSuccess(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_26
    const-string v2, "domain_verification_remove_domain"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainVerificationRemoveDomain(Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_27
    const-string v2, "enabled_domain_invites"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType$a;->b:Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->enabledDomainInvites(Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_28
    const-string v2, "create_folder"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CreateFolderType$a;->b:Lcom/dropbox/core/v2/teamlog/CreateFolderType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/CreateFolderType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/CreateFolderType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->createFolder(Lcom/dropbox/core/v2/teamlog/CreateFolderType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_29
    const-string v2, "file_add"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileAddType$a;->b:Lcom/dropbox/core/v2/teamlog/FileAddType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileAddType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileAddType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileAdd(Lcom/dropbox/core/v2/teamlog/FileAddType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_2a
    const-string v2, "file_copy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileCopyType$a;->b:Lcom/dropbox/core/v2/teamlog/FileCopyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileCopyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileCopyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileCopy(Lcom/dropbox/core/v2/teamlog/FileCopyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_2b
    const-string v2, "file_delete"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/FileDeleteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileDeleteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileDeleteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileDelete(Lcom/dropbox/core/v2/teamlog/FileDeleteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_2c
    const-string v2, "file_download"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileDownloadType$a;->b:Lcom/dropbox/core/v2/teamlog/FileDownloadType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileDownloadType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileDownloadType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileDownload(Lcom/dropbox/core/v2/teamlog/FileDownloadType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_2d
    const-string v2, "file_edit"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileEditType$a;->b:Lcom/dropbox/core/v2/teamlog/FileEditType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileEditType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileEditType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileEdit(Lcom/dropbox/core/v2/teamlog/FileEditType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_2e
    const-string v2, "file_get_copy_reference"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType$a;->b:Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileGetCopyReference(Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_2f
    const-string v2, "file_locking_lock_status_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileLockingLockStatusChanged(Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_30
    const-string v2, "file_move"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileMoveType$a;->b:Lcom/dropbox/core/v2/teamlog/FileMoveType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileMoveType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileMoveType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileMove(Lcom/dropbox/core/v2/teamlog/FileMoveType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_31
    const-string v2, "file_permanently_delete"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->filePermanentlyDelete(Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_32
    const-string v2, "file_preview"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FilePreviewType$a;->b:Lcom/dropbox/core/v2/teamlog/FilePreviewType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FilePreviewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FilePreviewType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->filePreview(Lcom/dropbox/core/v2/teamlog/FilePreviewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_33
    const-string v2, "file_rename"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRenameType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRenameType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRenameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRenameType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRename(Lcom/dropbox/core/v2/teamlog/FileRenameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_34
    const-string v2, "file_restore"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRestoreType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRestoreType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRestoreType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRestoreType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRestore(Lcom/dropbox/core/v2/teamlog/FileRestoreType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_35
    const-string v2, "file_revert"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRevertType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRevertType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRevertType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRevertType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRevert(Lcom/dropbox/core/v2/teamlog/FileRevertType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_36
    const-string v2, "file_rollback_changes"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRollbackChanges(Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_37
    const-string v2, "file_save_copy_reference"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType$a;->b:Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileSaveCopyReference(Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_38
    const-string v2, "folder_overview_description_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->folderOverviewDescriptionChanged(Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_39
    const-string v2, "folder_overview_item_pinned"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedType$a;->b:Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->folderOverviewItemPinned(Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_3a
    const-string v2, "folder_overview_item_unpinned"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedType$a;->b:Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->folderOverviewItemUnpinned(Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_3b
    const-string v2, "rewind_folder"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/RewindFolderType$a;->b:Lcom/dropbox/core/v2/teamlog/RewindFolderType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/RewindFolderType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/RewindFolderType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->rewindFolder(Lcom/dropbox/core/v2/teamlog/RewindFolderType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_3c
    const-string v2, "file_request_change"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestChangeType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestChangeType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestChangeType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestChangeType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestChange(Lcom/dropbox/core/v2/teamlog/FileRequestChangeType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_3d
    const-string v2, "file_request_close"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestCloseType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestCloseType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestClose(Lcom/dropbox/core/v2/teamlog/FileRequestCloseType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_3e
    const-string v2, "file_request_create"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestCreateType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestCreateType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestCreate(Lcom/dropbox/core/v2/teamlog/FileRequestCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_3f
    const-string v2, "file_request_delete"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestDeleteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestDeleteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestDeleteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestDelete(Lcom/dropbox/core/v2/teamlog/FileRequestDeleteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_40
    const-string v2, "file_request_receive_file"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestReceiveFile(Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_41
    const-string v2, "group_add_external_id"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupAddExternalId(Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_42
    const-string v2, "group_add_member"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupAddMemberType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupAddMemberType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupAddMember(Lcom/dropbox/core/v2/teamlog/GroupAddMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_43
    const-string v2, "group_change_external_id"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupChangeExternalId(Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_44
    const-string v2, "group_change_management_type"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupChangeManagementType(Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_45
    const-string v2, "group_change_member_role"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupChangeMemberRole(Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_46
    const-string v2, "group_create"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupCreateType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupCreateType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupCreate(Lcom/dropbox/core/v2/teamlog/GroupCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_47
    const-string v2, "group_delete"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupDeleteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupDeleteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupDeleteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupDelete(Lcom/dropbox/core/v2/teamlog/GroupDeleteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_48
    const-string v2, "group_description_updated"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupDescriptionUpdated(Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_49
    const-string v2, "group_join_policy_updated"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupJoinPolicyUpdated(Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_4a
    const-string v2, "group_moved"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupMovedType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupMovedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupMovedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupMovedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupMoved(Lcom/dropbox/core/v2/teamlog/GroupMovedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_4b
    const-string v2, "group_remove_external_id"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupRemoveExternalId(Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_4c
    const-string v2, "group_remove_member"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupRemoveMember(Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_4d
    const-string v2, "group_rename"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupRenameType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupRenameType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupRenameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupRenameType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupRename(Lcom/dropbox/core/v2/teamlog/GroupRenameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_4e
    const-string v2, "legal_holds_activate_a_hold"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->legalHoldsActivateAHold(Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_4f
    const-string v2, "legal_holds_add_members"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->legalHoldsAddMembers(Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_50
    const-string v2, "legal_holds_change_hold_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->legalHoldsChangeHoldDetails(Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_51
    const-string v2, "legal_holds_change_hold_name"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->legalHoldsChangeHoldName(Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_52
    const-string v2, "legal_holds_export_a_hold"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->legalHoldsExportAHold(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_53
    const-string v2, "legal_holds_export_cancelled"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->legalHoldsExportCancelled(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_54
    const-string v2, "legal_holds_export_downloaded"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->legalHoldsExportDownloaded(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_55
    const-string v2, "legal_holds_export_removed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->legalHoldsExportRemoved(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_56
    const-string v2, "legal_holds_release_a_hold"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->legalHoldsReleaseAHold(Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_57
    const-string v2, "legal_holds_remove_members"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->legalHoldsRemoveMembers(Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_58
    const-string v2, "legal_holds_report_a_hold"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->legalHoldsReportAHold(Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_59
    const-string v2, "account_lock_or_unlocked"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedType$a;->b:Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->accountLockOrUnlocked(Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_5a
    const-string v2, "emm_error"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmErrorType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmErrorType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmErrorType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmErrorType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmError(Lcom/dropbox/core/v2/teamlog/EmmErrorType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_5b
    const-string v2, "guest_admin_signed_in_via_trusted_teams"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsType$a;->b:Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->guestAdminSignedInViaTrustedTeams(Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_5c
    const-string v2, "guest_admin_signed_out_via_trusted_teams"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsType$a;->b:Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->guestAdminSignedOutViaTrustedTeams(Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_5d
    const-string v2, "login_fail"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LoginFailType$a;->b:Lcom/dropbox/core/v2/teamlog/LoginFailType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LoginFailType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LoginFailType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->loginFail(Lcom/dropbox/core/v2/teamlog/LoginFailType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_5e
    const-string v2, "login_success"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LoginSuccessType$a;->b:Lcom/dropbox/core/v2/teamlog/LoginSuccessType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LoginSuccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LoginSuccessType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->loginSuccess(Lcom/dropbox/core/v2/teamlog/LoginSuccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_5f
    const-string v2, "logout"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LogoutType$a;->b:Lcom/dropbox/core/v2/teamlog/LogoutType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LogoutType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LogoutType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->logout(Lcom/dropbox/core/v2/teamlog/LogoutType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_60
    const-string v2, "reseller_support_session_end"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType$a;->b:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->resellerSupportSessionEnd(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_61
    const-string v2, "reseller_support_session_start"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType$a;->b:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->resellerSupportSessionStart(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_62
    const-string v2, "sign_in_as_session_end"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType$a;->b:Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->signInAsSessionEnd(Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_63
    const-string v2, "sign_in_as_session_start"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType$a;->b:Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->signInAsSessionStart(Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_64
    const-string v2, "sso_error"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoErrorType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoErrorType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoErrorType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoErrorType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoError(Lcom/dropbox/core/v2/teamlog/SsoErrorType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_65
    const-string v2, "create_team_invite_link"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkType$a;->b:Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->createTeamInviteLink(Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_66
    const-string v2, "delete_team_invite_link"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkType$a;->b:Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deleteTeamInviteLink(Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_67
    const-string v2, "member_add_external_id"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberAddExternalId(Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_68
    const-string v2, "member_add_name"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberAddNameType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberAddNameType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberAddNameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberAddNameType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberAddName(Lcom/dropbox/core/v2/teamlog/MemberAddNameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_69
    const-string v2, "member_change_admin_role"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberChangeAdminRole(Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_6a
    const-string v2, "member_change_email"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberChangeEmail(Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_6b
    const-string v2, "member_change_external_id"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberChangeExternalId(Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_6c
    const-string v2, "member_change_membership_type"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberChangeMembershipType(Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_6d
    const-string v2, "member_change_name"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeNameType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeNameType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeNameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeNameType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberChangeName(Lcom/dropbox/core/v2/teamlog/MemberChangeNameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_6e
    const-string v2, "member_change_status"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberChangeStatus(Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_6f
    const-string v2, "member_delete_manual_contacts"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberDeleteManualContacts(Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_70
    const-string v2, "member_delete_profile_photo"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberDeleteProfilePhoto(Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_71
    const-string v2, "member_permanently_delete_account_contents"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberPermanentlyDeleteAccountContents(Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_72
    const-string v2, "member_remove_external_id"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberRemoveExternalId(Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_73
    const-string v2, "member_set_profile_photo"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSetProfilePhoto(Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_74
    const-string v2, "member_space_limits_add_custom_quota"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsAddCustomQuota(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_75
    const-string v2, "member_space_limits_change_custom_quota"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsChangeCustomQuota(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_76
    const-string v2, "member_space_limits_change_status"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsChangeStatus(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_77
    const-string v2, "member_space_limits_remove_custom_quota"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsRemoveCustomQuota(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_78
    const-string v2, "member_suggest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSuggestType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSuggestType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSuggestType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSuggest(Lcom/dropbox/core/v2/teamlog/MemberSuggestType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_79
    const-string v2, "member_transfer_account_contents"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberTransferAccountContents(Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_7a
    const-string v2, "pending_secondary_email_added"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedType$a;->b:Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->pendingSecondaryEmailAdded(Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_7b
    const-string v2, "secondary_email_deleted"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedType$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->secondaryEmailDeleted(Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_7c
    const-string v2, "secondary_email_verified"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedType$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->secondaryEmailVerified(Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_7d
    const-string v2, "secondary_mails_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->secondaryMailsPolicyChanged(Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_7e
    const-string v2, "binder_add_page"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderAddPageType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderAddPageType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderAddPageType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderAddPageType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->binderAddPage(Lcom/dropbox/core/v2/teamlog/BinderAddPageType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_7f
    const-string v2, "binder_add_section"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderAddSectionType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderAddSectionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderAddSectionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderAddSectionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->binderAddSection(Lcom/dropbox/core/v2/teamlog/BinderAddSectionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_80
    const-string v2, "binder_remove_page"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRemovePageType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRemovePageType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderRemovePageType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderRemovePageType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->binderRemovePage(Lcom/dropbox/core/v2/teamlog/BinderRemovePageType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_81
    const-string v2, "binder_remove_section"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->binderRemoveSection(Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_82
    const-string v2, "binder_rename_page"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRenamePageType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRenamePageType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderRenamePageType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderRenamePageType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->binderRenamePage(Lcom/dropbox/core/v2/teamlog/BinderRenamePageType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_83
    const-string v2, "binder_rename_section"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRenameSectionType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRenameSectionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderRenameSectionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderRenameSectionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->binderRenameSection(Lcom/dropbox/core/v2/teamlog/BinderRenameSectionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_84
    const-string v2, "binder_reorder_page"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderReorderPageType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderReorderPageType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderReorderPageType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderReorderPageType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->binderReorderPage(Lcom/dropbox/core/v2/teamlog/BinderReorderPageType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_85
    const-string v2, "binder_reorder_section"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderReorderSectionType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderReorderSectionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderReorderSectionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderReorderSectionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->binderReorderSection(Lcom/dropbox/core/v2/teamlog/BinderReorderSectionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_86
    const-string v2, "paper_content_add_member"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentAddMember(Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_87
    const-string v2, "paper_content_add_to_folder"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentAddToFolder(Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_88
    const-string v2, "paper_content_archive"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentArchive(Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_89
    const-string v2, "paper_content_create"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentCreateType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentCreateType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentCreate(Lcom/dropbox/core/v2/teamlog/PaperContentCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_8a
    const-string v2, "paper_content_permanently_delete"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentPermanentlyDelete(Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_8b
    const-string v2, "paper_content_remove_from_folder"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentRemoveFromFolder(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_8c
    const-string v2, "paper_content_remove_member"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentRemoveMember(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_8d
    const-string v2, "paper_content_rename"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRenameType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRenameType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRenameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRenameType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentRename(Lcom/dropbox/core/v2/teamlog/PaperContentRenameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_8e
    const-string v2, "paper_content_restore"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentRestore(Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_8f
    const-string v2, "paper_doc_add_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocAddComment(Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_90
    const-string v2, "paper_doc_change_member_role"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocChangeMemberRole(Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_91
    const-string v2, "paper_doc_change_sharing_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocChangeSharingPolicy(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_92
    const-string v2, "paper_doc_change_subscription"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocChangeSubscription(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_93
    const-string v2, "paper_doc_deleted"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocDeleted(Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_94
    const-string v2, "paper_doc_delete_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocDeleteComment(Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_95
    const-string v2, "paper_doc_download"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocDownload(Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_96
    const-string v2, "paper_doc_edit"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocEditType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocEditType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocEdit(Lcom/dropbox/core/v2/teamlog/PaperDocEditType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_97
    const-string v2, "paper_doc_edit_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocEditComment(Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_98
    const-string v2, "paper_doc_followed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocFollowed(Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_99
    const-string v2, "paper_doc_mention"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocMentionType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocMentionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocMentionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocMentionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocMention(Lcom/dropbox/core/v2/teamlog/PaperDocMentionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_9a
    const-string v2, "paper_doc_ownership_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocOwnershipChanged(Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_9b
    const-string v2, "paper_doc_request_access"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocRequestAccess(Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_9c
    const-string v2, "paper_doc_resolve_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocResolveComment(Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_9d
    const-string v2, "paper_doc_revert"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocRevertType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocRevertType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocRevertType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocRevertType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocRevert(Lcom/dropbox/core/v2/teamlog/PaperDocRevertType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_9e
    const-string v2, "paper_doc_slack_share"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocSlackShare(Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_9f
    const-string v2, "paper_doc_team_invite"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocTeamInvite(Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_a0
    const-string v2, "paper_doc_trashed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocTrashed(Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_a1
    const-string v2, "paper_doc_unresolve_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocUnresolveComment(Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_a2
    const-string v2, "paper_doc_untrashed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocUntrashed(Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_a3
    const-string v2, "paper_doc_view"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocViewType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocViewType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocViewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocViewType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocView(Lcom/dropbox/core/v2/teamlog/PaperDocViewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_a4
    const-string v2, "paper_external_view_allow"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperExternalViewAllow(Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_a5
    const-string v2, "paper_external_view_default_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperExternalViewDefaultTeam(Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_a6
    const-string v2, "paper_external_view_forbid"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperExternalViewForbid(Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_a7
    const-string v2, "paper_folder_change_subscription"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperFolderChangeSubscription(Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_a8
    const-string v2, "paper_folder_deleted"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperFolderDeleted(Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_a9
    const-string v2, "paper_folder_followed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperFolderFollowed(Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_aa
    const-string v2, "paper_folder_team_invite"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperFolderTeamInvite(Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ab
    const-string v2, "paper_published_link_change_permission"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperPublishedLinkChangePermission(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ac
    const-string v2, "paper_published_link_create"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperPublishedLinkCreate(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ad
    const-string v2, "paper_published_link_disabled"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperPublishedLinkDisabled(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ae
    const-string v2, "paper_published_link_view"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperPublishedLinkView(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_af
    const-string v2, "password_change"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordChangeType$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordChangeType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PasswordChangeType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordChangeType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->passwordChange(Lcom/dropbox/core/v2/teamlog/PasswordChangeType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_b0
    const-string v2, "password_reset"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordResetType$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordResetType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PasswordResetType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordResetType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->passwordReset(Lcom/dropbox/core/v2/teamlog/PasswordResetType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_b1
    const-string v2, "password_reset_all"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordResetAllType$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordResetAllType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PasswordResetAllType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordResetAllType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->passwordResetAll(Lcom/dropbox/core/v2/teamlog/PasswordResetAllType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_b2
    const-string v2, "emm_create_exceptions_report"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmCreateExceptionsReport(Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_b3
    const-string v2, "emm_create_usage_report"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmCreateUsageReport(Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_b4
    const-string v2, "export_members_report"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExportMembersReportType$a;->b:Lcom/dropbox/core/v2/teamlog/ExportMembersReportType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ExportMembersReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExportMembersReportType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->exportMembersReport(Lcom/dropbox/core/v2/teamlog/ExportMembersReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_b5
    const-string v2, "export_members_report_fail"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailType$a;->b:Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->exportMembersReportFail(Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_b6
    const-string v2, "external_sharing_create_report"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportType$a;->b:Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->externalSharingCreateReport(Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_b7
    const-string v2, "external_sharing_report_failed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedType$a;->b:Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->externalSharingReportFailed(Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_b8
    const-string v2, "no_expiration_link_gen_create_report"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportType$a;->b:Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->noExpirationLinkGenCreateReport(Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_b9
    const-string v2, "no_expiration_link_gen_report_failed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedType$a;->b:Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->noExpirationLinkGenReportFailed(Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ba
    const-string v2, "no_password_link_gen_create_report"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportType$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->noPasswordLinkGenCreateReport(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_bb
    const-string v2, "no_password_link_gen_report_failed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedType$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->noPasswordLinkGenReportFailed(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_bc
    const-string v2, "no_password_link_view_create_report"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportType$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->noPasswordLinkViewCreateReport(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_bd
    const-string v2, "no_password_link_view_report_failed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedType$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->noPasswordLinkViewReportFailed(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_be
    const-string v2, "outdated_link_view_create_report"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    sget-object p0, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportType$a;->b:Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->outdatedLinkViewCreateReport(Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_bf
    const-string v2, "outdated_link_view_report_failed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedType$a;->b:Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->outdatedLinkViewReportFailed(Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_c0
    const-string v2, "paper_admin_export_start"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperAdminExportStart(Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_c1
    const-string v2, "smart_sync_create_admin_privilege_report"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->smartSyncCreateAdminPrivilegeReport(Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_c2
    const-string v2, "team_activity_create_report"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamActivityCreateReport(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_c3
    const-string v2, "team_activity_create_report_fail"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamActivityCreateReportFail(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_c4
    const-string v2, "collection_share"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CollectionShareType$a;->b:Lcom/dropbox/core/v2/teamlog/CollectionShareType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/CollectionShareType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/CollectionShareType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->collectionShare(Lcom/dropbox/core/v2/teamlog/CollectionShareType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_c5
    const-string v2, "file_transfers_file_add"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddType$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileTransfersFileAdd(Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_c6
    const-string v2, "file_transfers_transfer_delete"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileTransfersTransferDelete(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_c7
    const-string v2, "file_transfers_transfer_download"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadType$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileTransfersTransferDownload(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_c8
    const-string v2, "file_transfers_transfer_send"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendType$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileTransfersTransferSend(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_c9
    const-string v2, "file_transfers_transfer_view"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewType$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileTransfersTransferView(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ca
    const-string v2, "note_acl_invite_only"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType$a;->b:Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->noteAclInviteOnly(Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_cb
    const-string v2, "note_acl_link"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteAclLinkType$a;->b:Lcom/dropbox/core/v2/teamlog/NoteAclLinkType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclLinkType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteAclLinkType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->noteAclLink(Lcom/dropbox/core/v2/teamlog/NoteAclLinkType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_cc
    const-string v2, "note_acl_team_link"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType$a;->b:Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->noteAclTeamLink(Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_cd
    const-string v2, "note_shared"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteSharedType$a;->b:Lcom/dropbox/core/v2/teamlog/NoteSharedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoteSharedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteSharedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->noteShared(Lcom/dropbox/core/v2/teamlog/NoteSharedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ce
    const-string v2, "note_share_receive"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType$a;->b:Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->noteShareReceive(Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_cf
    const-string v2, "open_note_shared"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType$a;->b:Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->openNoteShared(Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_d0
    const-string v2, "sf_add_group"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfAddGroupType$a;->b:Lcom/dropbox/core/v2/teamlog/SfAddGroupType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfAddGroupType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfAddGroupType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfAddGroup(Lcom/dropbox/core/v2/teamlog/SfAddGroupType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_d1
    const-string v2, "sf_allow_non_members_to_view_shared_links"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType$a;->b:Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfAllowNonMembersToViewSharedLinks(Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_d2
    const-string v2, "sf_external_invite_warn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType$a;->b:Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfExternalInviteWarn(Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_d3
    const-string v2, "sf_fb_invite"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteType$a;->b:Lcom/dropbox/core/v2/teamlog/SfFbInviteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfFbInviteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfFbInviteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfFbInvite(Lcom/dropbox/core/v2/teamlog/SfFbInviteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_d4
    const-string v2, "sf_fb_invite_change_role"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfFbInviteChangeRole(Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_d5
    const-string v2, "sf_fb_uninvite"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfFbUninviteType$a;->b:Lcom/dropbox/core/v2/teamlog/SfFbUninviteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfFbUninviteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfFbUninviteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfFbUninvite(Lcom/dropbox/core/v2/teamlog/SfFbUninviteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_d6
    const-string v2, "sf_invite_group"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfInviteGroupType$a;->b:Lcom/dropbox/core/v2/teamlog/SfInviteGroupType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfInviteGroupType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfInviteGroupType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfInviteGroup(Lcom/dropbox/core/v2/teamlog/SfInviteGroupType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_d7
    const-string v2, "sf_team_grant_access"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfTeamGrantAccess(Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_d8
    const-string v2, "sf_team_invite"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteType$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamInviteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamInviteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfTeamInvite(Lcom/dropbox/core/v2/teamlog/SfTeamInviteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_d9
    const-string v2, "sf_team_invite_change_role"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfTeamInviteChangeRole(Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_da
    const-string v2, "sf_team_join"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinType$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamJoinType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamJoinType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfTeamJoin(Lcom/dropbox/core/v2/teamlog/SfTeamJoinType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_db
    const-string v2, "sf_team_join_from_oob_link"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfTeamJoinFromOobLink(Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_dc
    const-string v2, "sf_team_uninvite"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfTeamUninvite(Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_dd
    const-string v2, "shared_content_add_invitees"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentAddInvitees(Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_de
    const-string v2, "shared_content_add_link_expiry"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentAddLinkExpiry(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_df
    const-string v2, "shared_content_add_link_password"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentAddLinkPassword(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_e0
    const-string v2, "shared_content_add_member"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentAddMember(Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_e1
    const-string v2, "shared_content_change_downloads_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeDownloadsPolicy(Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_e2
    const-string v2, "shared_content_change_invitee_role"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeInviteeRole(Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_e3
    const-string v2, "shared_content_change_link_audience"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeLinkAudience(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_e4
    const-string v2, "shared_content_change_link_expiry"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeLinkExpiry(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_e5
    const-string v2, "shared_content_change_link_password"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeLinkPassword(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_e6
    const-string v2, "shared_content_change_member_role"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeMemberRole(Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_e7
    const-string v2, "shared_content_change_viewer_info_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeViewerInfoPolicy(Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_e8
    const-string v2, "shared_content_claim_invitation"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentClaimInvitation(Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_e9
    const-string v2, "shared_content_copy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentCopyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentCopyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentCopy(Lcom/dropbox/core/v2/teamlog/SharedContentCopyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ea
    const-string v2, "shared_content_download"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentDownload(Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_eb
    const-string v2, "shared_content_relinquish_membership"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRelinquishMembership(Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ec
    const-string v2, "shared_content_remove_invitees"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRemoveInvitees(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ed
    const-string v2, "shared_content_remove_link_expiry"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRemoveLinkExpiry(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ee
    const-string v2, "shared_content_remove_link_password"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRemoveLinkPassword(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ef
    const-string v2, "shared_content_remove_member"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRemoveMember(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_f0
    const-string v2, "shared_content_request_access"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRequestAccess(Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_f1
    const-string v2, "shared_content_restore_invitees"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRestoreInvitees(Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_f2
    const-string v2, "shared_content_restore_member"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRestoreMember(Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_f3
    const-string v2, "shared_content_unshare"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentUnshare(Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_f4
    const-string v2, "shared_content_view"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentViewType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentViewType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentViewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentViewType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentView(Lcom/dropbox/core/v2/teamlog/SharedContentViewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_f5
    const-string v2, "shared_folder_change_link_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderChangeLinkPolicy(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_f6
    const-string v2, "shared_folder_change_members_inheritance_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderChangeMembersInheritancePolicy(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_f7
    const-string v2, "shared_folder_change_members_management_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderChangeMembersManagementPolicy(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_f8
    const-string v2, "shared_folder_change_members_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderChangeMembersPolicy(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_f9
    const-string v2, "shared_folder_create"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderCreate(Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_fa
    const-string v2, "shared_folder_decline_invitation"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderDeclineInvitation(Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_fb
    const-string v2, "shared_folder_mount"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderMountType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderMountType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderMountType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderMountType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderMount(Lcom/dropbox/core/v2/teamlog/SharedFolderMountType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_fc
    const-string v2, "shared_folder_nest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderNestType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderNestType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderNest(Lcom/dropbox/core/v2/teamlog/SharedFolderNestType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_fd
    const-string v2, "shared_folder_transfer_ownership"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderTransferOwnership(Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_fe
    const-string v2, "shared_folder_unmount"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderUnmount(Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_ff
    const-string v2, "shared_link_add_expiry"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkAddExpiry(Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_100
    const-string v2, "shared_link_change_expiry"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkChangeExpiry(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_101
    const-string v2, "shared_link_change_visibility"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkChangeVisibility(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_102
    const-string v2, "shared_link_copy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkCopy(Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_103
    const-string v2, "shared_link_create"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkCreate(Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_104
    const-string v2, "shared_link_disable"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkDisable(Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_105
    const-string v2, "shared_link_download"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkDownload(Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_106
    const-string v2, "shared_link_remove_expiry"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkRemoveExpiry(Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_107
    const-string v2, "shared_link_settings_add_expiration"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkSettingsAddExpiration(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_108
    const-string v2, "shared_link_settings_add_password"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_109

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkSettingsAddPassword(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_109
    const-string v2, "shared_link_settings_allow_download_disabled"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkSettingsAllowDownloadDisabled(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_10a
    const-string v2, "shared_link_settings_allow_download_enabled"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkSettingsAllowDownloadEnabled(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_10b
    const-string v2, "shared_link_settings_change_audience"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkSettingsChangeAudience(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_10c
    const-string v2, "shared_link_settings_change_expiration"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkSettingsChangeExpiration(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_10d
    const-string v2, "shared_link_settings_change_password"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkSettingsChangePassword(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_10e
    const-string v2, "shared_link_settings_remove_expiration"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkSettingsRemoveExpiration(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_10f
    const-string v2, "shared_link_settings_remove_password"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkSettingsRemovePassword(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_110
    const-string v2, "shared_link_share"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkShareType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkShareType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkShareType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkShare(Lcom/dropbox/core/v2/teamlog/SharedLinkShareType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_111
    const-string v2, "shared_link_view"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkViewType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkViewType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkViewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkViewType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkView(Lcom/dropbox/core/v2/teamlog/SharedLinkViewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_112
    const-string v2, "shared_note_opened"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedNoteOpened(Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_113
    const-string v2, "shmodel_group_share"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType$a;->b:Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->shmodelGroupShare(Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_114
    const-string v2, "showcase_access_granted"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseAccessGranted(Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_115
    const-string v2, "showcase_add_member"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseAddMember(Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_116
    const-string v2, "showcase_archived"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseArchived(Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_117
    const-string v2, "showcase_created"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseCreated(Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_118
    const-string v2, "showcase_delete_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_119

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseDeleteComment(Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_119
    const-string v2, "showcase_edited"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseEdited(Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_11a
    const-string v2, "showcase_edit_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseEditComment(Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_11b
    const-string v2, "showcase_file_added"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseFileAdded(Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_11c
    const-string v2, "showcase_file_download"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseFileDownload(Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_11d
    const-string v2, "showcase_file_removed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseFileRemoved(Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_11e
    const-string v2, "showcase_file_view"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseFileView(Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_11f
    const-string v2, "showcase_permanently_deleted"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_120

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcasePermanentlyDeleted(Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_120
    const-string v2, "showcase_post_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_121

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcasePostComment(Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_121
    const-string v2, "showcase_remove_member"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseRemoveMember(Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_122
    const-string v2, "showcase_renamed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseRenamed(Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_123
    const-string v2, "showcase_request_access"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_124

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseRequestAccess(Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_124
    const-string v2, "showcase_resolve_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseResolveComment(Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_125
    const-string v2, "showcase_restored"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_126

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseRestored(Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_126
    const-string v2, "showcase_trashed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseTrashed(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_127
    const-string v2, "showcase_trashed_deprecated"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseTrashedDeprecated(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_128
    const-string v2, "showcase_unresolve_comment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_129

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseUnresolveComment(Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_129
    const-string v2, "showcase_untrashed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseUntrashed(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_12a
    const-string v2, "showcase_untrashed_deprecated"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseUntrashedDeprecated(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_12b
    const-string v2, "showcase_view"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseViewType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseViewType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseViewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseViewType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseView(Lcom/dropbox/core/v2/teamlog/ShowcaseViewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_12c
    const-string v2, "sso_add_cert"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoAddCertType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoAddCertType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddCertType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoAddCertType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoAddCert(Lcom/dropbox/core/v2/teamlog/SsoAddCertType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_12d
    const-string v2, "sso_add_login_url"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoAddLoginUrl(Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_12e
    const-string v2, "sso_add_logout_url"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoAddLogoutUrl(Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_12f
    const-string v2, "sso_change_cert"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_130

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeCertType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeCertType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeCertType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeCertType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoChangeCert(Lcom/dropbox/core/v2/teamlog/SsoChangeCertType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_130
    const-string v2, "sso_change_login_url"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoChangeLoginUrl(Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_131
    const-string v2, "sso_change_logout_url"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_132

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoChangeLogoutUrl(Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_132
    const-string v2, "sso_change_saml_identity_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoChangeSamlIdentityMode(Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_133
    const-string v2, "sso_remove_cert"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_134

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoRemoveCert(Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_134
    const-string v2, "sso_remove_login_url"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_135

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoRemoveLoginUrl(Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_135
    const-string v2, "sso_remove_logout_url"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoRemoveLogoutUrl(Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_136
    const-string v2, "team_folder_change_status"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_137

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamFolderChangeStatus(Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_137
    const-string v2, "team_folder_create"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamFolderCreate(Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_138
    const-string v2, "team_folder_downgrade"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_139

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamFolderDowngrade(Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_139
    const-string v2, "team_folder_permanently_delete"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamFolderPermanentlyDelete(Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_13a
    const-string v2, "team_folder_rename"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamFolderRename(Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_13b
    const-string v2, "team_selective_sync_settings_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamSelectiveSyncSettingsChanged(Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_13c
    const-string v2, "account_capture_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->accountCaptureChangePolicy(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_13d
    const-string v2, "allow_download_disabled"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType$a;->b:Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->allowDownloadDisabled(Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_13e
    const-string v2, "allow_download_enabled"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType$a;->b:Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->allowDownloadEnabled(Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_13f
    const-string v2, "camera_uploads_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_140

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->cameraUploadsPolicyChanged(Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_140
    const-string v2, "content_administration_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_141

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->contentAdministrationPolicyChanged(Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_141
    const-string v2, "data_placement_restriction_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->dataPlacementRestrictionChangePolicy(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_142
    const-string v2, "data_placement_restriction_satisfy_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->dataPlacementRestrictionSatisfyPolicy(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_143
    const-string v2, "device_approvals_add_exception"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_144

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceApprovalsAddException(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_144
    const-string v2, "device_approvals_change_desktop_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_145

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceApprovalsChangeDesktopPolicy(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_145
    const-string v2, "device_approvals_change_mobile_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_146

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceApprovalsChangeMobilePolicy(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_146
    const-string v2, "device_approvals_change_overage_action"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_147

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceApprovalsChangeOverageAction(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_147
    const-string v2, "device_approvals_change_unlink_action"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_148

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceApprovalsChangeUnlinkAction(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_148
    const-string v2, "device_approvals_remove_exception"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceApprovalsRemoveException(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_149
    const-string v2, "directory_restrictions_add_members"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType$a;->b:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->directoryRestrictionsAddMembers(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_14a
    const-string v2, "directory_restrictions_remove_members"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType$a;->b:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->directoryRestrictionsRemoveMembers(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_14b
    const-string v2, "emm_add_exception"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmAddException(Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_14c
    const-string v2, "emm_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmChangePolicy(Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_14d
    const-string v2, "emm_remove_exception"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmRemoveException(Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_14e
    const-string v2, "extended_version_history_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->extendedVersionHistoryChangePolicy(Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_14f
    const-string v2, "file_comments_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileCommentsChangePolicy(Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_150
    const-string v2, "file_locking_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_151

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileLockingPolicyChanged(Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_151
    const-string v2, "file_requests_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_152

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestsChangePolicy(Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_152
    const-string v2, "file_requests_emails_enabled"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_153

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestsEmailsEnabled(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_153
    const-string v2, "file_requests_emails_restricted_to_team_only"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_154

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestsEmailsRestrictedToTeamOnly(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_154
    const-string v2, "file_transfers_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_155

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileTransfersPolicyChanged(Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_155
    const-string v2, "google_sso_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_156

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->googleSsoChangePolicy(Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_156
    const-string v2, "group_user_management_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_157

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupUserManagementChangePolicy(Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_157
    const-string v2, "integration_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_158

    sget-object p0, Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->integrationPolicyChanged(Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_158
    const-string v2, "member_requests_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_159

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberRequestsChangePolicy(Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_159
    const-string v2, "member_send_invite_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSendInvitePolicyChanged(Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_15a
    const-string v2, "member_space_limits_add_exception"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsAddException(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_15b
    const-string v2, "member_space_limits_change_caps_type_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsChangeCapsTypePolicy(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_15c
    const-string v2, "member_space_limits_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsChangePolicy(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_15d
    const-string v2, "member_space_limits_remove_exception"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsRemoveException(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_15e
    const-string v2, "member_suggestions_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSuggestionsChangePolicy(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_15f
    const-string v2, "microsoft_office_addin_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_160

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->microsoftOfficeAddinChangePolicy(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_160
    const-string v2, "network_control_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_161

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->networkControlChangePolicy(Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_161
    const-string v2, "paper_change_deployment_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperChangeDeploymentPolicy(Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_162
    const-string v2, "paper_change_member_link_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_163

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperChangeMemberLinkPolicy(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_163
    const-string v2, "paper_change_member_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperChangeMemberPolicy(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_164
    const-string v2, "paper_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_165

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperChangePolicy(Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_165
    const-string v2, "paper_default_folder_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_166

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDefaultFolderPolicyChanged(Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_166
    const-string v2, "paper_desktop_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_167

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDesktopPolicyChanged(Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_167
    const-string v2, "paper_enabled_users_group_addition"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_168

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperEnabledUsersGroupAddition(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_168
    const-string v2, "paper_enabled_users_group_removal"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_169

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperEnabledUsersGroupRemoval(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_169
    const-string v2, "password_strength_requirements_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->passwordStrengthRequirementsChangePolicy(Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_16a
    const-string v2, "permanent_delete_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->permanentDeleteChangePolicy(Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_16b
    const-string v2, "reseller_support_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->resellerSupportChangePolicy(Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_16c
    const-string v2, "rewind_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->rewindPolicyChanged(Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_16d
    const-string v2, "send_for_signature_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sendForSignaturePolicyChanged(Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_16e
    const-string v2, "sharing_change_folder_join_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharingChangeFolderJoinPolicy(Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_16f
    const-string v2, "sharing_change_link_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_170

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharingChangeLinkPolicy(Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_170
    const-string v2, "sharing_change_member_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_171

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharingChangeMemberPolicy(Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_171
    const-string v2, "showcase_change_download_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_172

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseChangeDownloadPolicy(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_172
    const-string v2, "showcase_change_enabled_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_173

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseChangeEnabledPolicy(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_173
    const-string v2, "showcase_change_external_sharing_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_174

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseChangeExternalSharingPolicy(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_174
    const-string v2, "smarter_smart_sync_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_175

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->smarterSmartSyncPolicyChanged(Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_175
    const-string v2, "smart_sync_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_176

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->smartSyncChangePolicy(Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_176
    const-string v2, "smart_sync_not_opt_out"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_177

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->smartSyncNotOptOut(Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_177
    const-string v2, "smart_sync_opt_out"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->smartSyncOptOut(Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_178
    const-string v2, "sso_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_179

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoChangePolicy(Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_179
    const-string v2, "team_extensions_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamExtensionsPolicyChanged(Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_17a
    const-string v2, "team_selective_sync_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamSelectiveSyncPolicyChanged(Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_17b
    const-string v2, "team_sharing_whitelist_subjects_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamSharingWhitelistSubjectsChanged(Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_17c
    const-string v2, "tfa_add_exception"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaAddExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaAddExceptionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddExceptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaAddExceptionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaAddException(Lcom/dropbox/core/v2/teamlog/TfaAddExceptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_17d
    const-string v2, "tfa_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaChangePolicy(Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_17e
    const-string v2, "tfa_remove_exception"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaRemoveException(Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_17f
    const-string v2, "two_account_change_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_180

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->twoAccountChangePolicy(Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_180
    const-string v2, "viewer_info_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_181

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->viewerInfoPolicyChanged(Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_181
    const-string v2, "watermarking_policy_changed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->watermarkingPolicyChanged(Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_182
    const-string v2, "web_sessions_change_active_session_limit"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_183

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitType$a;->b:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->webSessionsChangeActiveSessionLimit(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_183
    const-string v2, "web_sessions_change_fixed_length_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_184

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->webSessionsChangeFixedLengthPolicy(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_184
    const-string v2, "web_sessions_change_idle_length_policy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_185

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->webSessionsChangeIdleLengthPolicy(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_185
    const-string v2, "team_merge_from"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeFromType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeFromType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeFromType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeFromType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeFrom(Lcom/dropbox/core/v2/teamlog/TeamMergeFromType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_186
    const-string v2, "team_merge_to"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_187

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeToType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeToType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeToType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeToType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeTo(Lcom/dropbox/core/v2/teamlog/TeamMergeToType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_187
    const-string v2, "team_profile_add_logo"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_188

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamProfileAddLogo(Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_188
    const-string v2, "team_profile_change_default_language"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_189

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamProfileChangeDefaultLanguage(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_189
    const-string v2, "team_profile_change_logo"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamProfileChangeLogo(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_18a
    const-string v2, "team_profile_change_name"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamProfileChangeName(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_18b
    const-string v2, "team_profile_remove_logo"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamProfileRemoveLogo(Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_18c
    const-string v2, "tfa_add_backup_phone"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaAddBackupPhone(Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_18d
    const-string v2, "tfa_add_security_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaAddSecurityKey(Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_18e
    const-string v2, "tfa_change_backup_phone"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaChangeBackupPhone(Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_18f
    const-string v2, "tfa_change_status"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_190

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaChangeStatus(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_190
    const-string v2, "tfa_remove_backup_phone"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_191

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaRemoveBackupPhone(Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_191
    const-string v2, "tfa_remove_security_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_192

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaRemoveSecurityKey(Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_192
    const-string v2, "tfa_reset"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_193

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaResetType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaResetType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaResetType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaResetType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaReset(Lcom/dropbox/core/v2/teamlog/TfaResetType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_193
    const-string v2, "changed_enterprise_admin_role"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_194

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->changedEnterpriseAdminRole(Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_194
    const-string v2, "changed_enterprise_connected_team_status"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusType$a;->b:Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->changedEnterpriseConnectedTeamStatus(Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_195
    const-string v2, "ended_enterprise_admin_session"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_196

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionType$a;->b:Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->endedEnterpriseAdminSession(Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_196
    const-string v2, "ended_enterprise_admin_session_deprecated"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_197

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedType$a;->b:Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->endedEnterpriseAdminSessionDeprecated(Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_197
    const-string v2, "enterprise_settings_locking"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_198

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingType$a;->b:Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->enterpriseSettingsLocking(Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_198
    const-string v2, "guest_admin_change_status"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusType$a;->b:Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->guestAdminChangeStatus(Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_199
    const-string v2, "started_enterprise_admin_session"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionType$a;->b:Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->startedEnterpriseAdminSession(Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_19a
    const-string v2, "team_merge_request_accepted"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestAccepted(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_19b
    const-string v2, "team_merge_request_accepted_shown_to_primary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestAcceptedShownToPrimaryTeam(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_19c
    const-string v2, "team_merge_request_accepted_shown_to_secondary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestAcceptedShownToSecondaryTeam(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_19d
    const-string v2, "team_merge_request_auto_canceled"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestAutoCanceled(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_19e
    const-string v2, "team_merge_request_canceled"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestCanceled(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_19f
    const-string v2, "team_merge_request_canceled_shown_to_primary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestCanceledShownToPrimaryTeam(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a0
    const-string v2, "team_merge_request_canceled_shown_to_secondary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestCanceledShownToSecondaryTeam(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a1
    const-string v2, "team_merge_request_expired"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestExpired(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a2
    const-string v2, "team_merge_request_expired_shown_to_primary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestExpiredShownToPrimaryTeam(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a3
    const-string v2, "team_merge_request_expired_shown_to_secondary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestExpiredShownToSecondaryTeam(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a4
    const-string v2, "team_merge_request_rejected_shown_to_primary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestRejectedShownToPrimaryTeam(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a5
    const-string v2, "team_merge_request_rejected_shown_to_secondary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestRejectedShownToSecondaryTeam(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a6
    const-string v2, "team_merge_request_reminder"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestReminder(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto :goto_1

    :cond_1a7
    const-string v2, "team_merge_request_reminder_shown_to_primary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestReminderShownToPrimaryTeam(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto :goto_1

    :cond_1a8
    const-string v2, "team_merge_request_reminder_shown_to_secondary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestReminderShownToSecondaryTeam(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto :goto_1

    :cond_1a9
    const-string v2, "team_merge_request_revoked"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1aa

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestRevoked(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto :goto_1

    :cond_1aa
    const-string v2, "team_merge_request_sent_shown_to_primary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ab

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestSentShownToPrimaryTeam(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto :goto_1

    :cond_1ab
    const-string v2, "team_merge_request_sent_shown_to_secondary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1ac

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamType$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamType;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeRequestSentShownToSecondaryTeam(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    goto :goto_1

    :cond_1ac
    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventType;->OTHER:Lcom/dropbox/core/v2/teamlog/EventType;

    :goto_1
    if-nez v0, :cond_1ad

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_1ad
    return-object p0

    :cond_1ae
    new-instance p0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field missing: .tag"

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lcom/dropbox/core/v2/teamlog/EventType;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$a;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->tag()Lcom/dropbox/core/v2/teamlog/EventType$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p0, "other"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_sent_shown_to_secondary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->b6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_sent_shown_to_primary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->a6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_revoked"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Z5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_reminder_shown_to_secondary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Y5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_reminder_shown_to_primary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->X5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_reminder"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->W5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_rejected_shown_to_secondary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->V5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_rejected_shown_to_primary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->U5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_expired_shown_to_secondary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->S5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_expired_shown_to_primary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->R5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_expired"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Q5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_canceled_shown_to_secondary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->P5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_canceled_shown_to_primary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->O5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_canceled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->N5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_auto_canceled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->M5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_accepted_shown_to_secondary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->L5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_accepted_shown_to_primary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->K5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_accepted"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->J5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "started_enterprise_admin_session"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionType$a;->b:Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->H5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionType$a;->b(Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "guest_admin_change_status"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusType$a;->b:Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->G5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusType$a;->b(Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "enterprise_settings_locking"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingType$a;->b:Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->F5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingType$a;->b(Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "ended_enterprise_admin_session_deprecated"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedType$a;->b:Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->E5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedType$a;->b(Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "ended_enterprise_admin_session"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionType$a;->b:Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->D5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionType$a;->b(Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "changed_enterprise_connected_team_status"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusType$a;->b:Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->C5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusType$a;->b(Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "changed_enterprise_admin_role"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->B5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleType$a;->b(Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_reset"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaResetType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaResetType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->A5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaResetType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaResetType$a;->b(Lcom/dropbox/core/v2/teamlog/TfaResetType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_remove_security_key"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->z5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType$a;->b(Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_remove_backup_phone"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->y5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType$a;->b(Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_change_status"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->v5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType$a;->b(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_change_backup_phone"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->u5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType$a;->b(Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_add_security_key"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->t5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType$a;->b(Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_add_backup_phone"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->s5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType$a;->b(Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_remove_logo"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->r5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_change_name"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->q5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_change_logo"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->p5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_change_default_language"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->o5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_add_logo"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->n5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_to"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeToType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeToType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->m5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeToType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeToType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeToType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_from"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeFromType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeFromType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->k5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeFromType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeFromType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeFromType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "web_sessions_change_idle_length_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->j5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "web_sessions_change_fixed_length_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->i5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "web_sessions_change_active_session_limit"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitType$a;->b:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->h5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitType$a;->b(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "watermarking_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->g5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "viewer_info_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->f5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "two_account_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->e5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_remove_exception"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->d5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionType$a;->b(Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->c5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_add_exception"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaAddExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/TfaAddExceptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->b5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaAddExceptionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddExceptionType$a;->b(Lcom/dropbox/core/v2/teamlog/TfaAddExceptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_30
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_sharing_whitelist_subjects_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Z4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_selective_sync_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Y4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_32
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_extensions_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->X4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->W4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_34
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_opt_out"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->V4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType$a;->b(Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_not_opt_out"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->U4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType$a;->b(Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_36
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->T4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_37
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smarter_smart_sync_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->S4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_38
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_change_external_sharing_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->R4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_39
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_change_enabled_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Q4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_change_download_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->O4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sharing_change_member_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->N4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sharing_change_link_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->M4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sharing_change_folder_join_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->L4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "send_for_signature_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->K4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "rewind_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->J4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_40
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "reseller_support_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->I4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_41
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "permanent_delete_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->H4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_42
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_strength_requirements_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->G4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_43
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_enabled_users_group_removal"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->F4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_enabled_users_group_addition"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->D4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_45
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_desktop_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->C4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_46
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_default_folder_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->B4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_47
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->A4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_48
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_member_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->z4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_49
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_member_link_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->y4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_deployment_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->x4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "network_control_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->w4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "microsoft_office_addin_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->v4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_suggestions_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->u4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_remove_exception"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->s4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->r4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_50
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_caps_type_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->q4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_51
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_add_exception"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->p4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_52
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_send_invite_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->o4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_53
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_requests_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->n4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_54
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "integration_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->m4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_55
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_user_management_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->l4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_56
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "google_sso_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->k4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_57
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_transfers_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->j4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_58
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_requests_emails_restricted_to_team_only"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->h4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_59
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_requests_emails_enabled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->g4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_requests_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->f4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_locking_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->e4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_comments_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->d4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "extended_version_history_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->c4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_remove_exception"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->b4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType$a;->b(Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->a4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_60
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_add_exception"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Z3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType$a;->b(Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_61
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "directory_restrictions_remove_members"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType$a;->b:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Y3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType$a;->b(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_62
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "directory_restrictions_add_members"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType$a;->b:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->W3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType$a;->b(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_63
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_remove_exception"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->V3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_64
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_unlink_action"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->U3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_65
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_overage_action"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->T3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_66
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_mobile_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->S3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_67
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_desktop_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->R3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_68
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_add_exception"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Q3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_69
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "data_placement_restriction_satisfy_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->P3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "data_placement_restriction_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->O3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "content_administration_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->N3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "camera_uploads_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->L3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "allow_download_enabled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType$a;->b:Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->K3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType$a;->b(Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "allow_download_disabled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType$a;->b:Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->J3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType$a;->b(Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_change_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->I3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_70
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_selective_sync_settings_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->H3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_71
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_rename"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->G3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_72
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_permanently_delete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->F3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_73
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_downgrade"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->E3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_74
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_create"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->D3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_75
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_change_status"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->C3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_76
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_remove_logout_url"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->A3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType$a;->b(Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_77
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_remove_login_url"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->z3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType$a;->b(Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_78
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_remove_cert"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->y3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType$a;->b(Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_79
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_saml_identity_mode"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->x3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType$a;->b(Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_logout_url"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->w3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType$a;->b(Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_login_url"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->v3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType$a;->b(Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_cert"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeCertType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeCertType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->u3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoChangeCertType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeCertType$a;->b(Lcom/dropbox/core/v2/teamlog/SsoChangeCertType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_add_logout_url"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->t3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType$a;->b(Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_add_login_url"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->s3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType$a;->b(Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_add_cert"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoAddCertType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoAddCertType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->r3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoAddCertType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddCertType$a;->b(Lcom/dropbox/core/v2/teamlog/SsoAddCertType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_80
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_view"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseViewType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseViewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->o3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseViewType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseViewType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseViewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_81
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_untrashed_deprecated"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->n3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_82
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_untrashed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->m3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_83
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_unresolve_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->l3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_84
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_trashed_deprecated"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->k3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_85
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_trashed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->j3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_86
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_restored"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->i3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_87
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_resolve_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->h3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_88
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_request_access"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->g3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_89
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_renamed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->f3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_remove_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->d3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_post_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->c3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_permanently_deleted"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->b3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_view"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->a3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_removed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Z2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_download"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Y2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_90
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_added"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->X2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_91
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_edit_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->W2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_92
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_edited"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->V2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_93
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_delete_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->U2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_94
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_created"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->S2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_95
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_archived"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->R2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_96
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_add_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Q2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_97
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_access_granted"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->P2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_98
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shmodel_group_share"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType$a;->b:Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->O2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType$a;->b(Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_99
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_note_opened"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->N2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_view"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkViewType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkViewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->M2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkViewType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkViewType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkViewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_share"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkShareType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->L2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkShareType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkShareType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkShareType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_remove_password"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->K2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_remove_expiration"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->J2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_change_password"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->H2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_change_expiration"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->G2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_change_audience"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->F2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_allow_download_enabled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->E2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_allow_download_disabled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->D2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_add_password"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->C2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_add_expiration"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->B2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_remove_expiry"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->A2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_download"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->z2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_disable"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->y2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_create"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->w2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_copy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->v2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_aa
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_change_visibility"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->u2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ab
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_change_expiry"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->t2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ac
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_add_expiry"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->s2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ad
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_unmount"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->r2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ae
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_transfer_ownership"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->q2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_af
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_nest"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderNestType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->p2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderNestType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderNestType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_mount"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderMountType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderMountType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->o2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderMountType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderMountType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderMountType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_decline_invitation"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->n2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_create"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->l2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_members_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->k2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_members_management_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->j2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_members_inheritance_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->i2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_link_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->h2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_view"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentViewType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentViewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->g2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentViewType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentViewType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentViewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_unshare"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->f2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_restore_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->e2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ba
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_restore_invitees"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->d2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_bb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_request_access"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->c2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_bc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->a2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_bd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_link_password"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Z1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_be
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_link_expiry"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Y1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_bf
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_invitees"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->X1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_relinquish_membership"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->W1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_download"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->V1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_copy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentCopyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->U1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentCopyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentCopyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_claim_invitation"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->T1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_viewer_info_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->S1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_member_role"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->R1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_link_password"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->P1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_link_expiry"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->O1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_link_audience"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->N1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_invitee_role"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->M1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ca
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_downloads_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->L1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_cb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->K1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_cc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_link_password"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->J1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_cd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_link_expiry"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->I1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ce
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_invitees"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->H1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_cf
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_uninvite"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->G1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType$a;->b(Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_join_from_oob_link"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->E1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType$a;->b(Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_join"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinType$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamJoinType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->D1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinType$a;->b(Lcom/dropbox/core/v2/teamlog/SfTeamJoinType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_invite_change_role"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->C1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType$a;->b(Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_invite"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteType$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamInviteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->B1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfTeamInviteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteType$a;->b(Lcom/dropbox/core/v2/teamlog/SfTeamInviteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_grant_access"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->A1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType$a;->b(Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_invite_group"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfInviteGroupType$a;->b:Lcom/dropbox/core/v2/teamlog/SfInviteGroupType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->z1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfInviteGroupType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfInviteGroupType$a;->b(Lcom/dropbox/core/v2/teamlog/SfInviteGroupType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_fb_uninvite"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfFbUninviteType$a;->b:Lcom/dropbox/core/v2/teamlog/SfFbUninviteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->y1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfFbUninviteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfFbUninviteType$a;->b(Lcom/dropbox/core/v2/teamlog/SfFbUninviteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_fb_invite_change_role"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->x1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType$a;->b(Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_fb_invite"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteType$a;->b:Lcom/dropbox/core/v2/teamlog/SfFbInviteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->w1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfFbInviteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfFbInviteType$a;->b(Lcom/dropbox/core/v2/teamlog/SfFbInviteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_external_invite_warn"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType$a;->b:Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->v1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType$a;->b(Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_da
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_allow_non_members_to_view_shared_links"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType$a;->b:Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->t1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType$a;->b(Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_db
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_add_group"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfAddGroupType$a;->b:Lcom/dropbox/core/v2/teamlog/SfAddGroupType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->s1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfAddGroupType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfAddGroupType$a;->b(Lcom/dropbox/core/v2/teamlog/SfAddGroupType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_dc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "open_note_shared"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType$a;->b:Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->r1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType$a;->b(Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_dd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_share_receive"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType$a;->b:Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->q1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType$a;->b(Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_de
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_shared"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteSharedType$a;->b:Lcom/dropbox/core/v2/teamlog/NoteSharedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->p1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoteSharedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteSharedType$a;->b(Lcom/dropbox/core/v2/teamlog/NoteSharedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_df
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_acl_team_link"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType$a;->b:Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->o1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType$a;->b(Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_acl_link"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteAclLinkType$a;->b:Lcom/dropbox/core/v2/teamlog/NoteAclLinkType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->n1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoteAclLinkType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclLinkType$a;->b(Lcom/dropbox/core/v2/teamlog/NoteAclLinkType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_acl_invite_only"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType$a;->b:Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->m1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType$a;->b(Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_transfers_transfer_view"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewType$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->l1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewType$a;->b(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_transfers_transfer_send"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendType$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->k1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendType$a;->b(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_transfers_transfer_download"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadType$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->h1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadType$a;->b(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_transfers_transfer_delete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->g1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteType$a;->b(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_transfers_file_add"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddType$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->f1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddType$a;->b(Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "collection_share"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CollectionShareType$a;->b:Lcom/dropbox/core/v2/teamlog/CollectionShareType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->e1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/CollectionShareType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/CollectionShareType$a;->b(Lcom/dropbox/core/v2/teamlog/CollectionShareType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_activity_create_report_fail"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->d1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_activity_create_report"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType$a;->b:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->c1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType$a;->b(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ea
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_create_admin_privilege_report"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->b1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType$a;->b(Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_eb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_admin_export_start"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->a1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ec
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "outdated_link_view_report_failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedType$a;->b:Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Z0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedType$a;->b(Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ed
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "outdated_link_view_create_report"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportType$a;->b:Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Y0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportType$a;->b(Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ee
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_password_link_view_report_failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedType$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->W0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedType$a;->b(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ef
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_password_link_view_create_report"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportType$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->V0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportType$a;->b(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_password_link_gen_report_failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedType$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->U0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedType$a;->b(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_password_link_gen_create_report"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportType$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->T0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportType$a;->b(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_expiration_link_gen_report_failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedType$a;->b:Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->S0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedType$a;->b(Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_expiration_link_gen_create_report"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportType$a;->b:Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->R0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportType$a;->b(Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "external_sharing_report_failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedType$a;->b:Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Q0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedType$a;->b(Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "external_sharing_create_report"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportType$a;->b:Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->P0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportType$a;->b(Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "export_members_report_fail"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailType$a;->b:Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->O0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailType$a;->b(Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "export_members_report"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExportMembersReportType$a;->b:Lcom/dropbox/core/v2/teamlog/ExportMembersReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->N0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ExportMembersReportType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExportMembersReportType$a;->b(Lcom/dropbox/core/v2/teamlog/ExportMembersReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_create_usage_report"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->L0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType$a;->b(Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_create_exceptions_report"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->K0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType$a;->b(Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_fa
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_reset_all"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordResetAllType$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordResetAllType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->J0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PasswordResetAllType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordResetAllType$a;->b(Lcom/dropbox/core/v2/teamlog/PasswordResetAllType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_fb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_reset"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordResetType$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordResetType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->I0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PasswordResetType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordResetType$a;->b(Lcom/dropbox/core/v2/teamlog/PasswordResetType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_fc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_change"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordChangeType$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordChangeType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->H0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PasswordChangeType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordChangeType$a;->b(Lcom/dropbox/core/v2/teamlog/PasswordChangeType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_fd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_published_link_view"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->G0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_fe
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_published_link_disabled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->F0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ff
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_published_link_create"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->E0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_100
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_published_link_change_permission"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->D0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_101
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_team_invite"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->C0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_102
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_followed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->A0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_103
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_deleted"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->z0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_104
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_change_subscription"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->y0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_105
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_external_view_forbid"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->x0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_106
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_external_view_default_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->w0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_107
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_external_view_allow"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->v0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_108
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_view"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocViewType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocViewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->u0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocViewType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocViewType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocViewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_109
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_untrashed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->t0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_unresolve_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->s0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_trashed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->r0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_team_invite"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->p0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_slack_share"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->o0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_revert"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocRevertType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocRevertType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->n0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocRevertType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocRevertType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocRevertType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_resolve_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->m0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_110
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_request_access"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->l0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_111
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_ownership_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->k0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_112
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_mention"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocMentionType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocMentionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->j0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocMentionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocMentionType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocMentionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_113
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_followed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->i0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_114
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_edit_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->h0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_115
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_edit"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocEditType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->g0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocEditType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocEditType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_116
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_download"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->e0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_117
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_delete_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->d0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_118
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_deleted"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->c0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_119
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_change_subscription"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->b0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_change_sharing_policy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->a0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_change_member_role"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Z(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_add_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Y(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_restore"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->X(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_rename"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRenameType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRenameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->W(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentRenameType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRenameType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentRenameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_remove_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->V(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_120
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_remove_from_folder"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->T(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_121
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_permanently_delete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->S(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_122
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_create"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->R(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentCreateType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentCreateType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_123
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_archive"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Q(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_124
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_add_to_folder"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->P(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_125
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_add_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->O(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_126
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_reorder_section"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderReorderSectionType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderReorderSectionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->N(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/BinderReorderSectionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderReorderSectionType$a;->b(Lcom/dropbox/core/v2/teamlog/BinderReorderSectionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_127
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_reorder_page"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderReorderPageType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderReorderPageType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->M(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/BinderReorderPageType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderReorderPageType$a;->b(Lcom/dropbox/core/v2/teamlog/BinderReorderPageType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_128
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_rename_section"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRenameSectionType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRenameSectionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->L(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/BinderRenameSectionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderRenameSectionType$a;->b(Lcom/dropbox/core/v2/teamlog/BinderRenameSectionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_129
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_rename_page"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRenamePageType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRenamePageType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->K(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/BinderRenamePageType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderRenamePageType$a;->b(Lcom/dropbox/core/v2/teamlog/BinderRenamePageType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_remove_section"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->I(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionType$a;->b(Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_remove_page"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRemovePageType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRemovePageType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->H(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/BinderRemovePageType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderRemovePageType$a;->b(Lcom/dropbox/core/v2/teamlog/BinderRemovePageType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_add_section"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderAddSectionType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderAddSectionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->G(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/BinderAddSectionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderAddSectionType$a;->b(Lcom/dropbox/core/v2/teamlog/BinderAddSectionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_add_page"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderAddPageType$a;->b:Lcom/dropbox/core/v2/teamlog/BinderAddPageType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->F(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/BinderAddPageType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderAddPageType$a;->b(Lcom/dropbox/core/v2/teamlog/BinderAddPageType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "secondary_mails_policy_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->E(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "secondary_email_verified"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedType$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->D(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedType$a;->b(Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_130
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "secondary_email_deleted"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedType$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->C(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedType$a;->b(Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_131
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "pending_secondary_email_added"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedType$a;->b:Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->B(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedType$a;->b(Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_132
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_transfer_account_contents"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->A(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_133
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_suggest"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSuggestType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSuggestType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->z(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSuggestType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSuggestType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_134
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_remove_custom_quota"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->x(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_135
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_status"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->w(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_136
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_custom_quota"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->v(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_137
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_add_custom_quota"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->u(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_138
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_set_profile_photo"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->t(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_139
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_remove_external_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->s(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_permanently_delete_account_contents"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->r(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_delete_profile_photo"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->q(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_delete_manual_contacts"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->p(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_status"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->o(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_name"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeNameType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeNameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->m(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberChangeNameType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeNameType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberChangeNameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_membership_type"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->l(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_140
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_external_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->k(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_141
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_email"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->j(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_142
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_admin_role"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->i(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_143
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_add_name"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberAddNameType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberAddNameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->h(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberAddNameType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberAddNameType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberAddNameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_144
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_add_external_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdType$a;->b:Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->g(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdType$a;->b(Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_145
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "delete_team_invite_link"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkType$a;->b:Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->f(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkType$a;->b(Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_146
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "create_team_invite_link"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkType$a;->b:Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->e(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkType$a;->b(Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_147
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoErrorType$a;->b:Lcom/dropbox/core/v2/teamlog/SsoErrorType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->d(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoErrorType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoErrorType$a;->b(Lcom/dropbox/core/v2/teamlog/SsoErrorType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_148
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sign_in_as_session_start"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType$a;->b:Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->l7(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType$a;->b(Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_149
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sign_in_as_session_end"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType$a;->b:Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->k7(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType$a;->b(Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "reseller_support_session_start"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType$a;->b:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->j7(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType$a;->b(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "reseller_support_session_end"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType$a;->b:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->i7(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType$a;->b(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "logout"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LogoutType$a;->b:Lcom/dropbox/core/v2/teamlog/LogoutType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->h7(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LogoutType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LogoutType$a;->b(Lcom/dropbox/core/v2/teamlog/LogoutType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "login_success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LoginSuccessType$a;->b:Lcom/dropbox/core/v2/teamlog/LoginSuccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->g7(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LoginSuccessType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LoginSuccessType$a;->b(Lcom/dropbox/core/v2/teamlog/LoginSuccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "login_fail"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LoginFailType$a;->b:Lcom/dropbox/core/v2/teamlog/LoginFailType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->f7(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LoginFailType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LoginFailType$a;->b(Lcom/dropbox/core/v2/teamlog/LoginFailType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "guest_admin_signed_out_via_trusted_teams"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsType$a;->b:Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->e7(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsType$a;->b(Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_150
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "guest_admin_signed_in_via_trusted_teams"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsType$a;->b:Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->d7(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsType$a;->b(Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_151
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmErrorType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmErrorType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->c7(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmErrorType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmErrorType$a;->b(Lcom/dropbox/core/v2/teamlog/EmmErrorType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_152
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_lock_or_unlocked"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedType$a;->b:Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->a7(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedType$a;->b(Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_153
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_report_a_hold"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Z6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldType$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_154
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_remove_members"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Y6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersType$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_155
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_release_a_hold"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->X6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldType$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_156
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_export_removed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->W6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedType$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_157
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_export_downloaded"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->V6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedType$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_158
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_export_cancelled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->U6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledType$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_159
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_export_a_hold"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->T6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldType$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_change_hold_name"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->S6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameType$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_change_hold_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->R6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsType$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_add_members"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->P6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersType$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_activate_a_hold"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldType$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->O6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldType$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_rename"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupRenameType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupRenameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->N6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupRenameType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupRenameType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupRenameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_remove_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->M6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_160
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_remove_external_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->L6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_161
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_moved"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupMovedType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupMovedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->K6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupMovedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupMovedType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupMovedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_162
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_join_policy_updated"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->J6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_163
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_description_updated"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->I6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_164
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_delete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupDeleteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->H6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupDeleteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupDeleteType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupDeleteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_165
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_create"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->G6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupCreateType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupCreateType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_166
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_change_member_role"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->E6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_167
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_change_management_type"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->D6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_168
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_change_external_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->C6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_169
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_add_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupAddMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->B6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupAddMemberType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddMemberType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupAddMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_add_external_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType$a;->b:Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->A6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType$a;->b(Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_receive_file"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->z6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_delete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestDeleteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->y6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestDeleteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestDeleteType$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestDeleteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_create"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->x6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestCreateType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCreateType$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_close"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestCloseType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->w6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestCloseType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseType$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestCloseType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_change"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestChangeType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestChangeType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->v6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestChangeType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestChangeType$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestChangeType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_170
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "rewind_folder"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/RewindFolderType$a;->b:Lcom/dropbox/core/v2/teamlog/RewindFolderType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->t6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/RewindFolderType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/RewindFolderType$a;->b(Lcom/dropbox/core/v2/teamlog/RewindFolderType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_171
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "folder_overview_item_unpinned"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedType$a;->b:Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->s6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedType$a;->b(Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_172
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "folder_overview_item_pinned"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedType$a;->b:Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->r6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedType$a;->b(Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_173
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "folder_overview_description_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->q6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_174
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_save_copy_reference"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType$a;->b:Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->p6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType$a;->b(Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_175
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_rollback_changes"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->o6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType$a;->b(Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_176
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_revert"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRevertType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRevertType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->n6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRevertType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRevertType$a;->b(Lcom/dropbox/core/v2/teamlog/FileRevertType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_177
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_restore"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRestoreType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRestoreType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->m6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRestoreType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRestoreType$a;->b(Lcom/dropbox/core/v2/teamlog/FileRestoreType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_178
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_rename"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRenameType$a;->b:Lcom/dropbox/core/v2/teamlog/FileRenameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->l6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRenameType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRenameType$a;->b(Lcom/dropbox/core/v2/teamlog/FileRenameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_179
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_preview"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FilePreviewType$a;->b:Lcom/dropbox/core/v2/teamlog/FilePreviewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->k6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FilePreviewType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FilePreviewType$a;->b(Lcom/dropbox/core/v2/teamlog/FilePreviewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_permanently_delete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->i6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType$a;->b(Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_move"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileMoveType$a;->b:Lcom/dropbox/core/v2/teamlog/FileMoveType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->h6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileMoveType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileMoveType$a;->b(Lcom/dropbox/core/v2/teamlog/FileMoveType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_locking_lock_status_changed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedType$a;->b:Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->g6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedType$a;->b(Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_get_copy_reference"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType$a;->b:Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->f6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType$a;->b(Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_edit"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileEditType$a;->b:Lcom/dropbox/core/v2/teamlog/FileEditType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->e6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileEditType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileEditType$a;->b(Lcom/dropbox/core/v2/teamlog/FileEditType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_download"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileDownloadType$a;->b:Lcom/dropbox/core/v2/teamlog/FileDownloadType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->d6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileDownloadType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileDownloadType$a;->b(Lcom/dropbox/core/v2/teamlog/FileDownloadType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_180
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_delete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileDeleteType$a;->b:Lcom/dropbox/core/v2/teamlog/FileDeleteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->c6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileDeleteType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileDeleteType$a;->b(Lcom/dropbox/core/v2/teamlog/FileDeleteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_181
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_copy"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileCopyType$a;->b:Lcom/dropbox/core/v2/teamlog/FileCopyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->T5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileCopyType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileCopyType$a;->b(Lcom/dropbox/core/v2/teamlog/FileCopyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_182
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_add"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileAddType$a;->b:Lcom/dropbox/core/v2/teamlog/FileAddType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->I5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileAddType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileAddType$a;->b(Lcom/dropbox/core/v2/teamlog/FileAddType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_183
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "create_folder"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CreateFolderType$a;->b:Lcom/dropbox/core/v2/teamlog/CreateFolderType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->x5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/CreateFolderType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/CreateFolderType$a;->b(Lcom/dropbox/core/v2/teamlog/CreateFolderType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_184
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "enabled_domain_invites"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType$a;->b:Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->l5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType$a;->b(Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_185
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_verification_remove_domain"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->a5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType$a;->b(Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_186
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_verification_add_domain_success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->P4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType$a;->b(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_187
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_verification_add_domain_fail"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->E4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType$a;->b(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_188
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_set_invite_new_user_pref_to_yes"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->t4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType$a;->b(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_189
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_set_invite_new_user_pref_to_no"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->i4(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType$a;->b(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_request_to_join_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->X3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_email_existing_users"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->M3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType$a;->b(Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_decline_request_to_join_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->B3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_approve_request_to_join_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->q3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "disabled_domain_invites"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType$a;->b:Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->e3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType$a;->b(Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_relinquish_account"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->T2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType$a;->b(Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_190
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_notification_emails_sent"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->I2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType$a;->b(Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_191
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_migrate_account"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->x2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType$a;->b(Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_192
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_change_availability"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->m2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType$a;->b(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_193
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_refresh_auth_token"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType$a;->b:Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->b2(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType$a;->b(Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_194
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_unlink"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Q1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_195
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_management_enabled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->F1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_196
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_management_disabled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->u1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_197
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_link_success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->j1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_198
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_link_fail"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->X0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_199
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_delete_on_unlink_success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->M0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_delete_on_unlink_fail"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->B0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_change_ip_web"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->q0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_change_ip_mobile"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->f0(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_change_ip_desktop"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->U(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_unresolve_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->J(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_unlike_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->y(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_resolve_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileResolveCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileResolveCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->n(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileResolveCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileResolveCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/FileResolveCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_like_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileLikeCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileLikeCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->c(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileLikeCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileLikeCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/FileLikeCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_edit_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileEditCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileEditCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->b7(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileEditCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileEditCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/FileEditCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_delete_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Q6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_change_comment_subscription"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType$a;->b:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->F6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType$a;->b(Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_add_comment"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileAddCommentType$a;->b:Lcom/dropbox/core/v2/teamlog/FileAddCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->u6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileAddCommentType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileAddCommentType$a;->b(Lcom/dropbox/core/v2/teamlog/FileAddCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "integration_disconnected"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedType$a;->b:Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->j6(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedType$a;->b(Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1a7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "integration_connected"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/IntegrationConnectedType$a;->b:Lcom/dropbox/core/v2/teamlog/IntegrationConnectedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->w5(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/IntegrationConnectedType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/IntegrationConnectedType$a;->b(Lcom/dropbox/core/v2/teamlog/IntegrationConnectedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1a8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_unlink_user"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType$a;->b:Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->p3(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType$a;->b(Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1a9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_unlink_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->i1(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1aa
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_link_user"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppLinkUserType$a;->b:Lcom/dropbox/core/v2/teamlog/AppLinkUserType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->b(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AppLinkUserType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppLinkUserType$a;->b(Lcom/dropbox/core/v2/teamlog/AppLinkUserType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1ab
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_link_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppLinkTeamType$a;->b:Lcom/dropbox/core/v2/teamlog/AppLinkTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->a(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AppLinkTeamType;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppLinkTeamType$a;->b(Lcom/dropbox/core/v2/teamlog/AppLinkTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1ab
        :pswitch_1aa
        :pswitch_1a9
        :pswitch_1a8
        :pswitch_1a7
        :pswitch_1a6
        :pswitch_1a5
        :pswitch_1a4
        :pswitch_1a3
        :pswitch_1a2
        :pswitch_1a1
        :pswitch_1a0
        :pswitch_19f
        :pswitch_19e
        :pswitch_19d
        :pswitch_19c
        :pswitch_19b
        :pswitch_19a
        :pswitch_199
        :pswitch_198
        :pswitch_197
        :pswitch_196
        :pswitch_195
        :pswitch_194
        :pswitch_193
        :pswitch_192
        :pswitch_191
        :pswitch_190
        :pswitch_18f
        :pswitch_18e
        :pswitch_18d
        :pswitch_18c
        :pswitch_18b
        :pswitch_18a
        :pswitch_189
        :pswitch_188
        :pswitch_187
        :pswitch_186
        :pswitch_185
        :pswitch_184
        :pswitch_183
        :pswitch_182
        :pswitch_181
        :pswitch_180
        :pswitch_17f
        :pswitch_17e
        :pswitch_17d
        :pswitch_17c
        :pswitch_17b
        :pswitch_17a
        :pswitch_179
        :pswitch_178
        :pswitch_177
        :pswitch_176
        :pswitch_175
        :pswitch_174
        :pswitch_173
        :pswitch_172
        :pswitch_171
        :pswitch_170
        :pswitch_16f
        :pswitch_16e
        :pswitch_16d
        :pswitch_16c
        :pswitch_16b
        :pswitch_16a
        :pswitch_169
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
        :pswitch_158
        :pswitch_157
        :pswitch_156
        :pswitch_155
        :pswitch_154
        :pswitch_153
        :pswitch_152
        :pswitch_151
        :pswitch_150
        :pswitch_14f
        :pswitch_14e
        :pswitch_14d
        :pswitch_14c
        :pswitch_14b
        :pswitch_14a
        :pswitch_149
        :pswitch_148
        :pswitch_147
        :pswitch_146
        :pswitch_145
        :pswitch_144
        :pswitch_143
        :pswitch_142
        :pswitch_141
        :pswitch_140
        :pswitch_13f
        :pswitch_13e
        :pswitch_13d
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/EventType$b;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    check-cast p1, Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/EventType$b;->b(Lcom/dropbox/core/v2/teamlog/EventType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

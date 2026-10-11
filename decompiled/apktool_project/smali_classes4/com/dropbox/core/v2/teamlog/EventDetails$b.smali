.class public Lcom/dropbox/core/v2/teamlog/EventDetails$b;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/EventDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/EventDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/dropbox/core/v2/teamlog/EventDetails$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventDetails$b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails$b;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$b;->b:Lcom/dropbox/core/v2/teamlog/EventDetails$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/EventDetails;
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
    if-eqz p0, :cond_1af

    const-string v2, "app_link_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->appLinkTeamDetails(Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    const-string v2, "app_link_user_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->appLinkUserDetails(Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_2
    const-string v2, "app_unlink_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->appUnlinkTeamDetails(Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_3
    const-string v2, "app_unlink_user_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->appUnlinkUserDetails(Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_4
    const-string v2, "integration_connected_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/IntegrationConnectedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/IntegrationConnectedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/IntegrationConnectedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/IntegrationConnectedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->integrationConnectedDetails(Lcom/dropbox/core/v2/teamlog/IntegrationConnectedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_5
    const-string v2, "integration_disconnected_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->integrationDisconnectedDetails(Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_6
    const-string v2, "file_add_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileAddCommentDetails(Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_7
    const-string v2, "file_change_comment_subscription_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileChangeCommentSubscriptionDetails(Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_8
    const-string v2, "file_delete_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileDeleteCommentDetails(Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_9
    const-string v2, "file_edit_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileEditCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileEditCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileEditCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileEditCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileEditCommentDetails(Lcom/dropbox/core/v2/teamlog/FileEditCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_a
    const-string v2, "file_like_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileLikeCommentDetails(Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_b
    const-string v2, "file_resolve_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileResolveCommentDetails(Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_c
    const-string v2, "file_unlike_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileUnlikeCommentDetails(Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_d
    const-string v2, "file_unresolve_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileUnresolveCommentDetails(Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_e
    const-string v2, "device_change_ip_desktop_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceChangeIpDesktopDetails(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_f
    const-string v2, "device_change_ip_mobile_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceChangeIpMobileDetails(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_10
    const-string v2, "device_change_ip_web_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceChangeIpWebDetails(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_11
    const-string v2, "device_delete_on_unlink_fail_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceDeleteOnUnlinkFailDetails(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_12
    const-string v2, "device_delete_on_unlink_success_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceDeleteOnUnlinkSuccessDetails(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_13
    const-string v2, "device_link_fail_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceLinkFailDetails(Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_14
    const-string v2, "device_link_success_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceLinkSuccessDetails(Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_15
    const-string v2, "device_management_disabled_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceManagementDisabledDetails(Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_16
    const-string v2, "device_management_enabled_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceManagementEnabledDetails(Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_17
    const-string v2, "device_unlink_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceUnlinkDetails(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_18
    const-string v2, "emm_refresh_auth_token_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmRefreshAuthTokenDetails(Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_19
    const-string v2, "account_capture_change_availability_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureChangeAvailabilityDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a
    const-string v2, "account_capture_migrate_account_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureMigrateAccountDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1b
    const-string v2, "account_capture_notification_emails_sent_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureNotificationEmailsSentDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1c
    const-string v2, "account_capture_relinquish_account_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureRelinquishAccountDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1d
    const-string v2, "disabled_domain_invites_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->disabledDomainInvitesDetails(Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1e
    const-string v2, "domain_invites_approve_request_to_join_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesApproveRequestToJoinTeamDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1f
    const-string v2, "domain_invites_decline_request_to_join_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesDeclineRequestToJoinTeamDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_20
    const-string v2, "domain_invites_email_existing_users_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesEmailExistingUsersDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_21
    const-string v2, "domain_invites_request_to_join_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesRequestToJoinTeamDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_22
    const-string v2, "domain_invites_set_invite_new_user_pref_to_no_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesSetInviteNewUserPrefToNoDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_23
    const-string v2, "domain_invites_set_invite_new_user_pref_to_yes_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesSetInviteNewUserPrefToYesDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_24
    const-string v2, "domain_verification_add_domain_fail_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainVerificationAddDomainFailDetails(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_25
    const-string v2, "domain_verification_add_domain_success_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainVerificationAddDomainSuccessDetails(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_26
    const-string v2, "domain_verification_remove_domain_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainVerificationRemoveDomainDetails(Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_27
    const-string v2, "enabled_domain_invites_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->enabledDomainInvitesDetails(Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_28
    const-string v2, "create_folder_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/CreateFolderDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->createFolderDetails(Lcom/dropbox/core/v2/teamlog/CreateFolderDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_29
    const-string v2, "file_add_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileAddDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileAddDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileAddDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileAddDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileAddDetails(Lcom/dropbox/core/v2/teamlog/FileAddDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_2a
    const-string v2, "file_copy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileCopyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileCopyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileCopyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileCopyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileCopyDetails(Lcom/dropbox/core/v2/teamlog/FileCopyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_2b
    const-string v2, "file_delete_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileDeleteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileDeleteDetails(Lcom/dropbox/core/v2/teamlog/FileDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_2c
    const-string v2, "file_download_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileDownloadDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileDownloadDetails(Lcom/dropbox/core/v2/teamlog/FileDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_2d
    const-string v2, "file_edit_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileEditDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileEditDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileEditDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileEditDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileEditDetails(Lcom/dropbox/core/v2/teamlog/FileEditDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_2e
    const-string v2, "file_get_copy_reference_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileGetCopyReferenceDetails(Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_2f
    const-string v2, "file_locking_lock_status_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileLockingLockStatusChangedDetails(Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_30
    const-string v2, "file_move_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileMoveDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileMoveDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileMoveDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileMoveDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileMoveDetails(Lcom/dropbox/core/v2/teamlog/FileMoveDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_31
    const-string v2, "file_permanently_delete_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->filePermanentlyDeleteDetails(Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_32
    const-string v2, "file_preview_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FilePreviewDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->filePreviewDetails(Lcom/dropbox/core/v2/teamlog/FilePreviewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_33
    const-string v2, "file_rename_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRenameDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRenameDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRenameDetails(Lcom/dropbox/core/v2/teamlog/FileRenameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_34
    const-string v2, "file_restore_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRestoreDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRestoreDetails(Lcom/dropbox/core/v2/teamlog/FileRestoreDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_35
    const-string v2, "file_revert_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRevertDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRevertDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRevertDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRevertDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRevertDetails(Lcom/dropbox/core/v2/teamlog/FileRevertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_36
    const-string v2, "file_rollback_changes_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRollbackChangesDetails(Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_37
    const-string v2, "file_save_copy_reference_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileSaveCopyReferenceDetails(Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_38
    const-string v2, "folder_overview_description_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->folderOverviewDescriptionChangedDetails(Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_39
    const-string v2, "folder_overview_item_pinned_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->folderOverviewItemPinnedDetails(Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_3a
    const-string v2, "folder_overview_item_unpinned_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->folderOverviewItemUnpinnedDetails(Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_3b
    const-string v2, "rewind_folder_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/RewindFolderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/RewindFolderDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/RewindFolderDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/RewindFolderDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->rewindFolderDetails(Lcom/dropbox/core/v2/teamlog/RewindFolderDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_3c
    const-string v2, "file_request_change_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestChangeDetails(Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_3d
    const-string v2, "file_request_close_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestCloseDetails(Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_3e
    const-string v2, "file_request_create_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestCreateDetails(Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_3f
    const-string v2, "file_request_delete_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestDeleteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestDeleteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestDeleteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestDeleteDetails(Lcom/dropbox/core/v2/teamlog/FileRequestDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_40
    const-string v2, "file_request_receive_file_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestReceiveFileDetails(Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_41
    const-string v2, "group_add_external_id_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupAddExternalIdDetails(Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_42
    const-string v2, "group_add_member_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupAddMemberDetails(Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_43
    const-string v2, "group_change_external_id_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupChangeExternalIdDetails(Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_44
    const-string v2, "group_change_management_type_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupChangeManagementTypeDetails(Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_45
    const-string v2, "group_change_member_role_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupChangeMemberRoleDetails(Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_46
    const-string v2, "group_create_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupCreateDetails(Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_47
    const-string v2, "group_delete_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupDeleteDetails(Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_48
    const-string v2, "group_description_updated_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupDescriptionUpdatedDetails(Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_49
    const-string v2, "group_join_policy_updated_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupJoinPolicyUpdatedDetails(Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_4a
    const-string v2, "group_moved_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupMovedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupMovedDetails(Lcom/dropbox/core/v2/teamlog/GroupMovedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_4b
    const-string v2, "group_remove_external_id_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupRemoveExternalIdDetails(Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_4c
    const-string v2, "group_remove_member_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupRemoveMemberDetails(Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_4d
    const-string v2, "group_rename_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupRenameDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupRenameDetails(Lcom/dropbox/core/v2/teamlog/GroupRenameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_4e
    const-string v2, "legal_holds_activate_a_hold_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->legalHoldsActivateAHoldDetails(Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_4f
    const-string v2, "legal_holds_add_members_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->legalHoldsAddMembersDetails(Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_50
    const-string v2, "legal_holds_change_hold_details_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->legalHoldsChangeHoldDetailsDetails(Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_51
    const-string v2, "legal_holds_change_hold_name_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->legalHoldsChangeHoldNameDetails(Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_52
    const-string v2, "legal_holds_export_a_hold_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->legalHoldsExportAHoldDetails(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_53
    const-string v2, "legal_holds_export_cancelled_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->legalHoldsExportCancelledDetails(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_54
    const-string v2, "legal_holds_export_downloaded_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->legalHoldsExportDownloadedDetails(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_55
    const-string v2, "legal_holds_export_removed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->legalHoldsExportRemovedDetails(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_56
    const-string v2, "legal_holds_release_a_hold_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->legalHoldsReleaseAHoldDetails(Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_57
    const-string v2, "legal_holds_remove_members_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->legalHoldsRemoveMembersDetails(Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_58
    const-string v2, "legal_holds_report_a_hold_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->legalHoldsReportAHoldDetails(Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_59
    const-string v2, "account_lock_or_unlocked_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountLockOrUnlockedDetails(Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_5a
    const-string v2, "emm_error_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmErrorDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmErrorDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmErrorDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmErrorDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmErrorDetails(Lcom/dropbox/core/v2/teamlog/EmmErrorDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_5b
    const-string v2, "guest_admin_signed_in_via_trusted_teams_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->guestAdminSignedInViaTrustedTeamsDetails(Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_5c
    const-string v2, "guest_admin_signed_out_via_trusted_teams_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->guestAdminSignedOutViaTrustedTeamsDetails(Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_5d
    const-string v2, "login_fail_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LoginFailDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->loginFailDetails(Lcom/dropbox/core/v2/teamlog/LoginFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_5e
    const-string v2, "login_success_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->loginSuccessDetails(Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_5f
    const-string v2, "logout_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LogoutDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LogoutDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/LogoutDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LogoutDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->logoutDetails(Lcom/dropbox/core/v2/teamlog/LogoutDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_60
    const-string v2, "reseller_support_session_end_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->resellerSupportSessionEndDetails(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_61
    const-string v2, "reseller_support_session_start_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->resellerSupportSessionStartDetails(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_62
    const-string v2, "sign_in_as_session_end_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->signInAsSessionEndDetails(Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_63
    const-string v2, "sign_in_as_session_start_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->signInAsSessionStartDetails(Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_64
    const-string v2, "sso_error_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoErrorDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoErrorDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoErrorDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoErrorDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoErrorDetails(Lcom/dropbox/core/v2/teamlog/SsoErrorDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_65
    const-string v2, "create_team_invite_link_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkDetails$a;->b:Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->createTeamInviteLinkDetails(Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_66
    const-string v2, "delete_team_invite_link_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deleteTeamInviteLinkDetails(Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_67
    const-string v2, "member_add_external_id_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberAddExternalIdDetails(Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_68
    const-string v2, "member_add_name_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberAddNameDetails(Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_69
    const-string v2, "member_change_admin_role_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeAdminRoleDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_6a
    const-string v2, "member_change_email_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeEmailDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_6b
    const-string v2, "member_change_external_id_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeExternalIdDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_6c
    const-string v2, "member_change_membership_type_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeMembershipTypeDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_6d
    const-string v2, "member_change_name_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeNameDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_6e
    const-string v2, "member_change_status_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_6f
    const-string v2, "member_delete_manual_contacts_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberDeleteManualContactsDetails(Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_70
    const-string v2, "member_delete_profile_photo_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberDeleteProfilePhotoDetails(Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_71
    const-string v2, "member_permanently_delete_account_contents_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberPermanentlyDeleteAccountContentsDetails(Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_72
    const-string v2, "member_remove_external_id_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberRemoveExternalIdDetails(Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_73
    const-string v2, "member_set_profile_photo_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSetProfilePhotoDetails(Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_74
    const-string v2, "member_space_limits_add_custom_quota_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsAddCustomQuotaDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_75
    const-string v2, "member_space_limits_change_custom_quota_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsChangeCustomQuotaDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_76
    const-string v2, "member_space_limits_change_status_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_77
    const-string v2, "member_space_limits_remove_custom_quota_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsRemoveCustomQuotaDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_78
    const-string v2, "member_suggest_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSuggestDetails(Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_79
    const-string v2, "member_transfer_account_contents_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberTransferAccountContentsDetails(Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_7a
    const-string v2, "pending_secondary_email_added_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->pendingSecondaryEmailAddedDetails(Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_7b
    const-string v2, "secondary_email_deleted_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->secondaryEmailDeletedDetails(Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_7c
    const-string v2, "secondary_email_verified_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->secondaryEmailVerifiedDetails(Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_7d
    const-string v2, "secondary_mails_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->secondaryMailsPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_7e
    const-string v2, "binder_add_page_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderAddPageDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderAddPageDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderAddPageDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderAddPageDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->binderAddPageDetails(Lcom/dropbox/core/v2/teamlog/BinderAddPageDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_7f
    const-string v2, "binder_add_section_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderAddSectionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderAddSectionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderAddSectionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderAddSectionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->binderAddSectionDetails(Lcom/dropbox/core/v2/teamlog/BinderAddSectionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_80
    const-string v2, "binder_remove_page_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRemovePageDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRemovePageDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderRemovePageDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderRemovePageDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->binderRemovePageDetails(Lcom/dropbox/core/v2/teamlog/BinderRemovePageDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_81
    const-string v2, "binder_remove_section_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->binderRemoveSectionDetails(Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_82
    const-string v2, "binder_rename_page_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRenamePageDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRenamePageDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderRenamePageDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderRenamePageDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->binderRenamePageDetails(Lcom/dropbox/core/v2/teamlog/BinderRenamePageDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_83
    const-string v2, "binder_rename_section_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRenameSectionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRenameSectionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderRenameSectionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderRenameSectionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->binderRenameSectionDetails(Lcom/dropbox/core/v2/teamlog/BinderRenameSectionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_84
    const-string v2, "binder_reorder_page_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderReorderPageDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderReorderPageDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderReorderPageDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderReorderPageDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->binderReorderPageDetails(Lcom/dropbox/core/v2/teamlog/BinderReorderPageDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_85
    const-string v2, "binder_reorder_section_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderReorderSectionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderReorderSectionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/BinderReorderSectionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/BinderReorderSectionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->binderReorderSectionDetails(Lcom/dropbox/core/v2/teamlog/BinderReorderSectionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_86
    const-string v2, "paper_content_add_member_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentAddMemberDetails(Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_87
    const-string v2, "paper_content_add_to_folder_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentAddToFolderDetails(Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_88
    const-string v2, "paper_content_archive_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentArchiveDetails(Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_89
    const-string v2, "paper_content_create_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentCreateDetails(Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_8a
    const-string v2, "paper_content_permanently_delete_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentPermanentlyDeleteDetails(Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_8b
    const-string v2, "paper_content_remove_from_folder_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentRemoveFromFolderDetails(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_8c
    const-string v2, "paper_content_remove_member_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentRemoveMemberDetails(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_8d
    const-string v2, "paper_content_rename_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentRenameDetails(Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_8e
    const-string v2, "paper_content_restore_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentRestoreDetails(Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_8f
    const-string v2, "paper_doc_add_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocAddCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_90
    const-string v2, "paper_doc_change_member_role_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocChangeMemberRoleDetails(Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_91
    const-string v2, "paper_doc_change_sharing_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocChangeSharingPolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_92
    const-string v2, "paper_doc_change_subscription_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocChangeSubscriptionDetails(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_93
    const-string v2, "paper_doc_deleted_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocDeletedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_94
    const-string v2, "paper_doc_delete_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocDeleteCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_95
    const-string v2, "paper_doc_download_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocDownloadDetails(Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_96
    const-string v2, "paper_doc_edit_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocEditDetails(Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_97
    const-string v2, "paper_doc_edit_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocEditCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_98
    const-string v2, "paper_doc_followed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocFollowedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_99
    const-string v2, "paper_doc_mention_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocMentionDetails(Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_9a
    const-string v2, "paper_doc_ownership_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocOwnershipChangedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_9b
    const-string v2, "paper_doc_request_access_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocRequestAccessDetails(Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_9c
    const-string v2, "paper_doc_resolve_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocResolveCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_9d
    const-string v2, "paper_doc_revert_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocRevertDetails(Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_9e
    const-string v2, "paper_doc_slack_share_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocSlackShareDetails(Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_9f
    const-string v2, "paper_doc_team_invite_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocTeamInviteDetails(Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_a0
    const-string v2, "paper_doc_trashed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocTrashedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_a1
    const-string v2, "paper_doc_unresolve_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocUnresolveCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_a2
    const-string v2, "paper_doc_untrashed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocUntrashedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_a3
    const-string v2, "paper_doc_view_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocViewDetails(Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_a4
    const-string v2, "paper_external_view_allow_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperExternalViewAllowDetails(Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_a5
    const-string v2, "paper_external_view_default_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperExternalViewDefaultTeamDetails(Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_a6
    const-string v2, "paper_external_view_forbid_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperExternalViewForbidDetails(Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_a7
    const-string v2, "paper_folder_change_subscription_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperFolderChangeSubscriptionDetails(Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_a8
    const-string v2, "paper_folder_deleted_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperFolderDeletedDetails(Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_a9
    const-string v2, "paper_folder_followed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperFolderFollowedDetails(Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_aa
    const-string v2, "paper_folder_team_invite_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperFolderTeamInviteDetails(Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ab
    const-string v2, "paper_published_link_change_permission_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperPublishedLinkChangePermissionDetails(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ac
    const-string v2, "paper_published_link_create_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperPublishedLinkCreateDetails(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ad
    const-string v2, "paper_published_link_disabled_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperPublishedLinkDisabledDetails(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ae
    const-string v2, "paper_published_link_view_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperPublishedLinkViewDetails(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_af
    const-string v2, "password_change_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->passwordChangeDetails(Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_b0
    const-string v2, "password_reset_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordResetDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->passwordResetDetails(Lcom/dropbox/core/v2/teamlog/PasswordResetDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_b1
    const-string v2, "password_reset_all_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->passwordResetAllDetails(Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_b2
    const-string v2, "emm_create_exceptions_report_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmCreateExceptionsReportDetails(Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_b3
    const-string v2, "emm_create_usage_report_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmCreateUsageReportDetails(Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_b4
    const-string v2, "export_members_report_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->exportMembersReportDetails(Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_b5
    const-string v2, "export_members_report_fail_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->exportMembersReportFailDetails(Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_b6
    const-string v2, "external_sharing_create_report_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->externalSharingCreateReportDetails(Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_b7
    const-string v2, "external_sharing_report_failed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->externalSharingReportFailedDetails(Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_b8
    const-string v2, "no_expiration_link_gen_create_report_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noExpirationLinkGenCreateReportDetails(Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_b9
    const-string v2, "no_expiration_link_gen_report_failed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noExpirationLinkGenReportFailedDetails(Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ba
    const-string v2, "no_password_link_gen_create_report_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noPasswordLinkGenCreateReportDetails(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_bb
    const-string v2, "no_password_link_gen_report_failed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noPasswordLinkGenReportFailedDetails(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_bc
    const-string v2, "no_password_link_view_create_report_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noPasswordLinkViewCreateReportDetails(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_bd
    const-string v2, "no_password_link_view_report_failed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noPasswordLinkViewReportFailedDetails(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_be
    const-string v2, "outdated_link_view_create_report_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    sget-object p0, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->outdatedLinkViewCreateReportDetails(Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_bf
    const-string v2, "outdated_link_view_report_failed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->outdatedLinkViewReportFailedDetails(Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_c0
    const-string v2, "paper_admin_export_start_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperAdminExportStartDetails(Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_c1
    const-string v2, "smart_sync_create_admin_privilege_report_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smartSyncCreateAdminPrivilegeReportDetails(Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_c2
    const-string v2, "team_activity_create_report_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamActivityCreateReportDetails(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_c3
    const-string v2, "team_activity_create_report_fail_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamActivityCreateReportFailDetails(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_c4
    const-string v2, "collection_share_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$a;->b:Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/CollectionShareDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->collectionShareDetails(Lcom/dropbox/core/v2/teamlog/CollectionShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_c5
    const-string v2, "file_transfers_file_add_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileTransfersFileAddDetails(Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_c6
    const-string v2, "file_transfers_transfer_delete_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileTransfersTransferDeleteDetails(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_c7
    const-string v2, "file_transfers_transfer_download_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileTransfersTransferDownloadDetails(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_c8
    const-string v2, "file_transfers_transfer_send_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileTransfersTransferSendDetails(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_c9
    const-string v2, "file_transfers_transfer_view_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileTransfersTransferViewDetails(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ca
    const-string v2, "note_acl_invite_only_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteAclInviteOnlyDetails(Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_cb
    const-string v2, "note_acl_link_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteAclLinkDetails(Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_cc
    const-string v2, "note_acl_team_link_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteAclTeamLinkDetails(Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_cd
    const-string v2, "note_shared_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteSharedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteSharedDetails(Lcom/dropbox/core/v2/teamlog/NoteSharedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ce
    const-string v2, "note_share_receive_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteShareReceiveDetails(Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_cf
    const-string v2, "open_note_shared_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->openNoteSharedDetails(Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_d0
    const-string v2, "sf_add_group_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfAddGroupDetails(Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_d1
    const-string v2, "sf_allow_non_members_to_view_shared_links_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfAllowNonMembersToViewSharedLinksDetails(Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_d2
    const-string v2, "sf_external_invite_warn_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfExternalInviteWarnDetails(Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_d3
    const-string v2, "sf_fb_invite_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfFbInviteDetails(Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_d4
    const-string v2, "sf_fb_invite_change_role_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfFbInviteChangeRoleDetails(Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_d5
    const-string v2, "sf_fb_uninvite_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfFbUninviteDetails(Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_d6
    const-string v2, "sf_invite_group_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfInviteGroupDetails(Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_d7
    const-string v2, "sf_team_grant_access_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamGrantAccessDetails(Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_d8
    const-string v2, "sf_team_invite_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamInviteDetails(Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_d9
    const-string v2, "sf_team_invite_change_role_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamInviteChangeRoleDetails(Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_da
    const-string v2, "sf_team_join_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamJoinDetails(Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_db
    const-string v2, "sf_team_join_from_oob_link_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamJoinFromOobLinkDetails(Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_dc
    const-string v2, "sf_team_uninvite_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamUninviteDetails(Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_dd
    const-string v2, "shared_content_add_invitees_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentAddInviteesDetails(Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_de
    const-string v2, "shared_content_add_link_expiry_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentAddLinkExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_df
    const-string v2, "shared_content_add_link_password_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentAddLinkPasswordDetails(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_e0
    const-string v2, "shared_content_add_member_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentAddMemberDetails(Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_e1
    const-string v2, "shared_content_change_downloads_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeDownloadsPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_e2
    const-string v2, "shared_content_change_invitee_role_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeInviteeRoleDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_e3
    const-string v2, "shared_content_change_link_audience_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeLinkAudienceDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_e4
    const-string v2, "shared_content_change_link_expiry_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeLinkExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_e5
    const-string v2, "shared_content_change_link_password_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeLinkPasswordDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_e6
    const-string v2, "shared_content_change_member_role_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeMemberRoleDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_e7
    const-string v2, "shared_content_change_viewer_info_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeViewerInfoPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_e8
    const-string v2, "shared_content_claim_invitation_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentClaimInvitationDetails(Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_e9
    const-string v2, "shared_content_copy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentCopyDetails(Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ea
    const-string v2, "shared_content_download_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentDownloadDetails(Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_eb
    const-string v2, "shared_content_relinquish_membership_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRelinquishMembershipDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ec
    const-string v2, "shared_content_remove_invitees_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRemoveInviteesDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ed
    const-string v2, "shared_content_remove_link_expiry_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRemoveLinkExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ee
    const-string v2, "shared_content_remove_link_password_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRemoveLinkPasswordDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ef
    const-string v2, "shared_content_remove_member_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRemoveMemberDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_f0
    const-string v2, "shared_content_request_access_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRequestAccessDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_f1
    const-string v2, "shared_content_restore_invitees_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRestoreInviteesDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_f2
    const-string v2, "shared_content_restore_member_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRestoreMemberDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_f3
    const-string v2, "shared_content_unshare_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentUnshareDetails(Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_f4
    const-string v2, "shared_content_view_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentViewDetails(Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_f5
    const-string v2, "shared_folder_change_link_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderChangeLinkPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_f6
    const-string v2, "shared_folder_change_members_inheritance_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderChangeMembersInheritancePolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_f7
    const-string v2, "shared_folder_change_members_management_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderChangeMembersManagementPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_f8
    const-string v2, "shared_folder_change_members_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderChangeMembersPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_f9
    const-string v2, "shared_folder_create_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderCreateDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_fa
    const-string v2, "shared_folder_decline_invitation_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderDeclineInvitationDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_fb
    const-string v2, "shared_folder_mount_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderMountDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_fc
    const-string v2, "shared_folder_nest_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderNestDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_fd
    const-string v2, "shared_folder_transfer_ownership_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderTransferOwnershipDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_fe
    const-string v2, "shared_folder_unmount_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderUnmountDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_ff
    const-string v2, "shared_link_add_expiry_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkAddExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_100
    const-string v2, "shared_link_change_expiry_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkChangeExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_101
    const-string v2, "shared_link_change_visibility_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkChangeVisibilityDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_102
    const-string v2, "shared_link_copy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkCopyDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_103
    const-string v2, "shared_link_create_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkCreateDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_104
    const-string v2, "shared_link_disable_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkDisableDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_105
    const-string v2, "shared_link_download_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkDownloadDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_106
    const-string v2, "shared_link_remove_expiry_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkRemoveExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_107
    const-string v2, "shared_link_settings_add_expiration_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkSettingsAddExpirationDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_108
    const-string v2, "shared_link_settings_add_password_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_109

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkSettingsAddPasswordDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_109
    const-string v2, "shared_link_settings_allow_download_disabled_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkSettingsAllowDownloadDisabledDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_10a
    const-string v2, "shared_link_settings_allow_download_enabled_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkSettingsAllowDownloadEnabledDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_10b
    const-string v2, "shared_link_settings_change_audience_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkSettingsChangeAudienceDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_10c
    const-string v2, "shared_link_settings_change_expiration_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkSettingsChangeExpirationDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_10d
    const-string v2, "shared_link_settings_change_password_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkSettingsChangePasswordDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_10e
    const-string v2, "shared_link_settings_remove_expiration_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkSettingsRemoveExpirationDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_10f
    const-string v2, "shared_link_settings_remove_password_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkSettingsRemovePasswordDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_110
    const-string v2, "shared_link_share_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkShareDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_111
    const-string v2, "shared_link_view_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkViewDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_112
    const-string v2, "shared_note_opened_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedNoteOpenedDetails(Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_113
    const-string v2, "shmodel_group_share_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelGroupShareDetails(Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_114
    const-string v2, "showcase_access_granted_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseAccessGrantedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_115
    const-string v2, "showcase_add_member_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseAddMemberDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_116
    const-string v2, "showcase_archived_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseArchivedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_117
    const-string v2, "showcase_created_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseCreatedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_118
    const-string v2, "showcase_delete_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_119

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseDeleteCommentDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_119
    const-string v2, "showcase_edited_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseEditedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_11a
    const-string v2, "showcase_edit_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseEditCommentDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_11b
    const-string v2, "showcase_file_added_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseFileAddedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_11c
    const-string v2, "showcase_file_download_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseFileDownloadDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_11d
    const-string v2, "showcase_file_removed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseFileRemovedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_11e
    const-string v2, "showcase_file_view_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseFileViewDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_11f
    const-string v2, "showcase_permanently_deleted_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_120

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcasePermanentlyDeletedDetails(Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_120
    const-string v2, "showcase_post_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_121

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcasePostCommentDetails(Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_121
    const-string v2, "showcase_remove_member_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseRemoveMemberDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_122
    const-string v2, "showcase_renamed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseRenamedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_123
    const-string v2, "showcase_request_access_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_124

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseRequestAccessDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_124
    const-string v2, "showcase_resolve_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseResolveCommentDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_125
    const-string v2, "showcase_restored_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_126

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseRestoredDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_126
    const-string v2, "showcase_trashed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseTrashedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_127
    const-string v2, "showcase_trashed_deprecated_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseTrashedDeprecatedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_128
    const-string v2, "showcase_unresolve_comment_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_129

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseUnresolveCommentDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_129
    const-string v2, "showcase_untrashed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseUntrashedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_12a
    const-string v2, "showcase_untrashed_deprecated_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseUntrashedDeprecatedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_12b
    const-string v2, "showcase_view_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseViewDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_12c
    const-string v2, "sso_add_cert_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoAddCertDetails(Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_12d
    const-string v2, "sso_add_login_url_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoAddLoginUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_12e
    const-string v2, "sso_add_logout_url_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoAddLogoutUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_12f
    const-string v2, "sso_change_cert_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_130

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangeCertDetails(Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_130
    const-string v2, "sso_change_login_url_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangeLoginUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_131
    const-string v2, "sso_change_logout_url_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_132

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangeLogoutUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_132
    const-string v2, "sso_change_saml_identity_mode_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangeSamlIdentityModeDetails(Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_133
    const-string v2, "sso_remove_cert_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_134

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoRemoveCertDetails(Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_134
    const-string v2, "sso_remove_login_url_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_135

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoRemoveLoginUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_135
    const-string v2, "sso_remove_logout_url_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoRemoveLogoutUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_136
    const-string v2, "team_folder_change_status_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_137

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_137
    const-string v2, "team_folder_create_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderCreateDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_138
    const-string v2, "team_folder_downgrade_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_139

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderDowngradeDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_139
    const-string v2, "team_folder_permanently_delete_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderPermanentlyDeleteDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_13a
    const-string v2, "team_folder_rename_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderRenameDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_13b
    const-string v2, "team_selective_sync_settings_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamSelectiveSyncSettingsChangedDetails(Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_13c
    const-string v2, "account_capture_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_13d
    const-string v2, "allow_download_disabled_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->allowDownloadDisabledDetails(Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_13e
    const-string v2, "allow_download_enabled_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->allowDownloadEnabledDetails(Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_13f
    const-string v2, "camera_uploads_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_140

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cameraUploadsPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_140
    const-string v2, "content_administration_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_141

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->contentAdministrationPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_141
    const-string v2, "data_placement_restriction_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dataPlacementRestrictionChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_142
    const-string v2, "data_placement_restriction_satisfy_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dataPlacementRestrictionSatisfyPolicyDetails(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_143
    const-string v2, "device_approvals_add_exception_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_144

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsAddExceptionDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_144
    const-string v2, "device_approvals_change_desktop_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_145

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsChangeDesktopPolicyDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_145
    const-string v2, "device_approvals_change_mobile_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_146

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsChangeMobilePolicyDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_146
    const-string v2, "device_approvals_change_overage_action_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_147

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsChangeOverageActionDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_147
    const-string v2, "device_approvals_change_unlink_action_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_148

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsChangeUnlinkActionDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_148
    const-string v2, "device_approvals_remove_exception_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsRemoveExceptionDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_149
    const-string v2, "directory_restrictions_add_members_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->directoryRestrictionsAddMembersDetails(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_14a
    const-string v2, "directory_restrictions_remove_members_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->directoryRestrictionsRemoveMembersDetails(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_14b
    const-string v2, "emm_add_exception_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmAddExceptionDetails(Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_14c
    const-string v2, "emm_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_14d
    const-string v2, "emm_remove_exception_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmRemoveExceptionDetails(Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_14e
    const-string v2, "extended_version_history_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->extendedVersionHistoryChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_14f
    const-string v2, "file_comments_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileCommentsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_150
    const-string v2, "file_locking_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_151

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileLockingPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_151
    const-string v2, "file_requests_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_152

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_152
    const-string v2, "file_requests_emails_enabled_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_153

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestsEmailsEnabledDetails(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_153
    const-string v2, "file_requests_emails_restricted_to_team_only_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_154

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestsEmailsRestrictedToTeamOnlyDetails(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_154
    const-string v2, "file_transfers_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_155

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileTransfersPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_155
    const-string v2, "google_sso_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_156

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->googleSsoChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_156
    const-string v2, "group_user_management_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_157

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupUserManagementChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_157
    const-string v2, "integration_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_158

    sget-object p0, Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->integrationPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_158
    const-string v2, "member_requests_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_159

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberRequestsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_159
    const-string v2, "member_send_invite_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSendInvitePolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_15a
    const-string v2, "member_space_limits_add_exception_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsAddExceptionDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_15b
    const-string v2, "member_space_limits_change_caps_type_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsChangeCapsTypePolicyDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_15c
    const-string v2, "member_space_limits_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_15d
    const-string v2, "member_space_limits_remove_exception_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsRemoveExceptionDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_15e
    const-string v2, "member_suggestions_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSuggestionsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_15f
    const-string v2, "microsoft_office_addin_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_160

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->microsoftOfficeAddinChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_160
    const-string v2, "network_control_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_161

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->networkControlChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_161
    const-string v2, "paper_change_deployment_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperChangeDeploymentPolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_162
    const-string v2, "paper_change_member_link_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_163

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperChangeMemberLinkPolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_163
    const-string v2, "paper_change_member_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperChangeMemberPolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_164
    const-string v2, "paper_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_165

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_165
    const-string v2, "paper_default_folder_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_166

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDefaultFolderPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_166
    const-string v2, "paper_desktop_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_167

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDesktopPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_167
    const-string v2, "paper_enabled_users_group_addition_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_168

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperEnabledUsersGroupAdditionDetails(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_168
    const-string v2, "paper_enabled_users_group_removal_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_169

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperEnabledUsersGroupRemovalDetails(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_169
    const-string v2, "password_strength_requirements_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->passwordStrengthRequirementsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_16a
    const-string v2, "permanent_delete_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->permanentDeleteChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_16b
    const-string v2, "reseller_support_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->resellerSupportChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_16c
    const-string v2, "rewind_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->rewindPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_16d
    const-string v2, "send_for_signature_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sendForSignaturePolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_16e
    const-string v2, "sharing_change_folder_join_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharingChangeFolderJoinPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_16f
    const-string v2, "sharing_change_link_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_170

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharingChangeLinkPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_170
    const-string v2, "sharing_change_member_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_171

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharingChangeMemberPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_171
    const-string v2, "showcase_change_download_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_172

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseChangeDownloadPolicyDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_172
    const-string v2, "showcase_change_enabled_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_173

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseChangeEnabledPolicyDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_173
    const-string v2, "showcase_change_external_sharing_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_174

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseChangeExternalSharingPolicyDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_174
    const-string v2, "smarter_smart_sync_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_175

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smarterSmartSyncPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_175
    const-string v2, "smart_sync_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_176

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smartSyncChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_176
    const-string v2, "smart_sync_not_opt_out_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_177

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smartSyncNotOptOutDetails(Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_177
    const-string v2, "smart_sync_opt_out_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smartSyncOptOutDetails(Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_178
    const-string v2, "sso_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_179

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_179
    const-string v2, "team_extensions_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamExtensionsPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_17a
    const-string v2, "team_selective_sync_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamSelectiveSyncPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_17b
    const-string v2, "team_sharing_whitelist_subjects_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamSharingWhitelistSubjectsChangedDetails(Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_17c
    const-string v2, "tfa_add_exception_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaAddExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaAddExceptionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddExceptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaAddExceptionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaAddExceptionDetails(Lcom/dropbox/core/v2/teamlog/TfaAddExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_17d
    const-string v2, "tfa_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_17e
    const-string v2, "tfa_remove_exception_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaRemoveExceptionDetails(Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_17f
    const-string v2, "two_account_change_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_180

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->twoAccountChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_180
    const-string v2, "viewer_info_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_181

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->viewerInfoPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_181
    const-string v2, "watermarking_policy_changed_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->watermarkingPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_182
    const-string v2, "web_sessions_change_active_session_limit_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_183

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitDetails$a;->b:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->webSessionsChangeActiveSessionLimitDetails(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_183
    const-string v2, "web_sessions_change_fixed_length_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_184

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->webSessionsChangeFixedLengthPolicyDetails(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_184
    const-string v2, "web_sessions_change_idle_length_policy_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_185

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->webSessionsChangeIdleLengthPolicyDetails(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_185
    const-string v2, "team_merge_from_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeFromDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_186
    const-string v2, "team_merge_to_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_187

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeToDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_187
    const-string v2, "team_profile_add_logo_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_188

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileAddLogoDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_188
    const-string v2, "team_profile_change_default_language_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_189

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileChangeDefaultLanguageDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_189
    const-string v2, "team_profile_change_logo_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileChangeLogoDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_18a
    const-string v2, "team_profile_change_name_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileChangeNameDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_18b
    const-string v2, "team_profile_remove_logo_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileRemoveLogoDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_18c
    const-string v2, "tfa_add_backup_phone_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaAddBackupPhoneDetails(Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_18d
    const-string v2, "tfa_add_security_key_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaAddSecurityKeyDetails(Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_18e
    const-string v2, "tfa_change_backup_phone_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaChangeBackupPhoneDetails(Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_18f
    const-string v2, "tfa_change_status_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_190

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_190
    const-string v2, "tfa_remove_backup_phone_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_191

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaRemoveBackupPhoneDetails(Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_191
    const-string v2, "tfa_remove_security_key_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_192

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaRemoveSecurityKeyDetails(Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_192
    const-string v2, "tfa_reset_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_193

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaResetDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaResetDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TfaResetDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaResetDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaResetDetails(Lcom/dropbox/core/v2/teamlog/TfaResetDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_193
    const-string v2, "changed_enterprise_admin_role_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_194

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->changedEnterpriseAdminRoleDetails(Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_194
    const-string v2, "changed_enterprise_connected_team_status_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->changedEnterpriseConnectedTeamStatusDetails(Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_195
    const-string v2, "ended_enterprise_admin_session_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_196

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->endedEnterpriseAdminSessionDetails(Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_196
    const-string v2, "ended_enterprise_admin_session_deprecated_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_197

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->endedEnterpriseAdminSessionDeprecatedDetails(Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_197
    const-string v2, "enterprise_settings_locking_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_198

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->enterpriseSettingsLockingDetails(Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_198
    const-string v2, "guest_admin_change_status_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->guestAdminChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_199
    const-string v2, "started_enterprise_admin_session_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->startedEnterpriseAdminSessionDetails(Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_19a
    const-string v2, "team_merge_request_accepted_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestAcceptedDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_19b
    const-string v2, "team_merge_request_accepted_shown_to_primary_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestAcceptedShownToPrimaryTeamDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_19c
    const-string v2, "team_merge_request_accepted_shown_to_secondary_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestAcceptedShownToSecondaryTeamDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_19d
    const-string v2, "team_merge_request_auto_canceled_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestAutoCanceledDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_19e
    const-string v2, "team_merge_request_canceled_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestCanceledDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_19f
    const-string v2, "team_merge_request_canceled_shown_to_primary_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestCanceledShownToPrimaryTeamDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a0
    const-string v2, "team_merge_request_canceled_shown_to_secondary_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestCanceledShownToSecondaryTeamDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a1
    const-string v2, "team_merge_request_expired_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestExpiredDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a2
    const-string v2, "team_merge_request_expired_shown_to_primary_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestExpiredShownToPrimaryTeamDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a3
    const-string v2, "team_merge_request_expired_shown_to_secondary_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestExpiredShownToSecondaryTeamDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a4
    const-string v2, "team_merge_request_rejected_shown_to_primary_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestRejectedShownToPrimaryTeamDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a5
    const-string v2, "team_merge_request_rejected_shown_to_secondary_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestRejectedShownToSecondaryTeamDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a6
    const-string v2, "team_merge_request_reminder_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestReminderDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto/16 :goto_1

    :cond_1a7
    const-string v2, "team_merge_request_reminder_shown_to_primary_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestReminderShownToPrimaryTeamDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto :goto_1

    :cond_1a8
    const-string v2, "team_merge_request_reminder_shown_to_secondary_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestReminderShownToSecondaryTeamDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto :goto_1

    :cond_1a9
    const-string v2, "team_merge_request_revoked_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1aa

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestRevokedDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto :goto_1

    :cond_1aa
    const-string v2, "team_merge_request_sent_shown_to_primary_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ab

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestSentShownToPrimaryTeamDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto :goto_1

    :cond_1ab
    const-string v2, "team_merge_request_sent_shown_to_secondary_team_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeRequestSentShownToSecondaryTeamDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto :goto_1

    :cond_1ac
    const-string v2, "missing_details"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1ad

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MissingDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MissingDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/MissingDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MissingDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->missingDetails(Lcom/dropbox/core/v2/teamlog/MissingDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object p0

    goto :goto_1

    :cond_1ad
    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventDetails;->OTHER:Lcom/dropbox/core/v2/teamlog/EventDetails;

    :goto_1
    if-nez v0, :cond_1ae

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_1ae
    return-object p0

    :cond_1af
    new-instance p0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field missing: .tag"

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lcom/dropbox/core/v2/teamlog/EventDetails;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tag()Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

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

    const-string v0, "missing_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MissingDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MissingDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->c6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MissingDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MissingDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MissingDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_sent_shown_to_secondary_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->b6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToSecondaryTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_sent_shown_to_primary_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->a6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestSentShownToPrimaryTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_revoked_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Z5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRevokedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_reminder_shown_to_secondary_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Y5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToSecondaryTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_reminder_shown_to_primary_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->X5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderShownToPrimaryTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_reminder_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->W5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_rejected_shown_to_secondary_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->V5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToSecondaryTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_rejected_shown_to_primary_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->U5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestRejectedShownToPrimaryTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_expired_shown_to_secondary_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->S5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToSecondaryTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_expired_shown_to_primary_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->R5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredShownToPrimaryTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_expired_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Q5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestExpiredDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_canceled_shown_to_secondary_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->P5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToSecondaryTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_canceled_shown_to_primary_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->O5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledShownToPrimaryTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_canceled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->N5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestCanceledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_auto_canceled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->M5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAutoCanceledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_accepted_shown_to_secondary_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->L5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToSecondaryTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_accepted_shown_to_primary_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->K5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedShownToPrimaryTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_request_accepted_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->J5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestAcceptedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "started_enterprise_admin_session_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->H5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/StartedEnterpriseAdminSessionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "guest_admin_change_status_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->G5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GuestAdminChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "enterprise_settings_locking_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->F5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingDetails$a;->b(Lcom/dropbox/core/v2/teamlog/EnterpriseSettingsLockingDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "ended_enterprise_admin_session_deprecated_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->E5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDeprecatedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "ended_enterprise_admin_session_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->D5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/EndedEnterpriseAdminSessionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "changed_enterprise_connected_team_status_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->C5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "changed_enterprise_admin_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->B5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseAdminRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_reset_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaResetDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaResetDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->A5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaResetDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaResetDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TfaResetDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_remove_security_key_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->z5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_remove_backup_phone_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->y5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_change_status_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->v5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_change_backup_phone_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->u5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_add_security_key_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->t5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_add_backup_phone_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->s5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_remove_logo_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->r5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_change_name_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->q5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_change_logo_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->p5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_change_default_language_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->o5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_add_logo_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->n5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_to_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->m5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_from_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->k5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "web_sessions_change_idle_length_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->j5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "web_sessions_change_fixed_length_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->i5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "web_sessions_change_active_session_limit_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitDetails$a;->b:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->h5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitDetails$a;->b(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeActiveSessionLimitDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "watermarking_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->g5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/WatermarkingPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "viewer_info_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->f5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ViewerInfoPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "two_account_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->e5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_remove_exception_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->d5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TfaRemoveExceptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->c5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_30
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_add_exception_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TfaAddExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TfaAddExceptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->b5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaAddExceptionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddExceptionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TfaAddExceptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_sharing_whitelist_subjects_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Z4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamSharingWhitelistSubjectsChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_32
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_selective_sync_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Y4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_extensions_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->X4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamExtensionsPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_34
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->W4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_opt_out_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->V4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_36
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_not_opt_out_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->U4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_37
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->T4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_38
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smarter_smart_sync_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->S4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SmarterSmartSyncPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_39
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_change_external_sharing_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->R4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_change_enabled_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Q4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_change_download_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->O4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sharing_change_member_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->N4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sharing_change_link_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->M4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sharing_change_folder_join_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->L4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_3f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "send_for_signature_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->K4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SendForSignaturePolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_40
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "rewind_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->J4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/RewindPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_41
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "reseller_support_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->I4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ResellerSupportChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_42
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "permanent_delete_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->H4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_43
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_strength_requirements_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->G4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PasswordStrengthRequirementsChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_enabled_users_group_removal_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->F4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_45
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_enabled_users_group_addition_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->D4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_46
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_desktop_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->C4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDesktopPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_47
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_default_folder_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->B4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_48
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->A4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_49
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_member_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->z4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_member_link_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->y4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_deployment_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->x4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "network_control_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->w4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "microsoft_office_addin_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->v4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_suggestions_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->u4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_4f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_remove_exception_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->s4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_50
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->r4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_51
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_caps_type_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->q4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_52
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_add_exception_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->p4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_53
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_send_invite_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->o4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSendInvitePolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_54
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_requests_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->n4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_55
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "integration_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->m4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/IntegrationPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_56
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_user_management_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->l4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_57
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "google_sso_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->k4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_58
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_transfers_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->j4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileTransfersPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_59
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_requests_emails_restricted_to_team_only_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->h4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_requests_emails_enabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->g4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_requests_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->f4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_locking_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->e4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileLockingPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_comments_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->d4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "extended_version_history_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->c4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_5f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_remove_exception_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->b4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_60
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->a4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_61
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_add_exception_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Z3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_62
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "directory_restrictions_remove_members_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Y3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_63
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "directory_restrictions_add_members_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->W3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_64
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_remove_exception_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->V3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsRemoveExceptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_65
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_unlink_action_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->U3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_66
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_overage_action_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->T3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_67
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_mobile_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->S3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_68
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_desktop_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->R3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_69
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_add_exception_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Q3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsAddExceptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "data_placement_restriction_satisfy_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->P3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "data_placement_restriction_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->O3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "content_administration_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->N3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ContentAdministrationPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "camera_uploads_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->L3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/CameraUploadsPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "allow_download_enabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->K3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$a;->b(Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_6f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "allow_download_disabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->J3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$a;->b(Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_70
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->I3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_71
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_selective_sync_settings_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->H3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_72
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_rename_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->G3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_73
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_permanently_delete_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->F3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_74
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_downgrade_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->E3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_75
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->D3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_76
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_change_status_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->C3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_77
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_remove_logout_url_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->A3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_78
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_remove_login_url_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->z3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_79
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_remove_cert_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->y3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_saml_identity_mode_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->x3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_logout_url_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->w3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_login_url_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->v3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_cert_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->u3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_add_logout_url_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->t3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_7f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_add_login_url_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->s3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_80
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_add_cert_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->r3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_81
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_view_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->o3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_82
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_untrashed_deprecated_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->n3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_83
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_untrashed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->m3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_84
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_unresolve_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->l3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_85
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_trashed_deprecated_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->k3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_86
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_trashed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->j3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_87
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_restored_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->i3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_88
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_resolve_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->h3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_89
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_request_access_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->g3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_renamed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->f3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_remove_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->d3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_post_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->c3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_permanently_deleted_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->b3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_view_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->a3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_8f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_removed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Z2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_90
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_download_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Y2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_91
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_added_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->X2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_92
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_edit_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->W2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_93
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_edited_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->V2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_94
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_delete_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->U2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_95
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_created_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->S2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_96
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_archived_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->R2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_97
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_add_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Q2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_98
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_access_granted_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->P2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_99
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shmodel_group_share_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->O2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_note_opened_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->N2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_view_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->M2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_share_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->L2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_remove_password_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->K2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemovePasswordDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_remove_expiration_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->J2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsRemoveExpirationDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_9f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_change_password_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->H2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangePasswordDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_change_expiration_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->G2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeExpirationDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_change_audience_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->F2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_allow_download_enabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->E2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadEnabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_allow_download_disabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->D2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAllowDownloadDisabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_add_password_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->C2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddPasswordDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_settings_add_expiration_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->B2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsAddExpirationDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_remove_expiry_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->A2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_download_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->z2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_disable_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->y2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_a9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->w2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_aa
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_copy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->v2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ab
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_change_visibility_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->u2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ac
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_change_expiry_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->t2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ad
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_add_expiry_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->s2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ae
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_unmount_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->r2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_af
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_transfer_ownership_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->q2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_nest_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->p2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_mount_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->o2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_decline_invitation_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->n2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->l2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_members_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->k2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_members_management_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->j2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_members_inheritance_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->i2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_link_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->h2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_view_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->g2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_b9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_unshare_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->f2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ba
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_restore_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->e2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRestoreMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_bb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_restore_invitees_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->d2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRestoreInviteesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_bc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_request_access_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->c2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_bd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->a2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_be
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_link_password_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Z1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_bf
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_link_expiry_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Y1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_invitees_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->X1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_relinquish_membership_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->W1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_download_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->V1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_copy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->U1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_claim_invitation_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->T1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_viewer_info_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->S1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_member_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->R1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_link_password_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->P1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_link_expiry_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->O1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_c9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_link_audience_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->N1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ca
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_invitee_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->M1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_cb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_downloads_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->L1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_cc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->K1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_cd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_link_password_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->J1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ce
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_link_expiry_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->I1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_cf
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_invitees_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->H1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_uninvite_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->G1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_join_from_oob_link_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->E1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_join_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->D1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_invite_change_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->C1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_invite_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->B1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_grant_access_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->A1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_invite_group_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->z1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_fb_uninvite_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->y1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_fb_invite_change_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->x1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_d9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_fb_invite_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->w1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_da
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_external_invite_warn_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->v1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_db
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_allow_non_members_to_view_shared_links_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->t1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_dc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_add_group_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->s1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_dd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "open_note_shared_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->r1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_de
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_share_receive_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->q1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$a;->b(Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_df
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_shared_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->p1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteSharedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/NoteSharedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_acl_team_link_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->o1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$a;->b(Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_acl_link_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->n1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$a;->b(Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_acl_invite_only_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->m1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_transfers_transfer_view_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->l1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferViewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_transfers_transfer_send_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->k1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferSendDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_transfers_transfer_download_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->h1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDownloadDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_transfers_transfer_delete_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->g1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileTransfersTransferDeleteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_transfers_file_add_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->f1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileTransfersFileAddDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "collection_share_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$a;->b:Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->e1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/CollectionShareDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$a;->b(Lcom/dropbox/core/v2/teamlog/CollectionShareDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_e9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_activity_create_report_fail_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->d1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportFailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ea
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_activity_create_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->c1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$a;->b(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_eb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_create_admin_privilege_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->b1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ec
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_admin_export_start_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->a1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ed
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "outdated_link_view_report_failed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Z0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewReportFailedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ee
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "outdated_link_view_create_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Y0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportDetails$a;->b(Lcom/dropbox/core/v2/teamlog/OutdatedLinkViewCreateReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ef
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_password_link_view_report_failed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->W0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewReportFailedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_password_link_view_create_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->V0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportDetails$a;->b(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkViewCreateReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_password_link_gen_report_failed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->U0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenReportFailedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_password_link_gen_create_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->T0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportDetails$a;->b(Lcom/dropbox/core/v2/teamlog/NoPasswordLinkGenCreateReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_expiration_link_gen_report_failed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->S0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenReportFailedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_expiration_link_gen_create_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->R0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportDetails$a;->b(Lcom/dropbox/core/v2/teamlog/NoExpirationLinkGenCreateReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "external_sharing_report_failed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Q0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ExternalSharingReportFailedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "external_sharing_create_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->P0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ExternalSharingCreateReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "export_members_report_fail_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->O0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ExportMembersReportFailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "export_members_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->N0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_f9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_create_usage_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->L0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$a;->b(Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_fa
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_create_exceptions_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->K0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$a;->b(Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_fb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_reset_all_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->J0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_fc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_reset_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->I0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PasswordResetDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PasswordResetDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_fd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_change_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->H0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_fe
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_published_link_view_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->G0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkViewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_ff
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_published_link_disabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->F0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkDisabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_100
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_published_link_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->E0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_101
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_published_link_change_permission_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->D0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperPublishedLinkChangePermissionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_102
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_team_invite_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->C0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_103
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_followed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->A0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_104
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_deleted_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->z0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_105
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_change_subscription_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->y0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_106
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_external_view_forbid_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->x0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_107
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_external_view_default_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->w0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_108
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_external_view_allow_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->v0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_109
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_view_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->u0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_untrashed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->t0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_unresolve_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->s0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_trashed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->r0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_team_invite_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->p0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_slack_share_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->o0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_10f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_revert_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->n0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_110
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_resolve_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->m0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_111
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_request_access_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->l0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_112
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_ownership_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->k0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocOwnershipChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_113
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_mention_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->j0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_114
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_followed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->i0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_115
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_edit_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->h0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_116
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_edit_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->g0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_117
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_download_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->e0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_118
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_delete_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->d0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_119
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_deleted_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->c0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_change_subscription_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->b0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_change_sharing_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->a0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_change_member_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Z(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_add_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Y(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_restore_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->X(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_11f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_rename_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->W(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_120
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_remove_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->V(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_121
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_remove_from_folder_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->T(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_122
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_permanently_delete_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->S(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_123
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->R(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_124
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_archive_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Q(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_125
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_add_to_folder_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->P(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_126
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_add_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->O(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_127
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_reorder_section_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderReorderSectionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderReorderSectionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->N(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/BinderReorderSectionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderReorderSectionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/BinderReorderSectionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_128
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_reorder_page_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderReorderPageDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderReorderPageDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->M(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/BinderReorderPageDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderReorderPageDetails$a;->b(Lcom/dropbox/core/v2/teamlog/BinderReorderPageDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_129
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_rename_section_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRenameSectionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRenameSectionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->L(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/BinderRenameSectionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderRenameSectionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/BinderRenameSectionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_rename_page_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRenamePageDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRenamePageDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->K(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/BinderRenamePageDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderRenamePageDetails$a;->b(Lcom/dropbox/core/v2/teamlog/BinderRenamePageDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_remove_section_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->I(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/BinderRemoveSectionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_remove_page_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderRemovePageDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderRemovePageDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->H(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/BinderRemovePageDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderRemovePageDetails$a;->b(Lcom/dropbox/core/v2/teamlog/BinderRemovePageDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_add_section_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderAddSectionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderAddSectionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->G(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/BinderAddSectionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderAddSectionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/BinderAddSectionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "binder_add_page_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/BinderAddPageDetails$a;->b:Lcom/dropbox/core/v2/teamlog/BinderAddPageDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->F(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/BinderAddPageDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/BinderAddPageDetails$a;->b(Lcom/dropbox/core/v2/teamlog/BinderAddPageDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_12f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "secondary_mails_policy_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->E(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_130
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "secondary_email_verified_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->D(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SecondaryEmailVerifiedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_131
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "secondary_email_deleted_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->C(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SecondaryEmailDeletedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_132
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "pending_secondary_email_added_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->B(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PendingSecondaryEmailAddedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_133
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_transfer_account_contents_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->A(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_134
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_suggest_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->z(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_135
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_remove_custom_quota_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->x(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_136
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_status_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->w(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_137
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_custom_quota_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->v(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_138
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_add_custom_quota_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->u(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_139
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_set_profile_photo_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->t(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberSetProfilePhotoDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_remove_external_id_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->s(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberRemoveExternalIdDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_permanently_delete_account_contents_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->r(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_delete_profile_photo_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->q(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberDeleteProfilePhotoDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_delete_manual_contacts_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->p(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberDeleteManualContactsDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_status_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->o(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_13f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_name_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->m(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_140
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_membership_type_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->l(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_141
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_external_id_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->k(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberChangeExternalIdDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_142
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_email_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->j(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_143
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_admin_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->i(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_144
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_add_name_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->h(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_145
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_add_external_id_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdDetails$a;->b:Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->g(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdDetails$a;->b(Lcom/dropbox/core/v2/teamlog/MemberAddExternalIdDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_146
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "delete_team_invite_link_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->f(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeleteTeamInviteLinkDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_147
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "create_team_invite_link_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkDetails$a;->b:Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->e(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkDetails$a;->b(Lcom/dropbox/core/v2/teamlog/CreateTeamInviteLinkDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_148
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_error_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SsoErrorDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SsoErrorDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->d(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoErrorDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoErrorDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SsoErrorDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_149
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sign_in_as_session_start_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->m7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sign_in_as_session_end_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->l7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "reseller_support_session_start_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->k7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "reseller_support_session_end_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->j7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "logout_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LogoutDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LogoutDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->i7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LogoutDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LogoutDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LogoutDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "login_success_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->h7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_14f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "login_fail_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->g7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LoginFailDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LoginFailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_150
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "guest_admin_signed_out_via_trusted_teams_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->f7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GuestAdminSignedOutViaTrustedTeamsDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_151
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "guest_admin_signed_in_via_trusted_teams_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->e7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GuestAdminSignedInViaTrustedTeamsDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_152
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_error_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmErrorDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmErrorDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->d7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmErrorDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmErrorDetails$a;->b(Lcom/dropbox/core/v2/teamlog/EmmErrorDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_153
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_lock_or_unlocked_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->b7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/AccountLockOrUnlockedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_154
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_report_a_hold_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->a7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsReportAHoldDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_155
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_remove_members_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Z6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsRemoveMembersDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_156
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_release_a_hold_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Y6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsReleaseAHoldDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_157
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_export_removed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->X6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportRemovedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_158
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_export_downloaded_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->W6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_159
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_export_cancelled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->V6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportCancelledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_export_a_hold_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->U6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsExportAHoldDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_change_hold_name_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->T6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldNameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_change_hold_details_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->S6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsChangeHoldDetailsDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_add_members_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Q6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsAddMembersDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legal_holds_activate_a_hold_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldDetails$a;->b:Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->P6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldDetails$a;->b(Lcom/dropbox/core/v2/teamlog/LegalHoldsActivateAHoldDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_15f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_rename_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->O6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupRenameDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupRenameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_160
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_remove_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->N6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_161
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_remove_external_id_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->M6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_162
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_moved_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->L6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupMovedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupMovedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_163
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_join_policy_updated_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->K6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_164
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_description_updated_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->J6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_165
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_delete_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->I6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_166
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->H6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_167
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_change_member_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->F6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_168
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_change_management_type_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->E6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_169
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_change_external_id_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->D6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_add_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->C6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_add_external_id_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$a;->b:Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->B6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$a;->b(Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_receive_file_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->A6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_delete_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestDeleteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->z6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestDeleteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestDeleteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestDeleteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->y6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_16f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_close_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->x6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_170
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_change_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->w6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_171
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "rewind_folder_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/RewindFolderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/RewindFolderDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->u6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/RewindFolderDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/RewindFolderDetails$a;->b(Lcom/dropbox/core/v2/teamlog/RewindFolderDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_172
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "folder_overview_item_unpinned_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->t6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FolderOverviewItemUnpinnedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_173
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "folder_overview_item_pinned_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->s6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FolderOverviewItemPinnedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_174
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "folder_overview_description_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->r6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FolderOverviewDescriptionChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_175
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_save_copy_reference_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->q6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_176
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_rollback_changes_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->p6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_177
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_revert_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRevertDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRevertDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->o6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRevertDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRevertDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileRevertDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_178
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_restore_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->n6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRestoreDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileRestoreDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_179
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_rename_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileRenameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->m6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRenameDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileRenameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_preview_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->l6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FilePreviewDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FilePreviewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_permanently_delete_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->j6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_move_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileMoveDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileMoveDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->i6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileMoveDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileMoveDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileMoveDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_locking_lock_status_changed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->h6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileLockingLockStatusChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_get_copy_reference_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->g6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_17f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_edit_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileEditDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileEditDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->f6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileEditDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileEditDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileEditDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_180
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_download_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->e6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileDownloadDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileDownloadDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_181
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_delete_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->d6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileDeleteDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileDeleteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_182
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_copy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileCopyDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileCopyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->T5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileCopyDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileCopyDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileCopyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_183
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_add_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileAddDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileAddDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->I5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileAddDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileAddDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileAddDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_184
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "create_folder_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->x5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/CreateFolderDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$a;->b(Lcom/dropbox/core/v2/teamlog/CreateFolderDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_185
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "enabled_domain_invites_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->l5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$a;->b(Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_186
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_verification_remove_domain_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->a5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_187
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_verification_add_domain_success_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->P4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_188
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_verification_add_domain_fail_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->E4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_189
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_set_invite_new_user_pref_to_yes_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->t4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_set_invite_new_user_pref_to_no_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->i4(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_request_to_join_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->X3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_email_existing_users_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->M3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_decline_request_to_join_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->B3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_approve_request_to_join_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->q3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_18f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "disabled_domain_invites_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->e3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_190
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_relinquish_account_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->T2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$a;->b(Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_191
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_notification_emails_sent_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->I2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_192
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_migrate_account_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->x2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$a;->b(Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_193
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_change_availability_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->m2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$a;->b(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_194
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_refresh_auth_token_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$a;->b:Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->b2(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$a;->b(Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_195
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_unlink_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Q1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_196
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_management_enabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->F1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_197
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_management_disabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->u1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_198
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_link_success_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->j1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_199
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_link_fail_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->X0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_delete_on_unlink_success_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->M0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_delete_on_unlink_fail_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->B0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_change_ip_web_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->q0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_change_ip_mobile_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->f0(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_change_ip_desktop_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$a;->b:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->U(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$a;->b(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_19f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_unresolve_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->J(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_unlike_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->y(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_resolve_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->n(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_like_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->c(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_edit_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileEditCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileEditCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->c7(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileEditCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileEditCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileEditCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_delete_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->R6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_change_comment_subscription_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->G6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_add_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$a;->b:Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->v6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$a;->b(Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :pswitch_1a7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "integration_disconnected_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->k6(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/IntegrationDisconnectedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1a8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "integration_connected_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/IntegrationConnectedDetails$a;->b:Lcom/dropbox/core/v2/teamlog/IntegrationConnectedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->w5(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/IntegrationConnectedDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/IntegrationConnectedDetails$a;->b(Lcom/dropbox/core/v2/teamlog/IntegrationConnectedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1a9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_unlink_user_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->p3(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$a;->b(Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1aa
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_unlink_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->i1(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1ab
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_link_user_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->b(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$a;->b(Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1ac
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_link_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$a;->b:Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->a(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$a;->b(Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1ac
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

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$b;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/EventDetails;

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

    check-cast p1, Lcom/dropbox/core/v2/teamlog/EventDetails;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$b;->b(Lcom/dropbox/core/v2/teamlog/EventDetails;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

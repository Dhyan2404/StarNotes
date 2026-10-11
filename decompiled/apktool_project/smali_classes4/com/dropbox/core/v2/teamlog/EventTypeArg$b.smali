.class public Lcom/dropbox/core/v2/teamlog/EventTypeArg$b;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/EventTypeArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/EventTypeArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/dropbox/core/v2/teamlog/EventTypeArg$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventTypeArg$b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EventTypeArg$b;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventTypeArg$b;->b:Lcom/dropbox/core/v2/teamlog/EventTypeArg$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/EventTypeArg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/CompositeSerializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1ae

    const-string v1, "app_link_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->APP_LINK_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_1
    const-string v1, "app_link_user"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->APP_LINK_USER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_2
    const-string v1, "app_unlink_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->APP_UNLINK_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_3
    const-string v1, "app_unlink_user"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->APP_UNLINK_USER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_4
    const-string v1, "integration_connected"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->INTEGRATION_CONNECTED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_5
    const-string v1, "integration_disconnected"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->INTEGRATION_DISCONNECTED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_6
    const-string v1, "file_add_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_ADD_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_7
    const-string v1, "file_change_comment_subscription"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_CHANGE_COMMENT_SUBSCRIPTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_8
    const-string v1, "file_delete_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_DELETE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_9
    const-string v1, "file_edit_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_EDIT_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_a
    const-string v1, "file_like_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_LIKE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_b
    const-string v1, "file_resolve_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_RESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_c
    const-string v1, "file_unlike_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_UNLIKE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_d
    const-string v1, "file_unresolve_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_UNRESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_e
    const-string v1, "device_change_ip_desktop"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_CHANGE_IP_DESKTOP:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_f
    const-string v1, "device_change_ip_mobile"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_CHANGE_IP_MOBILE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_10
    const-string v1, "device_change_ip_web"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_CHANGE_IP_WEB:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_11
    const-string v1, "device_delete_on_unlink_fail"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_DELETE_ON_UNLINK_FAIL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_12
    const-string v1, "device_delete_on_unlink_success"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_DELETE_ON_UNLINK_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_13
    const-string v1, "device_link_fail"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_LINK_FAIL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_14
    const-string v1, "device_link_success"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_LINK_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_15
    const-string v1, "device_management_disabled"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_MANAGEMENT_DISABLED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_16
    const-string v1, "device_management_enabled"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_MANAGEMENT_ENABLED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_17
    const-string v1, "device_unlink"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_UNLINK:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_18
    const-string v1, "emm_refresh_auth_token"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->EMM_REFRESH_AUTH_TOKEN:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_19
    const-string v1, "account_capture_change_availability"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->ACCOUNT_CAPTURE_CHANGE_AVAILABILITY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_1a
    const-string v1, "account_capture_migrate_account"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->ACCOUNT_CAPTURE_MIGRATE_ACCOUNT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_1b
    const-string v1, "account_capture_notification_emails_sent"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->ACCOUNT_CAPTURE_NOTIFICATION_EMAILS_SENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_1c
    const-string v1, "account_capture_relinquish_account"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_1d
    const-string v1, "disabled_domain_invites"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DISABLED_DOMAIN_INVITES:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_1e
    const-string v1, "domain_invites_approve_request_to_join_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_1f
    const-string v1, "domain_invites_decline_request_to_join_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_20
    const-string v1, "domain_invites_email_existing_users"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DOMAIN_INVITES_EMAIL_EXISTING_USERS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_21
    const-string v1, "domain_invites_request_to_join_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_22
    const-string v1, "domain_invites_set_invite_new_user_pref_to_no"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_23
    const-string v1, "domain_invites_set_invite_new_user_pref_to_yes"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_24
    const-string v1, "domain_verification_add_domain_fail"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_25
    const-string v1, "domain_verification_add_domain_success"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_26
    const-string v1, "domain_verification_remove_domain"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DOMAIN_VERIFICATION_REMOVE_DOMAIN:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_27
    const-string v1, "enabled_domain_invites"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->ENABLED_DOMAIN_INVITES:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_28
    const-string v1, "create_folder"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->CREATE_FOLDER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_29
    const-string v1, "file_add"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_ADD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_2a
    const-string v1, "file_copy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_COPY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_2b
    const-string v1, "file_delete"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_DELETE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_2c
    const-string v1, "file_download"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_2d
    const-string v1, "file_edit"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_EDIT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_2e
    const-string v1, "file_get_copy_reference"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_GET_COPY_REFERENCE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_2f
    const-string v1, "file_locking_lock_status_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_LOCKING_LOCK_STATUS_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_30
    const-string v1, "file_move"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_MOVE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_31
    const-string v1, "file_permanently_delete"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_PERMANENTLY_DELETE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_32
    const-string v1, "file_preview"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_PREVIEW:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_33
    const-string v1, "file_rename"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_RENAME:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_34
    const-string v1, "file_restore"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_RESTORE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_35
    const-string v1, "file_revert"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_REVERT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_36
    const-string v1, "file_rollback_changes"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_ROLLBACK_CHANGES:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_37
    const-string v1, "file_save_copy_reference"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_SAVE_COPY_REFERENCE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_38
    const-string v1, "folder_overview_description_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FOLDER_OVERVIEW_DESCRIPTION_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_39
    const-string v1, "folder_overview_item_pinned"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FOLDER_OVERVIEW_ITEM_PINNED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_3a
    const-string v1, "folder_overview_item_unpinned"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FOLDER_OVERVIEW_ITEM_UNPINNED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_3b
    const-string v1, "rewind_folder"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->REWIND_FOLDER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_3c
    const-string v1, "file_request_change"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_REQUEST_CHANGE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_3d
    const-string v1, "file_request_close"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_REQUEST_CLOSE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_3e
    const-string v1, "file_request_create"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_REQUEST_CREATE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_3f
    const-string v1, "file_request_delete"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_REQUEST_DELETE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_40
    const-string v1, "file_request_receive_file"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_REQUEST_RECEIVE_FILE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_41
    const-string v1, "group_add_external_id"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_ADD_EXTERNAL_ID:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_42
    const-string v1, "group_add_member"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_ADD_MEMBER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_43
    const-string v1, "group_change_external_id"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_CHANGE_EXTERNAL_ID:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_44
    const-string v1, "group_change_management_type"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_CHANGE_MANAGEMENT_TYPE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_45
    const-string v1, "group_change_member_role"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_CHANGE_MEMBER_ROLE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_46
    const-string v1, "group_create"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_CREATE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_47
    const-string v1, "group_delete"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_DELETE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_48
    const-string v1, "group_description_updated"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_DESCRIPTION_UPDATED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_49
    const-string v1, "group_join_policy_updated"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_JOIN_POLICY_UPDATED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_4a
    const-string v1, "group_moved"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_MOVED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_4b
    const-string v1, "group_remove_external_id"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_REMOVE_EXTERNAL_ID:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_4c
    const-string v1, "group_remove_member"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_REMOVE_MEMBER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_4d
    const-string v1, "group_rename"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_RENAME:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_4e
    const-string v1, "legal_holds_activate_a_hold"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LEGAL_HOLDS_ACTIVATE_A_HOLD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_4f
    const-string v1, "legal_holds_add_members"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LEGAL_HOLDS_ADD_MEMBERS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_50
    const-string v1, "legal_holds_change_hold_details"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LEGAL_HOLDS_CHANGE_HOLD_DETAILS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_51
    const-string v1, "legal_holds_change_hold_name"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LEGAL_HOLDS_CHANGE_HOLD_NAME:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_52
    const-string v1, "legal_holds_export_a_hold"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LEGAL_HOLDS_EXPORT_A_HOLD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_53
    const-string v1, "legal_holds_export_cancelled"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LEGAL_HOLDS_EXPORT_CANCELLED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_54
    const-string v1, "legal_holds_export_downloaded"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LEGAL_HOLDS_EXPORT_DOWNLOADED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_55
    const-string v1, "legal_holds_export_removed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LEGAL_HOLDS_EXPORT_REMOVED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_56
    const-string v1, "legal_holds_release_a_hold"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LEGAL_HOLDS_RELEASE_A_HOLD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_57
    const-string v1, "legal_holds_remove_members"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LEGAL_HOLDS_REMOVE_MEMBERS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_58
    const-string v1, "legal_holds_report_a_hold"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LEGAL_HOLDS_REPORT_A_HOLD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_59
    const-string v1, "account_lock_or_unlocked"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->ACCOUNT_LOCK_OR_UNLOCKED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_5a
    const-string v1, "emm_error"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->EMM_ERROR:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_5b
    const-string v1, "guest_admin_signed_in_via_trusted_teams"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GUEST_ADMIN_SIGNED_IN_VIA_TRUSTED_TEAMS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_5c
    const-string v1, "guest_admin_signed_out_via_trusted_teams"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GUEST_ADMIN_SIGNED_OUT_VIA_TRUSTED_TEAMS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_5d
    const-string v1, "login_fail"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LOGIN_FAIL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_5e
    const-string v1, "login_success"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LOGIN_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_5f
    const-string v1, "logout"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->LOGOUT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_60
    const-string v1, "reseller_support_session_end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->RESELLER_SUPPORT_SESSION_END:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_61
    const-string v1, "reseller_support_session_start"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->RESELLER_SUPPORT_SESSION_START:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_62
    const-string v1, "sign_in_as_session_end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SIGN_IN_AS_SESSION_END:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_63
    const-string v1, "sign_in_as_session_start"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SIGN_IN_AS_SESSION_START:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_64
    const-string v1, "sso_error"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SSO_ERROR:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_65
    const-string v1, "create_team_invite_link"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->CREATE_TEAM_INVITE_LINK:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_66
    const-string v1, "delete_team_invite_link"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DELETE_TEAM_INVITE_LINK:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_67
    const-string v1, "member_add_external_id"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_ADD_EXTERNAL_ID:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_68
    const-string v1, "member_add_name"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_ADD_NAME:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_69
    const-string v1, "member_change_admin_role"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_CHANGE_ADMIN_ROLE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_6a
    const-string v1, "member_change_email"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_CHANGE_EMAIL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_6b
    const-string v1, "member_change_external_id"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_CHANGE_EXTERNAL_ID:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_6c
    const-string v1, "member_change_membership_type"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_CHANGE_MEMBERSHIP_TYPE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_6d
    const-string v1, "member_change_name"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_CHANGE_NAME:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_6e
    const-string v1, "member_change_status"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_6f
    const-string v1, "member_delete_manual_contacts"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_DELETE_MANUAL_CONTACTS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_70
    const-string v1, "member_delete_profile_photo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_DELETE_PROFILE_PHOTO:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_71
    const-string v1, "member_permanently_delete_account_contents"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_72
    const-string v1, "member_remove_external_id"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_REMOVE_EXTERNAL_ID:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_73
    const-string v1, "member_set_profile_photo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_SET_PROFILE_PHOTO:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_74
    const-string v1, "member_space_limits_add_custom_quota"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_SPACE_LIMITS_ADD_CUSTOM_QUOTA:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_75
    const-string v1, "member_space_limits_change_custom_quota"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_SPACE_LIMITS_CHANGE_CUSTOM_QUOTA:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_76
    const-string v1, "member_space_limits_change_status"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_SPACE_LIMITS_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_77
    const-string v1, "member_space_limits_remove_custom_quota"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_SPACE_LIMITS_REMOVE_CUSTOM_QUOTA:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_78
    const-string v1, "member_suggest"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_SUGGEST:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_79
    const-string v1, "member_transfer_account_contents"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_TRANSFER_ACCOUNT_CONTENTS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_7a
    const-string v1, "pending_secondary_email_added"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PENDING_SECONDARY_EMAIL_ADDED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_7b
    const-string v1, "secondary_email_deleted"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SECONDARY_EMAIL_DELETED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_7c
    const-string v1, "secondary_email_verified"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SECONDARY_EMAIL_VERIFIED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_7d
    const-string v1, "secondary_mails_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SECONDARY_MAILS_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_7e
    const-string v1, "binder_add_page"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->BINDER_ADD_PAGE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_7f
    const-string v1, "binder_add_section"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->BINDER_ADD_SECTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_80
    const-string v1, "binder_remove_page"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->BINDER_REMOVE_PAGE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_81
    const-string v1, "binder_remove_section"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->BINDER_REMOVE_SECTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_82
    const-string v1, "binder_rename_page"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->BINDER_RENAME_PAGE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_83
    const-string v1, "binder_rename_section"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->BINDER_RENAME_SECTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_84
    const-string v1, "binder_reorder_page"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->BINDER_REORDER_PAGE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_85
    const-string v1, "binder_reorder_section"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->BINDER_REORDER_SECTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_86
    const-string v1, "paper_content_add_member"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CONTENT_ADD_MEMBER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_87
    const-string v1, "paper_content_add_to_folder"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CONTENT_ADD_TO_FOLDER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_88
    const-string v1, "paper_content_archive"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CONTENT_ARCHIVE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_89
    const-string v1, "paper_content_create"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CONTENT_CREATE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_8a
    const-string v1, "paper_content_permanently_delete"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CONTENT_PERMANENTLY_DELETE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_8b
    const-string v1, "paper_content_remove_from_folder"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CONTENT_REMOVE_FROM_FOLDER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_8c
    const-string v1, "paper_content_remove_member"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CONTENT_REMOVE_MEMBER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_8d
    const-string v1, "paper_content_rename"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CONTENT_RENAME:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_8e
    const-string v1, "paper_content_restore"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CONTENT_RESTORE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_8f
    const-string v1, "paper_doc_add_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_ADD_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_90
    const-string v1, "paper_doc_change_member_role"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_CHANGE_MEMBER_ROLE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_91
    const-string v1, "paper_doc_change_sharing_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_CHANGE_SHARING_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_92
    const-string v1, "paper_doc_change_subscription"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_CHANGE_SUBSCRIPTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_93
    const-string v1, "paper_doc_deleted"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_DELETED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_94
    const-string v1, "paper_doc_delete_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_DELETE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_95
    const-string v1, "paper_doc_download"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_96
    const-string v1, "paper_doc_edit"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_EDIT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_97
    const-string v1, "paper_doc_edit_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_EDIT_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_98
    const-string v1, "paper_doc_followed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_FOLLOWED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_99
    const-string v1, "paper_doc_mention"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_MENTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_9a
    const-string v1, "paper_doc_ownership_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_OWNERSHIP_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_9b
    const-string v1, "paper_doc_request_access"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_REQUEST_ACCESS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_9c
    const-string v1, "paper_doc_resolve_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_RESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_9d
    const-string v1, "paper_doc_revert"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_REVERT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_9e
    const-string v1, "paper_doc_slack_share"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_SLACK_SHARE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_9f
    const-string v1, "paper_doc_team_invite"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_TEAM_INVITE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_a0
    const-string v1, "paper_doc_trashed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_TRASHED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_a1
    const-string v1, "paper_doc_unresolve_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_UNRESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_a2
    const-string v1, "paper_doc_untrashed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_UNTRASHED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_a3
    const-string v1, "paper_doc_view"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DOC_VIEW:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_a4
    const-string v1, "paper_external_view_allow"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_EXTERNAL_VIEW_ALLOW:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_a5
    const-string v1, "paper_external_view_default_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_EXTERNAL_VIEW_DEFAULT_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_a6
    const-string v1, "paper_external_view_forbid"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_EXTERNAL_VIEW_FORBID:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_a7
    const-string v1, "paper_folder_change_subscription"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_FOLDER_CHANGE_SUBSCRIPTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_a8
    const-string v1, "paper_folder_deleted"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_FOLDER_DELETED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_a9
    const-string v1, "paper_folder_followed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_FOLDER_FOLLOWED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_aa
    const-string v1, "paper_folder_team_invite"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_FOLDER_TEAM_INVITE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ab
    const-string v1, "paper_published_link_change_permission"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_PUBLISHED_LINK_CHANGE_PERMISSION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ac
    const-string v1, "paper_published_link_create"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_PUBLISHED_LINK_CREATE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ad
    const-string v1, "paper_published_link_disabled"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_PUBLISHED_LINK_DISABLED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ae
    const-string v1, "paper_published_link_view"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_PUBLISHED_LINK_VIEW:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_af
    const-string v1, "password_change"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PASSWORD_CHANGE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_b0
    const-string v1, "password_reset"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PASSWORD_RESET:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_b1
    const-string v1, "password_reset_all"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PASSWORD_RESET_ALL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_b2
    const-string v1, "emm_create_exceptions_report"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->EMM_CREATE_EXCEPTIONS_REPORT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_b3
    const-string v1, "emm_create_usage_report"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->EMM_CREATE_USAGE_REPORT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_b4
    const-string v1, "export_members_report"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->EXPORT_MEMBERS_REPORT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_b5
    const-string v1, "export_members_report_fail"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->EXPORT_MEMBERS_REPORT_FAIL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_b6
    const-string v1, "external_sharing_create_report"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->EXTERNAL_SHARING_CREATE_REPORT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_b7
    const-string v1, "external_sharing_report_failed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->EXTERNAL_SHARING_REPORT_FAILED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_b8
    const-string v1, "no_expiration_link_gen_create_report"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->NO_EXPIRATION_LINK_GEN_CREATE_REPORT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_b9
    const-string v1, "no_expiration_link_gen_report_failed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->NO_EXPIRATION_LINK_GEN_REPORT_FAILED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ba
    const-string v1, "no_password_link_gen_create_report"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->NO_PASSWORD_LINK_GEN_CREATE_REPORT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_bb
    const-string v1, "no_password_link_gen_report_failed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->NO_PASSWORD_LINK_GEN_REPORT_FAILED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_bc
    const-string v1, "no_password_link_view_create_report"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->NO_PASSWORD_LINK_VIEW_CREATE_REPORT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_bd
    const-string v1, "no_password_link_view_report_failed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->NO_PASSWORD_LINK_VIEW_REPORT_FAILED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_be
    const-string v1, "outdated_link_view_create_report"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->OUTDATED_LINK_VIEW_CREATE_REPORT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_bf
    const-string v1, "outdated_link_view_report_failed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->OUTDATED_LINK_VIEW_REPORT_FAILED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_c0
    const-string v1, "paper_admin_export_start"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_ADMIN_EXPORT_START:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_c1
    const-string v1, "smart_sync_create_admin_privilege_report"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_c2
    const-string v1, "team_activity_create_report"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_ACTIVITY_CREATE_REPORT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_c3
    const-string v1, "team_activity_create_report_fail"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_ACTIVITY_CREATE_REPORT_FAIL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_c4
    const-string v1, "collection_share"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->COLLECTION_SHARE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_c5
    const-string v1, "file_transfers_file_add"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_TRANSFERS_FILE_ADD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_c6
    const-string v1, "file_transfers_transfer_delete"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_TRANSFERS_TRANSFER_DELETE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_c7
    const-string v1, "file_transfers_transfer_download"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_TRANSFERS_TRANSFER_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_c8
    const-string v1, "file_transfers_transfer_send"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_TRANSFERS_TRANSFER_SEND:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_c9
    const-string v1, "file_transfers_transfer_view"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_TRANSFERS_TRANSFER_VIEW:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ca
    const-string v1, "note_acl_invite_only"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->NOTE_ACL_INVITE_ONLY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_cb
    const-string v1, "note_acl_link"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->NOTE_ACL_LINK:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_cc
    const-string v1, "note_acl_team_link"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->NOTE_ACL_TEAM_LINK:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_cd
    const-string v1, "note_shared"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->NOTE_SHARED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ce
    const-string v1, "note_share_receive"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->NOTE_SHARE_RECEIVE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_cf
    const-string v1, "open_note_shared"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->OPEN_NOTE_SHARED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_d0
    const-string v1, "sf_add_group"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_ADD_GROUP:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_d1
    const-string v1, "sf_allow_non_members_to_view_shared_links"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_d2
    const-string v1, "sf_external_invite_warn"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_EXTERNAL_INVITE_WARN:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_d3
    const-string v1, "sf_fb_invite"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_FB_INVITE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_d4
    const-string v1, "sf_fb_invite_change_role"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_FB_INVITE_CHANGE_ROLE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_d5
    const-string v1, "sf_fb_uninvite"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_FB_UNINVITE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_d6
    const-string v1, "sf_invite_group"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_INVITE_GROUP:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_d7
    const-string v1, "sf_team_grant_access"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_TEAM_GRANT_ACCESS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_d8
    const-string v1, "sf_team_invite"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_TEAM_INVITE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_d9
    const-string v1, "sf_team_invite_change_role"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_TEAM_INVITE_CHANGE_ROLE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_da
    const-string v1, "sf_team_join"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_TEAM_JOIN:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_db
    const-string v1, "sf_team_join_from_oob_link"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_TEAM_JOIN_FROM_OOB_LINK:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_dc
    const-string v1, "sf_team_uninvite"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SF_TEAM_UNINVITE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_dd
    const-string v1, "shared_content_add_invitees"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_ADD_INVITEES:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_de
    const-string v1, "shared_content_add_link_expiry"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_ADD_LINK_EXPIRY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_df
    const-string v1, "shared_content_add_link_password"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_ADD_LINK_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_e0
    const-string v1, "shared_content_add_member"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_ADD_MEMBER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_e1
    const-string v1, "shared_content_change_downloads_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_e2
    const-string v1, "shared_content_change_invitee_role"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_CHANGE_INVITEE_ROLE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_e3
    const-string v1, "shared_content_change_link_audience"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_CHANGE_LINK_AUDIENCE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_e4
    const-string v1, "shared_content_change_link_expiry"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_CHANGE_LINK_EXPIRY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_e5
    const-string v1, "shared_content_change_link_password"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_CHANGE_LINK_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_e6
    const-string v1, "shared_content_change_member_role"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_CHANGE_MEMBER_ROLE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_e7
    const-string v1, "shared_content_change_viewer_info_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_e8
    const-string v1, "shared_content_claim_invitation"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_CLAIM_INVITATION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_e9
    const-string v1, "shared_content_copy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_COPY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ea
    const-string v1, "shared_content_download"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_eb
    const-string v1, "shared_content_relinquish_membership"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ec
    const-string v1, "shared_content_remove_invitees"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_REMOVE_INVITEES:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ed
    const-string v1, "shared_content_remove_link_expiry"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_REMOVE_LINK_EXPIRY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ee
    const-string v1, "shared_content_remove_link_password"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_REMOVE_LINK_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ef
    const-string v1, "shared_content_remove_member"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_REMOVE_MEMBER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_f0
    const-string v1, "shared_content_request_access"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_REQUEST_ACCESS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_f1
    const-string v1, "shared_content_restore_invitees"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_RESTORE_INVITEES:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_f2
    const-string v1, "shared_content_restore_member"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_RESTORE_MEMBER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_f3
    const-string v1, "shared_content_unshare"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_UNSHARE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_f4
    const-string v1, "shared_content_view"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_CONTENT_VIEW:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_f5
    const-string v1, "shared_folder_change_link_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_FOLDER_CHANGE_LINK_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_f6
    const-string v1, "shared_folder_change_members_inheritance_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_FOLDER_CHANGE_MEMBERS_INHERITANCE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_f7
    const-string v1, "shared_folder_change_members_management_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_FOLDER_CHANGE_MEMBERS_MANAGEMENT_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_f8
    const-string v1, "shared_folder_change_members_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_FOLDER_CHANGE_MEMBERS_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_f9
    const-string v1, "shared_folder_create"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_FOLDER_CREATE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_fa
    const-string v1, "shared_folder_decline_invitation"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_FOLDER_DECLINE_INVITATION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_fb
    const-string v1, "shared_folder_mount"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_FOLDER_MOUNT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_fc
    const-string v1, "shared_folder_nest"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_FOLDER_NEST:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_fd
    const-string v1, "shared_folder_transfer_ownership"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fe

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_FOLDER_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_fe
    const-string v1, "shared_folder_unmount"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ff

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_FOLDER_UNMOUNT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_ff
    const-string v1, "shared_link_add_expiry"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_ADD_EXPIRY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_100
    const-string v1, "shared_link_change_expiry"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_CHANGE_EXPIRY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_101
    const-string v1, "shared_link_change_visibility"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_CHANGE_VISIBILITY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_102
    const-string v1, "shared_link_copy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_COPY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_103
    const-string v1, "shared_link_create"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_104

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_CREATE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_104
    const-string v1, "shared_link_disable"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_DISABLE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_105
    const-string v1, "shared_link_download"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_106
    const-string v1, "shared_link_remove_expiry"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_REMOVE_EXPIRY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_107
    const-string v1, "shared_link_settings_add_expiration"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_108

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_SETTINGS_ADD_EXPIRATION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_108
    const-string v1, "shared_link_settings_add_password"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_SETTINGS_ADD_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_109
    const-string v1, "shared_link_settings_allow_download_disabled"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_DISABLED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_10a
    const-string v1, "shared_link_settings_allow_download_enabled"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_ENABLED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_10b
    const-string v1, "shared_link_settings_change_audience"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_SETTINGS_CHANGE_AUDIENCE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_10c
    const-string v1, "shared_link_settings_change_expiration"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_SETTINGS_CHANGE_EXPIRATION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_10d
    const-string v1, "shared_link_settings_change_password"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_SETTINGS_CHANGE_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_10e
    const-string v1, "shared_link_settings_remove_expiration"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_SETTINGS_REMOVE_EXPIRATION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_10f
    const-string v1, "shared_link_settings_remove_password"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_SETTINGS_REMOVE_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_110
    const-string v1, "shared_link_share"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_111

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_SHARE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_111
    const-string v1, "shared_link_view"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_LINK_VIEW:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_112
    const-string v1, "shared_note_opened"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARED_NOTE_OPENED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_113
    const-string v1, "shmodel_group_share"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHMODEL_GROUP_SHARE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_114
    const-string v1, "showcase_access_granted"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_ACCESS_GRANTED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_115
    const-string v1, "showcase_add_member"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_ADD_MEMBER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_116
    const-string v1, "showcase_archived"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_ARCHIVED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_117
    const-string v1, "showcase_created"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_118

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_CREATED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_118
    const-string v1, "showcase_delete_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_DELETE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_119
    const-string v1, "showcase_edited"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_EDITED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_11a
    const-string v1, "showcase_edit_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_EDIT_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_11b
    const-string v1, "showcase_file_added"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_FILE_ADDED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_11c
    const-string v1, "showcase_file_download"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_FILE_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_11d
    const-string v1, "showcase_file_removed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_FILE_REMOVED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_11e
    const-string v1, "showcase_file_view"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_FILE_VIEW:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_11f
    const-string v1, "showcase_permanently_deleted"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_120

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_PERMANENTLY_DELETED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_120
    const-string v1, "showcase_post_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_POST_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_121
    const-string v1, "showcase_remove_member"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_REMOVE_MEMBER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_122
    const-string v1, "showcase_renamed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_123

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_RENAMED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_123
    const-string v1, "showcase_request_access"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_REQUEST_ACCESS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_124
    const-string v1, "showcase_resolve_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_RESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_125
    const-string v1, "showcase_restored"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_126

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_RESTORED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_126
    const-string v1, "showcase_trashed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_127

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_TRASHED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_127
    const-string v1, "showcase_trashed_deprecated"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_TRASHED_DEPRECATED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_128
    const-string v1, "showcase_unresolve_comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_UNRESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_129
    const-string v1, "showcase_untrashed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_UNTRASHED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_12a
    const-string v1, "showcase_untrashed_deprecated"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_UNTRASHED_DEPRECATED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_12b
    const-string v1, "showcase_view"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_VIEW:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_12c
    const-string v1, "sso_add_cert"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SSO_ADD_CERT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_12d
    const-string v1, "sso_add_login_url"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SSO_ADD_LOGIN_URL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_12e
    const-string v1, "sso_add_logout_url"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SSO_ADD_LOGOUT_URL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_12f
    const-string v1, "sso_change_cert"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_130

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SSO_CHANGE_CERT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_130
    const-string v1, "sso_change_login_url"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SSO_CHANGE_LOGIN_URL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_131
    const-string v1, "sso_change_logout_url"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_132

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SSO_CHANGE_LOGOUT_URL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_132
    const-string v1, "sso_change_saml_identity_mode"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_133

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SSO_CHANGE_SAML_IDENTITY_MODE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_133
    const-string v1, "sso_remove_cert"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_134

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SSO_REMOVE_CERT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_134
    const-string v1, "sso_remove_login_url"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_135

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SSO_REMOVE_LOGIN_URL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_135
    const-string v1, "sso_remove_logout_url"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SSO_REMOVE_LOGOUT_URL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_136
    const-string v1, "team_folder_change_status"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_FOLDER_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_137
    const-string v1, "team_folder_create"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_FOLDER_CREATE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_138
    const-string v1, "team_folder_downgrade"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_139

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_FOLDER_DOWNGRADE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_139
    const-string v1, "team_folder_permanently_delete"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_FOLDER_PERMANENTLY_DELETE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_13a
    const-string v1, "team_folder_rename"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_FOLDER_RENAME:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_13b
    const-string v1, "team_selective_sync_settings_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_SELECTIVE_SYNC_SETTINGS_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_13c
    const-string v1, "account_capture_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->ACCOUNT_CAPTURE_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_13d
    const-string v1, "allow_download_disabled"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->ALLOW_DOWNLOAD_DISABLED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_13e
    const-string v1, "allow_download_enabled"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->ALLOW_DOWNLOAD_ENABLED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_13f
    const-string v1, "camera_uploads_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_140

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->CAMERA_UPLOADS_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_140
    const-string v1, "content_administration_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_141

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->CONTENT_ADMINISTRATION_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_141
    const-string v1, "data_placement_restriction_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_142

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_142
    const-string v1, "data_placement_restriction_satisfy_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_143
    const-string v1, "device_approvals_add_exception"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_144

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_APPROVALS_ADD_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_144
    const-string v1, "device_approvals_change_desktop_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_145
    const-string v1, "device_approvals_change_mobile_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_146

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_APPROVALS_CHANGE_MOBILE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_146
    const-string v1, "device_approvals_change_overage_action"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_147

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_147
    const-string v1, "device_approvals_change_unlink_action"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_148

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_APPROVALS_CHANGE_UNLINK_ACTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_148
    const-string v1, "device_approvals_remove_exception"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DEVICE_APPROVALS_REMOVE_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_149
    const-string v1, "directory_restrictions_add_members"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DIRECTORY_RESTRICTIONS_ADD_MEMBERS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_14a
    const-string v1, "directory_restrictions_remove_members"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->DIRECTORY_RESTRICTIONS_REMOVE_MEMBERS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_14b
    const-string v1, "emm_add_exception"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->EMM_ADD_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_14c
    const-string v1, "emm_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->EMM_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_14d
    const-string v1, "emm_remove_exception"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->EMM_REMOVE_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_14e
    const-string v1, "extended_version_history_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->EXTENDED_VERSION_HISTORY_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_14f
    const-string v1, "file_comments_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_150

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_COMMENTS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_150
    const-string v1, "file_locking_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_151

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_LOCKING_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_151
    const-string v1, "file_requests_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_152

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_REQUESTS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_152
    const-string v1, "file_requests_emails_enabled"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_REQUESTS_EMAILS_ENABLED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_153
    const-string v1, "file_requests_emails_restricted_to_team_only"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_154
    const-string v1, "file_transfers_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->FILE_TRANSFERS_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_155
    const-string v1, "google_sso_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GOOGLE_SSO_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_156
    const-string v1, "group_user_management_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_157

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GROUP_USER_MANAGEMENT_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_157
    const-string v1, "integration_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_158

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->INTEGRATION_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_158
    const-string v1, "member_requests_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_159

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_REQUESTS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_159
    const-string v1, "member_send_invite_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_SEND_INVITE_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_15a
    const-string v1, "member_space_limits_add_exception"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_SPACE_LIMITS_ADD_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_15b
    const-string v1, "member_space_limits_change_caps_type_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_SPACE_LIMITS_CHANGE_CAPS_TYPE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_15c
    const-string v1, "member_space_limits_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_SPACE_LIMITS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_15d
    const-string v1, "member_space_limits_remove_exception"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_15e
    const-string v1, "member_suggestions_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MEMBER_SUGGESTIONS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_15f
    const-string v1, "microsoft_office_addin_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_160

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_160
    const-string v1, "network_control_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_161

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->NETWORK_CONTROL_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_161
    const-string v1, "paper_change_deployment_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_162

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CHANGE_DEPLOYMENT_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_162
    const-string v1, "paper_change_member_link_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_163

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CHANGE_MEMBER_LINK_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_163
    const-string v1, "paper_change_member_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_164

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CHANGE_MEMBER_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_164
    const-string v1, "paper_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_165
    const-string v1, "paper_default_folder_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_166

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DEFAULT_FOLDER_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_166
    const-string v1, "paper_desktop_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_167

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_DESKTOP_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_167
    const-string v1, "paper_enabled_users_group_addition"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_168

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_ENABLED_USERS_GROUP_ADDITION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_168
    const-string v1, "paper_enabled_users_group_removal"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PAPER_ENABLED_USERS_GROUP_REMOVAL:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_169
    const-string v1, "password_strength_requirements_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PASSWORD_STRENGTH_REQUIREMENTS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_16a
    const-string v1, "permanent_delete_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->PERMANENT_DELETE_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_16b
    const-string v1, "reseller_support_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->RESELLER_SUPPORT_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_16c
    const-string v1, "rewind_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->REWIND_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_16d
    const-string v1, "send_for_signature_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SEND_FOR_SIGNATURE_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_16e
    const-string v1, "sharing_change_folder_join_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARING_CHANGE_FOLDER_JOIN_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_16f
    const-string v1, "sharing_change_link_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_170

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARING_CHANGE_LINK_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_170
    const-string v1, "sharing_change_member_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_171

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHARING_CHANGE_MEMBER_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_171
    const-string v1, "showcase_change_download_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_172

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_CHANGE_DOWNLOAD_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_172
    const-string v1, "showcase_change_enabled_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_173

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_CHANGE_ENABLED_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_173
    const-string v1, "showcase_change_external_sharing_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_174

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SHOWCASE_CHANGE_EXTERNAL_SHARING_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_174
    const-string v1, "smarter_smart_sync_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_175

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SMARTER_SMART_SYNC_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_175
    const-string v1, "smart_sync_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_176

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SMART_SYNC_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_176
    const-string v1, "smart_sync_not_opt_out"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_177

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SMART_SYNC_NOT_OPT_OUT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_177
    const-string v1, "smart_sync_opt_out"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_178

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SMART_SYNC_OPT_OUT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_178
    const-string v1, "sso_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_179

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->SSO_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_179
    const-string v1, "team_extensions_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_EXTENSIONS_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_17a
    const-string v1, "team_selective_sync_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_SELECTIVE_SYNC_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_17b
    const-string v1, "team_sharing_whitelist_subjects_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_SHARING_WHITELIST_SUBJECTS_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_17c
    const-string v1, "tfa_add_exception"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TFA_ADD_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_17d
    const-string v1, "tfa_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TFA_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_17e
    const-string v1, "tfa_remove_exception"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TFA_REMOVE_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_17f
    const-string v1, "two_account_change_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_180

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TWO_ACCOUNT_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_180
    const-string v1, "viewer_info_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_181

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->VIEWER_INFO_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_181
    const-string v1, "watermarking_policy_changed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_182

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->WATERMARKING_POLICY_CHANGED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_182
    const-string v1, "web_sessions_change_active_session_limit"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_183

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->WEB_SESSIONS_CHANGE_ACTIVE_SESSION_LIMIT:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_183
    const-string v1, "web_sessions_change_fixed_length_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_184

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_184
    const-string v1, "web_sessions_change_idle_length_policy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_185

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_185
    const-string v1, "team_merge_from"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_186

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_FROM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_186
    const-string v1, "team_merge_to"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_187

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_TO:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_187
    const-string v1, "team_profile_add_logo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_188

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_PROFILE_ADD_LOGO:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_188
    const-string v1, "team_profile_change_default_language"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_189

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_189
    const-string v1, "team_profile_change_logo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_PROFILE_CHANGE_LOGO:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_18a
    const-string v1, "team_profile_change_name"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_PROFILE_CHANGE_NAME:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_18b
    const-string v1, "team_profile_remove_logo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_PROFILE_REMOVE_LOGO:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_18c
    const-string v1, "tfa_add_backup_phone"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TFA_ADD_BACKUP_PHONE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_18d
    const-string v1, "tfa_add_security_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TFA_ADD_SECURITY_KEY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_18e
    const-string v1, "tfa_change_backup_phone"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TFA_CHANGE_BACKUP_PHONE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_18f
    const-string v1, "tfa_change_status"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_190

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TFA_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_190
    const-string v1, "tfa_remove_backup_phone"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_191

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TFA_REMOVE_BACKUP_PHONE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_191
    const-string v1, "tfa_remove_security_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_192

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TFA_REMOVE_SECURITY_KEY:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_192
    const-string v1, "tfa_reset"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_193

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TFA_RESET:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_193
    const-string v1, "changed_enterprise_admin_role"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_194

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->CHANGED_ENTERPRISE_ADMIN_ROLE:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_194
    const-string v1, "changed_enterprise_connected_team_status"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_195

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->CHANGED_ENTERPRISE_CONNECTED_TEAM_STATUS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_195
    const-string v1, "ended_enterprise_admin_session"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_196

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->ENDED_ENTERPRISE_ADMIN_SESSION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_196
    const-string v1, "ended_enterprise_admin_session_deprecated"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->ENDED_ENTERPRISE_ADMIN_SESSION_DEPRECATED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_197
    const-string v1, "enterprise_settings_locking"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_198

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->ENTERPRISE_SETTINGS_LOCKING:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_198
    const-string v1, "guest_admin_change_status"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_199

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->GUEST_ADMIN_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_199
    const-string v1, "started_enterprise_admin_session"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19a

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->STARTED_ENTERPRISE_ADMIN_SESSION:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_19a
    const-string v1, "team_merge_request_accepted"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19b

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_ACCEPTED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_19b
    const-string v1, "team_merge_request_accepted_shown_to_primary_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19c

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_PRIMARY_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_19c
    const-string v1, "team_merge_request_accepted_shown_to_secondary_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19d

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_SECONDARY_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_19d
    const-string v1, "team_merge_request_auto_canceled"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19e

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_AUTO_CANCELED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_19e
    const-string v1, "team_merge_request_canceled"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19f

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_CANCELED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_19f
    const-string v1, "team_merge_request_canceled_shown_to_primary_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_PRIMARY_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_1a0
    const-string v1, "team_merge_request_canceled_shown_to_secondary_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_SECONDARY_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_1a1
    const-string v1, "team_merge_request_expired"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_EXPIRED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_1a2
    const-string v1, "team_merge_request_expired_shown_to_primary_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a3

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_PRIMARY_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto/16 :goto_1

    :cond_1a3
    const-string v1, "team_merge_request_expired_shown_to_secondary_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_SECONDARY_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto :goto_1

    :cond_1a4
    const-string v1, "team_merge_request_rejected_shown_to_primary_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a5

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_PRIMARY_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto :goto_1

    :cond_1a5
    const-string v1, "team_merge_request_rejected_shown_to_secondary_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a6

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_SECONDARY_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto :goto_1

    :cond_1a6
    const-string v1, "team_merge_request_reminder"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a7

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_REMINDER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto :goto_1

    :cond_1a7
    const-string v1, "team_merge_request_reminder_shown_to_primary_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_PRIMARY_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto :goto_1

    :cond_1a8
    const-string v1, "team_merge_request_reminder_shown_to_secondary_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_SECONDARY_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto :goto_1

    :cond_1a9
    const-string v1, "team_merge_request_revoked"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_REVOKED:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto :goto_1

    :cond_1aa
    const-string v1, "team_merge_request_sent_shown_to_primary_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ab

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_SENT_SHOWN_TO_PRIMARY_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto :goto_1

    :cond_1ab
    const-string v1, "team_merge_request_sent_shown_to_secondary_team"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1ac

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->TEAM_MERGE_REQUEST_SENT_SHOWN_TO_SECONDARY_TEAM:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    goto :goto_1

    :cond_1ac
    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg;->OTHER:Lcom/dropbox/core/v2/teamlog/EventTypeArg;

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

.method public b(Lcom/dropbox/core/v2/teamlog/EventTypeArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    sget-object p0, Lcom/dropbox/core/v2/teamlog/EventTypeArg$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const-string p0, "other"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "team_merge_request_sent_shown_to_secondary_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "team_merge_request_sent_shown_to_primary_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "team_merge_request_revoked"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string p0, "team_merge_request_reminder_shown_to_secondary_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string p0, "team_merge_request_reminder_shown_to_primary_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    const-string p0, "team_merge_request_reminder"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    const-string p0, "team_merge_request_rejected_shown_to_secondary_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    const-string p0, "team_merge_request_rejected_shown_to_primary_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const-string p0, "team_merge_request_expired_shown_to_secondary_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    const-string p0, "team_merge_request_expired_shown_to_primary_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const-string p0, "team_merge_request_expired"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    const-string p0, "team_merge_request_canceled_shown_to_secondary_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    const-string p0, "team_merge_request_canceled_shown_to_primary_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    const-string p0, "team_merge_request_canceled"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    const-string p0, "team_merge_request_auto_canceled"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    const-string p0, "team_merge_request_accepted_shown_to_secondary_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    const-string p0, "team_merge_request_accepted_shown_to_primary_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    const-string p0, "team_merge_request_accepted"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    const-string p0, "started_enterprise_admin_session"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13
    const-string p0, "guest_admin_change_status"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14
    const-string p0, "enterprise_settings_locking"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15
    const-string p0, "ended_enterprise_admin_session_deprecated"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16
    const-string p0, "ended_enterprise_admin_session"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17
    const-string p0, "changed_enterprise_connected_team_status"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18
    const-string p0, "changed_enterprise_admin_role"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_19
    const-string p0, "tfa_reset"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1a
    const-string p0, "tfa_remove_security_key"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1b
    const-string p0, "tfa_remove_backup_phone"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1c
    const-string p0, "tfa_change_status"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1d
    const-string p0, "tfa_change_backup_phone"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1e
    const-string p0, "tfa_add_security_key"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1f
    const-string p0, "tfa_add_backup_phone"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_20
    const-string p0, "team_profile_remove_logo"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_21
    const-string p0, "team_profile_change_name"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_22
    const-string p0, "team_profile_change_logo"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_23
    const-string p0, "team_profile_change_default_language"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_24
    const-string p0, "team_profile_add_logo"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_25
    const-string p0, "team_merge_to"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_26
    const-string p0, "team_merge_from"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_27
    const-string p0, "web_sessions_change_idle_length_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_28
    const-string p0, "web_sessions_change_fixed_length_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_29
    const-string p0, "web_sessions_change_active_session_limit"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2a
    const-string p0, "watermarking_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2b
    const-string p0, "viewer_info_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2c
    const-string p0, "two_account_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2d
    const-string p0, "tfa_remove_exception"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2e
    const-string p0, "tfa_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2f
    const-string p0, "tfa_add_exception"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_30
    const-string p0, "team_sharing_whitelist_subjects_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_31
    const-string p0, "team_selective_sync_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_32
    const-string p0, "team_extensions_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_33
    const-string p0, "sso_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_34
    const-string p0, "smart_sync_opt_out"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_35
    const-string p0, "smart_sync_not_opt_out"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_36
    const-string p0, "smart_sync_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_37
    const-string p0, "smarter_smart_sync_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_38
    const-string p0, "showcase_change_external_sharing_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_39
    const-string p0, "showcase_change_enabled_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3a
    const-string p0, "showcase_change_download_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3b
    const-string p0, "sharing_change_member_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3c
    const-string p0, "sharing_change_link_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3d
    const-string p0, "sharing_change_folder_join_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3e
    const-string p0, "send_for_signature_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3f
    const-string p0, "rewind_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_40
    const-string p0, "reseller_support_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_41
    const-string p0, "permanent_delete_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_42
    const-string p0, "password_strength_requirements_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_43
    const-string p0, "paper_enabled_users_group_removal"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_44
    const-string p0, "paper_enabled_users_group_addition"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_45
    const-string p0, "paper_desktop_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_46
    const-string p0, "paper_default_folder_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_47
    const-string p0, "paper_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_48
    const-string p0, "paper_change_member_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_49
    const-string p0, "paper_change_member_link_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4a
    const-string p0, "paper_change_deployment_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4b
    const-string p0, "network_control_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4c
    const-string p0, "microsoft_office_addin_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4d
    const-string p0, "member_suggestions_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4e
    const-string p0, "member_space_limits_remove_exception"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4f
    const-string p0, "member_space_limits_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_50
    const-string p0, "member_space_limits_change_caps_type_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_51
    const-string p0, "member_space_limits_add_exception"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_52
    const-string p0, "member_send_invite_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_53
    const-string p0, "member_requests_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_54
    const-string p0, "integration_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_55
    const-string p0, "group_user_management_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_56
    const-string p0, "google_sso_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_57
    const-string p0, "file_transfers_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_58
    const-string p0, "file_requests_emails_restricted_to_team_only"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_59
    const-string p0, "file_requests_emails_enabled"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5a
    const-string p0, "file_requests_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5b
    const-string p0, "file_locking_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5c
    const-string p0, "file_comments_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5d
    const-string p0, "extended_version_history_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5e
    const-string p0, "emm_remove_exception"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5f
    const-string p0, "emm_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_60
    const-string p0, "emm_add_exception"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_61
    const-string p0, "directory_restrictions_remove_members"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_62
    const-string p0, "directory_restrictions_add_members"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_63
    const-string p0, "device_approvals_remove_exception"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_64
    const-string p0, "device_approvals_change_unlink_action"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_65
    const-string p0, "device_approvals_change_overage_action"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_66
    const-string p0, "device_approvals_change_mobile_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_67
    const-string p0, "device_approvals_change_desktop_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_68
    const-string p0, "device_approvals_add_exception"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_69
    const-string p0, "data_placement_restriction_satisfy_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6a
    const-string p0, "data_placement_restriction_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6b
    const-string p0, "content_administration_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6c
    const-string p0, "camera_uploads_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6d
    const-string p0, "allow_download_enabled"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6e
    const-string p0, "allow_download_disabled"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6f
    const-string p0, "account_capture_change_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_70
    const-string p0, "team_selective_sync_settings_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_71
    const-string p0, "team_folder_rename"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_72
    const-string p0, "team_folder_permanently_delete"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_73
    const-string p0, "team_folder_downgrade"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_74
    const-string p0, "team_folder_create"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_75
    const-string p0, "team_folder_change_status"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_76
    const-string p0, "sso_remove_logout_url"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_77
    const-string p0, "sso_remove_login_url"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_78
    const-string p0, "sso_remove_cert"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_79
    const-string p0, "sso_change_saml_identity_mode"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7a
    const-string p0, "sso_change_logout_url"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7b
    const-string p0, "sso_change_login_url"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7c
    const-string p0, "sso_change_cert"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7d
    const-string p0, "sso_add_logout_url"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7e
    const-string p0, "sso_add_login_url"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7f
    const-string p0, "sso_add_cert"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_80
    const-string p0, "showcase_view"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_81
    const-string p0, "showcase_untrashed_deprecated"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_82
    const-string p0, "showcase_untrashed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_83
    const-string p0, "showcase_unresolve_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_84
    const-string p0, "showcase_trashed_deprecated"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_85
    const-string p0, "showcase_trashed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_86
    const-string p0, "showcase_restored"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_87
    const-string p0, "showcase_resolve_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_88
    const-string p0, "showcase_request_access"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_89
    const-string p0, "showcase_renamed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8a
    const-string p0, "showcase_remove_member"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8b
    const-string p0, "showcase_post_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8c
    const-string p0, "showcase_permanently_deleted"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8d
    const-string p0, "showcase_file_view"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8e
    const-string p0, "showcase_file_removed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8f
    const-string p0, "showcase_file_download"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_90
    const-string p0, "showcase_file_added"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_91
    const-string p0, "showcase_edit_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_92
    const-string p0, "showcase_edited"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_93
    const-string p0, "showcase_delete_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_94
    const-string p0, "showcase_created"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_95
    const-string p0, "showcase_archived"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_96
    const-string p0, "showcase_add_member"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_97
    const-string p0, "showcase_access_granted"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_98
    const-string p0, "shmodel_group_share"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_99
    const-string p0, "shared_note_opened"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9a
    const-string p0, "shared_link_view"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9b
    const-string p0, "shared_link_share"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9c
    const-string p0, "shared_link_settings_remove_password"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9d
    const-string p0, "shared_link_settings_remove_expiration"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9e
    const-string p0, "shared_link_settings_change_password"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9f
    const-string p0, "shared_link_settings_change_expiration"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a0
    const-string p0, "shared_link_settings_change_audience"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a1
    const-string p0, "shared_link_settings_allow_download_enabled"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a2
    const-string p0, "shared_link_settings_allow_download_disabled"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a3
    const-string p0, "shared_link_settings_add_password"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a4
    const-string p0, "shared_link_settings_add_expiration"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a5
    const-string p0, "shared_link_remove_expiry"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a6
    const-string p0, "shared_link_download"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a7
    const-string p0, "shared_link_disable"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a8
    const-string p0, "shared_link_create"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a9
    const-string p0, "shared_link_copy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_aa
    const-string p0, "shared_link_change_visibility"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ab
    const-string p0, "shared_link_change_expiry"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ac
    const-string p0, "shared_link_add_expiry"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ad
    const-string p0, "shared_folder_unmount"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ae
    const-string p0, "shared_folder_transfer_ownership"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_af
    const-string p0, "shared_folder_nest"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b0
    const-string p0, "shared_folder_mount"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b1
    const-string p0, "shared_folder_decline_invitation"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b2
    const-string p0, "shared_folder_create"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b3
    const-string p0, "shared_folder_change_members_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b4
    const-string p0, "shared_folder_change_members_management_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b5
    const-string p0, "shared_folder_change_members_inheritance_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b6
    const-string p0, "shared_folder_change_link_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b7
    const-string p0, "shared_content_view"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b8
    const-string p0, "shared_content_unshare"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b9
    const-string p0, "shared_content_restore_member"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ba
    const-string p0, "shared_content_restore_invitees"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_bb
    const-string p0, "shared_content_request_access"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_bc
    const-string p0, "shared_content_remove_member"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_bd
    const-string p0, "shared_content_remove_link_password"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_be
    const-string p0, "shared_content_remove_link_expiry"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_bf
    const-string p0, "shared_content_remove_invitees"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c0
    const-string p0, "shared_content_relinquish_membership"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c1
    const-string p0, "shared_content_download"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c2
    const-string p0, "shared_content_copy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c3
    const-string p0, "shared_content_claim_invitation"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c4
    const-string p0, "shared_content_change_viewer_info_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c5
    const-string p0, "shared_content_change_member_role"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c6
    const-string p0, "shared_content_change_link_password"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c7
    const-string p0, "shared_content_change_link_expiry"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c8
    const-string p0, "shared_content_change_link_audience"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c9
    const-string p0, "shared_content_change_invitee_role"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ca
    const-string p0, "shared_content_change_downloads_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_cb
    const-string p0, "shared_content_add_member"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_cc
    const-string p0, "shared_content_add_link_password"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_cd
    const-string p0, "shared_content_add_link_expiry"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ce
    const-string p0, "shared_content_add_invitees"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_cf
    const-string p0, "sf_team_uninvite"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d0
    const-string p0, "sf_team_join_from_oob_link"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d1
    const-string p0, "sf_team_join"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d2
    const-string p0, "sf_team_invite_change_role"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d3
    const-string p0, "sf_team_invite"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d4
    const-string p0, "sf_team_grant_access"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d5
    const-string p0, "sf_invite_group"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d6
    const-string p0, "sf_fb_uninvite"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d7
    const-string p0, "sf_fb_invite_change_role"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d8
    const-string p0, "sf_fb_invite"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d9
    const-string p0, "sf_external_invite_warn"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_da
    const-string p0, "sf_allow_non_members_to_view_shared_links"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_db
    const-string p0, "sf_add_group"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_dc
    const-string p0, "open_note_shared"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_dd
    const-string p0, "note_share_receive"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_de
    const-string p0, "note_shared"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_df
    const-string p0, "note_acl_team_link"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e0
    const-string p0, "note_acl_link"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e1
    const-string p0, "note_acl_invite_only"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e2
    const-string p0, "file_transfers_transfer_view"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e3
    const-string p0, "file_transfers_transfer_send"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e4
    const-string p0, "file_transfers_transfer_download"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e5
    const-string p0, "file_transfers_transfer_delete"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e6
    const-string p0, "file_transfers_file_add"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e7
    const-string p0, "collection_share"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e8
    const-string p0, "team_activity_create_report_fail"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e9
    const-string p0, "team_activity_create_report"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ea
    const-string p0, "smart_sync_create_admin_privilege_report"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_eb
    const-string p0, "paper_admin_export_start"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ec
    const-string p0, "outdated_link_view_report_failed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ed
    const-string p0, "outdated_link_view_create_report"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ee
    const-string p0, "no_password_link_view_report_failed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ef
    const-string p0, "no_password_link_view_create_report"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f0
    const-string p0, "no_password_link_gen_report_failed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f1
    const-string p0, "no_password_link_gen_create_report"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f2
    const-string p0, "no_expiration_link_gen_report_failed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f3
    const-string p0, "no_expiration_link_gen_create_report"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f4
    const-string p0, "external_sharing_report_failed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f5
    const-string p0, "external_sharing_create_report"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f6
    const-string p0, "export_members_report_fail"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f7
    const-string p0, "export_members_report"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f8
    const-string p0, "emm_create_usage_report"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f9
    const-string p0, "emm_create_exceptions_report"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_fa
    const-string p0, "password_reset_all"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_fb
    const-string p0, "password_reset"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_fc
    const-string p0, "password_change"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_fd
    const-string p0, "paper_published_link_view"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_fe
    const-string p0, "paper_published_link_disabled"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ff
    const-string p0, "paper_published_link_create"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_100
    const-string p0, "paper_published_link_change_permission"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_101
    const-string p0, "paper_folder_team_invite"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_102
    const-string p0, "paper_folder_followed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_103
    const-string p0, "paper_folder_deleted"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_104
    const-string p0, "paper_folder_change_subscription"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_105
    const-string p0, "paper_external_view_forbid"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_106
    const-string p0, "paper_external_view_default_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_107
    const-string p0, "paper_external_view_allow"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_108
    const-string p0, "paper_doc_view"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_109
    const-string p0, "paper_doc_untrashed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10a
    const-string p0, "paper_doc_unresolve_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10b
    const-string p0, "paper_doc_trashed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10c
    const-string p0, "paper_doc_team_invite"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10d
    const-string p0, "paper_doc_slack_share"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10e
    const-string p0, "paper_doc_revert"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10f
    const-string p0, "paper_doc_resolve_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_110
    const-string p0, "paper_doc_request_access"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_111
    const-string p0, "paper_doc_ownership_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_112
    const-string p0, "paper_doc_mention"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_113
    const-string p0, "paper_doc_followed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_114
    const-string p0, "paper_doc_edit_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_115
    const-string p0, "paper_doc_edit"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_116
    const-string p0, "paper_doc_download"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_117
    const-string p0, "paper_doc_delete_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_118
    const-string p0, "paper_doc_deleted"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_119
    const-string p0, "paper_doc_change_subscription"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11a
    const-string p0, "paper_doc_change_sharing_policy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11b
    const-string p0, "paper_doc_change_member_role"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11c
    const-string p0, "paper_doc_add_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11d
    const-string p0, "paper_content_restore"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11e
    const-string p0, "paper_content_rename"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11f
    const-string p0, "paper_content_remove_member"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_120
    const-string p0, "paper_content_remove_from_folder"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_121
    const-string p0, "paper_content_permanently_delete"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_122
    const-string p0, "paper_content_create"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_123
    const-string p0, "paper_content_archive"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_124
    const-string p0, "paper_content_add_to_folder"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_125
    const-string p0, "paper_content_add_member"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_126
    const-string p0, "binder_reorder_section"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_127
    const-string p0, "binder_reorder_page"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_128
    const-string p0, "binder_rename_section"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_129
    const-string p0, "binder_rename_page"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12a
    const-string p0, "binder_remove_section"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12b
    const-string p0, "binder_remove_page"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12c
    const-string p0, "binder_add_section"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12d
    const-string p0, "binder_add_page"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12e
    const-string p0, "secondary_mails_policy_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12f
    const-string p0, "secondary_email_verified"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_130
    const-string p0, "secondary_email_deleted"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_131
    const-string p0, "pending_secondary_email_added"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_132
    const-string p0, "member_transfer_account_contents"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_133
    const-string p0, "member_suggest"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_134
    const-string p0, "member_space_limits_remove_custom_quota"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_135
    const-string p0, "member_space_limits_change_status"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_136
    const-string p0, "member_space_limits_change_custom_quota"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_137
    const-string p0, "member_space_limits_add_custom_quota"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_138
    const-string p0, "member_set_profile_photo"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_139
    const-string p0, "member_remove_external_id"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13a
    const-string p0, "member_permanently_delete_account_contents"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13b
    const-string p0, "member_delete_profile_photo"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13c
    const-string p0, "member_delete_manual_contacts"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13d
    const-string p0, "member_change_status"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13e
    const-string p0, "member_change_name"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13f
    const-string p0, "member_change_membership_type"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_140
    const-string p0, "member_change_external_id"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_141
    const-string p0, "member_change_email"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_142
    const-string p0, "member_change_admin_role"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_143
    const-string p0, "member_add_name"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_144
    const-string p0, "member_add_external_id"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_145
    const-string p0, "delete_team_invite_link"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_146
    const-string p0, "create_team_invite_link"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_147
    const-string p0, "sso_error"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_148
    const-string p0, "sign_in_as_session_start"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_149
    const-string p0, "sign_in_as_session_end"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14a
    const-string p0, "reseller_support_session_start"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14b
    const-string p0, "reseller_support_session_end"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14c
    const-string p0, "logout"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14d
    const-string p0, "login_success"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14e
    const-string p0, "login_fail"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14f
    const-string p0, "guest_admin_signed_out_via_trusted_teams"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_150
    const-string p0, "guest_admin_signed_in_via_trusted_teams"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_151
    const-string p0, "emm_error"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_152
    const-string p0, "account_lock_or_unlocked"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_153
    const-string p0, "legal_holds_report_a_hold"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_154
    const-string p0, "legal_holds_remove_members"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_155
    const-string p0, "legal_holds_release_a_hold"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_156
    const-string p0, "legal_holds_export_removed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_157
    const-string p0, "legal_holds_export_downloaded"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_158
    const-string p0, "legal_holds_export_cancelled"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_159
    const-string p0, "legal_holds_export_a_hold"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15a
    const-string p0, "legal_holds_change_hold_name"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15b
    const-string p0, "legal_holds_change_hold_details"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15c
    const-string p0, "legal_holds_add_members"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15d
    const-string p0, "legal_holds_activate_a_hold"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15e
    const-string p0, "group_rename"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15f
    const-string p0, "group_remove_member"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_160
    const-string p0, "group_remove_external_id"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_161
    const-string p0, "group_moved"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_162
    const-string p0, "group_join_policy_updated"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_163
    const-string p0, "group_description_updated"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_164
    const-string p0, "group_delete"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_165
    const-string p0, "group_create"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_166
    const-string p0, "group_change_member_role"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_167
    const-string p0, "group_change_management_type"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_168
    const-string p0, "group_change_external_id"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_169
    const-string p0, "group_add_member"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16a
    const-string p0, "group_add_external_id"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16b
    const-string p0, "file_request_receive_file"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16c
    const-string p0, "file_request_delete"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16d
    const-string p0, "file_request_create"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16e
    const-string p0, "file_request_close"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16f
    const-string p0, "file_request_change"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_170
    const-string p0, "rewind_folder"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_171
    const-string p0, "folder_overview_item_unpinned"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_172
    const-string p0, "folder_overview_item_pinned"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_173
    const-string p0, "folder_overview_description_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_174
    const-string p0, "file_save_copy_reference"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_175
    const-string p0, "file_rollback_changes"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_176
    const-string p0, "file_revert"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_177
    const-string p0, "file_restore"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_178
    const-string p0, "file_rename"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_179
    const-string p0, "file_preview"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17a
    const-string p0, "file_permanently_delete"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17b
    const-string p0, "file_move"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17c
    const-string p0, "file_locking_lock_status_changed"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17d
    const-string p0, "file_get_copy_reference"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17e
    const-string p0, "file_edit"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17f
    const-string p0, "file_download"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_180
    const-string p0, "file_delete"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_181
    const-string p0, "file_copy"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_182
    const-string p0, "file_add"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_183
    const-string p0, "create_folder"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_184
    const-string p0, "enabled_domain_invites"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_185
    const-string p0, "domain_verification_remove_domain"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_186
    const-string p0, "domain_verification_add_domain_success"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_187
    const-string p0, "domain_verification_add_domain_fail"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_188
    const-string p0, "domain_invites_set_invite_new_user_pref_to_yes"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_189
    const-string p0, "domain_invites_set_invite_new_user_pref_to_no"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18a
    const-string p0, "domain_invites_request_to_join_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18b
    const-string p0, "domain_invites_email_existing_users"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18c
    const-string p0, "domain_invites_decline_request_to_join_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18d
    const-string p0, "domain_invites_approve_request_to_join_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18e
    const-string p0, "disabled_domain_invites"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18f
    const-string p0, "account_capture_relinquish_account"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_190
    const-string p0, "account_capture_notification_emails_sent"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_191
    const-string p0, "account_capture_migrate_account"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_192
    const-string p0, "account_capture_change_availability"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_193
    const-string p0, "emm_refresh_auth_token"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_194
    const-string p0, "device_unlink"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_195
    const-string p0, "device_management_enabled"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_196
    const-string p0, "device_management_disabled"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_197
    const-string p0, "device_link_success"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_198
    const-string p0, "device_link_fail"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_199
    const-string p0, "device_delete_on_unlink_success"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_19a
    const-string p0, "device_delete_on_unlink_fail"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_19b
    const-string p0, "device_change_ip_web"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_19c
    const-string p0, "device_change_ip_mobile"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_19d
    const-string p0, "device_change_ip_desktop"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_19e
    const-string p0, "file_unresolve_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_19f
    const-string p0, "file_unlike_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1a0
    const-string p0, "file_resolve_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1a1
    const-string p0, "file_like_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1a2
    const-string p0, "file_edit_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1a3
    const-string p0, "file_delete_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1a4
    const-string p0, "file_change_comment_subscription"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1a5
    const-string p0, "file_add_comment"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1a6
    const-string p0, "integration_disconnected"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1a7
    const-string p0, "integration_connected"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1a8
    const-string p0, "app_unlink_user"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1a9
    const-string p0, "app_unlink_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1aa
    const-string p0, "app_link_user"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1ab
    const-string p0, "app_link_team"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

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

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/EventTypeArg$b;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/EventTypeArg;

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

    check-cast p1, Lcom/dropbox/core/v2/teamlog/EventTypeArg;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/EventTypeArg$b;->b(Lcom/dropbox/core/v2/teamlog/EventTypeArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

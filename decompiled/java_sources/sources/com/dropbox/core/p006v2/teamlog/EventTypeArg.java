package com.dropbox.core.p006v2.teamlog;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import net.p110sf.saxon.om.StandardNames;

/* loaded from: classes4.dex */
public enum EventTypeArg {
    APP_LINK_TEAM,
    APP_LINK_USER,
    APP_UNLINK_TEAM,
    APP_UNLINK_USER,
    INTEGRATION_CONNECTED,
    INTEGRATION_DISCONNECTED,
    FILE_ADD_COMMENT,
    FILE_CHANGE_COMMENT_SUBSCRIPTION,
    FILE_DELETE_COMMENT,
    FILE_EDIT_COMMENT,
    FILE_LIKE_COMMENT,
    FILE_RESOLVE_COMMENT,
    FILE_UNLIKE_COMMENT,
    FILE_UNRESOLVE_COMMENT,
    DEVICE_CHANGE_IP_DESKTOP,
    DEVICE_CHANGE_IP_MOBILE,
    DEVICE_CHANGE_IP_WEB,
    DEVICE_DELETE_ON_UNLINK_FAIL,
    DEVICE_DELETE_ON_UNLINK_SUCCESS,
    DEVICE_LINK_FAIL,
    DEVICE_LINK_SUCCESS,
    DEVICE_MANAGEMENT_DISABLED,
    DEVICE_MANAGEMENT_ENABLED,
    DEVICE_UNLINK,
    EMM_REFRESH_AUTH_TOKEN,
    ACCOUNT_CAPTURE_CHANGE_AVAILABILITY,
    ACCOUNT_CAPTURE_MIGRATE_ACCOUNT,
    ACCOUNT_CAPTURE_NOTIFICATION_EMAILS_SENT,
    ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT,
    DISABLED_DOMAIN_INVITES,
    DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM,
    DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM,
    DOMAIN_INVITES_EMAIL_EXISTING_USERS,
    DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM,
    DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO,
    DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES,
    DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL,
    DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS,
    DOMAIN_VERIFICATION_REMOVE_DOMAIN,
    ENABLED_DOMAIN_INVITES,
    CREATE_FOLDER,
    FILE_ADD,
    FILE_COPY,
    FILE_DELETE,
    FILE_DOWNLOAD,
    FILE_EDIT,
    FILE_GET_COPY_REFERENCE,
    FILE_LOCKING_LOCK_STATUS_CHANGED,
    FILE_MOVE,
    FILE_PERMANENTLY_DELETE,
    FILE_PREVIEW,
    FILE_RENAME,
    FILE_RESTORE,
    FILE_REVERT,
    FILE_ROLLBACK_CHANGES,
    FILE_SAVE_COPY_REFERENCE,
    FOLDER_OVERVIEW_DESCRIPTION_CHANGED,
    FOLDER_OVERVIEW_ITEM_PINNED,
    FOLDER_OVERVIEW_ITEM_UNPINNED,
    REWIND_FOLDER,
    FILE_REQUEST_CHANGE,
    FILE_REQUEST_CLOSE,
    FILE_REQUEST_CREATE,
    FILE_REQUEST_DELETE,
    FILE_REQUEST_RECEIVE_FILE,
    GROUP_ADD_EXTERNAL_ID,
    GROUP_ADD_MEMBER,
    GROUP_CHANGE_EXTERNAL_ID,
    GROUP_CHANGE_MANAGEMENT_TYPE,
    GROUP_CHANGE_MEMBER_ROLE,
    GROUP_CREATE,
    GROUP_DELETE,
    GROUP_DESCRIPTION_UPDATED,
    GROUP_JOIN_POLICY_UPDATED,
    GROUP_MOVED,
    GROUP_REMOVE_EXTERNAL_ID,
    GROUP_REMOVE_MEMBER,
    GROUP_RENAME,
    LEGAL_HOLDS_ACTIVATE_A_HOLD,
    LEGAL_HOLDS_ADD_MEMBERS,
    LEGAL_HOLDS_CHANGE_HOLD_DETAILS,
    LEGAL_HOLDS_CHANGE_HOLD_NAME,
    LEGAL_HOLDS_EXPORT_A_HOLD,
    LEGAL_HOLDS_EXPORT_CANCELLED,
    LEGAL_HOLDS_EXPORT_DOWNLOADED,
    LEGAL_HOLDS_EXPORT_REMOVED,
    LEGAL_HOLDS_RELEASE_A_HOLD,
    LEGAL_HOLDS_REMOVE_MEMBERS,
    LEGAL_HOLDS_REPORT_A_HOLD,
    ACCOUNT_LOCK_OR_UNLOCKED,
    EMM_ERROR,
    GUEST_ADMIN_SIGNED_IN_VIA_TRUSTED_TEAMS,
    GUEST_ADMIN_SIGNED_OUT_VIA_TRUSTED_TEAMS,
    LOGIN_FAIL,
    LOGIN_SUCCESS,
    LOGOUT,
    RESELLER_SUPPORT_SESSION_END,
    RESELLER_SUPPORT_SESSION_START,
    SIGN_IN_AS_SESSION_END,
    SIGN_IN_AS_SESSION_START,
    SSO_ERROR,
    CREATE_TEAM_INVITE_LINK,
    DELETE_TEAM_INVITE_LINK,
    MEMBER_ADD_EXTERNAL_ID,
    MEMBER_ADD_NAME,
    MEMBER_CHANGE_ADMIN_ROLE,
    MEMBER_CHANGE_EMAIL,
    MEMBER_CHANGE_EXTERNAL_ID,
    MEMBER_CHANGE_MEMBERSHIP_TYPE,
    MEMBER_CHANGE_NAME,
    MEMBER_CHANGE_STATUS,
    MEMBER_DELETE_MANUAL_CONTACTS,
    MEMBER_DELETE_PROFILE_PHOTO,
    MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS,
    MEMBER_REMOVE_EXTERNAL_ID,
    MEMBER_SET_PROFILE_PHOTO,
    MEMBER_SPACE_LIMITS_ADD_CUSTOM_QUOTA,
    MEMBER_SPACE_LIMITS_CHANGE_CUSTOM_QUOTA,
    MEMBER_SPACE_LIMITS_CHANGE_STATUS,
    MEMBER_SPACE_LIMITS_REMOVE_CUSTOM_QUOTA,
    MEMBER_SUGGEST,
    MEMBER_TRANSFER_ACCOUNT_CONTENTS,
    PENDING_SECONDARY_EMAIL_ADDED,
    SECONDARY_EMAIL_DELETED,
    SECONDARY_EMAIL_VERIFIED,
    SECONDARY_MAILS_POLICY_CHANGED,
    BINDER_ADD_PAGE,
    BINDER_ADD_SECTION,
    BINDER_REMOVE_PAGE,
    BINDER_REMOVE_SECTION,
    BINDER_RENAME_PAGE,
    BINDER_RENAME_SECTION,
    BINDER_REORDER_PAGE,
    BINDER_REORDER_SECTION,
    PAPER_CONTENT_ADD_MEMBER,
    PAPER_CONTENT_ADD_TO_FOLDER,
    PAPER_CONTENT_ARCHIVE,
    PAPER_CONTENT_CREATE,
    PAPER_CONTENT_PERMANENTLY_DELETE,
    PAPER_CONTENT_REMOVE_FROM_FOLDER,
    PAPER_CONTENT_REMOVE_MEMBER,
    PAPER_CONTENT_RENAME,
    PAPER_CONTENT_RESTORE,
    PAPER_DOC_ADD_COMMENT,
    PAPER_DOC_CHANGE_MEMBER_ROLE,
    PAPER_DOC_CHANGE_SHARING_POLICY,
    PAPER_DOC_CHANGE_SUBSCRIPTION,
    PAPER_DOC_DELETED,
    PAPER_DOC_DELETE_COMMENT,
    PAPER_DOC_DOWNLOAD,
    PAPER_DOC_EDIT,
    PAPER_DOC_EDIT_COMMENT,
    PAPER_DOC_FOLLOWED,
    PAPER_DOC_MENTION,
    PAPER_DOC_OWNERSHIP_CHANGED,
    PAPER_DOC_REQUEST_ACCESS,
    PAPER_DOC_RESOLVE_COMMENT,
    PAPER_DOC_REVERT,
    PAPER_DOC_SLACK_SHARE,
    PAPER_DOC_TEAM_INVITE,
    PAPER_DOC_TRASHED,
    PAPER_DOC_UNRESOLVE_COMMENT,
    PAPER_DOC_UNTRASHED,
    PAPER_DOC_VIEW,
    PAPER_EXTERNAL_VIEW_ALLOW,
    PAPER_EXTERNAL_VIEW_DEFAULT_TEAM,
    PAPER_EXTERNAL_VIEW_FORBID,
    PAPER_FOLDER_CHANGE_SUBSCRIPTION,
    PAPER_FOLDER_DELETED,
    PAPER_FOLDER_FOLLOWED,
    PAPER_FOLDER_TEAM_INVITE,
    PAPER_PUBLISHED_LINK_CHANGE_PERMISSION,
    PAPER_PUBLISHED_LINK_CREATE,
    PAPER_PUBLISHED_LINK_DISABLED,
    PAPER_PUBLISHED_LINK_VIEW,
    PASSWORD_CHANGE,
    PASSWORD_RESET,
    PASSWORD_RESET_ALL,
    EMM_CREATE_EXCEPTIONS_REPORT,
    EMM_CREATE_USAGE_REPORT,
    EXPORT_MEMBERS_REPORT,
    EXPORT_MEMBERS_REPORT_FAIL,
    EXTERNAL_SHARING_CREATE_REPORT,
    EXTERNAL_SHARING_REPORT_FAILED,
    NO_EXPIRATION_LINK_GEN_CREATE_REPORT,
    NO_EXPIRATION_LINK_GEN_REPORT_FAILED,
    NO_PASSWORD_LINK_GEN_CREATE_REPORT,
    NO_PASSWORD_LINK_GEN_REPORT_FAILED,
    NO_PASSWORD_LINK_VIEW_CREATE_REPORT,
    NO_PASSWORD_LINK_VIEW_REPORT_FAILED,
    OUTDATED_LINK_VIEW_CREATE_REPORT,
    OUTDATED_LINK_VIEW_REPORT_FAILED,
    PAPER_ADMIN_EXPORT_START,
    SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT,
    TEAM_ACTIVITY_CREATE_REPORT,
    TEAM_ACTIVITY_CREATE_REPORT_FAIL,
    COLLECTION_SHARE,
    FILE_TRANSFERS_FILE_ADD,
    FILE_TRANSFERS_TRANSFER_DELETE,
    FILE_TRANSFERS_TRANSFER_DOWNLOAD,
    FILE_TRANSFERS_TRANSFER_SEND,
    FILE_TRANSFERS_TRANSFER_VIEW,
    NOTE_ACL_INVITE_ONLY,
    NOTE_ACL_LINK,
    NOTE_ACL_TEAM_LINK,
    NOTE_SHARED,
    NOTE_SHARE_RECEIVE,
    OPEN_NOTE_SHARED,
    SF_ADD_GROUP,
    SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS,
    SF_EXTERNAL_INVITE_WARN,
    SF_FB_INVITE,
    SF_FB_INVITE_CHANGE_ROLE,
    SF_FB_UNINVITE,
    SF_INVITE_GROUP,
    SF_TEAM_GRANT_ACCESS,
    SF_TEAM_INVITE,
    SF_TEAM_INVITE_CHANGE_ROLE,
    SF_TEAM_JOIN,
    SF_TEAM_JOIN_FROM_OOB_LINK,
    SF_TEAM_UNINVITE,
    SHARED_CONTENT_ADD_INVITEES,
    SHARED_CONTENT_ADD_LINK_EXPIRY,
    SHARED_CONTENT_ADD_LINK_PASSWORD,
    SHARED_CONTENT_ADD_MEMBER,
    SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY,
    SHARED_CONTENT_CHANGE_INVITEE_ROLE,
    SHARED_CONTENT_CHANGE_LINK_AUDIENCE,
    SHARED_CONTENT_CHANGE_LINK_EXPIRY,
    SHARED_CONTENT_CHANGE_LINK_PASSWORD,
    SHARED_CONTENT_CHANGE_MEMBER_ROLE,
    SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY,
    SHARED_CONTENT_CLAIM_INVITATION,
    SHARED_CONTENT_COPY,
    SHARED_CONTENT_DOWNLOAD,
    SHARED_CONTENT_RELINQUISH_MEMBERSHIP,
    SHARED_CONTENT_REMOVE_INVITEES,
    SHARED_CONTENT_REMOVE_LINK_EXPIRY,
    SHARED_CONTENT_REMOVE_LINK_PASSWORD,
    SHARED_CONTENT_REMOVE_MEMBER,
    SHARED_CONTENT_REQUEST_ACCESS,
    SHARED_CONTENT_RESTORE_INVITEES,
    SHARED_CONTENT_RESTORE_MEMBER,
    SHARED_CONTENT_UNSHARE,
    SHARED_CONTENT_VIEW,
    SHARED_FOLDER_CHANGE_LINK_POLICY,
    SHARED_FOLDER_CHANGE_MEMBERS_INHERITANCE_POLICY,
    SHARED_FOLDER_CHANGE_MEMBERS_MANAGEMENT_POLICY,
    SHARED_FOLDER_CHANGE_MEMBERS_POLICY,
    SHARED_FOLDER_CREATE,
    SHARED_FOLDER_DECLINE_INVITATION,
    SHARED_FOLDER_MOUNT,
    SHARED_FOLDER_NEST,
    SHARED_FOLDER_TRANSFER_OWNERSHIP,
    SHARED_FOLDER_UNMOUNT,
    SHARED_LINK_ADD_EXPIRY,
    SHARED_LINK_CHANGE_EXPIRY,
    SHARED_LINK_CHANGE_VISIBILITY,
    SHARED_LINK_COPY,
    SHARED_LINK_CREATE,
    SHARED_LINK_DISABLE,
    SHARED_LINK_DOWNLOAD,
    SHARED_LINK_REMOVE_EXPIRY,
    SHARED_LINK_SETTINGS_ADD_EXPIRATION,
    SHARED_LINK_SETTINGS_ADD_PASSWORD,
    SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_DISABLED,
    SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_ENABLED,
    SHARED_LINK_SETTINGS_CHANGE_AUDIENCE,
    SHARED_LINK_SETTINGS_CHANGE_EXPIRATION,
    SHARED_LINK_SETTINGS_CHANGE_PASSWORD,
    SHARED_LINK_SETTINGS_REMOVE_EXPIRATION,
    SHARED_LINK_SETTINGS_REMOVE_PASSWORD,
    SHARED_LINK_SHARE,
    SHARED_LINK_VIEW,
    SHARED_NOTE_OPENED,
    SHMODEL_GROUP_SHARE,
    SHOWCASE_ACCESS_GRANTED,
    SHOWCASE_ADD_MEMBER,
    SHOWCASE_ARCHIVED,
    SHOWCASE_CREATED,
    SHOWCASE_DELETE_COMMENT,
    SHOWCASE_EDITED,
    SHOWCASE_EDIT_COMMENT,
    SHOWCASE_FILE_ADDED,
    SHOWCASE_FILE_DOWNLOAD,
    SHOWCASE_FILE_REMOVED,
    SHOWCASE_FILE_VIEW,
    SHOWCASE_PERMANENTLY_DELETED,
    SHOWCASE_POST_COMMENT,
    SHOWCASE_REMOVE_MEMBER,
    SHOWCASE_RENAMED,
    SHOWCASE_REQUEST_ACCESS,
    SHOWCASE_RESOLVE_COMMENT,
    SHOWCASE_RESTORED,
    SHOWCASE_TRASHED,
    SHOWCASE_TRASHED_DEPRECATED,
    SHOWCASE_UNRESOLVE_COMMENT,
    SHOWCASE_UNTRASHED,
    SHOWCASE_UNTRASHED_DEPRECATED,
    SHOWCASE_VIEW,
    SSO_ADD_CERT,
    SSO_ADD_LOGIN_URL,
    SSO_ADD_LOGOUT_URL,
    SSO_CHANGE_CERT,
    SSO_CHANGE_LOGIN_URL,
    SSO_CHANGE_LOGOUT_URL,
    SSO_CHANGE_SAML_IDENTITY_MODE,
    SSO_REMOVE_CERT,
    SSO_REMOVE_LOGIN_URL,
    SSO_REMOVE_LOGOUT_URL,
    TEAM_FOLDER_CHANGE_STATUS,
    TEAM_FOLDER_CREATE,
    TEAM_FOLDER_DOWNGRADE,
    TEAM_FOLDER_PERMANENTLY_DELETE,
    TEAM_FOLDER_RENAME,
    TEAM_SELECTIVE_SYNC_SETTINGS_CHANGED,
    ACCOUNT_CAPTURE_CHANGE_POLICY,
    ALLOW_DOWNLOAD_DISABLED,
    ALLOW_DOWNLOAD_ENABLED,
    CAMERA_UPLOADS_POLICY_CHANGED,
    CONTENT_ADMINISTRATION_POLICY_CHANGED,
    DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY,
    DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY,
    DEVICE_APPROVALS_ADD_EXCEPTION,
    DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY,
    DEVICE_APPROVALS_CHANGE_MOBILE_POLICY,
    DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION,
    DEVICE_APPROVALS_CHANGE_UNLINK_ACTION,
    DEVICE_APPROVALS_REMOVE_EXCEPTION,
    DIRECTORY_RESTRICTIONS_ADD_MEMBERS,
    DIRECTORY_RESTRICTIONS_REMOVE_MEMBERS,
    EMM_ADD_EXCEPTION,
    EMM_CHANGE_POLICY,
    EMM_REMOVE_EXCEPTION,
    EXTENDED_VERSION_HISTORY_CHANGE_POLICY,
    FILE_COMMENTS_CHANGE_POLICY,
    FILE_LOCKING_POLICY_CHANGED,
    FILE_REQUESTS_CHANGE_POLICY,
    FILE_REQUESTS_EMAILS_ENABLED,
    FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY,
    FILE_TRANSFERS_POLICY_CHANGED,
    GOOGLE_SSO_CHANGE_POLICY,
    GROUP_USER_MANAGEMENT_CHANGE_POLICY,
    INTEGRATION_POLICY_CHANGED,
    MEMBER_REQUESTS_CHANGE_POLICY,
    MEMBER_SEND_INVITE_POLICY_CHANGED,
    MEMBER_SPACE_LIMITS_ADD_EXCEPTION,
    MEMBER_SPACE_LIMITS_CHANGE_CAPS_TYPE_POLICY,
    MEMBER_SPACE_LIMITS_CHANGE_POLICY,
    MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION,
    MEMBER_SUGGESTIONS_CHANGE_POLICY,
    MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY,
    NETWORK_CONTROL_CHANGE_POLICY,
    PAPER_CHANGE_DEPLOYMENT_POLICY,
    PAPER_CHANGE_MEMBER_LINK_POLICY,
    PAPER_CHANGE_MEMBER_POLICY,
    PAPER_CHANGE_POLICY,
    PAPER_DEFAULT_FOLDER_POLICY_CHANGED,
    PAPER_DESKTOP_POLICY_CHANGED,
    PAPER_ENABLED_USERS_GROUP_ADDITION,
    PAPER_ENABLED_USERS_GROUP_REMOVAL,
    PASSWORD_STRENGTH_REQUIREMENTS_CHANGE_POLICY,
    PERMANENT_DELETE_CHANGE_POLICY,
    RESELLER_SUPPORT_CHANGE_POLICY,
    REWIND_POLICY_CHANGED,
    SEND_FOR_SIGNATURE_POLICY_CHANGED,
    SHARING_CHANGE_FOLDER_JOIN_POLICY,
    SHARING_CHANGE_LINK_POLICY,
    SHARING_CHANGE_MEMBER_POLICY,
    SHOWCASE_CHANGE_DOWNLOAD_POLICY,
    SHOWCASE_CHANGE_ENABLED_POLICY,
    SHOWCASE_CHANGE_EXTERNAL_SHARING_POLICY,
    SMARTER_SMART_SYNC_POLICY_CHANGED,
    SMART_SYNC_CHANGE_POLICY,
    SMART_SYNC_NOT_OPT_OUT,
    SMART_SYNC_OPT_OUT,
    SSO_CHANGE_POLICY,
    TEAM_EXTENSIONS_POLICY_CHANGED,
    TEAM_SELECTIVE_SYNC_POLICY_CHANGED,
    TEAM_SHARING_WHITELIST_SUBJECTS_CHANGED,
    TFA_ADD_EXCEPTION,
    TFA_CHANGE_POLICY,
    TFA_REMOVE_EXCEPTION,
    TWO_ACCOUNT_CHANGE_POLICY,
    VIEWER_INFO_POLICY_CHANGED,
    WATERMARKING_POLICY_CHANGED,
    WEB_SESSIONS_CHANGE_ACTIVE_SESSION_LIMIT,
    WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY,
    WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY,
    TEAM_MERGE_FROM,
    TEAM_MERGE_TO,
    TEAM_PROFILE_ADD_LOGO,
    TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE,
    TEAM_PROFILE_CHANGE_LOGO,
    TEAM_PROFILE_CHANGE_NAME,
    TEAM_PROFILE_REMOVE_LOGO,
    TFA_ADD_BACKUP_PHONE,
    TFA_ADD_SECURITY_KEY,
    TFA_CHANGE_BACKUP_PHONE,
    TFA_CHANGE_STATUS,
    TFA_REMOVE_BACKUP_PHONE,
    TFA_REMOVE_SECURITY_KEY,
    TFA_RESET,
    CHANGED_ENTERPRISE_ADMIN_ROLE,
    CHANGED_ENTERPRISE_CONNECTED_TEAM_STATUS,
    ENDED_ENTERPRISE_ADMIN_SESSION,
    ENDED_ENTERPRISE_ADMIN_SESSION_DEPRECATED,
    ENTERPRISE_SETTINGS_LOCKING,
    GUEST_ADMIN_CHANGE_STATUS,
    STARTED_ENTERPRISE_ADMIN_SESSION,
    TEAM_MERGE_REQUEST_ACCEPTED,
    TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_PRIMARY_TEAM,
    TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_SECONDARY_TEAM,
    TEAM_MERGE_REQUEST_AUTO_CANCELED,
    TEAM_MERGE_REQUEST_CANCELED,
    TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_PRIMARY_TEAM,
    TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_SECONDARY_TEAM,
    TEAM_MERGE_REQUEST_EXPIRED,
    TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_PRIMARY_TEAM,
    TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_SECONDARY_TEAM,
    TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_PRIMARY_TEAM,
    TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_SECONDARY_TEAM,
    TEAM_MERGE_REQUEST_REMINDER,
    TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_PRIMARY_TEAM,
    TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_SECONDARY_TEAM,
    TEAM_MERGE_REQUEST_REVOKED,
    TEAM_MERGE_REQUEST_SENT_SHOWN_TO_PRIMARY_TEAM,
    TEAM_MERGE_REQUEST_SENT_SHOWN_TO_SECONDARY_TEAM,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.EventTypeArg$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3510a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19762a;

        static {
            int[] iArr = new int[EventTypeArg.values().length];
            f19762a = iArr;
            try {
                iArr[EventTypeArg.APP_LINK_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19762a[EventTypeArg.APP_LINK_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19762a[EventTypeArg.APP_UNLINK_TEAM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19762a[EventTypeArg.APP_UNLINK_USER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19762a[EventTypeArg.INTEGRATION_CONNECTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19762a[EventTypeArg.INTEGRATION_DISCONNECTED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19762a[EventTypeArg.FILE_ADD_COMMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19762a[EventTypeArg.FILE_CHANGE_COMMENT_SUBSCRIPTION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19762a[EventTypeArg.FILE_DELETE_COMMENT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19762a[EventTypeArg.FILE_EDIT_COMMENT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19762a[EventTypeArg.FILE_LIKE_COMMENT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19762a[EventTypeArg.FILE_RESOLVE_COMMENT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f19762a[EventTypeArg.FILE_UNLIKE_COMMENT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f19762a[EventTypeArg.FILE_UNRESOLVE_COMMENT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_CHANGE_IP_DESKTOP.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_CHANGE_IP_MOBILE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_CHANGE_IP_WEB.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_DELETE_ON_UNLINK_FAIL.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_DELETE_ON_UNLINK_SUCCESS.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_LINK_FAIL.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_LINK_SUCCESS.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_MANAGEMENT_DISABLED.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_MANAGEMENT_ENABLED.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_UNLINK.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f19762a[EventTypeArg.EMM_REFRESH_AUTH_TOKEN.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f19762a[EventTypeArg.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f19762a[EventTypeArg.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f19762a[EventTypeArg.ACCOUNT_CAPTURE_NOTIFICATION_EMAILS_SENT.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f19762a[EventTypeArg.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f19762a[EventTypeArg.DISABLED_DOMAIN_INVITES.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f19762a[EventTypeArg.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f19762a[EventTypeArg.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f19762a[EventTypeArg.DOMAIN_INVITES_EMAIL_EXISTING_USERS.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f19762a[EventTypeArg.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f19762a[EventTypeArg.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f19762a[EventTypeArg.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f19762a[EventTypeArg.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f19762a[EventTypeArg.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f19762a[EventTypeArg.DOMAIN_VERIFICATION_REMOVE_DOMAIN.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f19762a[EventTypeArg.ENABLED_DOMAIN_INVITES.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f19762a[EventTypeArg.CREATE_FOLDER.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f19762a[EventTypeArg.FILE_ADD.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f19762a[EventTypeArg.FILE_COPY.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f19762a[EventTypeArg.FILE_DELETE.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f19762a[EventTypeArg.FILE_DOWNLOAD.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f19762a[EventTypeArg.FILE_EDIT.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f19762a[EventTypeArg.FILE_GET_COPY_REFERENCE.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                f19762a[EventTypeArg.FILE_LOCKING_LOCK_STATUS_CHANGED.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                f19762a[EventTypeArg.FILE_MOVE.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                f19762a[EventTypeArg.FILE_PERMANENTLY_DELETE.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                f19762a[EventTypeArg.FILE_PREVIEW.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                f19762a[EventTypeArg.FILE_RENAME.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                f19762a[EventTypeArg.FILE_RESTORE.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                f19762a[EventTypeArg.FILE_REVERT.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                f19762a[EventTypeArg.FILE_ROLLBACK_CHANGES.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                f19762a[EventTypeArg.FILE_SAVE_COPY_REFERENCE.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                f19762a[EventTypeArg.FOLDER_OVERVIEW_DESCRIPTION_CHANGED.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                f19762a[EventTypeArg.FOLDER_OVERVIEW_ITEM_PINNED.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                f19762a[EventTypeArg.FOLDER_OVERVIEW_ITEM_UNPINNED.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                f19762a[EventTypeArg.REWIND_FOLDER.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                f19762a[EventTypeArg.FILE_REQUEST_CHANGE.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                f19762a[EventTypeArg.FILE_REQUEST_CLOSE.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                f19762a[EventTypeArg.FILE_REQUEST_CREATE.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                f19762a[EventTypeArg.FILE_REQUEST_DELETE.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                f19762a[EventTypeArg.FILE_REQUEST_RECEIVE_FILE.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                f19762a[EventTypeArg.GROUP_ADD_EXTERNAL_ID.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                f19762a[EventTypeArg.GROUP_ADD_MEMBER.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                f19762a[EventTypeArg.GROUP_CHANGE_EXTERNAL_ID.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                f19762a[EventTypeArg.GROUP_CHANGE_MANAGEMENT_TYPE.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                f19762a[EventTypeArg.GROUP_CHANGE_MEMBER_ROLE.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                f19762a[EventTypeArg.GROUP_CREATE.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                f19762a[EventTypeArg.GROUP_DELETE.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                f19762a[EventTypeArg.GROUP_DESCRIPTION_UPDATED.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                f19762a[EventTypeArg.GROUP_JOIN_POLICY_UPDATED.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                f19762a[EventTypeArg.GROUP_MOVED.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                f19762a[EventTypeArg.GROUP_REMOVE_EXTERNAL_ID.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                f19762a[EventTypeArg.GROUP_REMOVE_MEMBER.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                f19762a[EventTypeArg.GROUP_RENAME.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                f19762a[EventTypeArg.LEGAL_HOLDS_ACTIVATE_A_HOLD.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                f19762a[EventTypeArg.LEGAL_HOLDS_ADD_MEMBERS.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                f19762a[EventTypeArg.LEGAL_HOLDS_CHANGE_HOLD_DETAILS.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                f19762a[EventTypeArg.LEGAL_HOLDS_CHANGE_HOLD_NAME.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                f19762a[EventTypeArg.LEGAL_HOLDS_EXPORT_A_HOLD.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                f19762a[EventTypeArg.LEGAL_HOLDS_EXPORT_CANCELLED.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                f19762a[EventTypeArg.LEGAL_HOLDS_EXPORT_DOWNLOADED.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                f19762a[EventTypeArg.LEGAL_HOLDS_EXPORT_REMOVED.ordinal()] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                f19762a[EventTypeArg.LEGAL_HOLDS_RELEASE_A_HOLD.ordinal()] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                f19762a[EventTypeArg.LEGAL_HOLDS_REMOVE_MEMBERS.ordinal()] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                f19762a[EventTypeArg.LEGAL_HOLDS_REPORT_A_HOLD.ordinal()] = 89;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                f19762a[EventTypeArg.ACCOUNT_LOCK_OR_UNLOCKED.ordinal()] = 90;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                f19762a[EventTypeArg.EMM_ERROR.ordinal()] = 91;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                f19762a[EventTypeArg.GUEST_ADMIN_SIGNED_IN_VIA_TRUSTED_TEAMS.ordinal()] = 92;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                f19762a[EventTypeArg.GUEST_ADMIN_SIGNED_OUT_VIA_TRUSTED_TEAMS.ordinal()] = 93;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                f19762a[EventTypeArg.LOGIN_FAIL.ordinal()] = 94;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                f19762a[EventTypeArg.LOGIN_SUCCESS.ordinal()] = 95;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                f19762a[EventTypeArg.LOGOUT.ordinal()] = 96;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                f19762a[EventTypeArg.RESELLER_SUPPORT_SESSION_END.ordinal()] = 97;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                f19762a[EventTypeArg.RESELLER_SUPPORT_SESSION_START.ordinal()] = 98;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                f19762a[EventTypeArg.SIGN_IN_AS_SESSION_END.ordinal()] = 99;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                f19762a[EventTypeArg.SIGN_IN_AS_SESSION_START.ordinal()] = 100;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                f19762a[EventTypeArg.SSO_ERROR.ordinal()] = 101;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                f19762a[EventTypeArg.CREATE_TEAM_INVITE_LINK.ordinal()] = 102;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                f19762a[EventTypeArg.DELETE_TEAM_INVITE_LINK.ordinal()] = 103;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_ADD_EXTERNAL_ID.ordinal()] = 104;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_ADD_NAME.ordinal()] = 105;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_CHANGE_ADMIN_ROLE.ordinal()] = 106;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_CHANGE_EMAIL.ordinal()] = 107;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_CHANGE_EXTERNAL_ID.ordinal()] = 108;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_CHANGE_MEMBERSHIP_TYPE.ordinal()] = 109;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_CHANGE_NAME.ordinal()] = 110;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_CHANGE_STATUS.ordinal()] = 111;
            } catch (NoSuchFieldError unused111) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_DELETE_MANUAL_CONTACTS.ordinal()] = 112;
            } catch (NoSuchFieldError unused112) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_DELETE_PROFILE_PHOTO.ordinal()] = 113;
            } catch (NoSuchFieldError unused113) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS.ordinal()] = 114;
            } catch (NoSuchFieldError unused114) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_REMOVE_EXTERNAL_ID.ordinal()] = 115;
            } catch (NoSuchFieldError unused115) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_SET_PROFILE_PHOTO.ordinal()] = 116;
            } catch (NoSuchFieldError unused116) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_SPACE_LIMITS_ADD_CUSTOM_QUOTA.ordinal()] = 117;
            } catch (NoSuchFieldError unused117) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_SPACE_LIMITS_CHANGE_CUSTOM_QUOTA.ordinal()] = 118;
            } catch (NoSuchFieldError unused118) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_SPACE_LIMITS_CHANGE_STATUS.ordinal()] = 119;
            } catch (NoSuchFieldError unused119) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_SPACE_LIMITS_REMOVE_CUSTOM_QUOTA.ordinal()] = 120;
            } catch (NoSuchFieldError unused120) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_SUGGEST.ordinal()] = 121;
            } catch (NoSuchFieldError unused121) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_TRANSFER_ACCOUNT_CONTENTS.ordinal()] = 122;
            } catch (NoSuchFieldError unused122) {
            }
            try {
                f19762a[EventTypeArg.PENDING_SECONDARY_EMAIL_ADDED.ordinal()] = 123;
            } catch (NoSuchFieldError unused123) {
            }
            try {
                f19762a[EventTypeArg.SECONDARY_EMAIL_DELETED.ordinal()] = 124;
            } catch (NoSuchFieldError unused124) {
            }
            try {
                f19762a[EventTypeArg.SECONDARY_EMAIL_VERIFIED.ordinal()] = 125;
            } catch (NoSuchFieldError unused125) {
            }
            try {
                f19762a[EventTypeArg.SECONDARY_MAILS_POLICY_CHANGED.ordinal()] = 126;
            } catch (NoSuchFieldError unused126) {
            }
            try {
                f19762a[EventTypeArg.BINDER_ADD_PAGE.ordinal()] = 127;
            } catch (NoSuchFieldError unused127) {
            }
            try {
                f19762a[EventTypeArg.BINDER_ADD_SECTION.ordinal()] = 128;
            } catch (NoSuchFieldError unused128) {
            }
            try {
                f19762a[EventTypeArg.BINDER_REMOVE_PAGE.ordinal()] = 129;
            } catch (NoSuchFieldError unused129) {
            }
            try {
                f19762a[EventTypeArg.BINDER_REMOVE_SECTION.ordinal()] = 130;
            } catch (NoSuchFieldError unused130) {
            }
            try {
                f19762a[EventTypeArg.BINDER_RENAME_PAGE.ordinal()] = 131;
            } catch (NoSuchFieldError unused131) {
            }
            try {
                f19762a[EventTypeArg.BINDER_RENAME_SECTION.ordinal()] = 132;
            } catch (NoSuchFieldError unused132) {
            }
            try {
                f19762a[EventTypeArg.BINDER_REORDER_PAGE.ordinal()] = 133;
            } catch (NoSuchFieldError unused133) {
            }
            try {
                f19762a[EventTypeArg.BINDER_REORDER_SECTION.ordinal()] = 134;
            } catch (NoSuchFieldError unused134) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CONTENT_ADD_MEMBER.ordinal()] = 135;
            } catch (NoSuchFieldError unused135) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CONTENT_ADD_TO_FOLDER.ordinal()] = 136;
            } catch (NoSuchFieldError unused136) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CONTENT_ARCHIVE.ordinal()] = 137;
            } catch (NoSuchFieldError unused137) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CONTENT_CREATE.ordinal()] = 138;
            } catch (NoSuchFieldError unused138) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CONTENT_PERMANENTLY_DELETE.ordinal()] = 139;
            } catch (NoSuchFieldError unused139) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CONTENT_REMOVE_FROM_FOLDER.ordinal()] = 140;
            } catch (NoSuchFieldError unused140) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CONTENT_REMOVE_MEMBER.ordinal()] = 141;
            } catch (NoSuchFieldError unused141) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CONTENT_RENAME.ordinal()] = 142;
            } catch (NoSuchFieldError unused142) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CONTENT_RESTORE.ordinal()] = 143;
            } catch (NoSuchFieldError unused143) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_ADD_COMMENT.ordinal()] = 144;
            } catch (NoSuchFieldError unused144) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_CHANGE_MEMBER_ROLE.ordinal()] = 145;
            } catch (NoSuchFieldError unused145) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_CHANGE_SHARING_POLICY.ordinal()] = 146;
            } catch (NoSuchFieldError unused146) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_CHANGE_SUBSCRIPTION.ordinal()] = 147;
            } catch (NoSuchFieldError unused147) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_DELETED.ordinal()] = 148;
            } catch (NoSuchFieldError unused148) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_DELETE_COMMENT.ordinal()] = 149;
            } catch (NoSuchFieldError unused149) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_DOWNLOAD.ordinal()] = 150;
            } catch (NoSuchFieldError unused150) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_EDIT.ordinal()] = 151;
            } catch (NoSuchFieldError unused151) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_EDIT_COMMENT.ordinal()] = 152;
            } catch (NoSuchFieldError unused152) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_FOLLOWED.ordinal()] = 153;
            } catch (NoSuchFieldError unused153) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_MENTION.ordinal()] = 154;
            } catch (NoSuchFieldError unused154) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_OWNERSHIP_CHANGED.ordinal()] = 155;
            } catch (NoSuchFieldError unused155) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_REQUEST_ACCESS.ordinal()] = 156;
            } catch (NoSuchFieldError unused156) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_RESOLVE_COMMENT.ordinal()] = 157;
            } catch (NoSuchFieldError unused157) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_REVERT.ordinal()] = 158;
            } catch (NoSuchFieldError unused158) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_SLACK_SHARE.ordinal()] = 159;
            } catch (NoSuchFieldError unused159) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_TEAM_INVITE.ordinal()] = 160;
            } catch (NoSuchFieldError unused160) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_TRASHED.ordinal()] = 161;
            } catch (NoSuchFieldError unused161) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_UNRESOLVE_COMMENT.ordinal()] = 162;
            } catch (NoSuchFieldError unused162) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_UNTRASHED.ordinal()] = 163;
            } catch (NoSuchFieldError unused163) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DOC_VIEW.ordinal()] = 164;
            } catch (NoSuchFieldError unused164) {
            }
            try {
                f19762a[EventTypeArg.PAPER_EXTERNAL_VIEW_ALLOW.ordinal()] = 165;
            } catch (NoSuchFieldError unused165) {
            }
            try {
                f19762a[EventTypeArg.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM.ordinal()] = 166;
            } catch (NoSuchFieldError unused166) {
            }
            try {
                f19762a[EventTypeArg.PAPER_EXTERNAL_VIEW_FORBID.ordinal()] = 167;
            } catch (NoSuchFieldError unused167) {
            }
            try {
                f19762a[EventTypeArg.PAPER_FOLDER_CHANGE_SUBSCRIPTION.ordinal()] = 168;
            } catch (NoSuchFieldError unused168) {
            }
            try {
                f19762a[EventTypeArg.PAPER_FOLDER_DELETED.ordinal()] = 169;
            } catch (NoSuchFieldError unused169) {
            }
            try {
                f19762a[EventTypeArg.PAPER_FOLDER_FOLLOWED.ordinal()] = 170;
            } catch (NoSuchFieldError unused170) {
            }
            try {
                f19762a[EventTypeArg.PAPER_FOLDER_TEAM_INVITE.ordinal()] = 171;
            } catch (NoSuchFieldError unused171) {
            }
            try {
                f19762a[EventTypeArg.PAPER_PUBLISHED_LINK_CHANGE_PERMISSION.ordinal()] = 172;
            } catch (NoSuchFieldError unused172) {
            }
            try {
                f19762a[EventTypeArg.PAPER_PUBLISHED_LINK_CREATE.ordinal()] = 173;
            } catch (NoSuchFieldError unused173) {
            }
            try {
                f19762a[EventTypeArg.PAPER_PUBLISHED_LINK_DISABLED.ordinal()] = 174;
            } catch (NoSuchFieldError unused174) {
            }
            try {
                f19762a[EventTypeArg.PAPER_PUBLISHED_LINK_VIEW.ordinal()] = 175;
            } catch (NoSuchFieldError unused175) {
            }
            try {
                f19762a[EventTypeArg.PASSWORD_CHANGE.ordinal()] = 176;
            } catch (NoSuchFieldError unused176) {
            }
            try {
                f19762a[EventTypeArg.PASSWORD_RESET.ordinal()] = 177;
            } catch (NoSuchFieldError unused177) {
            }
            try {
                f19762a[EventTypeArg.PASSWORD_RESET_ALL.ordinal()] = 178;
            } catch (NoSuchFieldError unused178) {
            }
            try {
                f19762a[EventTypeArg.EMM_CREATE_EXCEPTIONS_REPORT.ordinal()] = 179;
            } catch (NoSuchFieldError unused179) {
            }
            try {
                f19762a[EventTypeArg.EMM_CREATE_USAGE_REPORT.ordinal()] = 180;
            } catch (NoSuchFieldError unused180) {
            }
            try {
                f19762a[EventTypeArg.EXPORT_MEMBERS_REPORT.ordinal()] = 181;
            } catch (NoSuchFieldError unused181) {
            }
            try {
                f19762a[EventTypeArg.EXPORT_MEMBERS_REPORT_FAIL.ordinal()] = 182;
            } catch (NoSuchFieldError unused182) {
            }
            try {
                f19762a[EventTypeArg.EXTERNAL_SHARING_CREATE_REPORT.ordinal()] = 183;
            } catch (NoSuchFieldError unused183) {
            }
            try {
                f19762a[EventTypeArg.EXTERNAL_SHARING_REPORT_FAILED.ordinal()] = 184;
            } catch (NoSuchFieldError unused184) {
            }
            try {
                f19762a[EventTypeArg.NO_EXPIRATION_LINK_GEN_CREATE_REPORT.ordinal()] = 185;
            } catch (NoSuchFieldError unused185) {
            }
            try {
                f19762a[EventTypeArg.NO_EXPIRATION_LINK_GEN_REPORT_FAILED.ordinal()] = 186;
            } catch (NoSuchFieldError unused186) {
            }
            try {
                f19762a[EventTypeArg.NO_PASSWORD_LINK_GEN_CREATE_REPORT.ordinal()] = 187;
            } catch (NoSuchFieldError unused187) {
            }
            try {
                f19762a[EventTypeArg.NO_PASSWORD_LINK_GEN_REPORT_FAILED.ordinal()] = 188;
            } catch (NoSuchFieldError unused188) {
            }
            try {
                f19762a[EventTypeArg.NO_PASSWORD_LINK_VIEW_CREATE_REPORT.ordinal()] = 189;
            } catch (NoSuchFieldError unused189) {
            }
            try {
                f19762a[EventTypeArg.NO_PASSWORD_LINK_VIEW_REPORT_FAILED.ordinal()] = 190;
            } catch (NoSuchFieldError unused190) {
            }
            try {
                f19762a[EventTypeArg.OUTDATED_LINK_VIEW_CREATE_REPORT.ordinal()] = 191;
            } catch (NoSuchFieldError unused191) {
            }
            try {
                f19762a[EventTypeArg.OUTDATED_LINK_VIEW_REPORT_FAILED.ordinal()] = 192;
            } catch (NoSuchFieldError unused192) {
            }
            try {
                f19762a[EventTypeArg.PAPER_ADMIN_EXPORT_START.ordinal()] = 193;
            } catch (NoSuchFieldError unused193) {
            }
            try {
                f19762a[EventTypeArg.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT.ordinal()] = 194;
            } catch (NoSuchFieldError unused194) {
            }
            try {
                f19762a[EventTypeArg.TEAM_ACTIVITY_CREATE_REPORT.ordinal()] = 195;
            } catch (NoSuchFieldError unused195) {
            }
            try {
                f19762a[EventTypeArg.TEAM_ACTIVITY_CREATE_REPORT_FAIL.ordinal()] = 196;
            } catch (NoSuchFieldError unused196) {
            }
            try {
                f19762a[EventTypeArg.COLLECTION_SHARE.ordinal()] = 197;
            } catch (NoSuchFieldError unused197) {
            }
            try {
                f19762a[EventTypeArg.FILE_TRANSFERS_FILE_ADD.ordinal()] = 198;
            } catch (NoSuchFieldError unused198) {
            }
            try {
                f19762a[EventTypeArg.FILE_TRANSFERS_TRANSFER_DELETE.ordinal()] = 199;
            } catch (NoSuchFieldError unused199) {
            }
            try {
                f19762a[EventTypeArg.FILE_TRANSFERS_TRANSFER_DOWNLOAD.ordinal()] = 200;
            } catch (NoSuchFieldError unused200) {
            }
            try {
                f19762a[EventTypeArg.FILE_TRANSFERS_TRANSFER_SEND.ordinal()] = 201;
            } catch (NoSuchFieldError unused201) {
            }
            try {
                f19762a[EventTypeArg.FILE_TRANSFERS_TRANSFER_VIEW.ordinal()] = 202;
            } catch (NoSuchFieldError unused202) {
            }
            try {
                f19762a[EventTypeArg.NOTE_ACL_INVITE_ONLY.ordinal()] = 203;
            } catch (NoSuchFieldError unused203) {
            }
            try {
                f19762a[EventTypeArg.NOTE_ACL_LINK.ordinal()] = 204;
            } catch (NoSuchFieldError unused204) {
            }
            try {
                f19762a[EventTypeArg.NOTE_ACL_TEAM_LINK.ordinal()] = 205;
            } catch (NoSuchFieldError unused205) {
            }
            try {
                f19762a[EventTypeArg.NOTE_SHARED.ordinal()] = 206;
            } catch (NoSuchFieldError unused206) {
            }
            try {
                f19762a[EventTypeArg.NOTE_SHARE_RECEIVE.ordinal()] = 207;
            } catch (NoSuchFieldError unused207) {
            }
            try {
                f19762a[EventTypeArg.OPEN_NOTE_SHARED.ordinal()] = 208;
            } catch (NoSuchFieldError unused208) {
            }
            try {
                f19762a[EventTypeArg.SF_ADD_GROUP.ordinal()] = 209;
            } catch (NoSuchFieldError unused209) {
            }
            try {
                f19762a[EventTypeArg.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS.ordinal()] = 210;
            } catch (NoSuchFieldError unused210) {
            }
            try {
                f19762a[EventTypeArg.SF_EXTERNAL_INVITE_WARN.ordinal()] = 211;
            } catch (NoSuchFieldError unused211) {
            }
            try {
                f19762a[EventTypeArg.SF_FB_INVITE.ordinal()] = 212;
            } catch (NoSuchFieldError unused212) {
            }
            try {
                f19762a[EventTypeArg.SF_FB_INVITE_CHANGE_ROLE.ordinal()] = 213;
            } catch (NoSuchFieldError unused213) {
            }
            try {
                f19762a[EventTypeArg.SF_FB_UNINVITE.ordinal()] = 214;
            } catch (NoSuchFieldError unused214) {
            }
            try {
                f19762a[EventTypeArg.SF_INVITE_GROUP.ordinal()] = 215;
            } catch (NoSuchFieldError unused215) {
            }
            try {
                f19762a[EventTypeArg.SF_TEAM_GRANT_ACCESS.ordinal()] = 216;
            } catch (NoSuchFieldError unused216) {
            }
            try {
                f19762a[EventTypeArg.SF_TEAM_INVITE.ordinal()] = 217;
            } catch (NoSuchFieldError unused217) {
            }
            try {
                f19762a[EventTypeArg.SF_TEAM_INVITE_CHANGE_ROLE.ordinal()] = 218;
            } catch (NoSuchFieldError unused218) {
            }
            try {
                f19762a[EventTypeArg.SF_TEAM_JOIN.ordinal()] = 219;
            } catch (NoSuchFieldError unused219) {
            }
            try {
                f19762a[EventTypeArg.SF_TEAM_JOIN_FROM_OOB_LINK.ordinal()] = 220;
            } catch (NoSuchFieldError unused220) {
            }
            try {
                f19762a[EventTypeArg.SF_TEAM_UNINVITE.ordinal()] = 221;
            } catch (NoSuchFieldError unused221) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_ADD_INVITEES.ordinal()] = 222;
            } catch (NoSuchFieldError unused222) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_ADD_LINK_EXPIRY.ordinal()] = 223;
            } catch (NoSuchFieldError unused223) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_ADD_LINK_PASSWORD.ordinal()] = 224;
            } catch (NoSuchFieldError unused224) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_ADD_MEMBER.ordinal()] = 225;
            } catch (NoSuchFieldError unused225) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY.ordinal()] = 226;
            } catch (NoSuchFieldError unused226) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_CHANGE_INVITEE_ROLE.ordinal()] = 227;
            } catch (NoSuchFieldError unused227) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_CHANGE_LINK_AUDIENCE.ordinal()] = 228;
            } catch (NoSuchFieldError unused228) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_CHANGE_LINK_EXPIRY.ordinal()] = 229;
            } catch (NoSuchFieldError unused229) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_CHANGE_LINK_PASSWORD.ordinal()] = 230;
            } catch (NoSuchFieldError unused230) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_CHANGE_MEMBER_ROLE.ordinal()] = 231;
            } catch (NoSuchFieldError unused231) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY.ordinal()] = 232;
            } catch (NoSuchFieldError unused232) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_CLAIM_INVITATION.ordinal()] = 233;
            } catch (NoSuchFieldError unused233) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_COPY.ordinal()] = 234;
            } catch (NoSuchFieldError unused234) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_DOWNLOAD.ordinal()] = 235;
            } catch (NoSuchFieldError unused235) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_RELINQUISH_MEMBERSHIP.ordinal()] = 236;
            } catch (NoSuchFieldError unused236) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_REMOVE_INVITEES.ordinal()] = 237;
            } catch (NoSuchFieldError unused237) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_REMOVE_LINK_EXPIRY.ordinal()] = 238;
            } catch (NoSuchFieldError unused238) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_REMOVE_LINK_PASSWORD.ordinal()] = 239;
            } catch (NoSuchFieldError unused239) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_REMOVE_MEMBER.ordinal()] = 240;
            } catch (NoSuchFieldError unused240) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_REQUEST_ACCESS.ordinal()] = 241;
            } catch (NoSuchFieldError unused241) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_RESTORE_INVITEES.ordinal()] = 242;
            } catch (NoSuchFieldError unused242) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_RESTORE_MEMBER.ordinal()] = 243;
            } catch (NoSuchFieldError unused243) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_UNSHARE.ordinal()] = 244;
            } catch (NoSuchFieldError unused244) {
            }
            try {
                f19762a[EventTypeArg.SHARED_CONTENT_VIEW.ordinal()] = 245;
            } catch (NoSuchFieldError unused245) {
            }
            try {
                f19762a[EventTypeArg.SHARED_FOLDER_CHANGE_LINK_POLICY.ordinal()] = 246;
            } catch (NoSuchFieldError unused246) {
            }
            try {
                f19762a[EventTypeArg.SHARED_FOLDER_CHANGE_MEMBERS_INHERITANCE_POLICY.ordinal()] = 247;
            } catch (NoSuchFieldError unused247) {
            }
            try {
                f19762a[EventTypeArg.SHARED_FOLDER_CHANGE_MEMBERS_MANAGEMENT_POLICY.ordinal()] = 248;
            } catch (NoSuchFieldError unused248) {
            }
            try {
                f19762a[EventTypeArg.SHARED_FOLDER_CHANGE_MEMBERS_POLICY.ordinal()] = 249;
            } catch (NoSuchFieldError unused249) {
            }
            try {
                f19762a[EventTypeArg.SHARED_FOLDER_CREATE.ordinal()] = 250;
            } catch (NoSuchFieldError unused250) {
            }
            try {
                f19762a[EventTypeArg.SHARED_FOLDER_DECLINE_INVITATION.ordinal()] = 251;
            } catch (NoSuchFieldError unused251) {
            }
            try {
                f19762a[EventTypeArg.SHARED_FOLDER_MOUNT.ordinal()] = 252;
            } catch (NoSuchFieldError unused252) {
            }
            try {
                f19762a[EventTypeArg.SHARED_FOLDER_NEST.ordinal()] = 253;
            } catch (NoSuchFieldError unused253) {
            }
            try {
                f19762a[EventTypeArg.SHARED_FOLDER_TRANSFER_OWNERSHIP.ordinal()] = 254;
            } catch (NoSuchFieldError unused254) {
            }
            try {
                f19762a[EventTypeArg.SHARED_FOLDER_UNMOUNT.ordinal()] = 255;
            } catch (NoSuchFieldError unused255) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_ADD_EXPIRY.ordinal()] = 256;
            } catch (NoSuchFieldError unused256) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_CHANGE_EXPIRY.ordinal()] = 257;
            } catch (NoSuchFieldError unused257) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_CHANGE_VISIBILITY.ordinal()] = 258;
            } catch (NoSuchFieldError unused258) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_COPY.ordinal()] = 259;
            } catch (NoSuchFieldError unused259) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_CREATE.ordinal()] = 260;
            } catch (NoSuchFieldError unused260) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_DISABLE.ordinal()] = 261;
            } catch (NoSuchFieldError unused261) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_DOWNLOAD.ordinal()] = 262;
            } catch (NoSuchFieldError unused262) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_REMOVE_EXPIRY.ordinal()] = 263;
            } catch (NoSuchFieldError unused263) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_SETTINGS_ADD_EXPIRATION.ordinal()] = 264;
            } catch (NoSuchFieldError unused264) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_SETTINGS_ADD_PASSWORD.ordinal()] = 265;
            } catch (NoSuchFieldError unused265) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_DISABLED.ordinal()] = 266;
            } catch (NoSuchFieldError unused266) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_ENABLED.ordinal()] = 267;
            } catch (NoSuchFieldError unused267) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_SETTINGS_CHANGE_AUDIENCE.ordinal()] = 268;
            } catch (NoSuchFieldError unused268) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_SETTINGS_CHANGE_EXPIRATION.ordinal()] = 269;
            } catch (NoSuchFieldError unused269) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_SETTINGS_CHANGE_PASSWORD.ordinal()] = 270;
            } catch (NoSuchFieldError unused270) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_SETTINGS_REMOVE_EXPIRATION.ordinal()] = 271;
            } catch (NoSuchFieldError unused271) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_SETTINGS_REMOVE_PASSWORD.ordinal()] = 272;
            } catch (NoSuchFieldError unused272) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_SHARE.ordinal()] = 273;
            } catch (NoSuchFieldError unused273) {
            }
            try {
                f19762a[EventTypeArg.SHARED_LINK_VIEW.ordinal()] = 274;
            } catch (NoSuchFieldError unused274) {
            }
            try {
                f19762a[EventTypeArg.SHARED_NOTE_OPENED.ordinal()] = 275;
            } catch (NoSuchFieldError unused275) {
            }
            try {
                f19762a[EventTypeArg.SHMODEL_GROUP_SHARE.ordinal()] = 276;
            } catch (NoSuchFieldError unused276) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_ACCESS_GRANTED.ordinal()] = 277;
            } catch (NoSuchFieldError unused277) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_ADD_MEMBER.ordinal()] = 278;
            } catch (NoSuchFieldError unused278) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_ARCHIVED.ordinal()] = 279;
            } catch (NoSuchFieldError unused279) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_CREATED.ordinal()] = 280;
            } catch (NoSuchFieldError unused280) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_DELETE_COMMENT.ordinal()] = 281;
            } catch (NoSuchFieldError unused281) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_EDITED.ordinal()] = 282;
            } catch (NoSuchFieldError unused282) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_EDIT_COMMENT.ordinal()] = 283;
            } catch (NoSuchFieldError unused283) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_FILE_ADDED.ordinal()] = 284;
            } catch (NoSuchFieldError unused284) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_FILE_DOWNLOAD.ordinal()] = 285;
            } catch (NoSuchFieldError unused285) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_FILE_REMOVED.ordinal()] = 286;
            } catch (NoSuchFieldError unused286) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_FILE_VIEW.ordinal()] = 287;
            } catch (NoSuchFieldError unused287) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_PERMANENTLY_DELETED.ordinal()] = 288;
            } catch (NoSuchFieldError unused288) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_POST_COMMENT.ordinal()] = 289;
            } catch (NoSuchFieldError unused289) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_REMOVE_MEMBER.ordinal()] = 290;
            } catch (NoSuchFieldError unused290) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_RENAMED.ordinal()] = 291;
            } catch (NoSuchFieldError unused291) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_REQUEST_ACCESS.ordinal()] = 292;
            } catch (NoSuchFieldError unused292) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_RESOLVE_COMMENT.ordinal()] = 293;
            } catch (NoSuchFieldError unused293) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_RESTORED.ordinal()] = 294;
            } catch (NoSuchFieldError unused294) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_TRASHED.ordinal()] = 295;
            } catch (NoSuchFieldError unused295) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_TRASHED_DEPRECATED.ordinal()] = 296;
            } catch (NoSuchFieldError unused296) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_UNRESOLVE_COMMENT.ordinal()] = 297;
            } catch (NoSuchFieldError unused297) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_UNTRASHED.ordinal()] = 298;
            } catch (NoSuchFieldError unused298) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_UNTRASHED_DEPRECATED.ordinal()] = 299;
            } catch (NoSuchFieldError unused299) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_VIEW.ordinal()] = 300;
            } catch (NoSuchFieldError unused300) {
            }
            try {
                f19762a[EventTypeArg.SSO_ADD_CERT.ordinal()] = 301;
            } catch (NoSuchFieldError unused301) {
            }
            try {
                f19762a[EventTypeArg.SSO_ADD_LOGIN_URL.ordinal()] = 302;
            } catch (NoSuchFieldError unused302) {
            }
            try {
                f19762a[EventTypeArg.SSO_ADD_LOGOUT_URL.ordinal()] = 303;
            } catch (NoSuchFieldError unused303) {
            }
            try {
                f19762a[EventTypeArg.SSO_CHANGE_CERT.ordinal()] = 304;
            } catch (NoSuchFieldError unused304) {
            }
            try {
                f19762a[EventTypeArg.SSO_CHANGE_LOGIN_URL.ordinal()] = 305;
            } catch (NoSuchFieldError unused305) {
            }
            try {
                f19762a[EventTypeArg.SSO_CHANGE_LOGOUT_URL.ordinal()] = 306;
            } catch (NoSuchFieldError unused306) {
            }
            try {
                f19762a[EventTypeArg.SSO_CHANGE_SAML_IDENTITY_MODE.ordinal()] = 307;
            } catch (NoSuchFieldError unused307) {
            }
            try {
                f19762a[EventTypeArg.SSO_REMOVE_CERT.ordinal()] = 308;
            } catch (NoSuchFieldError unused308) {
            }
            try {
                f19762a[EventTypeArg.SSO_REMOVE_LOGIN_URL.ordinal()] = 309;
            } catch (NoSuchFieldError unused309) {
            }
            try {
                f19762a[EventTypeArg.SSO_REMOVE_LOGOUT_URL.ordinal()] = 310;
            } catch (NoSuchFieldError unused310) {
            }
            try {
                f19762a[EventTypeArg.TEAM_FOLDER_CHANGE_STATUS.ordinal()] = 311;
            } catch (NoSuchFieldError unused311) {
            }
            try {
                f19762a[EventTypeArg.TEAM_FOLDER_CREATE.ordinal()] = 312;
            } catch (NoSuchFieldError unused312) {
            }
            try {
                f19762a[EventTypeArg.TEAM_FOLDER_DOWNGRADE.ordinal()] = 313;
            } catch (NoSuchFieldError unused313) {
            }
            try {
                f19762a[EventTypeArg.TEAM_FOLDER_PERMANENTLY_DELETE.ordinal()] = 314;
            } catch (NoSuchFieldError unused314) {
            }
            try {
                f19762a[EventTypeArg.TEAM_FOLDER_RENAME.ordinal()] = 315;
            } catch (NoSuchFieldError unused315) {
            }
            try {
                f19762a[EventTypeArg.TEAM_SELECTIVE_SYNC_SETTINGS_CHANGED.ordinal()] = 316;
            } catch (NoSuchFieldError unused316) {
            }
            try {
                f19762a[EventTypeArg.ACCOUNT_CAPTURE_CHANGE_POLICY.ordinal()] = 317;
            } catch (NoSuchFieldError unused317) {
            }
            try {
                f19762a[EventTypeArg.ALLOW_DOWNLOAD_DISABLED.ordinal()] = 318;
            } catch (NoSuchFieldError unused318) {
            }
            try {
                f19762a[EventTypeArg.ALLOW_DOWNLOAD_ENABLED.ordinal()] = 319;
            } catch (NoSuchFieldError unused319) {
            }
            try {
                f19762a[EventTypeArg.CAMERA_UPLOADS_POLICY_CHANGED.ordinal()] = 320;
            } catch (NoSuchFieldError unused320) {
            }
            try {
                f19762a[EventTypeArg.CONTENT_ADMINISTRATION_POLICY_CHANGED.ordinal()] = 321;
            } catch (NoSuchFieldError unused321) {
            }
            try {
                f19762a[EventTypeArg.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY.ordinal()] = 322;
            } catch (NoSuchFieldError unused322) {
            }
            try {
                f19762a[EventTypeArg.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY.ordinal()] = 323;
            } catch (NoSuchFieldError unused323) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_APPROVALS_ADD_EXCEPTION.ordinal()] = 324;
            } catch (NoSuchFieldError unused324) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY.ordinal()] = 325;
            } catch (NoSuchFieldError unused325) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY.ordinal()] = 326;
            } catch (NoSuchFieldError unused326) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION.ordinal()] = 327;
            } catch (NoSuchFieldError unused327) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION.ordinal()] = 328;
            } catch (NoSuchFieldError unused328) {
            }
            try {
                f19762a[EventTypeArg.DEVICE_APPROVALS_REMOVE_EXCEPTION.ordinal()] = 329;
            } catch (NoSuchFieldError unused329) {
            }
            try {
                f19762a[EventTypeArg.DIRECTORY_RESTRICTIONS_ADD_MEMBERS.ordinal()] = 330;
            } catch (NoSuchFieldError unused330) {
            }
            try {
                f19762a[EventTypeArg.DIRECTORY_RESTRICTIONS_REMOVE_MEMBERS.ordinal()] = 331;
            } catch (NoSuchFieldError unused331) {
            }
            try {
                f19762a[EventTypeArg.EMM_ADD_EXCEPTION.ordinal()] = 332;
            } catch (NoSuchFieldError unused332) {
            }
            try {
                f19762a[EventTypeArg.EMM_CHANGE_POLICY.ordinal()] = 333;
            } catch (NoSuchFieldError unused333) {
            }
            try {
                f19762a[EventTypeArg.EMM_REMOVE_EXCEPTION.ordinal()] = 334;
            } catch (NoSuchFieldError unused334) {
            }
            try {
                f19762a[EventTypeArg.EXTENDED_VERSION_HISTORY_CHANGE_POLICY.ordinal()] = 335;
            } catch (NoSuchFieldError unused335) {
            }
            try {
                f19762a[EventTypeArg.FILE_COMMENTS_CHANGE_POLICY.ordinal()] = 336;
            } catch (NoSuchFieldError unused336) {
            }
            try {
                f19762a[EventTypeArg.FILE_LOCKING_POLICY_CHANGED.ordinal()] = 337;
            } catch (NoSuchFieldError unused337) {
            }
            try {
                f19762a[EventTypeArg.FILE_REQUESTS_CHANGE_POLICY.ordinal()] = 338;
            } catch (NoSuchFieldError unused338) {
            }
            try {
                f19762a[EventTypeArg.FILE_REQUESTS_EMAILS_ENABLED.ordinal()] = 339;
            } catch (NoSuchFieldError unused339) {
            }
            try {
                f19762a[EventTypeArg.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY.ordinal()] = 340;
            } catch (NoSuchFieldError unused340) {
            }
            try {
                f19762a[EventTypeArg.FILE_TRANSFERS_POLICY_CHANGED.ordinal()] = 341;
            } catch (NoSuchFieldError unused341) {
            }
            try {
                f19762a[EventTypeArg.GOOGLE_SSO_CHANGE_POLICY.ordinal()] = 342;
            } catch (NoSuchFieldError unused342) {
            }
            try {
                f19762a[EventTypeArg.GROUP_USER_MANAGEMENT_CHANGE_POLICY.ordinal()] = 343;
            } catch (NoSuchFieldError unused343) {
            }
            try {
                f19762a[EventTypeArg.INTEGRATION_POLICY_CHANGED.ordinal()] = 344;
            } catch (NoSuchFieldError unused344) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_REQUESTS_CHANGE_POLICY.ordinal()] = 345;
            } catch (NoSuchFieldError unused345) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_SEND_INVITE_POLICY_CHANGED.ordinal()] = 346;
            } catch (NoSuchFieldError unused346) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_SPACE_LIMITS_ADD_EXCEPTION.ordinal()] = 347;
            } catch (NoSuchFieldError unused347) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_SPACE_LIMITS_CHANGE_CAPS_TYPE_POLICY.ordinal()] = 348;
            } catch (NoSuchFieldError unused348) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_SPACE_LIMITS_CHANGE_POLICY.ordinal()] = 349;
            } catch (NoSuchFieldError unused349) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION.ordinal()] = 350;
            } catch (NoSuchFieldError unused350) {
            }
            try {
                f19762a[EventTypeArg.MEMBER_SUGGESTIONS_CHANGE_POLICY.ordinal()] = 351;
            } catch (NoSuchFieldError unused351) {
            }
            try {
                f19762a[EventTypeArg.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY.ordinal()] = 352;
            } catch (NoSuchFieldError unused352) {
            }
            try {
                f19762a[EventTypeArg.NETWORK_CONTROL_CHANGE_POLICY.ordinal()] = 353;
            } catch (NoSuchFieldError unused353) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CHANGE_DEPLOYMENT_POLICY.ordinal()] = 354;
            } catch (NoSuchFieldError unused354) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CHANGE_MEMBER_LINK_POLICY.ordinal()] = 355;
            } catch (NoSuchFieldError unused355) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CHANGE_MEMBER_POLICY.ordinal()] = 356;
            } catch (NoSuchFieldError unused356) {
            }
            try {
                f19762a[EventTypeArg.PAPER_CHANGE_POLICY.ordinal()] = 357;
            } catch (NoSuchFieldError unused357) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DEFAULT_FOLDER_POLICY_CHANGED.ordinal()] = 358;
            } catch (NoSuchFieldError unused358) {
            }
            try {
                f19762a[EventTypeArg.PAPER_DESKTOP_POLICY_CHANGED.ordinal()] = 359;
            } catch (NoSuchFieldError unused359) {
            }
            try {
                f19762a[EventTypeArg.PAPER_ENABLED_USERS_GROUP_ADDITION.ordinal()] = 360;
            } catch (NoSuchFieldError unused360) {
            }
            try {
                f19762a[EventTypeArg.PAPER_ENABLED_USERS_GROUP_REMOVAL.ordinal()] = 361;
            } catch (NoSuchFieldError unused361) {
            }
            try {
                f19762a[EventTypeArg.PASSWORD_STRENGTH_REQUIREMENTS_CHANGE_POLICY.ordinal()] = 362;
            } catch (NoSuchFieldError unused362) {
            }
            try {
                f19762a[EventTypeArg.PERMANENT_DELETE_CHANGE_POLICY.ordinal()] = 363;
            } catch (NoSuchFieldError unused363) {
            }
            try {
                f19762a[EventTypeArg.RESELLER_SUPPORT_CHANGE_POLICY.ordinal()] = 364;
            } catch (NoSuchFieldError unused364) {
            }
            try {
                f19762a[EventTypeArg.REWIND_POLICY_CHANGED.ordinal()] = 365;
            } catch (NoSuchFieldError unused365) {
            }
            try {
                f19762a[EventTypeArg.SEND_FOR_SIGNATURE_POLICY_CHANGED.ordinal()] = 366;
            } catch (NoSuchFieldError unused366) {
            }
            try {
                f19762a[EventTypeArg.SHARING_CHANGE_FOLDER_JOIN_POLICY.ordinal()] = 367;
            } catch (NoSuchFieldError unused367) {
            }
            try {
                f19762a[EventTypeArg.SHARING_CHANGE_LINK_POLICY.ordinal()] = 368;
            } catch (NoSuchFieldError unused368) {
            }
            try {
                f19762a[EventTypeArg.SHARING_CHANGE_MEMBER_POLICY.ordinal()] = 369;
            } catch (NoSuchFieldError unused369) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_CHANGE_DOWNLOAD_POLICY.ordinal()] = 370;
            } catch (NoSuchFieldError unused370) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_CHANGE_ENABLED_POLICY.ordinal()] = 371;
            } catch (NoSuchFieldError unused371) {
            }
            try {
                f19762a[EventTypeArg.SHOWCASE_CHANGE_EXTERNAL_SHARING_POLICY.ordinal()] = 372;
            } catch (NoSuchFieldError unused372) {
            }
            try {
                f19762a[EventTypeArg.SMARTER_SMART_SYNC_POLICY_CHANGED.ordinal()] = 373;
            } catch (NoSuchFieldError unused373) {
            }
            try {
                f19762a[EventTypeArg.SMART_SYNC_CHANGE_POLICY.ordinal()] = 374;
            } catch (NoSuchFieldError unused374) {
            }
            try {
                f19762a[EventTypeArg.SMART_SYNC_NOT_OPT_OUT.ordinal()] = 375;
            } catch (NoSuchFieldError unused375) {
            }
            try {
                f19762a[EventTypeArg.SMART_SYNC_OPT_OUT.ordinal()] = 376;
            } catch (NoSuchFieldError unused376) {
            }
            try {
                f19762a[EventTypeArg.SSO_CHANGE_POLICY.ordinal()] = 377;
            } catch (NoSuchFieldError unused377) {
            }
            try {
                f19762a[EventTypeArg.TEAM_EXTENSIONS_POLICY_CHANGED.ordinal()] = 378;
            } catch (NoSuchFieldError unused378) {
            }
            try {
                f19762a[EventTypeArg.TEAM_SELECTIVE_SYNC_POLICY_CHANGED.ordinal()] = 379;
            } catch (NoSuchFieldError unused379) {
            }
            try {
                f19762a[EventTypeArg.TEAM_SHARING_WHITELIST_SUBJECTS_CHANGED.ordinal()] = 380;
            } catch (NoSuchFieldError unused380) {
            }
            try {
                f19762a[EventTypeArg.TFA_ADD_EXCEPTION.ordinal()] = 381;
            } catch (NoSuchFieldError unused381) {
            }
            try {
                f19762a[EventTypeArg.TFA_CHANGE_POLICY.ordinal()] = 382;
            } catch (NoSuchFieldError unused382) {
            }
            try {
                f19762a[EventTypeArg.TFA_REMOVE_EXCEPTION.ordinal()] = 383;
            } catch (NoSuchFieldError unused383) {
            }
            try {
                f19762a[EventTypeArg.TWO_ACCOUNT_CHANGE_POLICY.ordinal()] = 384;
            } catch (NoSuchFieldError unused384) {
            }
            try {
                f19762a[EventTypeArg.VIEWER_INFO_POLICY_CHANGED.ordinal()] = 385;
            } catch (NoSuchFieldError unused385) {
            }
            try {
                f19762a[EventTypeArg.WATERMARKING_POLICY_CHANGED.ordinal()] = 386;
            } catch (NoSuchFieldError unused386) {
            }
            try {
                f19762a[EventTypeArg.WEB_SESSIONS_CHANGE_ACTIVE_SESSION_LIMIT.ordinal()] = 387;
            } catch (NoSuchFieldError unused387) {
            }
            try {
                f19762a[EventTypeArg.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY.ordinal()] = 388;
            } catch (NoSuchFieldError unused388) {
            }
            try {
                f19762a[EventTypeArg.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY.ordinal()] = 389;
            } catch (NoSuchFieldError unused389) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_FROM.ordinal()] = 390;
            } catch (NoSuchFieldError unused390) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_TO.ordinal()] = 391;
            } catch (NoSuchFieldError unused391) {
            }
            try {
                f19762a[EventTypeArg.TEAM_PROFILE_ADD_LOGO.ordinal()] = 392;
            } catch (NoSuchFieldError unused392) {
            }
            try {
                f19762a[EventTypeArg.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE.ordinal()] = 393;
            } catch (NoSuchFieldError unused393) {
            }
            try {
                f19762a[EventTypeArg.TEAM_PROFILE_CHANGE_LOGO.ordinal()] = 394;
            } catch (NoSuchFieldError unused394) {
            }
            try {
                f19762a[EventTypeArg.TEAM_PROFILE_CHANGE_NAME.ordinal()] = 395;
            } catch (NoSuchFieldError unused395) {
            }
            try {
                f19762a[EventTypeArg.TEAM_PROFILE_REMOVE_LOGO.ordinal()] = 396;
            } catch (NoSuchFieldError unused396) {
            }
            try {
                f19762a[EventTypeArg.TFA_ADD_BACKUP_PHONE.ordinal()] = 397;
            } catch (NoSuchFieldError unused397) {
            }
            try {
                f19762a[EventTypeArg.TFA_ADD_SECURITY_KEY.ordinal()] = 398;
            } catch (NoSuchFieldError unused398) {
            }
            try {
                f19762a[EventTypeArg.TFA_CHANGE_BACKUP_PHONE.ordinal()] = 399;
            } catch (NoSuchFieldError unused399) {
            }
            try {
                f19762a[EventTypeArg.TFA_CHANGE_STATUS.ordinal()] = 400;
            } catch (NoSuchFieldError unused400) {
            }
            try {
                f19762a[EventTypeArg.TFA_REMOVE_BACKUP_PHONE.ordinal()] = 401;
            } catch (NoSuchFieldError unused401) {
            }
            try {
                f19762a[EventTypeArg.TFA_REMOVE_SECURITY_KEY.ordinal()] = 402;
            } catch (NoSuchFieldError unused402) {
            }
            try {
                f19762a[EventTypeArg.TFA_RESET.ordinal()] = 403;
            } catch (NoSuchFieldError unused403) {
            }
            try {
                f19762a[EventTypeArg.CHANGED_ENTERPRISE_ADMIN_ROLE.ordinal()] = 404;
            } catch (NoSuchFieldError unused404) {
            }
            try {
                f19762a[EventTypeArg.CHANGED_ENTERPRISE_CONNECTED_TEAM_STATUS.ordinal()] = 405;
            } catch (NoSuchFieldError unused405) {
            }
            try {
                f19762a[EventTypeArg.ENDED_ENTERPRISE_ADMIN_SESSION.ordinal()] = 406;
            } catch (NoSuchFieldError unused406) {
            }
            try {
                f19762a[EventTypeArg.ENDED_ENTERPRISE_ADMIN_SESSION_DEPRECATED.ordinal()] = 407;
            } catch (NoSuchFieldError unused407) {
            }
            try {
                f19762a[EventTypeArg.ENTERPRISE_SETTINGS_LOCKING.ordinal()] = 408;
            } catch (NoSuchFieldError unused408) {
            }
            try {
                f19762a[EventTypeArg.GUEST_ADMIN_CHANGE_STATUS.ordinal()] = 409;
            } catch (NoSuchFieldError unused409) {
            }
            try {
                f19762a[EventTypeArg.STARTED_ENTERPRISE_ADMIN_SESSION.ordinal()] = 410;
            } catch (NoSuchFieldError unused410) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_ACCEPTED.ordinal()] = 411;
            } catch (NoSuchFieldError unused411) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_PRIMARY_TEAM.ordinal()] = 412;
            } catch (NoSuchFieldError unused412) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_SECONDARY_TEAM.ordinal()] = 413;
            } catch (NoSuchFieldError unused413) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_AUTO_CANCELED.ordinal()] = 414;
            } catch (NoSuchFieldError unused414) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_CANCELED.ordinal()] = 415;
            } catch (NoSuchFieldError unused415) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_PRIMARY_TEAM.ordinal()] = 416;
            } catch (NoSuchFieldError unused416) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_SECONDARY_TEAM.ordinal()] = 417;
            } catch (NoSuchFieldError unused417) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_EXPIRED.ordinal()] = 418;
            } catch (NoSuchFieldError unused418) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_PRIMARY_TEAM.ordinal()] = 419;
            } catch (NoSuchFieldError unused419) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_SECONDARY_TEAM.ordinal()] = 420;
            } catch (NoSuchFieldError unused420) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_PRIMARY_TEAM.ordinal()] = 421;
            } catch (NoSuchFieldError unused421) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_SECONDARY_TEAM.ordinal()] = 422;
            } catch (NoSuchFieldError unused422) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_REMINDER.ordinal()] = 423;
            } catch (NoSuchFieldError unused423) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_PRIMARY_TEAM.ordinal()] = 424;
            } catch (NoSuchFieldError unused424) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_SECONDARY_TEAM.ordinal()] = 425;
            } catch (NoSuchFieldError unused425) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_REVOKED.ordinal()] = 426;
            } catch (NoSuchFieldError unused426) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_PRIMARY_TEAM.ordinal()] = 427;
            } catch (NoSuchFieldError unused427) {
            }
            try {
                f19762a[EventTypeArg.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_SECONDARY_TEAM.ordinal()] = 428;
            } catch (NoSuchFieldError unused428) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.EventTypeArg$b */
    /* loaded from: classes4.dex */
    public static class C3511b extends UnionSerializer<EventTypeArg> {

        /* renamed from: b */
        public static final C3511b f19763b = new C3511b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EventTypeArg deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            EventTypeArg eventTypeArg = "app_link_team".equals(readTag) ? EventTypeArg.APP_LINK_TEAM : "app_link_user".equals(readTag) ? EventTypeArg.APP_LINK_USER : "app_unlink_team".equals(readTag) ? EventTypeArg.APP_UNLINK_TEAM : "app_unlink_user".equals(readTag) ? EventTypeArg.APP_UNLINK_USER : "integration_connected".equals(readTag) ? EventTypeArg.INTEGRATION_CONNECTED : "integration_disconnected".equals(readTag) ? EventTypeArg.INTEGRATION_DISCONNECTED : "file_add_comment".equals(readTag) ? EventTypeArg.FILE_ADD_COMMENT : "file_change_comment_subscription".equals(readTag) ? EventTypeArg.FILE_CHANGE_COMMENT_SUBSCRIPTION : "file_delete_comment".equals(readTag) ? EventTypeArg.FILE_DELETE_COMMENT : "file_edit_comment".equals(readTag) ? EventTypeArg.FILE_EDIT_COMMENT : "file_like_comment".equals(readTag) ? EventTypeArg.FILE_LIKE_COMMENT : "file_resolve_comment".equals(readTag) ? EventTypeArg.FILE_RESOLVE_COMMENT : "file_unlike_comment".equals(readTag) ? EventTypeArg.FILE_UNLIKE_COMMENT : "file_unresolve_comment".equals(readTag) ? EventTypeArg.FILE_UNRESOLVE_COMMENT : "device_change_ip_desktop".equals(readTag) ? EventTypeArg.DEVICE_CHANGE_IP_DESKTOP : "device_change_ip_mobile".equals(readTag) ? EventTypeArg.DEVICE_CHANGE_IP_MOBILE : "device_change_ip_web".equals(readTag) ? EventTypeArg.DEVICE_CHANGE_IP_WEB : "device_delete_on_unlink_fail".equals(readTag) ? EventTypeArg.DEVICE_DELETE_ON_UNLINK_FAIL : "device_delete_on_unlink_success".equals(readTag) ? EventTypeArg.DEVICE_DELETE_ON_UNLINK_SUCCESS : "device_link_fail".equals(readTag) ? EventTypeArg.DEVICE_LINK_FAIL : "device_link_success".equals(readTag) ? EventTypeArg.DEVICE_LINK_SUCCESS : "device_management_disabled".equals(readTag) ? EventTypeArg.DEVICE_MANAGEMENT_DISABLED : "device_management_enabled".equals(readTag) ? EventTypeArg.DEVICE_MANAGEMENT_ENABLED : "device_unlink".equals(readTag) ? EventTypeArg.DEVICE_UNLINK : "emm_refresh_auth_token".equals(readTag) ? EventTypeArg.EMM_REFRESH_AUTH_TOKEN : "account_capture_change_availability".equals(readTag) ? EventTypeArg.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY : "account_capture_migrate_account".equals(readTag) ? EventTypeArg.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT : "account_capture_notification_emails_sent".equals(readTag) ? EventTypeArg.ACCOUNT_CAPTURE_NOTIFICATION_EMAILS_SENT : "account_capture_relinquish_account".equals(readTag) ? EventTypeArg.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT : "disabled_domain_invites".equals(readTag) ? EventTypeArg.DISABLED_DOMAIN_INVITES : "domain_invites_approve_request_to_join_team".equals(readTag) ? EventTypeArg.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM : "domain_invites_decline_request_to_join_team".equals(readTag) ? EventTypeArg.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM : "domain_invites_email_existing_users".equals(readTag) ? EventTypeArg.DOMAIN_INVITES_EMAIL_EXISTING_USERS : "domain_invites_request_to_join_team".equals(readTag) ? EventTypeArg.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM : "domain_invites_set_invite_new_user_pref_to_no".equals(readTag) ? EventTypeArg.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO : "domain_invites_set_invite_new_user_pref_to_yes".equals(readTag) ? EventTypeArg.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES : "domain_verification_add_domain_fail".equals(readTag) ? EventTypeArg.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL : "domain_verification_add_domain_success".equals(readTag) ? EventTypeArg.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS : "domain_verification_remove_domain".equals(readTag) ? EventTypeArg.DOMAIN_VERIFICATION_REMOVE_DOMAIN : "enabled_domain_invites".equals(readTag) ? EventTypeArg.ENABLED_DOMAIN_INVITES : "create_folder".equals(readTag) ? EventTypeArg.CREATE_FOLDER : "file_add".equals(readTag) ? EventTypeArg.FILE_ADD : "file_copy".equals(readTag) ? EventTypeArg.FILE_COPY : "file_delete".equals(readTag) ? EventTypeArg.FILE_DELETE : "file_download".equals(readTag) ? EventTypeArg.FILE_DOWNLOAD : "file_edit".equals(readTag) ? EventTypeArg.FILE_EDIT : "file_get_copy_reference".equals(readTag) ? EventTypeArg.FILE_GET_COPY_REFERENCE : "file_locking_lock_status_changed".equals(readTag) ? EventTypeArg.FILE_LOCKING_LOCK_STATUS_CHANGED : "file_move".equals(readTag) ? EventTypeArg.FILE_MOVE : "file_permanently_delete".equals(readTag) ? EventTypeArg.FILE_PERMANENTLY_DELETE : "file_preview".equals(readTag) ? EventTypeArg.FILE_PREVIEW : "file_rename".equals(readTag) ? EventTypeArg.FILE_RENAME : "file_restore".equals(readTag) ? EventTypeArg.FILE_RESTORE : "file_revert".equals(readTag) ? EventTypeArg.FILE_REVERT : "file_rollback_changes".equals(readTag) ? EventTypeArg.FILE_ROLLBACK_CHANGES : "file_save_copy_reference".equals(readTag) ? EventTypeArg.FILE_SAVE_COPY_REFERENCE : "folder_overview_description_changed".equals(readTag) ? EventTypeArg.FOLDER_OVERVIEW_DESCRIPTION_CHANGED : "folder_overview_item_pinned".equals(readTag) ? EventTypeArg.FOLDER_OVERVIEW_ITEM_PINNED : "folder_overview_item_unpinned".equals(readTag) ? EventTypeArg.FOLDER_OVERVIEW_ITEM_UNPINNED : "rewind_folder".equals(readTag) ? EventTypeArg.REWIND_FOLDER : "file_request_change".equals(readTag) ? EventTypeArg.FILE_REQUEST_CHANGE : "file_request_close".equals(readTag) ? EventTypeArg.FILE_REQUEST_CLOSE : "file_request_create".equals(readTag) ? EventTypeArg.FILE_REQUEST_CREATE : "file_request_delete".equals(readTag) ? EventTypeArg.FILE_REQUEST_DELETE : "file_request_receive_file".equals(readTag) ? EventTypeArg.FILE_REQUEST_RECEIVE_FILE : "group_add_external_id".equals(readTag) ? EventTypeArg.GROUP_ADD_EXTERNAL_ID : "group_add_member".equals(readTag) ? EventTypeArg.GROUP_ADD_MEMBER : "group_change_external_id".equals(readTag) ? EventTypeArg.GROUP_CHANGE_EXTERNAL_ID : "group_change_management_type".equals(readTag) ? EventTypeArg.GROUP_CHANGE_MANAGEMENT_TYPE : "group_change_member_role".equals(readTag) ? EventTypeArg.GROUP_CHANGE_MEMBER_ROLE : "group_create".equals(readTag) ? EventTypeArg.GROUP_CREATE : "group_delete".equals(readTag) ? EventTypeArg.GROUP_DELETE : "group_description_updated".equals(readTag) ? EventTypeArg.GROUP_DESCRIPTION_UPDATED : "group_join_policy_updated".equals(readTag) ? EventTypeArg.GROUP_JOIN_POLICY_UPDATED : "group_moved".equals(readTag) ? EventTypeArg.GROUP_MOVED : "group_remove_external_id".equals(readTag) ? EventTypeArg.GROUP_REMOVE_EXTERNAL_ID : "group_remove_member".equals(readTag) ? EventTypeArg.GROUP_REMOVE_MEMBER : "group_rename".equals(readTag) ? EventTypeArg.GROUP_RENAME : "legal_holds_activate_a_hold".equals(readTag) ? EventTypeArg.LEGAL_HOLDS_ACTIVATE_A_HOLD : "legal_holds_add_members".equals(readTag) ? EventTypeArg.LEGAL_HOLDS_ADD_MEMBERS : "legal_holds_change_hold_details".equals(readTag) ? EventTypeArg.LEGAL_HOLDS_CHANGE_HOLD_DETAILS : "legal_holds_change_hold_name".equals(readTag) ? EventTypeArg.LEGAL_HOLDS_CHANGE_HOLD_NAME : "legal_holds_export_a_hold".equals(readTag) ? EventTypeArg.LEGAL_HOLDS_EXPORT_A_HOLD : "legal_holds_export_cancelled".equals(readTag) ? EventTypeArg.LEGAL_HOLDS_EXPORT_CANCELLED : "legal_holds_export_downloaded".equals(readTag) ? EventTypeArg.LEGAL_HOLDS_EXPORT_DOWNLOADED : "legal_holds_export_removed".equals(readTag) ? EventTypeArg.LEGAL_HOLDS_EXPORT_REMOVED : "legal_holds_release_a_hold".equals(readTag) ? EventTypeArg.LEGAL_HOLDS_RELEASE_A_HOLD : "legal_holds_remove_members".equals(readTag) ? EventTypeArg.LEGAL_HOLDS_REMOVE_MEMBERS : "legal_holds_report_a_hold".equals(readTag) ? EventTypeArg.LEGAL_HOLDS_REPORT_A_HOLD : "account_lock_or_unlocked".equals(readTag) ? EventTypeArg.ACCOUNT_LOCK_OR_UNLOCKED : "emm_error".equals(readTag) ? EventTypeArg.EMM_ERROR : "guest_admin_signed_in_via_trusted_teams".equals(readTag) ? EventTypeArg.GUEST_ADMIN_SIGNED_IN_VIA_TRUSTED_TEAMS : "guest_admin_signed_out_via_trusted_teams".equals(readTag) ? EventTypeArg.GUEST_ADMIN_SIGNED_OUT_VIA_TRUSTED_TEAMS : "login_fail".equals(readTag) ? EventTypeArg.LOGIN_FAIL : "login_success".equals(readTag) ? EventTypeArg.LOGIN_SUCCESS : "logout".equals(readTag) ? EventTypeArg.LOGOUT : "reseller_support_session_end".equals(readTag) ? EventTypeArg.RESELLER_SUPPORT_SESSION_END : "reseller_support_session_start".equals(readTag) ? EventTypeArg.RESELLER_SUPPORT_SESSION_START : "sign_in_as_session_end".equals(readTag) ? EventTypeArg.SIGN_IN_AS_SESSION_END : "sign_in_as_session_start".equals(readTag) ? EventTypeArg.SIGN_IN_AS_SESSION_START : "sso_error".equals(readTag) ? EventTypeArg.SSO_ERROR : "create_team_invite_link".equals(readTag) ? EventTypeArg.CREATE_TEAM_INVITE_LINK : "delete_team_invite_link".equals(readTag) ? EventTypeArg.DELETE_TEAM_INVITE_LINK : "member_add_external_id".equals(readTag) ? EventTypeArg.MEMBER_ADD_EXTERNAL_ID : "member_add_name".equals(readTag) ? EventTypeArg.MEMBER_ADD_NAME : "member_change_admin_role".equals(readTag) ? EventTypeArg.MEMBER_CHANGE_ADMIN_ROLE : "member_change_email".equals(readTag) ? EventTypeArg.MEMBER_CHANGE_EMAIL : "member_change_external_id".equals(readTag) ? EventTypeArg.MEMBER_CHANGE_EXTERNAL_ID : "member_change_membership_type".equals(readTag) ? EventTypeArg.MEMBER_CHANGE_MEMBERSHIP_TYPE : "member_change_name".equals(readTag) ? EventTypeArg.MEMBER_CHANGE_NAME : "member_change_status".equals(readTag) ? EventTypeArg.MEMBER_CHANGE_STATUS : "member_delete_manual_contacts".equals(readTag) ? EventTypeArg.MEMBER_DELETE_MANUAL_CONTACTS : "member_delete_profile_photo".equals(readTag) ? EventTypeArg.MEMBER_DELETE_PROFILE_PHOTO : "member_permanently_delete_account_contents".equals(readTag) ? EventTypeArg.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS : "member_remove_external_id".equals(readTag) ? EventTypeArg.MEMBER_REMOVE_EXTERNAL_ID : "member_set_profile_photo".equals(readTag) ? EventTypeArg.MEMBER_SET_PROFILE_PHOTO : "member_space_limits_add_custom_quota".equals(readTag) ? EventTypeArg.MEMBER_SPACE_LIMITS_ADD_CUSTOM_QUOTA : "member_space_limits_change_custom_quota".equals(readTag) ? EventTypeArg.MEMBER_SPACE_LIMITS_CHANGE_CUSTOM_QUOTA : "member_space_limits_change_status".equals(readTag) ? EventTypeArg.MEMBER_SPACE_LIMITS_CHANGE_STATUS : "member_space_limits_remove_custom_quota".equals(readTag) ? EventTypeArg.MEMBER_SPACE_LIMITS_REMOVE_CUSTOM_QUOTA : "member_suggest".equals(readTag) ? EventTypeArg.MEMBER_SUGGEST : "member_transfer_account_contents".equals(readTag) ? EventTypeArg.MEMBER_TRANSFER_ACCOUNT_CONTENTS : "pending_secondary_email_added".equals(readTag) ? EventTypeArg.PENDING_SECONDARY_EMAIL_ADDED : "secondary_email_deleted".equals(readTag) ? EventTypeArg.SECONDARY_EMAIL_DELETED : "secondary_email_verified".equals(readTag) ? EventTypeArg.SECONDARY_EMAIL_VERIFIED : "secondary_mails_policy_changed".equals(readTag) ? EventTypeArg.SECONDARY_MAILS_POLICY_CHANGED : "binder_add_page".equals(readTag) ? EventTypeArg.BINDER_ADD_PAGE : "binder_add_section".equals(readTag) ? EventTypeArg.BINDER_ADD_SECTION : "binder_remove_page".equals(readTag) ? EventTypeArg.BINDER_REMOVE_PAGE : "binder_remove_section".equals(readTag) ? EventTypeArg.BINDER_REMOVE_SECTION : "binder_rename_page".equals(readTag) ? EventTypeArg.BINDER_RENAME_PAGE : "binder_rename_section".equals(readTag) ? EventTypeArg.BINDER_RENAME_SECTION : "binder_reorder_page".equals(readTag) ? EventTypeArg.BINDER_REORDER_PAGE : "binder_reorder_section".equals(readTag) ? EventTypeArg.BINDER_REORDER_SECTION : "paper_content_add_member".equals(readTag) ? EventTypeArg.PAPER_CONTENT_ADD_MEMBER : "paper_content_add_to_folder".equals(readTag) ? EventTypeArg.PAPER_CONTENT_ADD_TO_FOLDER : "paper_content_archive".equals(readTag) ? EventTypeArg.PAPER_CONTENT_ARCHIVE : "paper_content_create".equals(readTag) ? EventTypeArg.PAPER_CONTENT_CREATE : "paper_content_permanently_delete".equals(readTag) ? EventTypeArg.PAPER_CONTENT_PERMANENTLY_DELETE : "paper_content_remove_from_folder".equals(readTag) ? EventTypeArg.PAPER_CONTENT_REMOVE_FROM_FOLDER : "paper_content_remove_member".equals(readTag) ? EventTypeArg.PAPER_CONTENT_REMOVE_MEMBER : "paper_content_rename".equals(readTag) ? EventTypeArg.PAPER_CONTENT_RENAME : "paper_content_restore".equals(readTag) ? EventTypeArg.PAPER_CONTENT_RESTORE : "paper_doc_add_comment".equals(readTag) ? EventTypeArg.PAPER_DOC_ADD_COMMENT : "paper_doc_change_member_role".equals(readTag) ? EventTypeArg.PAPER_DOC_CHANGE_MEMBER_ROLE : "paper_doc_change_sharing_policy".equals(readTag) ? EventTypeArg.PAPER_DOC_CHANGE_SHARING_POLICY : "paper_doc_change_subscription".equals(readTag) ? EventTypeArg.PAPER_DOC_CHANGE_SUBSCRIPTION : "paper_doc_deleted".equals(readTag) ? EventTypeArg.PAPER_DOC_DELETED : "paper_doc_delete_comment".equals(readTag) ? EventTypeArg.PAPER_DOC_DELETE_COMMENT : "paper_doc_download".equals(readTag) ? EventTypeArg.PAPER_DOC_DOWNLOAD : "paper_doc_edit".equals(readTag) ? EventTypeArg.PAPER_DOC_EDIT : "paper_doc_edit_comment".equals(readTag) ? EventTypeArg.PAPER_DOC_EDIT_COMMENT : "paper_doc_followed".equals(readTag) ? EventTypeArg.PAPER_DOC_FOLLOWED : "paper_doc_mention".equals(readTag) ? EventTypeArg.PAPER_DOC_MENTION : "paper_doc_ownership_changed".equals(readTag) ? EventTypeArg.PAPER_DOC_OWNERSHIP_CHANGED : "paper_doc_request_access".equals(readTag) ? EventTypeArg.PAPER_DOC_REQUEST_ACCESS : "paper_doc_resolve_comment".equals(readTag) ? EventTypeArg.PAPER_DOC_RESOLVE_COMMENT : "paper_doc_revert".equals(readTag) ? EventTypeArg.PAPER_DOC_REVERT : "paper_doc_slack_share".equals(readTag) ? EventTypeArg.PAPER_DOC_SLACK_SHARE : "paper_doc_team_invite".equals(readTag) ? EventTypeArg.PAPER_DOC_TEAM_INVITE : "paper_doc_trashed".equals(readTag) ? EventTypeArg.PAPER_DOC_TRASHED : "paper_doc_unresolve_comment".equals(readTag) ? EventTypeArg.PAPER_DOC_UNRESOLVE_COMMENT : "paper_doc_untrashed".equals(readTag) ? EventTypeArg.PAPER_DOC_UNTRASHED : "paper_doc_view".equals(readTag) ? EventTypeArg.PAPER_DOC_VIEW : "paper_external_view_allow".equals(readTag) ? EventTypeArg.PAPER_EXTERNAL_VIEW_ALLOW : "paper_external_view_default_team".equals(readTag) ? EventTypeArg.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM : "paper_external_view_forbid".equals(readTag) ? EventTypeArg.PAPER_EXTERNAL_VIEW_FORBID : "paper_folder_change_subscription".equals(readTag) ? EventTypeArg.PAPER_FOLDER_CHANGE_SUBSCRIPTION : "paper_folder_deleted".equals(readTag) ? EventTypeArg.PAPER_FOLDER_DELETED : "paper_folder_followed".equals(readTag) ? EventTypeArg.PAPER_FOLDER_FOLLOWED : "paper_folder_team_invite".equals(readTag) ? EventTypeArg.PAPER_FOLDER_TEAM_INVITE : "paper_published_link_change_permission".equals(readTag) ? EventTypeArg.PAPER_PUBLISHED_LINK_CHANGE_PERMISSION : "paper_published_link_create".equals(readTag) ? EventTypeArg.PAPER_PUBLISHED_LINK_CREATE : "paper_published_link_disabled".equals(readTag) ? EventTypeArg.PAPER_PUBLISHED_LINK_DISABLED : "paper_published_link_view".equals(readTag) ? EventTypeArg.PAPER_PUBLISHED_LINK_VIEW : "password_change".equals(readTag) ? EventTypeArg.PASSWORD_CHANGE : AccountVerifyPurpose.PURPOSE_PASSWORD_RESET.equals(readTag) ? EventTypeArg.PASSWORD_RESET : "password_reset_all".equals(readTag) ? EventTypeArg.PASSWORD_RESET_ALL : "emm_create_exceptions_report".equals(readTag) ? EventTypeArg.EMM_CREATE_EXCEPTIONS_REPORT : "emm_create_usage_report".equals(readTag) ? EventTypeArg.EMM_CREATE_USAGE_REPORT : "export_members_report".equals(readTag) ? EventTypeArg.EXPORT_MEMBERS_REPORT : "export_members_report_fail".equals(readTag) ? EventTypeArg.EXPORT_MEMBERS_REPORT_FAIL : "external_sharing_create_report".equals(readTag) ? EventTypeArg.EXTERNAL_SHARING_CREATE_REPORT : "external_sharing_report_failed".equals(readTag) ? EventTypeArg.EXTERNAL_SHARING_REPORT_FAILED : "no_expiration_link_gen_create_report".equals(readTag) ? EventTypeArg.NO_EXPIRATION_LINK_GEN_CREATE_REPORT : "no_expiration_link_gen_report_failed".equals(readTag) ? EventTypeArg.NO_EXPIRATION_LINK_GEN_REPORT_FAILED : "no_password_link_gen_create_report".equals(readTag) ? EventTypeArg.NO_PASSWORD_LINK_GEN_CREATE_REPORT : "no_password_link_gen_report_failed".equals(readTag) ? EventTypeArg.NO_PASSWORD_LINK_GEN_REPORT_FAILED : "no_password_link_view_create_report".equals(readTag) ? EventTypeArg.NO_PASSWORD_LINK_VIEW_CREATE_REPORT : "no_password_link_view_report_failed".equals(readTag) ? EventTypeArg.NO_PASSWORD_LINK_VIEW_REPORT_FAILED : "outdated_link_view_create_report".equals(readTag) ? EventTypeArg.OUTDATED_LINK_VIEW_CREATE_REPORT : "outdated_link_view_report_failed".equals(readTag) ? EventTypeArg.OUTDATED_LINK_VIEW_REPORT_FAILED : "paper_admin_export_start".equals(readTag) ? EventTypeArg.PAPER_ADMIN_EXPORT_START : "smart_sync_create_admin_privilege_report".equals(readTag) ? EventTypeArg.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT : "team_activity_create_report".equals(readTag) ? EventTypeArg.TEAM_ACTIVITY_CREATE_REPORT : "team_activity_create_report_fail".equals(readTag) ? EventTypeArg.TEAM_ACTIVITY_CREATE_REPORT_FAIL : "collection_share".equals(readTag) ? EventTypeArg.COLLECTION_SHARE : "file_transfers_file_add".equals(readTag) ? EventTypeArg.FILE_TRANSFERS_FILE_ADD : "file_transfers_transfer_delete".equals(readTag) ? EventTypeArg.FILE_TRANSFERS_TRANSFER_DELETE : "file_transfers_transfer_download".equals(readTag) ? EventTypeArg.FILE_TRANSFERS_TRANSFER_DOWNLOAD : "file_transfers_transfer_send".equals(readTag) ? EventTypeArg.FILE_TRANSFERS_TRANSFER_SEND : "file_transfers_transfer_view".equals(readTag) ? EventTypeArg.FILE_TRANSFERS_TRANSFER_VIEW : "note_acl_invite_only".equals(readTag) ? EventTypeArg.NOTE_ACL_INVITE_ONLY : "note_acl_link".equals(readTag) ? EventTypeArg.NOTE_ACL_LINK : "note_acl_team_link".equals(readTag) ? EventTypeArg.NOTE_ACL_TEAM_LINK : "note_shared".equals(readTag) ? EventTypeArg.NOTE_SHARED : "note_share_receive".equals(readTag) ? EventTypeArg.NOTE_SHARE_RECEIVE : "open_note_shared".equals(readTag) ? EventTypeArg.OPEN_NOTE_SHARED : "sf_add_group".equals(readTag) ? EventTypeArg.SF_ADD_GROUP : "sf_allow_non_members_to_view_shared_links".equals(readTag) ? EventTypeArg.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS : "sf_external_invite_warn".equals(readTag) ? EventTypeArg.SF_EXTERNAL_INVITE_WARN : "sf_fb_invite".equals(readTag) ? EventTypeArg.SF_FB_INVITE : "sf_fb_invite_change_role".equals(readTag) ? EventTypeArg.SF_FB_INVITE_CHANGE_ROLE : "sf_fb_uninvite".equals(readTag) ? EventTypeArg.SF_FB_UNINVITE : "sf_invite_group".equals(readTag) ? EventTypeArg.SF_INVITE_GROUP : "sf_team_grant_access".equals(readTag) ? EventTypeArg.SF_TEAM_GRANT_ACCESS : "sf_team_invite".equals(readTag) ? EventTypeArg.SF_TEAM_INVITE : "sf_team_invite_change_role".equals(readTag) ? EventTypeArg.SF_TEAM_INVITE_CHANGE_ROLE : "sf_team_join".equals(readTag) ? EventTypeArg.SF_TEAM_JOIN : "sf_team_join_from_oob_link".equals(readTag) ? EventTypeArg.SF_TEAM_JOIN_FROM_OOB_LINK : "sf_team_uninvite".equals(readTag) ? EventTypeArg.SF_TEAM_UNINVITE : "shared_content_add_invitees".equals(readTag) ? EventTypeArg.SHARED_CONTENT_ADD_INVITEES : "shared_content_add_link_expiry".equals(readTag) ? EventTypeArg.SHARED_CONTENT_ADD_LINK_EXPIRY : "shared_content_add_link_password".equals(readTag) ? EventTypeArg.SHARED_CONTENT_ADD_LINK_PASSWORD : "shared_content_add_member".equals(readTag) ? EventTypeArg.SHARED_CONTENT_ADD_MEMBER : "shared_content_change_downloads_policy".equals(readTag) ? EventTypeArg.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY : "shared_content_change_invitee_role".equals(readTag) ? EventTypeArg.SHARED_CONTENT_CHANGE_INVITEE_ROLE : "shared_content_change_link_audience".equals(readTag) ? EventTypeArg.SHARED_CONTENT_CHANGE_LINK_AUDIENCE : "shared_content_change_link_expiry".equals(readTag) ? EventTypeArg.SHARED_CONTENT_CHANGE_LINK_EXPIRY : "shared_content_change_link_password".equals(readTag) ? EventTypeArg.SHARED_CONTENT_CHANGE_LINK_PASSWORD : "shared_content_change_member_role".equals(readTag) ? EventTypeArg.SHARED_CONTENT_CHANGE_MEMBER_ROLE : "shared_content_change_viewer_info_policy".equals(readTag) ? EventTypeArg.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY : "shared_content_claim_invitation".equals(readTag) ? EventTypeArg.SHARED_CONTENT_CLAIM_INVITATION : "shared_content_copy".equals(readTag) ? EventTypeArg.SHARED_CONTENT_COPY : "shared_content_download".equals(readTag) ? EventTypeArg.SHARED_CONTENT_DOWNLOAD : "shared_content_relinquish_membership".equals(readTag) ? EventTypeArg.SHARED_CONTENT_RELINQUISH_MEMBERSHIP : "shared_content_remove_invitees".equals(readTag) ? EventTypeArg.SHARED_CONTENT_REMOVE_INVITEES : "shared_content_remove_link_expiry".equals(readTag) ? EventTypeArg.SHARED_CONTENT_REMOVE_LINK_EXPIRY : "shared_content_remove_link_password".equals(readTag) ? EventTypeArg.SHARED_CONTENT_REMOVE_LINK_PASSWORD : "shared_content_remove_member".equals(readTag) ? EventTypeArg.SHARED_CONTENT_REMOVE_MEMBER : "shared_content_request_access".equals(readTag) ? EventTypeArg.SHARED_CONTENT_REQUEST_ACCESS : "shared_content_restore_invitees".equals(readTag) ? EventTypeArg.SHARED_CONTENT_RESTORE_INVITEES : "shared_content_restore_member".equals(readTag) ? EventTypeArg.SHARED_CONTENT_RESTORE_MEMBER : "shared_content_unshare".equals(readTag) ? EventTypeArg.SHARED_CONTENT_UNSHARE : "shared_content_view".equals(readTag) ? EventTypeArg.SHARED_CONTENT_VIEW : "shared_folder_change_link_policy".equals(readTag) ? EventTypeArg.SHARED_FOLDER_CHANGE_LINK_POLICY : "shared_folder_change_members_inheritance_policy".equals(readTag) ? EventTypeArg.SHARED_FOLDER_CHANGE_MEMBERS_INHERITANCE_POLICY : "shared_folder_change_members_management_policy".equals(readTag) ? EventTypeArg.SHARED_FOLDER_CHANGE_MEMBERS_MANAGEMENT_POLICY : "shared_folder_change_members_policy".equals(readTag) ? EventTypeArg.SHARED_FOLDER_CHANGE_MEMBERS_POLICY : "shared_folder_create".equals(readTag) ? EventTypeArg.SHARED_FOLDER_CREATE : "shared_folder_decline_invitation".equals(readTag) ? EventTypeArg.SHARED_FOLDER_DECLINE_INVITATION : "shared_folder_mount".equals(readTag) ? EventTypeArg.SHARED_FOLDER_MOUNT : "shared_folder_nest".equals(readTag) ? EventTypeArg.SHARED_FOLDER_NEST : "shared_folder_transfer_ownership".equals(readTag) ? EventTypeArg.SHARED_FOLDER_TRANSFER_OWNERSHIP : "shared_folder_unmount".equals(readTag) ? EventTypeArg.SHARED_FOLDER_UNMOUNT : "shared_link_add_expiry".equals(readTag) ? EventTypeArg.SHARED_LINK_ADD_EXPIRY : "shared_link_change_expiry".equals(readTag) ? EventTypeArg.SHARED_LINK_CHANGE_EXPIRY : "shared_link_change_visibility".equals(readTag) ? EventTypeArg.SHARED_LINK_CHANGE_VISIBILITY : "shared_link_copy".equals(readTag) ? EventTypeArg.SHARED_LINK_COPY : "shared_link_create".equals(readTag) ? EventTypeArg.SHARED_LINK_CREATE : "shared_link_disable".equals(readTag) ? EventTypeArg.SHARED_LINK_DISABLE : "shared_link_download".equals(readTag) ? EventTypeArg.SHARED_LINK_DOWNLOAD : "shared_link_remove_expiry".equals(readTag) ? EventTypeArg.SHARED_LINK_REMOVE_EXPIRY : "shared_link_settings_add_expiration".equals(readTag) ? EventTypeArg.SHARED_LINK_SETTINGS_ADD_EXPIRATION : "shared_link_settings_add_password".equals(readTag) ? EventTypeArg.SHARED_LINK_SETTINGS_ADD_PASSWORD : "shared_link_settings_allow_download_disabled".equals(readTag) ? EventTypeArg.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_DISABLED : "shared_link_settings_allow_download_enabled".equals(readTag) ? EventTypeArg.SHARED_LINK_SETTINGS_ALLOW_DOWNLOAD_ENABLED : "shared_link_settings_change_audience".equals(readTag) ? EventTypeArg.SHARED_LINK_SETTINGS_CHANGE_AUDIENCE : "shared_link_settings_change_expiration".equals(readTag) ? EventTypeArg.SHARED_LINK_SETTINGS_CHANGE_EXPIRATION : "shared_link_settings_change_password".equals(readTag) ? EventTypeArg.SHARED_LINK_SETTINGS_CHANGE_PASSWORD : "shared_link_settings_remove_expiration".equals(readTag) ? EventTypeArg.SHARED_LINK_SETTINGS_REMOVE_EXPIRATION : "shared_link_settings_remove_password".equals(readTag) ? EventTypeArg.SHARED_LINK_SETTINGS_REMOVE_PASSWORD : "shared_link_share".equals(readTag) ? EventTypeArg.SHARED_LINK_SHARE : "shared_link_view".equals(readTag) ? EventTypeArg.SHARED_LINK_VIEW : "shared_note_opened".equals(readTag) ? EventTypeArg.SHARED_NOTE_OPENED : "shmodel_group_share".equals(readTag) ? EventTypeArg.SHMODEL_GROUP_SHARE : "showcase_access_granted".equals(readTag) ? EventTypeArg.SHOWCASE_ACCESS_GRANTED : "showcase_add_member".equals(readTag) ? EventTypeArg.SHOWCASE_ADD_MEMBER : "showcase_archived".equals(readTag) ? EventTypeArg.SHOWCASE_ARCHIVED : "showcase_created".equals(readTag) ? EventTypeArg.SHOWCASE_CREATED : "showcase_delete_comment".equals(readTag) ? EventTypeArg.SHOWCASE_DELETE_COMMENT : "showcase_edited".equals(readTag) ? EventTypeArg.SHOWCASE_EDITED : "showcase_edit_comment".equals(readTag) ? EventTypeArg.SHOWCASE_EDIT_COMMENT : "showcase_file_added".equals(readTag) ? EventTypeArg.SHOWCASE_FILE_ADDED : "showcase_file_download".equals(readTag) ? EventTypeArg.SHOWCASE_FILE_DOWNLOAD : "showcase_file_removed".equals(readTag) ? EventTypeArg.SHOWCASE_FILE_REMOVED : "showcase_file_view".equals(readTag) ? EventTypeArg.SHOWCASE_FILE_VIEW : "showcase_permanently_deleted".equals(readTag) ? EventTypeArg.SHOWCASE_PERMANENTLY_DELETED : "showcase_post_comment".equals(readTag) ? EventTypeArg.SHOWCASE_POST_COMMENT : "showcase_remove_member".equals(readTag) ? EventTypeArg.SHOWCASE_REMOVE_MEMBER : "showcase_renamed".equals(readTag) ? EventTypeArg.SHOWCASE_RENAMED : "showcase_request_access".equals(readTag) ? EventTypeArg.SHOWCASE_REQUEST_ACCESS : "showcase_resolve_comment".equals(readTag) ? EventTypeArg.SHOWCASE_RESOLVE_COMMENT : "showcase_restored".equals(readTag) ? EventTypeArg.SHOWCASE_RESTORED : "showcase_trashed".equals(readTag) ? EventTypeArg.SHOWCASE_TRASHED : "showcase_trashed_deprecated".equals(readTag) ? EventTypeArg.SHOWCASE_TRASHED_DEPRECATED : "showcase_unresolve_comment".equals(readTag) ? EventTypeArg.SHOWCASE_UNRESOLVE_COMMENT : "showcase_untrashed".equals(readTag) ? EventTypeArg.SHOWCASE_UNTRASHED : "showcase_untrashed_deprecated".equals(readTag) ? EventTypeArg.SHOWCASE_UNTRASHED_DEPRECATED : "showcase_view".equals(readTag) ? EventTypeArg.SHOWCASE_VIEW : "sso_add_cert".equals(readTag) ? EventTypeArg.SSO_ADD_CERT : "sso_add_login_url".equals(readTag) ? EventTypeArg.SSO_ADD_LOGIN_URL : "sso_add_logout_url".equals(readTag) ? EventTypeArg.SSO_ADD_LOGOUT_URL : "sso_change_cert".equals(readTag) ? EventTypeArg.SSO_CHANGE_CERT : "sso_change_login_url".equals(readTag) ? EventTypeArg.SSO_CHANGE_LOGIN_URL : "sso_change_logout_url".equals(readTag) ? EventTypeArg.SSO_CHANGE_LOGOUT_URL : "sso_change_saml_identity_mode".equals(readTag) ? EventTypeArg.SSO_CHANGE_SAML_IDENTITY_MODE : "sso_remove_cert".equals(readTag) ? EventTypeArg.SSO_REMOVE_CERT : "sso_remove_login_url".equals(readTag) ? EventTypeArg.SSO_REMOVE_LOGIN_URL : "sso_remove_logout_url".equals(readTag) ? EventTypeArg.SSO_REMOVE_LOGOUT_URL : "team_folder_change_status".equals(readTag) ? EventTypeArg.TEAM_FOLDER_CHANGE_STATUS : "team_folder_create".equals(readTag) ? EventTypeArg.TEAM_FOLDER_CREATE : "team_folder_downgrade".equals(readTag) ? EventTypeArg.TEAM_FOLDER_DOWNGRADE : "team_folder_permanently_delete".equals(readTag) ? EventTypeArg.TEAM_FOLDER_PERMANENTLY_DELETE : "team_folder_rename".equals(readTag) ? EventTypeArg.TEAM_FOLDER_RENAME : "team_selective_sync_settings_changed".equals(readTag) ? EventTypeArg.TEAM_SELECTIVE_SYNC_SETTINGS_CHANGED : "account_capture_change_policy".equals(readTag) ? EventTypeArg.ACCOUNT_CAPTURE_CHANGE_POLICY : "allow_download_disabled".equals(readTag) ? EventTypeArg.ALLOW_DOWNLOAD_DISABLED : "allow_download_enabled".equals(readTag) ? EventTypeArg.ALLOW_DOWNLOAD_ENABLED : "camera_uploads_policy_changed".equals(readTag) ? EventTypeArg.CAMERA_UPLOADS_POLICY_CHANGED : "content_administration_policy_changed".equals(readTag) ? EventTypeArg.CONTENT_ADMINISTRATION_POLICY_CHANGED : "data_placement_restriction_change_policy".equals(readTag) ? EventTypeArg.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY : "data_placement_restriction_satisfy_policy".equals(readTag) ? EventTypeArg.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY : "device_approvals_add_exception".equals(readTag) ? EventTypeArg.DEVICE_APPROVALS_ADD_EXCEPTION : "device_approvals_change_desktop_policy".equals(readTag) ? EventTypeArg.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY : "device_approvals_change_mobile_policy".equals(readTag) ? EventTypeArg.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY : "device_approvals_change_overage_action".equals(readTag) ? EventTypeArg.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION : "device_approvals_change_unlink_action".equals(readTag) ? EventTypeArg.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION : "device_approvals_remove_exception".equals(readTag) ? EventTypeArg.DEVICE_APPROVALS_REMOVE_EXCEPTION : "directory_restrictions_add_members".equals(readTag) ? EventTypeArg.DIRECTORY_RESTRICTIONS_ADD_MEMBERS : "directory_restrictions_remove_members".equals(readTag) ? EventTypeArg.DIRECTORY_RESTRICTIONS_REMOVE_MEMBERS : "emm_add_exception".equals(readTag) ? EventTypeArg.EMM_ADD_EXCEPTION : "emm_change_policy".equals(readTag) ? EventTypeArg.EMM_CHANGE_POLICY : "emm_remove_exception".equals(readTag) ? EventTypeArg.EMM_REMOVE_EXCEPTION : "extended_version_history_change_policy".equals(readTag) ? EventTypeArg.EXTENDED_VERSION_HISTORY_CHANGE_POLICY : "file_comments_change_policy".equals(readTag) ? EventTypeArg.FILE_COMMENTS_CHANGE_POLICY : "file_locking_policy_changed".equals(readTag) ? EventTypeArg.FILE_LOCKING_POLICY_CHANGED : "file_requests_change_policy".equals(readTag) ? EventTypeArg.FILE_REQUESTS_CHANGE_POLICY : "file_requests_emails_enabled".equals(readTag) ? EventTypeArg.FILE_REQUESTS_EMAILS_ENABLED : "file_requests_emails_restricted_to_team_only".equals(readTag) ? EventTypeArg.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY : "file_transfers_policy_changed".equals(readTag) ? EventTypeArg.FILE_TRANSFERS_POLICY_CHANGED : "google_sso_change_policy".equals(readTag) ? EventTypeArg.GOOGLE_SSO_CHANGE_POLICY : "group_user_management_change_policy".equals(readTag) ? EventTypeArg.GROUP_USER_MANAGEMENT_CHANGE_POLICY : "integration_policy_changed".equals(readTag) ? EventTypeArg.INTEGRATION_POLICY_CHANGED : "member_requests_change_policy".equals(readTag) ? EventTypeArg.MEMBER_REQUESTS_CHANGE_POLICY : "member_send_invite_policy_changed".equals(readTag) ? EventTypeArg.MEMBER_SEND_INVITE_POLICY_CHANGED : "member_space_limits_add_exception".equals(readTag) ? EventTypeArg.MEMBER_SPACE_LIMITS_ADD_EXCEPTION : "member_space_limits_change_caps_type_policy".equals(readTag) ? EventTypeArg.MEMBER_SPACE_LIMITS_CHANGE_CAPS_TYPE_POLICY : "member_space_limits_change_policy".equals(readTag) ? EventTypeArg.MEMBER_SPACE_LIMITS_CHANGE_POLICY : "member_space_limits_remove_exception".equals(readTag) ? EventTypeArg.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION : "member_suggestions_change_policy".equals(readTag) ? EventTypeArg.MEMBER_SUGGESTIONS_CHANGE_POLICY : "microsoft_office_addin_change_policy".equals(readTag) ? EventTypeArg.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY : "network_control_change_policy".equals(readTag) ? EventTypeArg.NETWORK_CONTROL_CHANGE_POLICY : "paper_change_deployment_policy".equals(readTag) ? EventTypeArg.PAPER_CHANGE_DEPLOYMENT_POLICY : "paper_change_member_link_policy".equals(readTag) ? EventTypeArg.PAPER_CHANGE_MEMBER_LINK_POLICY : "paper_change_member_policy".equals(readTag) ? EventTypeArg.PAPER_CHANGE_MEMBER_POLICY : "paper_change_policy".equals(readTag) ? EventTypeArg.PAPER_CHANGE_POLICY : "paper_default_folder_policy_changed".equals(readTag) ? EventTypeArg.PAPER_DEFAULT_FOLDER_POLICY_CHANGED : "paper_desktop_policy_changed".equals(readTag) ? EventTypeArg.PAPER_DESKTOP_POLICY_CHANGED : "paper_enabled_users_group_addition".equals(readTag) ? EventTypeArg.PAPER_ENABLED_USERS_GROUP_ADDITION : "paper_enabled_users_group_removal".equals(readTag) ? EventTypeArg.PAPER_ENABLED_USERS_GROUP_REMOVAL : "password_strength_requirements_change_policy".equals(readTag) ? EventTypeArg.PASSWORD_STRENGTH_REQUIREMENTS_CHANGE_POLICY : "permanent_delete_change_policy".equals(readTag) ? EventTypeArg.PERMANENT_DELETE_CHANGE_POLICY : "reseller_support_change_policy".equals(readTag) ? EventTypeArg.RESELLER_SUPPORT_CHANGE_POLICY : "rewind_policy_changed".equals(readTag) ? EventTypeArg.REWIND_POLICY_CHANGED : "send_for_signature_policy_changed".equals(readTag) ? EventTypeArg.SEND_FOR_SIGNATURE_POLICY_CHANGED : "sharing_change_folder_join_policy".equals(readTag) ? EventTypeArg.SHARING_CHANGE_FOLDER_JOIN_POLICY : "sharing_change_link_policy".equals(readTag) ? EventTypeArg.SHARING_CHANGE_LINK_POLICY : "sharing_change_member_policy".equals(readTag) ? EventTypeArg.SHARING_CHANGE_MEMBER_POLICY : "showcase_change_download_policy".equals(readTag) ? EventTypeArg.SHOWCASE_CHANGE_DOWNLOAD_POLICY : "showcase_change_enabled_policy".equals(readTag) ? EventTypeArg.SHOWCASE_CHANGE_ENABLED_POLICY : "showcase_change_external_sharing_policy".equals(readTag) ? EventTypeArg.SHOWCASE_CHANGE_EXTERNAL_SHARING_POLICY : "smarter_smart_sync_policy_changed".equals(readTag) ? EventTypeArg.SMARTER_SMART_SYNC_POLICY_CHANGED : "smart_sync_change_policy".equals(readTag) ? EventTypeArg.SMART_SYNC_CHANGE_POLICY : "smart_sync_not_opt_out".equals(readTag) ? EventTypeArg.SMART_SYNC_NOT_OPT_OUT : "smart_sync_opt_out".equals(readTag) ? EventTypeArg.SMART_SYNC_OPT_OUT : "sso_change_policy".equals(readTag) ? EventTypeArg.SSO_CHANGE_POLICY : "team_extensions_policy_changed".equals(readTag) ? EventTypeArg.TEAM_EXTENSIONS_POLICY_CHANGED : "team_selective_sync_policy_changed".equals(readTag) ? EventTypeArg.TEAM_SELECTIVE_SYNC_POLICY_CHANGED : "team_sharing_whitelist_subjects_changed".equals(readTag) ? EventTypeArg.TEAM_SHARING_WHITELIST_SUBJECTS_CHANGED : "tfa_add_exception".equals(readTag) ? EventTypeArg.TFA_ADD_EXCEPTION : "tfa_change_policy".equals(readTag) ? EventTypeArg.TFA_CHANGE_POLICY : "tfa_remove_exception".equals(readTag) ? EventTypeArg.TFA_REMOVE_EXCEPTION : "two_account_change_policy".equals(readTag) ? EventTypeArg.TWO_ACCOUNT_CHANGE_POLICY : "viewer_info_policy_changed".equals(readTag) ? EventTypeArg.VIEWER_INFO_POLICY_CHANGED : "watermarking_policy_changed".equals(readTag) ? EventTypeArg.WATERMARKING_POLICY_CHANGED : "web_sessions_change_active_session_limit".equals(readTag) ? EventTypeArg.WEB_SESSIONS_CHANGE_ACTIVE_SESSION_LIMIT : "web_sessions_change_fixed_length_policy".equals(readTag) ? EventTypeArg.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY : "web_sessions_change_idle_length_policy".equals(readTag) ? EventTypeArg.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY : "team_merge_from".equals(readTag) ? EventTypeArg.TEAM_MERGE_FROM : "team_merge_to".equals(readTag) ? EventTypeArg.TEAM_MERGE_TO : "team_profile_add_logo".equals(readTag) ? EventTypeArg.TEAM_PROFILE_ADD_LOGO : "team_profile_change_default_language".equals(readTag) ? EventTypeArg.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE : "team_profile_change_logo".equals(readTag) ? EventTypeArg.TEAM_PROFILE_CHANGE_LOGO : "team_profile_change_name".equals(readTag) ? EventTypeArg.TEAM_PROFILE_CHANGE_NAME : "team_profile_remove_logo".equals(readTag) ? EventTypeArg.TEAM_PROFILE_REMOVE_LOGO : "tfa_add_backup_phone".equals(readTag) ? EventTypeArg.TFA_ADD_BACKUP_PHONE : "tfa_add_security_key".equals(readTag) ? EventTypeArg.TFA_ADD_SECURITY_KEY : "tfa_change_backup_phone".equals(readTag) ? EventTypeArg.TFA_CHANGE_BACKUP_PHONE : "tfa_change_status".equals(readTag) ? EventTypeArg.TFA_CHANGE_STATUS : "tfa_remove_backup_phone".equals(readTag) ? EventTypeArg.TFA_REMOVE_BACKUP_PHONE : "tfa_remove_security_key".equals(readTag) ? EventTypeArg.TFA_REMOVE_SECURITY_KEY : "tfa_reset".equals(readTag) ? EventTypeArg.TFA_RESET : "changed_enterprise_admin_role".equals(readTag) ? EventTypeArg.CHANGED_ENTERPRISE_ADMIN_ROLE : "changed_enterprise_connected_team_status".equals(readTag) ? EventTypeArg.CHANGED_ENTERPRISE_CONNECTED_TEAM_STATUS : "ended_enterprise_admin_session".equals(readTag) ? EventTypeArg.ENDED_ENTERPRISE_ADMIN_SESSION : "ended_enterprise_admin_session_deprecated".equals(readTag) ? EventTypeArg.ENDED_ENTERPRISE_ADMIN_SESSION_DEPRECATED : "enterprise_settings_locking".equals(readTag) ? EventTypeArg.ENTERPRISE_SETTINGS_LOCKING : "guest_admin_change_status".equals(readTag) ? EventTypeArg.GUEST_ADMIN_CHANGE_STATUS : "started_enterprise_admin_session".equals(readTag) ? EventTypeArg.STARTED_ENTERPRISE_ADMIN_SESSION : "team_merge_request_accepted".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_ACCEPTED : "team_merge_request_accepted_shown_to_primary_team".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_PRIMARY_TEAM : "team_merge_request_accepted_shown_to_secondary_team".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_ACCEPTED_SHOWN_TO_SECONDARY_TEAM : "team_merge_request_auto_canceled".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_AUTO_CANCELED : "team_merge_request_canceled".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_CANCELED : "team_merge_request_canceled_shown_to_primary_team".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_PRIMARY_TEAM : "team_merge_request_canceled_shown_to_secondary_team".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_CANCELED_SHOWN_TO_SECONDARY_TEAM : "team_merge_request_expired".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_EXPIRED : "team_merge_request_expired_shown_to_primary_team".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_PRIMARY_TEAM : "team_merge_request_expired_shown_to_secondary_team".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_EXPIRED_SHOWN_TO_SECONDARY_TEAM : "team_merge_request_rejected_shown_to_primary_team".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_PRIMARY_TEAM : "team_merge_request_rejected_shown_to_secondary_team".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_REJECTED_SHOWN_TO_SECONDARY_TEAM : "team_merge_request_reminder".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_REMINDER : "team_merge_request_reminder_shown_to_primary_team".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_PRIMARY_TEAM : "team_merge_request_reminder_shown_to_secondary_team".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_REMINDER_SHOWN_TO_SECONDARY_TEAM : "team_merge_request_revoked".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_REVOKED : "team_merge_request_sent_shown_to_primary_team".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_PRIMARY_TEAM : "team_merge_request_sent_shown_to_secondary_team".equals(readTag) ? EventTypeArg.TEAM_MERGE_REQUEST_SENT_SHOWN_TO_SECONDARY_TEAM : EventTypeArg.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return eventTypeArg;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(EventTypeArg eventTypeArg, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3510a.f19762a[eventTypeArg.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("app_link_team");
                    return;
                case 2:
                    jsonGenerator.writeString("app_link_user");
                    return;
                case 3:
                    jsonGenerator.writeString("app_unlink_team");
                    return;
                case 4:
                    jsonGenerator.writeString("app_unlink_user");
                    return;
                case 5:
                    jsonGenerator.writeString("integration_connected");
                    return;
                case 6:
                    jsonGenerator.writeString("integration_disconnected");
                    return;
                case 7:
                    jsonGenerator.writeString("file_add_comment");
                    return;
                case 8:
                    jsonGenerator.writeString("file_change_comment_subscription");
                    return;
                case 9:
                    jsonGenerator.writeString("file_delete_comment");
                    return;
                case 10:
                    jsonGenerator.writeString("file_edit_comment");
                    return;
                case 11:
                    jsonGenerator.writeString("file_like_comment");
                    return;
                case 12:
                    jsonGenerator.writeString("file_resolve_comment");
                    return;
                case 13:
                    jsonGenerator.writeString("file_unlike_comment");
                    return;
                case 14:
                    jsonGenerator.writeString("file_unresolve_comment");
                    return;
                case 15:
                    jsonGenerator.writeString("device_change_ip_desktop");
                    return;
                case 16:
                    jsonGenerator.writeString("device_change_ip_mobile");
                    return;
                case 17:
                    jsonGenerator.writeString("device_change_ip_web");
                    return;
                case 18:
                    jsonGenerator.writeString("device_delete_on_unlink_fail");
                    return;
                case 19:
                    jsonGenerator.writeString("device_delete_on_unlink_success");
                    return;
                case 20:
                    jsonGenerator.writeString("device_link_fail");
                    return;
                case 21:
                    jsonGenerator.writeString("device_link_success");
                    return;
                case 22:
                    jsonGenerator.writeString("device_management_disabled");
                    return;
                case 23:
                    jsonGenerator.writeString("device_management_enabled");
                    return;
                case 24:
                    jsonGenerator.writeString("device_unlink");
                    return;
                case 25:
                    jsonGenerator.writeString("emm_refresh_auth_token");
                    return;
                case 26:
                    jsonGenerator.writeString("account_capture_change_availability");
                    return;
                case 27:
                    jsonGenerator.writeString("account_capture_migrate_account");
                    return;
                case 28:
                    jsonGenerator.writeString("account_capture_notification_emails_sent");
                    return;
                case 29:
                    jsonGenerator.writeString("account_capture_relinquish_account");
                    return;
                case 30:
                    jsonGenerator.writeString("disabled_domain_invites");
                    return;
                case 31:
                    jsonGenerator.writeString("domain_invites_approve_request_to_join_team");
                    return;
                case 32:
                    jsonGenerator.writeString("domain_invites_decline_request_to_join_team");
                    return;
                case 33:
                    jsonGenerator.writeString("domain_invites_email_existing_users");
                    return;
                case 34:
                    jsonGenerator.writeString("domain_invites_request_to_join_team");
                    return;
                case 35:
                    jsonGenerator.writeString("domain_invites_set_invite_new_user_pref_to_no");
                    return;
                case 36:
                    jsonGenerator.writeString("domain_invites_set_invite_new_user_pref_to_yes");
                    return;
                case 37:
                    jsonGenerator.writeString("domain_verification_add_domain_fail");
                    return;
                case 38:
                    jsonGenerator.writeString("domain_verification_add_domain_success");
                    return;
                case 39:
                    jsonGenerator.writeString("domain_verification_remove_domain");
                    return;
                case 40:
                    jsonGenerator.writeString("enabled_domain_invites");
                    return;
                case 41:
                    jsonGenerator.writeString("create_folder");
                    return;
                case 42:
                    jsonGenerator.writeString("file_add");
                    return;
                case 43:
                    jsonGenerator.writeString("file_copy");
                    return;
                case 44:
                    jsonGenerator.writeString("file_delete");
                    return;
                case 45:
                    jsonGenerator.writeString("file_download");
                    return;
                case 46:
                    jsonGenerator.writeString("file_edit");
                    return;
                case 47:
                    jsonGenerator.writeString("file_get_copy_reference");
                    return;
                case 48:
                    jsonGenerator.writeString("file_locking_lock_status_changed");
                    return;
                case 49:
                    jsonGenerator.writeString("file_move");
                    return;
                case 50:
                    jsonGenerator.writeString("file_permanently_delete");
                    return;
                case 51:
                    jsonGenerator.writeString("file_preview");
                    return;
                case 52:
                    jsonGenerator.writeString("file_rename");
                    return;
                case 53:
                    jsonGenerator.writeString("file_restore");
                    return;
                case 54:
                    jsonGenerator.writeString("file_revert");
                    return;
                case 55:
                    jsonGenerator.writeString("file_rollback_changes");
                    return;
                case 56:
                    jsonGenerator.writeString("file_save_copy_reference");
                    return;
                case 57:
                    jsonGenerator.writeString("folder_overview_description_changed");
                    return;
                case 58:
                    jsonGenerator.writeString("folder_overview_item_pinned");
                    return;
                case 59:
                    jsonGenerator.writeString("folder_overview_item_unpinned");
                    return;
                case 60:
                    jsonGenerator.writeString("rewind_folder");
                    return;
                case 61:
                    jsonGenerator.writeString("file_request_change");
                    return;
                case 62:
                    jsonGenerator.writeString("file_request_close");
                    return;
                case 63:
                    jsonGenerator.writeString("file_request_create");
                    return;
                case 64:
                    jsonGenerator.writeString("file_request_delete");
                    return;
                case 65:
                    jsonGenerator.writeString("file_request_receive_file");
                    return;
                case 66:
                    jsonGenerator.writeString("group_add_external_id");
                    return;
                case 67:
                    jsonGenerator.writeString("group_add_member");
                    return;
                case 68:
                    jsonGenerator.writeString("group_change_external_id");
                    return;
                case 69:
                    jsonGenerator.writeString("group_change_management_type");
                    return;
                case 70:
                    jsonGenerator.writeString("group_change_member_role");
                    return;
                case 71:
                    jsonGenerator.writeString("group_create");
                    return;
                case 72:
                    jsonGenerator.writeString("group_delete");
                    return;
                case 73:
                    jsonGenerator.writeString("group_description_updated");
                    return;
                case 74:
                    jsonGenerator.writeString("group_join_policy_updated");
                    return;
                case 75:
                    jsonGenerator.writeString("group_moved");
                    return;
                case 76:
                    jsonGenerator.writeString("group_remove_external_id");
                    return;
                case 77:
                    jsonGenerator.writeString("group_remove_member");
                    return;
                case 78:
                    jsonGenerator.writeString("group_rename");
                    return;
                case 79:
                    jsonGenerator.writeString("legal_holds_activate_a_hold");
                    return;
                case 80:
                    jsonGenerator.writeString("legal_holds_add_members");
                    return;
                case 81:
                    jsonGenerator.writeString("legal_holds_change_hold_details");
                    return;
                case 82:
                    jsonGenerator.writeString("legal_holds_change_hold_name");
                    return;
                case 83:
                    jsonGenerator.writeString("legal_holds_export_a_hold");
                    return;
                case 84:
                    jsonGenerator.writeString("legal_holds_export_cancelled");
                    return;
                case 85:
                    jsonGenerator.writeString("legal_holds_export_downloaded");
                    return;
                case 86:
                    jsonGenerator.writeString("legal_holds_export_removed");
                    return;
                case 87:
                    jsonGenerator.writeString("legal_holds_release_a_hold");
                    return;
                case 88:
                    jsonGenerator.writeString("legal_holds_remove_members");
                    return;
                case 89:
                    jsonGenerator.writeString("legal_holds_report_a_hold");
                    return;
                case 90:
                    jsonGenerator.writeString("account_lock_or_unlocked");
                    return;
                case 91:
                    jsonGenerator.writeString("emm_error");
                    return;
                case 92:
                    jsonGenerator.writeString("guest_admin_signed_in_via_trusted_teams");
                    return;
                case 93:
                    jsonGenerator.writeString("guest_admin_signed_out_via_trusted_teams");
                    return;
                case 94:
                    jsonGenerator.writeString("login_fail");
                    return;
                case 95:
                    jsonGenerator.writeString("login_success");
                    return;
                case 96:
                    jsonGenerator.writeString("logout");
                    return;
                case 97:
                    jsonGenerator.writeString("reseller_support_session_end");
                    return;
                case 98:
                    jsonGenerator.writeString("reseller_support_session_start");
                    return;
                case 99:
                    jsonGenerator.writeString("sign_in_as_session_end");
                    return;
                case 100:
                    jsonGenerator.writeString("sign_in_as_session_start");
                    return;
                case 101:
                    jsonGenerator.writeString("sso_error");
                    return;
                case 102:
                    jsonGenerator.writeString("create_team_invite_link");
                    return;
                case 103:
                    jsonGenerator.writeString("delete_team_invite_link");
                    return;
                case 104:
                    jsonGenerator.writeString("member_add_external_id");
                    return;
                case 105:
                    jsonGenerator.writeString("member_add_name");
                    return;
                case 106:
                    jsonGenerator.writeString("member_change_admin_role");
                    return;
                case 107:
                    jsonGenerator.writeString("member_change_email");
                    return;
                case 108:
                    jsonGenerator.writeString("member_change_external_id");
                    return;
                case 109:
                    jsonGenerator.writeString("member_change_membership_type");
                    return;
                case 110:
                    jsonGenerator.writeString("member_change_name");
                    return;
                case 111:
                    jsonGenerator.writeString("member_change_status");
                    return;
                case 112:
                    jsonGenerator.writeString("member_delete_manual_contacts");
                    return;
                case 113:
                    jsonGenerator.writeString("member_delete_profile_photo");
                    return;
                case 114:
                    jsonGenerator.writeString("member_permanently_delete_account_contents");
                    return;
                case 115:
                    jsonGenerator.writeString("member_remove_external_id");
                    return;
                case 116:
                    jsonGenerator.writeString("member_set_profile_photo");
                    return;
                case 117:
                    jsonGenerator.writeString("member_space_limits_add_custom_quota");
                    return;
                case 118:
                    jsonGenerator.writeString("member_space_limits_change_custom_quota");
                    return;
                case 119:
                    jsonGenerator.writeString("member_space_limits_change_status");
                    return;
                case 120:
                    jsonGenerator.writeString("member_space_limits_remove_custom_quota");
                    return;
                case 121:
                    jsonGenerator.writeString("member_suggest");
                    return;
                case 122:
                    jsonGenerator.writeString("member_transfer_account_contents");
                    return;
                case 123:
                    jsonGenerator.writeString("pending_secondary_email_added");
                    return;
                case 124:
                    jsonGenerator.writeString("secondary_email_deleted");
                    return;
                case 125:
                    jsonGenerator.writeString("secondary_email_verified");
                    return;
                case 126:
                    jsonGenerator.writeString("secondary_mails_policy_changed");
                    return;
                case 127:
                    jsonGenerator.writeString("binder_add_page");
                    return;
                case 128:
                    jsonGenerator.writeString("binder_add_section");
                    return;
                case 129:
                    jsonGenerator.writeString("binder_remove_page");
                    return;
                case 130:
                    jsonGenerator.writeString("binder_remove_section");
                    return;
                case 131:
                    jsonGenerator.writeString("binder_rename_page");
                    return;
                case 132:
                    jsonGenerator.writeString("binder_rename_section");
                    return;
                case 133:
                    jsonGenerator.writeString("binder_reorder_page");
                    return;
                case 134:
                    jsonGenerator.writeString("binder_reorder_section");
                    return;
                case 135:
                    jsonGenerator.writeString("paper_content_add_member");
                    return;
                case 136:
                    jsonGenerator.writeString("paper_content_add_to_folder");
                    return;
                case 137:
                    jsonGenerator.writeString("paper_content_archive");
                    return;
                case 138:
                    jsonGenerator.writeString("paper_content_create");
                    return;
                case 139:
                    jsonGenerator.writeString("paper_content_permanently_delete");
                    return;
                case 140:
                    jsonGenerator.writeString("paper_content_remove_from_folder");
                    return;
                case 141:
                    jsonGenerator.writeString("paper_content_remove_member");
                    return;
                case 142:
                    jsonGenerator.writeString("paper_content_rename");
                    return;
                case 143:
                    jsonGenerator.writeString("paper_content_restore");
                    return;
                case 144:
                    jsonGenerator.writeString("paper_doc_add_comment");
                    return;
                case 145:
                    jsonGenerator.writeString("paper_doc_change_member_role");
                    return;
                case 146:
                    jsonGenerator.writeString("paper_doc_change_sharing_policy");
                    return;
                case 147:
                    jsonGenerator.writeString("paper_doc_change_subscription");
                    return;
                case 148:
                    jsonGenerator.writeString("paper_doc_deleted");
                    return;
                case 149:
                    jsonGenerator.writeString("paper_doc_delete_comment");
                    return;
                case 150:
                    jsonGenerator.writeString("paper_doc_download");
                    return;
                case 151:
                    jsonGenerator.writeString("paper_doc_edit");
                    return;
                case 152:
                    jsonGenerator.writeString("paper_doc_edit_comment");
                    return;
                case 153:
                    jsonGenerator.writeString("paper_doc_followed");
                    return;
                case 154:
                    jsonGenerator.writeString("paper_doc_mention");
                    return;
                case 155:
                    jsonGenerator.writeString("paper_doc_ownership_changed");
                    return;
                case 156:
                    jsonGenerator.writeString("paper_doc_request_access");
                    return;
                case 157:
                    jsonGenerator.writeString("paper_doc_resolve_comment");
                    return;
                case 158:
                    jsonGenerator.writeString("paper_doc_revert");
                    return;
                case 159:
                    jsonGenerator.writeString("paper_doc_slack_share");
                    return;
                case 160:
                    jsonGenerator.writeString("paper_doc_team_invite");
                    return;
                case 161:
                    jsonGenerator.writeString("paper_doc_trashed");
                    return;
                case 162:
                    jsonGenerator.writeString("paper_doc_unresolve_comment");
                    return;
                case 163:
                    jsonGenerator.writeString("paper_doc_untrashed");
                    return;
                case 164:
                    jsonGenerator.writeString("paper_doc_view");
                    return;
                case 165:
                    jsonGenerator.writeString("paper_external_view_allow");
                    return;
                case 166:
                    jsonGenerator.writeString("paper_external_view_default_team");
                    return;
                case 167:
                    jsonGenerator.writeString("paper_external_view_forbid");
                    return;
                case 168:
                    jsonGenerator.writeString("paper_folder_change_subscription");
                    return;
                case 169:
                    jsonGenerator.writeString("paper_folder_deleted");
                    return;
                case 170:
                    jsonGenerator.writeString("paper_folder_followed");
                    return;
                case 171:
                    jsonGenerator.writeString("paper_folder_team_invite");
                    return;
                case 172:
                    jsonGenerator.writeString("paper_published_link_change_permission");
                    return;
                case 173:
                    jsonGenerator.writeString("paper_published_link_create");
                    return;
                case 174:
                    jsonGenerator.writeString("paper_published_link_disabled");
                    return;
                case 175:
                    jsonGenerator.writeString("paper_published_link_view");
                    return;
                case 176:
                    jsonGenerator.writeString("password_change");
                    return;
                case 177:
                    jsonGenerator.writeString(AccountVerifyPurpose.PURPOSE_PASSWORD_RESET);
                    return;
                case 178:
                    jsonGenerator.writeString("password_reset_all");
                    return;
                case 179:
                    jsonGenerator.writeString("emm_create_exceptions_report");
                    return;
                case 180:
                    jsonGenerator.writeString("emm_create_usage_report");
                    return;
                case 181:
                    jsonGenerator.writeString("export_members_report");
                    return;
                case 182:
                    jsonGenerator.writeString("export_members_report_fail");
                    return;
                case 183:
                    jsonGenerator.writeString("external_sharing_create_report");
                    return;
                case 184:
                    jsonGenerator.writeString("external_sharing_report_failed");
                    return;
                case 185:
                    jsonGenerator.writeString("no_expiration_link_gen_create_report");
                    return;
                case 186:
                    jsonGenerator.writeString("no_expiration_link_gen_report_failed");
                    return;
                case 187:
                    jsonGenerator.writeString("no_password_link_gen_create_report");
                    return;
                case 188:
                    jsonGenerator.writeString("no_password_link_gen_report_failed");
                    return;
                case 189:
                    jsonGenerator.writeString("no_password_link_view_create_report");
                    return;
                case 190:
                    jsonGenerator.writeString("no_password_link_view_report_failed");
                    return;
                case 191:
                    jsonGenerator.writeString("outdated_link_view_create_report");
                    return;
                case 192:
                    jsonGenerator.writeString("outdated_link_view_report_failed");
                    return;
                case 193:
                    jsonGenerator.writeString("paper_admin_export_start");
                    return;
                case 194:
                    jsonGenerator.writeString("smart_sync_create_admin_privilege_report");
                    return;
                case 195:
                    jsonGenerator.writeString("team_activity_create_report");
                    return;
                case 196:
                    jsonGenerator.writeString("team_activity_create_report_fail");
                    return;
                case 197:
                    jsonGenerator.writeString("collection_share");
                    return;
                case 198:
                    jsonGenerator.writeString("file_transfers_file_add");
                    return;
                case 199:
                    jsonGenerator.writeString("file_transfers_transfer_delete");
                    return;
                case 200:
                    jsonGenerator.writeString("file_transfers_transfer_download");
                    return;
                case 201:
                    jsonGenerator.writeString("file_transfers_transfer_send");
                    return;
                case 202:
                    jsonGenerator.writeString("file_transfers_transfer_view");
                    return;
                case 203:
                    jsonGenerator.writeString("note_acl_invite_only");
                    return;
                case 204:
                    jsonGenerator.writeString("note_acl_link");
                    return;
                case 205:
                    jsonGenerator.writeString("note_acl_team_link");
                    return;
                case 206:
                    jsonGenerator.writeString("note_shared");
                    return;
                case 207:
                    jsonGenerator.writeString("note_share_receive");
                    return;
                case 208:
                    jsonGenerator.writeString("open_note_shared");
                    return;
                case 209:
                    jsonGenerator.writeString("sf_add_group");
                    return;
                case 210:
                    jsonGenerator.writeString("sf_allow_non_members_to_view_shared_links");
                    return;
                case 211:
                    jsonGenerator.writeString("sf_external_invite_warn");
                    return;
                case 212:
                    jsonGenerator.writeString("sf_fb_invite");
                    return;
                case 213:
                    jsonGenerator.writeString("sf_fb_invite_change_role");
                    return;
                case 214:
                    jsonGenerator.writeString("sf_fb_uninvite");
                    return;
                case 215:
                    jsonGenerator.writeString("sf_invite_group");
                    return;
                case 216:
                    jsonGenerator.writeString("sf_team_grant_access");
                    return;
                case 217:
                    jsonGenerator.writeString("sf_team_invite");
                    return;
                case 218:
                    jsonGenerator.writeString("sf_team_invite_change_role");
                    return;
                case 219:
                    jsonGenerator.writeString("sf_team_join");
                    return;
                case 220:
                    jsonGenerator.writeString("sf_team_join_from_oob_link");
                    return;
                case 221:
                    jsonGenerator.writeString("sf_team_uninvite");
                    return;
                case 222:
                    jsonGenerator.writeString("shared_content_add_invitees");
                    return;
                case 223:
                    jsonGenerator.writeString("shared_content_add_link_expiry");
                    return;
                case 224:
                    jsonGenerator.writeString("shared_content_add_link_password");
                    return;
                case 225:
                    jsonGenerator.writeString("shared_content_add_member");
                    return;
                case 226:
                    jsonGenerator.writeString("shared_content_change_downloads_policy");
                    return;
                case 227:
                    jsonGenerator.writeString("shared_content_change_invitee_role");
                    return;
                case 228:
                    jsonGenerator.writeString("shared_content_change_link_audience");
                    return;
                case 229:
                    jsonGenerator.writeString("shared_content_change_link_expiry");
                    return;
                case 230:
                    jsonGenerator.writeString("shared_content_change_link_password");
                    return;
                case 231:
                    jsonGenerator.writeString("shared_content_change_member_role");
                    return;
                case 232:
                    jsonGenerator.writeString("shared_content_change_viewer_info_policy");
                    return;
                case 233:
                    jsonGenerator.writeString("shared_content_claim_invitation");
                    return;
                case 234:
                    jsonGenerator.writeString("shared_content_copy");
                    return;
                case 235:
                    jsonGenerator.writeString("shared_content_download");
                    return;
                case 236:
                    jsonGenerator.writeString("shared_content_relinquish_membership");
                    return;
                case 237:
                    jsonGenerator.writeString("shared_content_remove_invitees");
                    return;
                case 238:
                    jsonGenerator.writeString("shared_content_remove_link_expiry");
                    return;
                case 239:
                    jsonGenerator.writeString("shared_content_remove_link_password");
                    return;
                case 240:
                    jsonGenerator.writeString("shared_content_remove_member");
                    return;
                case 241:
                    jsonGenerator.writeString("shared_content_request_access");
                    return;
                case DataBinderMapperImpl.f53038H3 /* 242 */:
                    jsonGenerator.writeString("shared_content_restore_invitees");
                    return;
                case 243:
                    jsonGenerator.writeString("shared_content_restore_member");
                    return;
                case 244:
                    jsonGenerator.writeString("shared_content_unshare");
                    return;
                case 245:
                    jsonGenerator.writeString("shared_content_view");
                    return;
                case 246:
                    jsonGenerator.writeString("shared_folder_change_link_policy");
                    return;
                case DataBinderMapperImpl.f53073M3 /* 247 */:
                    jsonGenerator.writeString("shared_folder_change_members_inheritance_policy");
                    return;
                case 248:
                    jsonGenerator.writeString("shared_folder_change_members_management_policy");
                    return;
                case 249:
                    jsonGenerator.writeString("shared_folder_change_members_policy");
                    return;
                case 250:
                    jsonGenerator.writeString("shared_folder_create");
                    return;
                case 251:
                    jsonGenerator.writeString("shared_folder_decline_invitation");
                    return;
                case 252:
                    jsonGenerator.writeString("shared_folder_mount");
                    return;
                case 253:
                    jsonGenerator.writeString("shared_folder_nest");
                    return;
                case 254:
                    jsonGenerator.writeString("shared_folder_transfer_ownership");
                    return;
                case 255:
                    jsonGenerator.writeString("shared_folder_unmount");
                    return;
                case 256:
                    jsonGenerator.writeString("shared_link_add_expiry");
                    return;
                case 257:
                    jsonGenerator.writeString("shared_link_change_expiry");
                    return;
                case 258:
                    jsonGenerator.writeString("shared_link_change_visibility");
                    return;
                case 259:
                    jsonGenerator.writeString("shared_link_copy");
                    return;
                case DataBinderMapperImpl.f53157Z3 /* 260 */:
                    jsonGenerator.writeString("shared_link_create");
                    return;
                case 261:
                    jsonGenerator.writeString("shared_link_disable");
                    return;
                case 262:
                    jsonGenerator.writeString("shared_link_download");
                    return;
                case 263:
                    jsonGenerator.writeString("shared_link_remove_expiry");
                    return;
                case 264:
                    jsonGenerator.writeString("shared_link_settings_add_expiration");
                    return;
                case 265:
                    jsonGenerator.writeString("shared_link_settings_add_password");
                    return;
                case 266:
                    jsonGenerator.writeString("shared_link_settings_allow_download_disabled");
                    return;
                case DataBinderMapperImpl.f53206g4 /* 267 */:
                    jsonGenerator.writeString("shared_link_settings_allow_download_enabled");
                    return;
                case DataBinderMapperImpl.f53213h4 /* 268 */:
                    jsonGenerator.writeString("shared_link_settings_change_audience");
                    return;
                case 269:
                    jsonGenerator.writeString("shared_link_settings_change_expiration");
                    return;
                case 270:
                    jsonGenerator.writeString("shared_link_settings_change_password");
                    return;
                case 271:
                    jsonGenerator.writeString("shared_link_settings_remove_expiration");
                    return;
                case 272:
                    jsonGenerator.writeString("shared_link_settings_remove_password");
                    return;
                case 273:
                    jsonGenerator.writeString("shared_link_share");
                    return;
                case 274:
                    jsonGenerator.writeString("shared_link_view");
                    return;
                case DataBinderMapperImpl.f53262o4 /* 275 */:
                    jsonGenerator.writeString("shared_note_opened");
                    return;
                case 276:
                    jsonGenerator.writeString("shmodel_group_share");
                    return;
                case 277:
                    jsonGenerator.writeString("showcase_access_granted");
                    return;
                case 278:
                    jsonGenerator.writeString("showcase_add_member");
                    return;
                case 279:
                    jsonGenerator.writeString("showcase_archived");
                    return;
                case 280:
                    jsonGenerator.writeString("showcase_created");
                    return;
                case 281:
                    jsonGenerator.writeString("showcase_delete_comment");
                    return;
                case 282:
                    jsonGenerator.writeString("showcase_edited");
                    return;
                case 283:
                    jsonGenerator.writeString("showcase_edit_comment");
                    return;
                case 284:
                    jsonGenerator.writeString("showcase_file_added");
                    return;
                case 285:
                    jsonGenerator.writeString("showcase_file_download");
                    return;
                case 286:
                    jsonGenerator.writeString("showcase_file_removed");
                    return;
                case 287:
                    jsonGenerator.writeString("showcase_file_view");
                    return;
                case 288:
                    jsonGenerator.writeString("showcase_permanently_deleted");
                    return;
                case 289:
                    jsonGenerator.writeString("showcase_post_comment");
                    return;
                case 290:
                    jsonGenerator.writeString("showcase_remove_member");
                    return;
                case 291:
                    jsonGenerator.writeString("showcase_renamed");
                    return;
                case 292:
                    jsonGenerator.writeString("showcase_request_access");
                    return;
                case 293:
                    jsonGenerator.writeString("showcase_resolve_comment");
                    return;
                case 294:
                    jsonGenerator.writeString("showcase_restored");
                    return;
                case DataBinderMapperImpl.f53046I4 /* 295 */:
                    jsonGenerator.writeString("showcase_trashed");
                    return;
                case 296:
                    jsonGenerator.writeString("showcase_trashed_deprecated");
                    return;
                case 297:
                    jsonGenerator.writeString("showcase_unresolve_comment");
                    return;
                case DataBinderMapperImpl.f53067L4 /* 298 */:
                    jsonGenerator.writeString("showcase_untrashed");
                    return;
                case 299:
                    jsonGenerator.writeString("showcase_untrashed_deprecated");
                    return;
                case 300:
                    jsonGenerator.writeString("showcase_view");
                    return;
                case 301:
                    jsonGenerator.writeString("sso_add_cert");
                    return;
                case 302:
                    jsonGenerator.writeString("sso_add_login_url");
                    return;
                case 303:
                    jsonGenerator.writeString("sso_add_logout_url");
                    return;
                case 304:
                    jsonGenerator.writeString("sso_change_cert");
                    return;
                case 305:
                    jsonGenerator.writeString("sso_change_login_url");
                    return;
                case 306:
                    jsonGenerator.writeString("sso_change_logout_url");
                    return;
                case 307:
                    jsonGenerator.writeString("sso_change_saml_identity_mode");
                    return;
                case 308:
                    jsonGenerator.writeString("sso_remove_cert");
                    return;
                case 309:
                    jsonGenerator.writeString("sso_remove_login_url");
                    return;
                case 310:
                    jsonGenerator.writeString("sso_remove_logout_url");
                    return;
                case 311:
                    jsonGenerator.writeString("team_folder_change_status");
                    return;
                case 312:
                    jsonGenerator.writeString("team_folder_create");
                    return;
                case 313:
                    jsonGenerator.writeString("team_folder_downgrade");
                    return;
                case 314:
                    jsonGenerator.writeString("team_folder_permanently_delete");
                    return;
                case 315:
                    jsonGenerator.writeString("team_folder_rename");
                    return;
                case 316:
                    jsonGenerator.writeString("team_selective_sync_settings_changed");
                    return;
                case 317:
                    jsonGenerator.writeString("account_capture_change_policy");
                    return;
                case 318:
                    jsonGenerator.writeString("allow_download_disabled");
                    return;
                case 319:
                    jsonGenerator.writeString("allow_download_enabled");
                    return;
                case 320:
                    jsonGenerator.writeString("camera_uploads_policy_changed");
                    return;
                case 321:
                    jsonGenerator.writeString("content_administration_policy_changed");
                    return;
                case 322:
                    jsonGenerator.writeString("data_placement_restriction_change_policy");
                    return;
                case 323:
                    jsonGenerator.writeString("data_placement_restriction_satisfy_policy");
                    return;
                case 324:
                    jsonGenerator.writeString("device_approvals_add_exception");
                    return;
                case 325:
                    jsonGenerator.writeString("device_approvals_change_desktop_policy");
                    return;
                case 326:
                    jsonGenerator.writeString("device_approvals_change_mobile_policy");
                    return;
                case 327:
                    jsonGenerator.writeString("device_approvals_change_overage_action");
                    return;
                case 328:
                    jsonGenerator.writeString("device_approvals_change_unlink_action");
                    return;
                case DataBinderMapperImpl.f53277q5 /* 329 */:
                    jsonGenerator.writeString("device_approvals_remove_exception");
                    return;
                case 330:
                    jsonGenerator.writeString("directory_restrictions_add_members");
                    return;
                case DataBinderMapperImpl.f53291s5 /* 331 */:
                    jsonGenerator.writeString("directory_restrictions_remove_members");
                    return;
                case 332:
                    jsonGenerator.writeString("emm_add_exception");
                    return;
                case 333:
                    jsonGenerator.writeString("emm_change_policy");
                    return;
                case 334:
                    jsonGenerator.writeString("emm_remove_exception");
                    return;
                case DataBinderMapperImpl.f53319w5 /* 335 */:
                    jsonGenerator.writeString("extended_version_history_change_policy");
                    return;
                case 336:
                    jsonGenerator.writeString("file_comments_change_policy");
                    return;
                case 337:
                    jsonGenerator.writeString("file_locking_policy_changed");
                    return;
                case 338:
                    jsonGenerator.writeString("file_requests_change_policy");
                    return;
                case 339:
                    jsonGenerator.writeString("file_requests_emails_enabled");
                    return;
                case 340:
                    jsonGenerator.writeString("file_requests_emails_restricted_to_team_only");
                    return;
                case 341:
                    jsonGenerator.writeString("file_transfers_policy_changed");
                    return;
                case 342:
                    jsonGenerator.writeString("google_sso_change_policy");
                    return;
                case DataBinderMapperImpl.f53019E5 /* 343 */:
                    jsonGenerator.writeString("group_user_management_change_policy");
                    return;
                case DataBinderMapperImpl.f53026F5 /* 344 */:
                    jsonGenerator.writeString("integration_policy_changed");
                    return;
                case 345:
                    jsonGenerator.writeString("member_requests_change_policy");
                    return;
                case 346:
                    jsonGenerator.writeString("member_send_invite_policy_changed");
                    return;
                case 347:
                    jsonGenerator.writeString("member_space_limits_add_exception");
                    return;
                case DataBinderMapperImpl.f53054J5 /* 348 */:
                    jsonGenerator.writeString("member_space_limits_change_caps_type_policy");
                    return;
                case DataBinderMapperImpl.f53061K5 /* 349 */:
                    jsonGenerator.writeString("member_space_limits_change_policy");
                    return;
                case DataBinderMapperImpl.f53068L5 /* 350 */:
                    jsonGenerator.writeString("member_space_limits_remove_exception");
                    return;
                case 351:
                    jsonGenerator.writeString("member_suggestions_change_policy");
                    return;
                case DataBinderMapperImpl.f53082N5 /* 352 */:
                    jsonGenerator.writeString("microsoft_office_addin_change_policy");
                    return;
                case DataBinderMapperImpl.f53089O5 /* 353 */:
                    jsonGenerator.writeString("network_control_change_policy");
                    return;
                case DataBinderMapperImpl.f53096P5 /* 354 */:
                    jsonGenerator.writeString("paper_change_deployment_policy");
                    return;
                case DataBinderMapperImpl.f53103Q5 /* 355 */:
                    jsonGenerator.writeString("paper_change_member_link_policy");
                    return;
                case 356:
                    jsonGenerator.writeString("paper_change_member_policy");
                    return;
                case 357:
                    jsonGenerator.writeString("paper_change_policy");
                    return;
                case 358:
                    jsonGenerator.writeString("paper_default_folder_policy_changed");
                    return;
                case 359:
                    jsonGenerator.writeString("paper_desktop_policy_changed");
                    return;
                case 360:
                    jsonGenerator.writeString("paper_enabled_users_group_addition");
                    return;
                case 361:
                    jsonGenerator.writeString("paper_enabled_users_group_removal");
                    return;
                case 362:
                    jsonGenerator.writeString("password_strength_requirements_change_policy");
                    return;
                case 363:
                    jsonGenerator.writeString("permanent_delete_change_policy");
                    return;
                case 364:
                    jsonGenerator.writeString("reseller_support_change_policy");
                    return;
                case 365:
                    jsonGenerator.writeString("rewind_policy_changed");
                    return;
                case 366:
                    jsonGenerator.writeString("send_for_signature_policy_changed");
                    return;
                case 367:
                    jsonGenerator.writeString("sharing_change_folder_join_policy");
                    return;
                case 368:
                    jsonGenerator.writeString("sharing_change_link_policy");
                    return;
                case 369:
                    jsonGenerator.writeString("sharing_change_member_policy");
                    return;
                case 370:
                    jsonGenerator.writeString("showcase_change_download_policy");
                    return;
                case 371:
                    jsonGenerator.writeString("showcase_change_enabled_policy");
                    return;
                case 372:
                    jsonGenerator.writeString("showcase_change_external_sharing_policy");
                    return;
                case 373:
                    jsonGenerator.writeString("smarter_smart_sync_policy_changed");
                    return;
                case 374:
                    jsonGenerator.writeString("smart_sync_change_policy");
                    return;
                case 375:
                    jsonGenerator.writeString("smart_sync_not_opt_out");
                    return;
                case 376:
                    jsonGenerator.writeString("smart_sync_opt_out");
                    return;
                case 377:
                    jsonGenerator.writeString("sso_change_policy");
                    return;
                case 378:
                    jsonGenerator.writeString("team_extensions_policy_changed");
                    return;
                case 379:
                    jsonGenerator.writeString("team_selective_sync_policy_changed");
                    return;
                case 380:
                    jsonGenerator.writeString("team_sharing_whitelist_subjects_changed");
                    return;
                case 381:
                    jsonGenerator.writeString("tfa_add_exception");
                    return;
                case 382:
                    jsonGenerator.writeString("tfa_change_policy");
                    return;
                case 383:
                    jsonGenerator.writeString("tfa_remove_exception");
                    return;
                case 384:
                    jsonGenerator.writeString("two_account_change_policy");
                    return;
                case StandardNames.XML_BASE /* 385 */:
                    jsonGenerator.writeString("viewer_info_policy_changed");
                    return;
                case StandardNames.XML_SPACE /* 386 */:
                    jsonGenerator.writeString("watermarking_policy_changed");
                    return;
                case StandardNames.XML_LANG /* 387 */:
                    jsonGenerator.writeString("web_sessions_change_active_session_limit");
                    return;
                case StandardNames.XML_ID /* 388 */:
                    jsonGenerator.writeString("web_sessions_change_fixed_length_policy");
                    return;
                case StandardNames.XML_LANG_TYPE /* 389 */:
                    jsonGenerator.writeString("web_sessions_change_idle_length_policy");
                    return;
                case 390:
                    jsonGenerator.writeString("team_merge_from");
                    return;
                case 391:
                    jsonGenerator.writeString("team_merge_to");
                    return;
                case 392:
                    jsonGenerator.writeString("team_profile_add_logo");
                    return;
                case 393:
                    jsonGenerator.writeString("team_profile_change_default_language");
                    return;
                case 394:
                    jsonGenerator.writeString("team_profile_change_logo");
                    return;
                case 395:
                    jsonGenerator.writeString("team_profile_change_name");
                    return;
                case 396:
                    jsonGenerator.writeString("team_profile_remove_logo");
                    return;
                case 397:
                    jsonGenerator.writeString("tfa_add_backup_phone");
                    return;
                case 398:
                    jsonGenerator.writeString("tfa_add_security_key");
                    return;
                case 399:
                    jsonGenerator.writeString("tfa_change_backup_phone");
                    return;
                case 400:
                    jsonGenerator.writeString("tfa_change_status");
                    return;
                case 401:
                    jsonGenerator.writeString("tfa_remove_backup_phone");
                    return;
                case 402:
                    jsonGenerator.writeString("tfa_remove_security_key");
                    return;
                case 403:
                    jsonGenerator.writeString("tfa_reset");
                    return;
                case 404:
                    jsonGenerator.writeString("changed_enterprise_admin_role");
                    return;
                case 405:
                    jsonGenerator.writeString("changed_enterprise_connected_team_status");
                    return;
                case 406:
                    jsonGenerator.writeString("ended_enterprise_admin_session");
                    return;
                case 407:
                    jsonGenerator.writeString("ended_enterprise_admin_session_deprecated");
                    return;
                case 408:
                    jsonGenerator.writeString("enterprise_settings_locking");
                    return;
                case 409:
                    jsonGenerator.writeString("guest_admin_change_status");
                    return;
                case 410:
                    jsonGenerator.writeString("started_enterprise_admin_session");
                    return;
                case 411:
                    jsonGenerator.writeString("team_merge_request_accepted");
                    return;
                case 412:
                    jsonGenerator.writeString("team_merge_request_accepted_shown_to_primary_team");
                    return;
                case 413:
                    jsonGenerator.writeString("team_merge_request_accepted_shown_to_secondary_team");
                    return;
                case 414:
                    jsonGenerator.writeString("team_merge_request_auto_canceled");
                    return;
                case 415:
                    jsonGenerator.writeString("team_merge_request_canceled");
                    return;
                case 416:
                    jsonGenerator.writeString("team_merge_request_canceled_shown_to_primary_team");
                    return;
                case 417:
                    jsonGenerator.writeString("team_merge_request_canceled_shown_to_secondary_team");
                    return;
                case 418:
                    jsonGenerator.writeString("team_merge_request_expired");
                    return;
                case 419:
                    jsonGenerator.writeString("team_merge_request_expired_shown_to_primary_team");
                    return;
                case 420:
                    jsonGenerator.writeString("team_merge_request_expired_shown_to_secondary_team");
                    return;
                case 421:
                    jsonGenerator.writeString("team_merge_request_rejected_shown_to_primary_team");
                    return;
                case 422:
                    jsonGenerator.writeString("team_merge_request_rejected_shown_to_secondary_team");
                    return;
                case 423:
                    jsonGenerator.writeString("team_merge_request_reminder");
                    return;
                case 424:
                    jsonGenerator.writeString("team_merge_request_reminder_shown_to_primary_team");
                    return;
                case TypedValues.CycleType.TYPE_WAVE_PHASE /* 425 */:
                    jsonGenerator.writeString("team_merge_request_reminder_shown_to_secondary_team");
                    return;
                case 426:
                    jsonGenerator.writeString("team_merge_request_revoked");
                    return;
                case 427:
                    jsonGenerator.writeString("team_merge_request_sent_shown_to_primary_team");
                    return;
                case 428:
                    jsonGenerator.writeString("team_merge_request_sent_shown_to_secondary_team");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}

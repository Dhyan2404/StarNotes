package com.evernote.edam.userstore;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolException;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class BootstrapSettings implements TBase<BootstrapSettings>, Serializable, Cloneable {
    private static final int __ENABLEFACEBOOKSHARING_ISSET_ID = 0;
    private static final int __ENABLEGIFTSUBSCRIPTIONS_ISSET_ID = 1;
    private static final int __ENABLELINKEDINSHARING_ISSET_ID = 7;
    private static final int __ENABLEPUBLICNOTEBOOKS_ISSET_ID = 8;
    private static final int __ENABLESHAREDNOTEBOOKS_ISSET_ID = 3;
    private static final int __ENABLESINGLENOTESHARING_ISSET_ID = 4;
    private static final int __ENABLESPONSOREDACCOUNTS_ISSET_ID = 5;
    private static final int __ENABLESUPPORTTICKETS_ISSET_ID = 2;
    private static final int __ENABLETWITTERSHARING_ISSET_ID = 6;
    private boolean[] __isset_vector;
    private String accountEmailDomain;
    private boolean enableFacebookSharing;
    private boolean enableGiftSubscriptions;
    private boolean enableLinkedInSharing;
    private boolean enablePublicNotebooks;
    private boolean enableSharedNotebooks;
    private boolean enableSingleNoteSharing;
    private boolean enableSponsoredAccounts;
    private boolean enableSupportTickets;
    private boolean enableTwitterSharing;
    private String marketingUrl;
    private String serviceHost;
    private String supportUrl;
    private static final TStruct STRUCT_DESC = new TStruct("BootstrapSettings");
    private static final TField SERVICE_HOST_FIELD_DESC = new TField("serviceHost", (byte) 11, 1);
    private static final TField MARKETING_URL_FIELD_DESC = new TField("marketingUrl", (byte) 11, 2);
    private static final TField SUPPORT_URL_FIELD_DESC = new TField("supportUrl", (byte) 11, 3);
    private static final TField ACCOUNT_EMAIL_DOMAIN_FIELD_DESC = new TField("accountEmailDomain", (byte) 11, 4);
    private static final TField ENABLE_FACEBOOK_SHARING_FIELD_DESC = new TField("enableFacebookSharing", (byte) 2, 5);
    private static final TField ENABLE_GIFT_SUBSCRIPTIONS_FIELD_DESC = new TField("enableGiftSubscriptions", (byte) 2, 6);
    private static final TField ENABLE_SUPPORT_TICKETS_FIELD_DESC = new TField("enableSupportTickets", (byte) 2, 7);
    private static final TField ENABLE_SHARED_NOTEBOOKS_FIELD_DESC = new TField("enableSharedNotebooks", (byte) 2, 8);
    private static final TField ENABLE_SINGLE_NOTE_SHARING_FIELD_DESC = new TField("enableSingleNoteSharing", (byte) 2, 9);
    private static final TField ENABLE_SPONSORED_ACCOUNTS_FIELD_DESC = new TField("enableSponsoredAccounts", (byte) 2, 10);
    private static final TField ENABLE_TWITTER_SHARING_FIELD_DESC = new TField("enableTwitterSharing", (byte) 2, 11);
    private static final TField ENABLE_LINKED_IN_SHARING_FIELD_DESC = new TField("enableLinkedInSharing", (byte) 2, 12);
    private static final TField ENABLE_PUBLIC_NOTEBOOKS_FIELD_DESC = new TField("enablePublicNotebooks", (byte) 2, 13);

    public BootstrapSettings() {
        this.__isset_vector = new boolean[9];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.serviceHost = null;
        this.marketingUrl = null;
        this.supportUrl = null;
        this.accountEmailDomain = null;
        setEnableFacebookSharingIsSet(false);
        this.enableFacebookSharing = false;
        setEnableGiftSubscriptionsIsSet(false);
        this.enableGiftSubscriptions = false;
        setEnableSupportTicketsIsSet(false);
        this.enableSupportTickets = false;
        setEnableSharedNotebooksIsSet(false);
        this.enableSharedNotebooks = false;
        setEnableSingleNoteSharingIsSet(false);
        this.enableSingleNoteSharing = false;
        setEnableSponsoredAccountsIsSet(false);
        this.enableSponsoredAccounts = false;
        setEnableTwitterSharingIsSet(false);
        this.enableTwitterSharing = false;
        setEnableLinkedInSharingIsSet(false);
        this.enableLinkedInSharing = false;
        setEnablePublicNotebooksIsSet(false);
        this.enablePublicNotebooks = false;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof BootstrapSettings)) {
            return equals((BootstrapSettings) obj);
        }
        return false;
    }

    public String getAccountEmailDomain() {
        return this.accountEmailDomain;
    }

    public String getMarketingUrl() {
        return this.marketingUrl;
    }

    public String getServiceHost() {
        return this.serviceHost;
    }

    public String getSupportUrl() {
        return this.supportUrl;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isEnableFacebookSharing() {
        return this.enableFacebookSharing;
    }

    public boolean isEnableGiftSubscriptions() {
        return this.enableGiftSubscriptions;
    }

    public boolean isEnableLinkedInSharing() {
        return this.enableLinkedInSharing;
    }

    public boolean isEnablePublicNotebooks() {
        return this.enablePublicNotebooks;
    }

    public boolean isEnableSharedNotebooks() {
        return this.enableSharedNotebooks;
    }

    public boolean isEnableSingleNoteSharing() {
        return this.enableSingleNoteSharing;
    }

    public boolean isEnableSponsoredAccounts() {
        return this.enableSponsoredAccounts;
    }

    public boolean isEnableSupportTickets() {
        return this.enableSupportTickets;
    }

    public boolean isEnableTwitterSharing() {
        return this.enableTwitterSharing;
    }

    public boolean isSetAccountEmailDomain() {
        return this.accountEmailDomain != null;
    }

    public boolean isSetEnableFacebookSharing() {
        return this.__isset_vector[0];
    }

    public boolean isSetEnableGiftSubscriptions() {
        return this.__isset_vector[1];
    }

    public boolean isSetEnableLinkedInSharing() {
        return this.__isset_vector[7];
    }

    public boolean isSetEnablePublicNotebooks() {
        return this.__isset_vector[8];
    }

    public boolean isSetEnableSharedNotebooks() {
        return this.__isset_vector[3];
    }

    public boolean isSetEnableSingleNoteSharing() {
        return this.__isset_vector[4];
    }

    public boolean isSetEnableSponsoredAccounts() {
        return this.__isset_vector[5];
    }

    public boolean isSetEnableSupportTickets() {
        return this.__isset_vector[2];
    }

    public boolean isSetEnableTwitterSharing() {
        return this.__isset_vector[6];
    }

    public boolean isSetMarketingUrl() {
        return this.marketingUrl != null;
    }

    public boolean isSetServiceHost() {
        return this.serviceHost != null;
    }

    public boolean isSetSupportUrl() {
        return this.supportUrl != null;
    }

    @Override // com.evernote.thrift.TBase
    public void read(TProtocol tProtocol) throws TException {
        tProtocol.readStructBegin();
        while (true) {
            TField readFieldBegin = tProtocol.readFieldBegin();
            byte b = readFieldBegin.type;
            if (b == 0) {
                tProtocol.readStructEnd();
                validate();
                return;
            }
            switch (readFieldBegin.f21203id) {
                case 1:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.serviceHost = tProtocol.readString();
                        break;
                    }
                case 2:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.marketingUrl = tProtocol.readString();
                        break;
                    }
                case 3:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.supportUrl = tProtocol.readString();
                        break;
                    }
                case 4:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.accountEmailDomain = tProtocol.readString();
                        break;
                    }
                case 5:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.enableFacebookSharing = tProtocol.readBool();
                        setEnableFacebookSharingIsSet(true);
                        break;
                    }
                case 6:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.enableGiftSubscriptions = tProtocol.readBool();
                        setEnableGiftSubscriptionsIsSet(true);
                        break;
                    }
                case 7:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.enableSupportTickets = tProtocol.readBool();
                        setEnableSupportTicketsIsSet(true);
                        break;
                    }
                case 8:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.enableSharedNotebooks = tProtocol.readBool();
                        setEnableSharedNotebooksIsSet(true);
                        break;
                    }
                case 9:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.enableSingleNoteSharing = tProtocol.readBool();
                        setEnableSingleNoteSharingIsSet(true);
                        break;
                    }
                case 10:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.enableSponsoredAccounts = tProtocol.readBool();
                        setEnableSponsoredAccountsIsSet(true);
                        break;
                    }
                case 11:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.enableTwitterSharing = tProtocol.readBool();
                        setEnableTwitterSharingIsSet(true);
                        break;
                    }
                case 12:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.enableLinkedInSharing = tProtocol.readBool();
                        setEnableLinkedInSharingIsSet(true);
                        break;
                    }
                case 13:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.enablePublicNotebooks = tProtocol.readBool();
                        setEnablePublicNotebooksIsSet(true);
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setAccountEmailDomain(String str) {
        this.accountEmailDomain = str;
    }

    public void setAccountEmailDomainIsSet(boolean z) {
        if (z) {
            return;
        }
        this.accountEmailDomain = null;
    }

    public void setEnableFacebookSharing(boolean z) {
        this.enableFacebookSharing = z;
        setEnableFacebookSharingIsSet(true);
    }

    public void setEnableFacebookSharingIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setEnableGiftSubscriptions(boolean z) {
        this.enableGiftSubscriptions = z;
        setEnableGiftSubscriptionsIsSet(true);
    }

    public void setEnableGiftSubscriptionsIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setEnableLinkedInSharing(boolean z) {
        this.enableLinkedInSharing = z;
        setEnableLinkedInSharingIsSet(true);
    }

    public void setEnableLinkedInSharingIsSet(boolean z) {
        this.__isset_vector[7] = z;
    }

    public void setEnablePublicNotebooks(boolean z) {
        this.enablePublicNotebooks = z;
        setEnablePublicNotebooksIsSet(true);
    }

    public void setEnablePublicNotebooksIsSet(boolean z) {
        this.__isset_vector[8] = z;
    }

    public void setEnableSharedNotebooks(boolean z) {
        this.enableSharedNotebooks = z;
        setEnableSharedNotebooksIsSet(true);
    }

    public void setEnableSharedNotebooksIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public void setEnableSingleNoteSharing(boolean z) {
        this.enableSingleNoteSharing = z;
        setEnableSingleNoteSharingIsSet(true);
    }

    public void setEnableSingleNoteSharingIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setEnableSponsoredAccounts(boolean z) {
        this.enableSponsoredAccounts = z;
        setEnableSponsoredAccountsIsSet(true);
    }

    public void setEnableSponsoredAccountsIsSet(boolean z) {
        this.__isset_vector[5] = z;
    }

    public void setEnableSupportTickets(boolean z) {
        this.enableSupportTickets = z;
        setEnableSupportTicketsIsSet(true);
    }

    public void setEnableSupportTicketsIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setEnableTwitterSharing(boolean z) {
        this.enableTwitterSharing = z;
        setEnableTwitterSharingIsSet(true);
    }

    public void setEnableTwitterSharingIsSet(boolean z) {
        this.__isset_vector[6] = z;
    }

    public void setMarketingUrl(String str) {
        this.marketingUrl = str;
    }

    public void setMarketingUrlIsSet(boolean z) {
        if (z) {
            return;
        }
        this.marketingUrl = null;
    }

    public void setServiceHost(String str) {
        this.serviceHost = str;
    }

    public void setServiceHostIsSet(boolean z) {
        if (z) {
            return;
        }
        this.serviceHost = null;
    }

    public void setSupportUrl(String str) {
        this.supportUrl = str;
    }

    public void setSupportUrlIsSet(boolean z) {
        if (z) {
            return;
        }
        this.supportUrl = null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BootstrapSettings(");
        sb.append("serviceHost:");
        String str = this.serviceHost;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("marketingUrl:");
        String str2 = this.marketingUrl;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("supportUrl:");
        String str3 = this.supportUrl;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("accountEmailDomain:");
        String str4 = this.accountEmailDomain;
        if (str4 == null) {
            sb.append("null");
        } else {
            sb.append(str4);
        }
        if (isSetEnableFacebookSharing()) {
            sb.append(", ");
            sb.append("enableFacebookSharing:");
            sb.append(this.enableFacebookSharing);
        }
        if (isSetEnableGiftSubscriptions()) {
            sb.append(", ");
            sb.append("enableGiftSubscriptions:");
            sb.append(this.enableGiftSubscriptions);
        }
        if (isSetEnableSupportTickets()) {
            sb.append(", ");
            sb.append("enableSupportTickets:");
            sb.append(this.enableSupportTickets);
        }
        if (isSetEnableSharedNotebooks()) {
            sb.append(", ");
            sb.append("enableSharedNotebooks:");
            sb.append(this.enableSharedNotebooks);
        }
        if (isSetEnableSingleNoteSharing()) {
            sb.append(", ");
            sb.append("enableSingleNoteSharing:");
            sb.append(this.enableSingleNoteSharing);
        }
        if (isSetEnableSponsoredAccounts()) {
            sb.append(", ");
            sb.append("enableSponsoredAccounts:");
            sb.append(this.enableSponsoredAccounts);
        }
        if (isSetEnableTwitterSharing()) {
            sb.append(", ");
            sb.append("enableTwitterSharing:");
            sb.append(this.enableTwitterSharing);
        }
        if (isSetEnableLinkedInSharing()) {
            sb.append(", ");
            sb.append("enableLinkedInSharing:");
            sb.append(this.enableLinkedInSharing);
        }
        if (isSetEnablePublicNotebooks()) {
            sb.append(", ");
            sb.append("enablePublicNotebooks:");
            sb.append(this.enablePublicNotebooks);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetAccountEmailDomain() {
        this.accountEmailDomain = null;
    }

    public void unsetEnableFacebookSharing() {
        this.__isset_vector[0] = false;
    }

    public void unsetEnableGiftSubscriptions() {
        this.__isset_vector[1] = false;
    }

    public void unsetEnableLinkedInSharing() {
        this.__isset_vector[7] = false;
    }

    public void unsetEnablePublicNotebooks() {
        this.__isset_vector[8] = false;
    }

    public void unsetEnableSharedNotebooks() {
        this.__isset_vector[3] = false;
    }

    public void unsetEnableSingleNoteSharing() {
        this.__isset_vector[4] = false;
    }

    public void unsetEnableSponsoredAccounts() {
        this.__isset_vector[5] = false;
    }

    public void unsetEnableSupportTickets() {
        this.__isset_vector[2] = false;
    }

    public void unsetEnableTwitterSharing() {
        this.__isset_vector[6] = false;
    }

    public void unsetMarketingUrl() {
        this.marketingUrl = null;
    }

    public void unsetServiceHost() {
        this.serviceHost = null;
    }

    public void unsetSupportUrl() {
        this.supportUrl = null;
    }

    public void validate() throws TException {
        if (!isSetServiceHost()) {
            throw new TProtocolException("Required field 'serviceHost' is unset! Struct:" + toString());
        }
        if (!isSetMarketingUrl()) {
            throw new TProtocolException("Required field 'marketingUrl' is unset! Struct:" + toString());
        }
        if (!isSetSupportUrl()) {
            throw new TProtocolException("Required field 'supportUrl' is unset! Struct:" + toString());
        }
        if (isSetAccountEmailDomain()) {
            return;
        }
        throw new TProtocolException("Required field 'accountEmailDomain' is unset! Struct:" + toString());
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.serviceHost != null) {
            tProtocol.writeFieldBegin(SERVICE_HOST_FIELD_DESC);
            tProtocol.writeString(this.serviceHost);
            tProtocol.writeFieldEnd();
        }
        if (this.marketingUrl != null) {
            tProtocol.writeFieldBegin(MARKETING_URL_FIELD_DESC);
            tProtocol.writeString(this.marketingUrl);
            tProtocol.writeFieldEnd();
        }
        if (this.supportUrl != null) {
            tProtocol.writeFieldBegin(SUPPORT_URL_FIELD_DESC);
            tProtocol.writeString(this.supportUrl);
            tProtocol.writeFieldEnd();
        }
        if (this.accountEmailDomain != null) {
            tProtocol.writeFieldBegin(ACCOUNT_EMAIL_DOMAIN_FIELD_DESC);
            tProtocol.writeString(this.accountEmailDomain);
            tProtocol.writeFieldEnd();
        }
        if (isSetEnableFacebookSharing()) {
            tProtocol.writeFieldBegin(ENABLE_FACEBOOK_SHARING_FIELD_DESC);
            tProtocol.writeBool(this.enableFacebookSharing);
            tProtocol.writeFieldEnd();
        }
        if (isSetEnableGiftSubscriptions()) {
            tProtocol.writeFieldBegin(ENABLE_GIFT_SUBSCRIPTIONS_FIELD_DESC);
            tProtocol.writeBool(this.enableGiftSubscriptions);
            tProtocol.writeFieldEnd();
        }
        if (isSetEnableSupportTickets()) {
            tProtocol.writeFieldBegin(ENABLE_SUPPORT_TICKETS_FIELD_DESC);
            tProtocol.writeBool(this.enableSupportTickets);
            tProtocol.writeFieldEnd();
        }
        if (isSetEnableSharedNotebooks()) {
            tProtocol.writeFieldBegin(ENABLE_SHARED_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeBool(this.enableSharedNotebooks);
            tProtocol.writeFieldEnd();
        }
        if (isSetEnableSingleNoteSharing()) {
            tProtocol.writeFieldBegin(ENABLE_SINGLE_NOTE_SHARING_FIELD_DESC);
            tProtocol.writeBool(this.enableSingleNoteSharing);
            tProtocol.writeFieldEnd();
        }
        if (isSetEnableSponsoredAccounts()) {
            tProtocol.writeFieldBegin(ENABLE_SPONSORED_ACCOUNTS_FIELD_DESC);
            tProtocol.writeBool(this.enableSponsoredAccounts);
            tProtocol.writeFieldEnd();
        }
        if (isSetEnableTwitterSharing()) {
            tProtocol.writeFieldBegin(ENABLE_TWITTER_SHARING_FIELD_DESC);
            tProtocol.writeBool(this.enableTwitterSharing);
            tProtocol.writeFieldEnd();
        }
        if (isSetEnableLinkedInSharing()) {
            tProtocol.writeFieldBegin(ENABLE_LINKED_IN_SHARING_FIELD_DESC);
            tProtocol.writeBool(this.enableLinkedInSharing);
            tProtocol.writeFieldEnd();
        }
        if (isSetEnablePublicNotebooks()) {
            tProtocol.writeFieldBegin(ENABLE_PUBLIC_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeBool(this.enablePublicNotebooks);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(BootstrapSettings bootstrapSettings) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        int compareTo6;
        int compareTo7;
        int compareTo8;
        int compareTo9;
        int compareTo10;
        int compareTo11;
        int compareTo12;
        int compareTo13;
        if (!getClass().equals(bootstrapSettings.getClass())) {
            return getClass().getName().compareTo(bootstrapSettings.getClass().getName());
        }
        int compareTo14 = Boolean.valueOf(isSetServiceHost()).compareTo(Boolean.valueOf(bootstrapSettings.isSetServiceHost()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (isSetServiceHost() && (compareTo13 = TBaseHelper.compareTo(this.serviceHost, bootstrapSettings.serviceHost)) != 0) {
            return compareTo13;
        }
        int compareTo15 = Boolean.valueOf(isSetMarketingUrl()).compareTo(Boolean.valueOf(bootstrapSettings.isSetMarketingUrl()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetMarketingUrl() && (compareTo12 = TBaseHelper.compareTo(this.marketingUrl, bootstrapSettings.marketingUrl)) != 0) {
            return compareTo12;
        }
        int compareTo16 = Boolean.valueOf(isSetSupportUrl()).compareTo(Boolean.valueOf(bootstrapSettings.isSetSupportUrl()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetSupportUrl() && (compareTo11 = TBaseHelper.compareTo(this.supportUrl, bootstrapSettings.supportUrl)) != 0) {
            return compareTo11;
        }
        int compareTo17 = Boolean.valueOf(isSetAccountEmailDomain()).compareTo(Boolean.valueOf(bootstrapSettings.isSetAccountEmailDomain()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetAccountEmailDomain() && (compareTo10 = TBaseHelper.compareTo(this.accountEmailDomain, bootstrapSettings.accountEmailDomain)) != 0) {
            return compareTo10;
        }
        int compareTo18 = Boolean.valueOf(isSetEnableFacebookSharing()).compareTo(Boolean.valueOf(bootstrapSettings.isSetEnableFacebookSharing()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetEnableFacebookSharing() && (compareTo9 = TBaseHelper.compareTo(this.enableFacebookSharing, bootstrapSettings.enableFacebookSharing)) != 0) {
            return compareTo9;
        }
        int compareTo19 = Boolean.valueOf(isSetEnableGiftSubscriptions()).compareTo(Boolean.valueOf(bootstrapSettings.isSetEnableGiftSubscriptions()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetEnableGiftSubscriptions() && (compareTo8 = TBaseHelper.compareTo(this.enableGiftSubscriptions, bootstrapSettings.enableGiftSubscriptions)) != 0) {
            return compareTo8;
        }
        int compareTo20 = Boolean.valueOf(isSetEnableSupportTickets()).compareTo(Boolean.valueOf(bootstrapSettings.isSetEnableSupportTickets()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetEnableSupportTickets() && (compareTo7 = TBaseHelper.compareTo(this.enableSupportTickets, bootstrapSettings.enableSupportTickets)) != 0) {
            return compareTo7;
        }
        int compareTo21 = Boolean.valueOf(isSetEnableSharedNotebooks()).compareTo(Boolean.valueOf(bootstrapSettings.isSetEnableSharedNotebooks()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetEnableSharedNotebooks() && (compareTo6 = TBaseHelper.compareTo(this.enableSharedNotebooks, bootstrapSettings.enableSharedNotebooks)) != 0) {
            return compareTo6;
        }
        int compareTo22 = Boolean.valueOf(isSetEnableSingleNoteSharing()).compareTo(Boolean.valueOf(bootstrapSettings.isSetEnableSingleNoteSharing()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (isSetEnableSingleNoteSharing() && (compareTo5 = TBaseHelper.compareTo(this.enableSingleNoteSharing, bootstrapSettings.enableSingleNoteSharing)) != 0) {
            return compareTo5;
        }
        int compareTo23 = Boolean.valueOf(isSetEnableSponsoredAccounts()).compareTo(Boolean.valueOf(bootstrapSettings.isSetEnableSponsoredAccounts()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (isSetEnableSponsoredAccounts() && (compareTo4 = TBaseHelper.compareTo(this.enableSponsoredAccounts, bootstrapSettings.enableSponsoredAccounts)) != 0) {
            return compareTo4;
        }
        int compareTo24 = Boolean.valueOf(isSetEnableTwitterSharing()).compareTo(Boolean.valueOf(bootstrapSettings.isSetEnableTwitterSharing()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (isSetEnableTwitterSharing() && (compareTo3 = TBaseHelper.compareTo(this.enableTwitterSharing, bootstrapSettings.enableTwitterSharing)) != 0) {
            return compareTo3;
        }
        int compareTo25 = Boolean.valueOf(isSetEnableLinkedInSharing()).compareTo(Boolean.valueOf(bootstrapSettings.isSetEnableLinkedInSharing()));
        if (compareTo25 != 0) {
            return compareTo25;
        }
        if (isSetEnableLinkedInSharing() && (compareTo2 = TBaseHelper.compareTo(this.enableLinkedInSharing, bootstrapSettings.enableLinkedInSharing)) != 0) {
            return compareTo2;
        }
        int compareTo26 = Boolean.valueOf(isSetEnablePublicNotebooks()).compareTo(Boolean.valueOf(bootstrapSettings.isSetEnablePublicNotebooks()));
        if (compareTo26 != 0) {
            return compareTo26;
        }
        if (!isSetEnablePublicNotebooks() || (compareTo = TBaseHelper.compareTo(this.enablePublicNotebooks, bootstrapSettings.enablePublicNotebooks)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<BootstrapSettings> deepCopy2() {
        return new BootstrapSettings(this);
    }

    public BootstrapSettings(String str, String str2, String str3, String str4) {
        this();
        this.serviceHost = str;
        this.marketingUrl = str2;
        this.supportUrl = str3;
        this.accountEmailDomain = str4;
    }

    public boolean equals(BootstrapSettings bootstrapSettings) {
        if (bootstrapSettings == null) {
            return false;
        }
        boolean isSetServiceHost = isSetServiceHost();
        boolean isSetServiceHost2 = bootstrapSettings.isSetServiceHost();
        if ((isSetServiceHost || isSetServiceHost2) && !(isSetServiceHost && isSetServiceHost2 && this.serviceHost.equals(bootstrapSettings.serviceHost))) {
            return false;
        }
        boolean isSetMarketingUrl = isSetMarketingUrl();
        boolean isSetMarketingUrl2 = bootstrapSettings.isSetMarketingUrl();
        if ((isSetMarketingUrl || isSetMarketingUrl2) && !(isSetMarketingUrl && isSetMarketingUrl2 && this.marketingUrl.equals(bootstrapSettings.marketingUrl))) {
            return false;
        }
        boolean isSetSupportUrl = isSetSupportUrl();
        boolean isSetSupportUrl2 = bootstrapSettings.isSetSupportUrl();
        if ((isSetSupportUrl || isSetSupportUrl2) && !(isSetSupportUrl && isSetSupportUrl2 && this.supportUrl.equals(bootstrapSettings.supportUrl))) {
            return false;
        }
        boolean isSetAccountEmailDomain = isSetAccountEmailDomain();
        boolean isSetAccountEmailDomain2 = bootstrapSettings.isSetAccountEmailDomain();
        if ((isSetAccountEmailDomain || isSetAccountEmailDomain2) && !(isSetAccountEmailDomain && isSetAccountEmailDomain2 && this.accountEmailDomain.equals(bootstrapSettings.accountEmailDomain))) {
            return false;
        }
        boolean isSetEnableFacebookSharing = isSetEnableFacebookSharing();
        boolean isSetEnableFacebookSharing2 = bootstrapSettings.isSetEnableFacebookSharing();
        if ((isSetEnableFacebookSharing || isSetEnableFacebookSharing2) && !(isSetEnableFacebookSharing && isSetEnableFacebookSharing2 && this.enableFacebookSharing == bootstrapSettings.enableFacebookSharing)) {
            return false;
        }
        boolean isSetEnableGiftSubscriptions = isSetEnableGiftSubscriptions();
        boolean isSetEnableGiftSubscriptions2 = bootstrapSettings.isSetEnableGiftSubscriptions();
        if ((isSetEnableGiftSubscriptions || isSetEnableGiftSubscriptions2) && !(isSetEnableGiftSubscriptions && isSetEnableGiftSubscriptions2 && this.enableGiftSubscriptions == bootstrapSettings.enableGiftSubscriptions)) {
            return false;
        }
        boolean isSetEnableSupportTickets = isSetEnableSupportTickets();
        boolean isSetEnableSupportTickets2 = bootstrapSettings.isSetEnableSupportTickets();
        if ((isSetEnableSupportTickets || isSetEnableSupportTickets2) && !(isSetEnableSupportTickets && isSetEnableSupportTickets2 && this.enableSupportTickets == bootstrapSettings.enableSupportTickets)) {
            return false;
        }
        boolean isSetEnableSharedNotebooks = isSetEnableSharedNotebooks();
        boolean isSetEnableSharedNotebooks2 = bootstrapSettings.isSetEnableSharedNotebooks();
        if ((isSetEnableSharedNotebooks || isSetEnableSharedNotebooks2) && !(isSetEnableSharedNotebooks && isSetEnableSharedNotebooks2 && this.enableSharedNotebooks == bootstrapSettings.enableSharedNotebooks)) {
            return false;
        }
        boolean isSetEnableSingleNoteSharing = isSetEnableSingleNoteSharing();
        boolean isSetEnableSingleNoteSharing2 = bootstrapSettings.isSetEnableSingleNoteSharing();
        if ((isSetEnableSingleNoteSharing || isSetEnableSingleNoteSharing2) && !(isSetEnableSingleNoteSharing && isSetEnableSingleNoteSharing2 && this.enableSingleNoteSharing == bootstrapSettings.enableSingleNoteSharing)) {
            return false;
        }
        boolean isSetEnableSponsoredAccounts = isSetEnableSponsoredAccounts();
        boolean isSetEnableSponsoredAccounts2 = bootstrapSettings.isSetEnableSponsoredAccounts();
        if ((isSetEnableSponsoredAccounts || isSetEnableSponsoredAccounts2) && !(isSetEnableSponsoredAccounts && isSetEnableSponsoredAccounts2 && this.enableSponsoredAccounts == bootstrapSettings.enableSponsoredAccounts)) {
            return false;
        }
        boolean isSetEnableTwitterSharing = isSetEnableTwitterSharing();
        boolean isSetEnableTwitterSharing2 = bootstrapSettings.isSetEnableTwitterSharing();
        if ((isSetEnableTwitterSharing || isSetEnableTwitterSharing2) && !(isSetEnableTwitterSharing && isSetEnableTwitterSharing2 && this.enableTwitterSharing == bootstrapSettings.enableTwitterSharing)) {
            return false;
        }
        boolean isSetEnableLinkedInSharing = isSetEnableLinkedInSharing();
        boolean isSetEnableLinkedInSharing2 = bootstrapSettings.isSetEnableLinkedInSharing();
        if ((isSetEnableLinkedInSharing || isSetEnableLinkedInSharing2) && !(isSetEnableLinkedInSharing && isSetEnableLinkedInSharing2 && this.enableLinkedInSharing == bootstrapSettings.enableLinkedInSharing)) {
            return false;
        }
        boolean isSetEnablePublicNotebooks = isSetEnablePublicNotebooks();
        boolean isSetEnablePublicNotebooks2 = bootstrapSettings.isSetEnablePublicNotebooks();
        if (isSetEnablePublicNotebooks || isSetEnablePublicNotebooks2) {
            return isSetEnablePublicNotebooks && isSetEnablePublicNotebooks2 && this.enablePublicNotebooks == bootstrapSettings.enablePublicNotebooks;
        }
        return true;
    }

    public BootstrapSettings(BootstrapSettings bootstrapSettings) {
        boolean[] zArr = new boolean[9];
        this.__isset_vector = zArr;
        boolean[] zArr2 = bootstrapSettings.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (bootstrapSettings.isSetServiceHost()) {
            this.serviceHost = bootstrapSettings.serviceHost;
        }
        if (bootstrapSettings.isSetMarketingUrl()) {
            this.marketingUrl = bootstrapSettings.marketingUrl;
        }
        if (bootstrapSettings.isSetSupportUrl()) {
            this.supportUrl = bootstrapSettings.supportUrl;
        }
        if (bootstrapSettings.isSetAccountEmailDomain()) {
            this.accountEmailDomain = bootstrapSettings.accountEmailDomain;
        }
        this.enableFacebookSharing = bootstrapSettings.enableFacebookSharing;
        this.enableGiftSubscriptions = bootstrapSettings.enableGiftSubscriptions;
        this.enableSupportTickets = bootstrapSettings.enableSupportTickets;
        this.enableSharedNotebooks = bootstrapSettings.enableSharedNotebooks;
        this.enableSingleNoteSharing = bootstrapSettings.enableSingleNoteSharing;
        this.enableSponsoredAccounts = bootstrapSettings.enableSponsoredAccounts;
        this.enableTwitterSharing = bootstrapSettings.enableTwitterSharing;
        this.enableLinkedInSharing = bootstrapSettings.enableLinkedInSharing;
        this.enablePublicNotebooks = bootstrapSettings.enablePublicNotebooks;
    }
}

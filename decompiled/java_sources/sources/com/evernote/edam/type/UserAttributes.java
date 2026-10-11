package com.evernote.edam.type;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TList;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class UserAttributes implements TBase<UserAttributes>, Serializable, Cloneable {
    private static final int __CLIPFULLPAGE_ISSET_ID = 11;
    private static final int __DAILYEMAILLIMIT_ISSET_ID = 8;
    private static final int __DATEAGREEDTOTERMSOFSERVICE_ISSET_ID = 3;
    private static final int __DEFAULTLATITUDE_ISSET_ID = 0;
    private static final int __DEFAULTLONGITUDE_ISSET_ID = 1;
    private static final int __EDUCATIONALDISCOUNT_ISSET_ID = 12;
    private static final int __EMAILOPTOUTDATE_ISSET_ID = 9;
    private static final int __HIDESPONSORBILLING_ISSET_ID = 13;
    private static final int __MAXREFERRALS_ISSET_ID = 4;
    private static final int __PARTNEREMAILOPTINDATE_ISSET_ID = 10;
    private static final int __PREACTIVATION_ISSET_ID = 2;
    private static final int __REFERRALCOUNT_ISSET_ID = 5;
    private static final int __SENTEMAILCOUNT_ISSET_ID = 7;
    private static final int __SENTEMAILDATE_ISSET_ID = 6;
    private static final int __TAXEXEMPT_ISSET_ID = 14;
    private static final int __USEEMAILAUTOFILING_ISSET_ID = 15;
    private boolean[] __isset_vector;
    private String businessAddress;
    private boolean clipFullPage;
    private String comments;
    private int dailyEmailLimit;
    private long dateAgreedToTermsOfService;
    private double defaultLatitude;
    private String defaultLocationName;
    private double defaultLongitude;
    private boolean educationalDiscount;
    private long emailOptOutDate;
    private String groupName;
    private boolean hideSponsorBilling;
    private String incomingEmailAddress;
    private int maxReferrals;
    private long partnerEmailOptInDate;
    private boolean preactivation;
    private String preferredCountry;
    private String preferredLanguage;
    private List<String> recentMailedAddresses;
    private String recognitionLanguage;
    private String refererCode;
    private int referralCount;
    private String referralProof;
    private ReminderEmailConfig reminderEmailConfig;
    private int sentEmailCount;
    private long sentEmailDate;
    private boolean taxExempt;
    private String twitterId;
    private String twitterUserName;
    private boolean useEmailAutoFiling;
    private List<String> viewedPromotions;
    private static final TStruct STRUCT_DESC = new TStruct("UserAttributes");
    private static final TField DEFAULT_LOCATION_NAME_FIELD_DESC = new TField("defaultLocationName", (byte) 11, 1);
    private static final TField DEFAULT_LATITUDE_FIELD_DESC = new TField("defaultLatitude", (byte) 4, 2);
    private static final TField DEFAULT_LONGITUDE_FIELD_DESC = new TField("defaultLongitude", (byte) 4, 3);
    private static final TField PREACTIVATION_FIELD_DESC = new TField("preactivation", (byte) 2, 4);
    private static final TField VIEWED_PROMOTIONS_FIELD_DESC = new TField("viewedPromotions", (byte) 15, 5);
    private static final TField INCOMING_EMAIL_ADDRESS_FIELD_DESC = new TField("incomingEmailAddress", (byte) 11, 6);
    private static final TField RECENT_MAILED_ADDRESSES_FIELD_DESC = new TField("recentMailedAddresses", (byte) 15, 7);
    private static final TField COMMENTS_FIELD_DESC = new TField("comments", (byte) 11, 9);
    private static final TField DATE_AGREED_TO_TERMS_OF_SERVICE_FIELD_DESC = new TField("dateAgreedToTermsOfService", (byte) 10, 11);
    private static final TField MAX_REFERRALS_FIELD_DESC = new TField("maxReferrals", (byte) 8, 12);
    private static final TField REFERRAL_COUNT_FIELD_DESC = new TField("referralCount", (byte) 8, 13);
    private static final TField REFERER_CODE_FIELD_DESC = new TField("refererCode", (byte) 11, 14);
    private static final TField SENT_EMAIL_DATE_FIELD_DESC = new TField("sentEmailDate", (byte) 10, 15);
    private static final TField SENT_EMAIL_COUNT_FIELD_DESC = new TField("sentEmailCount", (byte) 8, 16);
    private static final TField DAILY_EMAIL_LIMIT_FIELD_DESC = new TField("dailyEmailLimit", (byte) 8, 17);
    private static final TField EMAIL_OPT_OUT_DATE_FIELD_DESC = new TField("emailOptOutDate", (byte) 10, 18);
    private static final TField PARTNER_EMAIL_OPT_IN_DATE_FIELD_DESC = new TField("partnerEmailOptInDate", (byte) 10, 19);
    private static final TField PREFERRED_LANGUAGE_FIELD_DESC = new TField("preferredLanguage", (byte) 11, 20);
    private static final TField PREFERRED_COUNTRY_FIELD_DESC = new TField("preferredCountry", (byte) 11, 21);
    private static final TField CLIP_FULL_PAGE_FIELD_DESC = new TField("clipFullPage", (byte) 2, 22);
    private static final TField TWITTER_USER_NAME_FIELD_DESC = new TField("twitterUserName", (byte) 11, 23);
    private static final TField TWITTER_ID_FIELD_DESC = new TField("twitterId", (byte) 11, 24);
    private static final TField GROUP_NAME_FIELD_DESC = new TField("groupName", (byte) 11, 25);
    private static final TField RECOGNITION_LANGUAGE_FIELD_DESC = new TField("recognitionLanguage", (byte) 11, 26);
    private static final TField REFERRAL_PROOF_FIELD_DESC = new TField("referralProof", (byte) 11, 28);
    private static final TField EDUCATIONAL_DISCOUNT_FIELD_DESC = new TField("educationalDiscount", (byte) 2, 29);
    private static final TField BUSINESS_ADDRESS_FIELD_DESC = new TField("businessAddress", (byte) 11, 30);
    private static final TField HIDE_SPONSOR_BILLING_FIELD_DESC = new TField("hideSponsorBilling", (byte) 2, 31);
    private static final TField TAX_EXEMPT_FIELD_DESC = new TField("taxExempt", (byte) 2, 32);
    private static final TField USE_EMAIL_AUTO_FILING_FIELD_DESC = new TField("useEmailAutoFiling", (byte) 2, 33);
    private static final TField REMINDER_EMAIL_CONFIG_FIELD_DESC = new TField("reminderEmailConfig", (byte) 8, 34);

    public UserAttributes() {
        this.__isset_vector = new boolean[16];
    }

    public void addToRecentMailedAddresses(String str) {
        if (this.recentMailedAddresses == null) {
            this.recentMailedAddresses = new ArrayList();
        }
        this.recentMailedAddresses.add(str);
    }

    public void addToViewedPromotions(String str) {
        if (this.viewedPromotions == null) {
            this.viewedPromotions = new ArrayList();
        }
        this.viewedPromotions.add(str);
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.defaultLocationName = null;
        setDefaultLatitudeIsSet(false);
        this.defaultLatitude = 0.0d;
        setDefaultLongitudeIsSet(false);
        this.defaultLongitude = 0.0d;
        setPreactivationIsSet(false);
        this.preactivation = false;
        this.viewedPromotions = null;
        this.incomingEmailAddress = null;
        this.recentMailedAddresses = null;
        this.comments = null;
        setDateAgreedToTermsOfServiceIsSet(false);
        this.dateAgreedToTermsOfService = 0L;
        setMaxReferralsIsSet(false);
        this.maxReferrals = 0;
        setReferralCountIsSet(false);
        this.referralCount = 0;
        this.refererCode = null;
        setSentEmailDateIsSet(false);
        this.sentEmailDate = 0L;
        setSentEmailCountIsSet(false);
        this.sentEmailCount = 0;
        setDailyEmailLimitIsSet(false);
        this.dailyEmailLimit = 0;
        setEmailOptOutDateIsSet(false);
        this.emailOptOutDate = 0L;
        setPartnerEmailOptInDateIsSet(false);
        this.partnerEmailOptInDate = 0L;
        this.preferredLanguage = null;
        this.preferredCountry = null;
        setClipFullPageIsSet(false);
        this.clipFullPage = false;
        this.twitterUserName = null;
        this.twitterId = null;
        this.groupName = null;
        this.recognitionLanguage = null;
        this.referralProof = null;
        setEducationalDiscountIsSet(false);
        this.educationalDiscount = false;
        this.businessAddress = null;
        setHideSponsorBillingIsSet(false);
        this.hideSponsorBilling = false;
        setTaxExemptIsSet(false);
        this.taxExempt = false;
        setUseEmailAutoFilingIsSet(false);
        this.useEmailAutoFiling = false;
        this.reminderEmailConfig = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof UserAttributes)) {
            return equals((UserAttributes) obj);
        }
        return false;
    }

    public String getBusinessAddress() {
        return this.businessAddress;
    }

    public String getComments() {
        return this.comments;
    }

    public int getDailyEmailLimit() {
        return this.dailyEmailLimit;
    }

    public long getDateAgreedToTermsOfService() {
        return this.dateAgreedToTermsOfService;
    }

    public double getDefaultLatitude() {
        return this.defaultLatitude;
    }

    public String getDefaultLocationName() {
        return this.defaultLocationName;
    }

    public double getDefaultLongitude() {
        return this.defaultLongitude;
    }

    public long getEmailOptOutDate() {
        return this.emailOptOutDate;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public String getIncomingEmailAddress() {
        return this.incomingEmailAddress;
    }

    public int getMaxReferrals() {
        return this.maxReferrals;
    }

    public long getPartnerEmailOptInDate() {
        return this.partnerEmailOptInDate;
    }

    public String getPreferredCountry() {
        return this.preferredCountry;
    }

    public String getPreferredLanguage() {
        return this.preferredLanguage;
    }

    public List<String> getRecentMailedAddresses() {
        return this.recentMailedAddresses;
    }

    public Iterator<String> getRecentMailedAddressesIterator() {
        List<String> list = this.recentMailedAddresses;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getRecentMailedAddressesSize() {
        List<String> list = this.recentMailedAddresses;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public String getRecognitionLanguage() {
        return this.recognitionLanguage;
    }

    public String getRefererCode() {
        return this.refererCode;
    }

    public int getReferralCount() {
        return this.referralCount;
    }

    public String getReferralProof() {
        return this.referralProof;
    }

    public ReminderEmailConfig getReminderEmailConfig() {
        return this.reminderEmailConfig;
    }

    public int getSentEmailCount() {
        return this.sentEmailCount;
    }

    public long getSentEmailDate() {
        return this.sentEmailDate;
    }

    public String getTwitterId() {
        return this.twitterId;
    }

    public String getTwitterUserName() {
        return this.twitterUserName;
    }

    public List<String> getViewedPromotions() {
        return this.viewedPromotions;
    }

    public Iterator<String> getViewedPromotionsIterator() {
        List<String> list = this.viewedPromotions;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getViewedPromotionsSize() {
        List<String> list = this.viewedPromotions;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public int hashCode() {
        return 0;
    }

    public boolean isClipFullPage() {
        return this.clipFullPage;
    }

    public boolean isEducationalDiscount() {
        return this.educationalDiscount;
    }

    public boolean isHideSponsorBilling() {
        return this.hideSponsorBilling;
    }

    public boolean isPreactivation() {
        return this.preactivation;
    }

    public boolean isSetBusinessAddress() {
        return this.businessAddress != null;
    }

    public boolean isSetClipFullPage() {
        return this.__isset_vector[11];
    }

    public boolean isSetComments() {
        return this.comments != null;
    }

    public boolean isSetDailyEmailLimit() {
        return this.__isset_vector[8];
    }

    public boolean isSetDateAgreedToTermsOfService() {
        return this.__isset_vector[3];
    }

    public boolean isSetDefaultLatitude() {
        return this.__isset_vector[0];
    }

    public boolean isSetDefaultLocationName() {
        return this.defaultLocationName != null;
    }

    public boolean isSetDefaultLongitude() {
        return this.__isset_vector[1];
    }

    public boolean isSetEducationalDiscount() {
        return this.__isset_vector[12];
    }

    public boolean isSetEmailOptOutDate() {
        return this.__isset_vector[9];
    }

    public boolean isSetGroupName() {
        return this.groupName != null;
    }

    public boolean isSetHideSponsorBilling() {
        return this.__isset_vector[13];
    }

    public boolean isSetIncomingEmailAddress() {
        return this.incomingEmailAddress != null;
    }

    public boolean isSetMaxReferrals() {
        return this.__isset_vector[4];
    }

    public boolean isSetPartnerEmailOptInDate() {
        return this.__isset_vector[10];
    }

    public boolean isSetPreactivation() {
        return this.__isset_vector[2];
    }

    public boolean isSetPreferredCountry() {
        return this.preferredCountry != null;
    }

    public boolean isSetPreferredLanguage() {
        return this.preferredLanguage != null;
    }

    public boolean isSetRecentMailedAddresses() {
        return this.recentMailedAddresses != null;
    }

    public boolean isSetRecognitionLanguage() {
        return this.recognitionLanguage != null;
    }

    public boolean isSetRefererCode() {
        return this.refererCode != null;
    }

    public boolean isSetReferralCount() {
        return this.__isset_vector[5];
    }

    public boolean isSetReferralProof() {
        return this.referralProof != null;
    }

    public boolean isSetReminderEmailConfig() {
        return this.reminderEmailConfig != null;
    }

    public boolean isSetSentEmailCount() {
        return this.__isset_vector[7];
    }

    public boolean isSetSentEmailDate() {
        return this.__isset_vector[6];
    }

    public boolean isSetTaxExempt() {
        return this.__isset_vector[14];
    }

    public boolean isSetTwitterId() {
        return this.twitterId != null;
    }

    public boolean isSetTwitterUserName() {
        return this.twitterUserName != null;
    }

    public boolean isSetUseEmailAutoFiling() {
        return this.__isset_vector[15];
    }

    public boolean isSetViewedPromotions() {
        return this.viewedPromotions != null;
    }

    public boolean isTaxExempt() {
        return this.taxExempt;
    }

    public boolean isUseEmailAutoFiling() {
        return this.useEmailAutoFiling;
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
            int i = 0;
            switch (readFieldBegin.f21203id) {
                case 1:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.defaultLocationName = tProtocol.readString();
                        break;
                    }
                case 2:
                    if (b != 4) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.defaultLatitude = tProtocol.readDouble();
                        setDefaultLatitudeIsSet(true);
                        break;
                    }
                case 3:
                    if (b != 4) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.defaultLongitude = tProtocol.readDouble();
                        setDefaultLongitudeIsSet(true);
                        break;
                    }
                case 4:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.preactivation = tProtocol.readBool();
                        setPreactivationIsSet(true);
                        break;
                    }
                case 5:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin = tProtocol.readListBegin();
                        this.viewedPromotions = new ArrayList(readListBegin.size);
                        while (i < readListBegin.size) {
                            this.viewedPromotions.add(tProtocol.readString());
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 6:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.incomingEmailAddress = tProtocol.readString();
                        break;
                    }
                case 7:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin2 = tProtocol.readListBegin();
                        this.recentMailedAddresses = new ArrayList(readListBegin2.size);
                        while (i < readListBegin2.size) {
                            this.recentMailedAddresses.add(tProtocol.readString());
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 8:
                case 10:
                case 27:
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
                case 9:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.comments = tProtocol.readString();
                        break;
                    }
                case 11:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.dateAgreedToTermsOfService = tProtocol.readI64();
                        setDateAgreedToTermsOfServiceIsSet(true);
                        break;
                    }
                case 12:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.maxReferrals = tProtocol.readI32();
                        setMaxReferralsIsSet(true);
                        break;
                    }
                case 13:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.referralCount = tProtocol.readI32();
                        setReferralCountIsSet(true);
                        break;
                    }
                case 14:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.refererCode = tProtocol.readString();
                        break;
                    }
                case 15:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.sentEmailDate = tProtocol.readI64();
                        setSentEmailDateIsSet(true);
                        break;
                    }
                case 16:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.sentEmailCount = tProtocol.readI32();
                        setSentEmailCountIsSet(true);
                        break;
                    }
                case 17:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.dailyEmailLimit = tProtocol.readI32();
                        setDailyEmailLimitIsSet(true);
                        break;
                    }
                case 18:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.emailOptOutDate = tProtocol.readI64();
                        setEmailOptOutDateIsSet(true);
                        break;
                    }
                case 19:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.partnerEmailOptInDate = tProtocol.readI64();
                        setPartnerEmailOptInDateIsSet(true);
                        break;
                    }
                case 20:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.preferredLanguage = tProtocol.readString();
                        break;
                    }
                case 21:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.preferredCountry = tProtocol.readString();
                        break;
                    }
                case 22:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.clipFullPage = tProtocol.readBool();
                        setClipFullPageIsSet(true);
                        break;
                    }
                case 23:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.twitterUserName = tProtocol.readString();
                        break;
                    }
                case 24:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.twitterId = tProtocol.readString();
                        break;
                    }
                case 25:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.groupName = tProtocol.readString();
                        break;
                    }
                case 26:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.recognitionLanguage = tProtocol.readString();
                        break;
                    }
                case 28:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.referralProof = tProtocol.readString();
                        break;
                    }
                case 29:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.educationalDiscount = tProtocol.readBool();
                        setEducationalDiscountIsSet(true);
                        break;
                    }
                case 30:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.businessAddress = tProtocol.readString();
                        break;
                    }
                case 31:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.hideSponsorBilling = tProtocol.readBool();
                        setHideSponsorBillingIsSet(true);
                        break;
                    }
                case 32:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.taxExempt = tProtocol.readBool();
                        setTaxExemptIsSet(true);
                        break;
                    }
                case 33:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.useEmailAutoFiling = tProtocol.readBool();
                        setUseEmailAutoFilingIsSet(true);
                        break;
                    }
                case 34:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.reminderEmailConfig = ReminderEmailConfig.findByValue(tProtocol.readI32());
                        break;
                    }
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setBusinessAddress(String str) {
        this.businessAddress = str;
    }

    public void setBusinessAddressIsSet(boolean z) {
        if (z) {
            return;
        }
        this.businessAddress = null;
    }

    public void setClipFullPage(boolean z) {
        this.clipFullPage = z;
        setClipFullPageIsSet(true);
    }

    public void setClipFullPageIsSet(boolean z) {
        this.__isset_vector[11] = z;
    }

    public void setComments(String str) {
        this.comments = str;
    }

    public void setCommentsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.comments = null;
    }

    public void setDailyEmailLimit(int i) {
        this.dailyEmailLimit = i;
        setDailyEmailLimitIsSet(true);
    }

    public void setDailyEmailLimitIsSet(boolean z) {
        this.__isset_vector[8] = z;
    }

    public void setDateAgreedToTermsOfService(long j) {
        this.dateAgreedToTermsOfService = j;
        setDateAgreedToTermsOfServiceIsSet(true);
    }

    public void setDateAgreedToTermsOfServiceIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public void setDefaultLatitude(double d) {
        this.defaultLatitude = d;
        setDefaultLatitudeIsSet(true);
    }

    public void setDefaultLatitudeIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setDefaultLocationName(String str) {
        this.defaultLocationName = str;
    }

    public void setDefaultLocationNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.defaultLocationName = null;
    }

    public void setDefaultLongitude(double d) {
        this.defaultLongitude = d;
        setDefaultLongitudeIsSet(true);
    }

    public void setDefaultLongitudeIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setEducationalDiscount(boolean z) {
        this.educationalDiscount = z;
        setEducationalDiscountIsSet(true);
    }

    public void setEducationalDiscountIsSet(boolean z) {
        this.__isset_vector[12] = z;
    }

    public void setEmailOptOutDate(long j) {
        this.emailOptOutDate = j;
        setEmailOptOutDateIsSet(true);
    }

    public void setEmailOptOutDateIsSet(boolean z) {
        this.__isset_vector[9] = z;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public void setGroupNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.groupName = null;
    }

    public void setHideSponsorBilling(boolean z) {
        this.hideSponsorBilling = z;
        setHideSponsorBillingIsSet(true);
    }

    public void setHideSponsorBillingIsSet(boolean z) {
        this.__isset_vector[13] = z;
    }

    public void setIncomingEmailAddress(String str) {
        this.incomingEmailAddress = str;
    }

    public void setIncomingEmailAddressIsSet(boolean z) {
        if (z) {
            return;
        }
        this.incomingEmailAddress = null;
    }

    public void setMaxReferrals(int i) {
        this.maxReferrals = i;
        setMaxReferralsIsSet(true);
    }

    public void setMaxReferralsIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setPartnerEmailOptInDate(long j) {
        this.partnerEmailOptInDate = j;
        setPartnerEmailOptInDateIsSet(true);
    }

    public void setPartnerEmailOptInDateIsSet(boolean z) {
        this.__isset_vector[10] = z;
    }

    public void setPreactivation(boolean z) {
        this.preactivation = z;
        setPreactivationIsSet(true);
    }

    public void setPreactivationIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setPreferredCountry(String str) {
        this.preferredCountry = str;
    }

    public void setPreferredCountryIsSet(boolean z) {
        if (z) {
            return;
        }
        this.preferredCountry = null;
    }

    public void setPreferredLanguage(String str) {
        this.preferredLanguage = str;
    }

    public void setPreferredLanguageIsSet(boolean z) {
        if (z) {
            return;
        }
        this.preferredLanguage = null;
    }

    public void setRecentMailedAddresses(List<String> list) {
        this.recentMailedAddresses = list;
    }

    public void setRecentMailedAddressesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.recentMailedAddresses = null;
    }

    public void setRecognitionLanguage(String str) {
        this.recognitionLanguage = str;
    }

    public void setRecognitionLanguageIsSet(boolean z) {
        if (z) {
            return;
        }
        this.recognitionLanguage = null;
    }

    public void setRefererCode(String str) {
        this.refererCode = str;
    }

    public void setRefererCodeIsSet(boolean z) {
        if (z) {
            return;
        }
        this.refererCode = null;
    }

    public void setReferralCount(int i) {
        this.referralCount = i;
        setReferralCountIsSet(true);
    }

    public void setReferralCountIsSet(boolean z) {
        this.__isset_vector[5] = z;
    }

    public void setReferralProof(String str) {
        this.referralProof = str;
    }

    public void setReferralProofIsSet(boolean z) {
        if (z) {
            return;
        }
        this.referralProof = null;
    }

    public void setReminderEmailConfig(ReminderEmailConfig reminderEmailConfig) {
        this.reminderEmailConfig = reminderEmailConfig;
    }

    public void setReminderEmailConfigIsSet(boolean z) {
        if (z) {
            return;
        }
        this.reminderEmailConfig = null;
    }

    public void setSentEmailCount(int i) {
        this.sentEmailCount = i;
        setSentEmailCountIsSet(true);
    }

    public void setSentEmailCountIsSet(boolean z) {
        this.__isset_vector[7] = z;
    }

    public void setSentEmailDate(long j) {
        this.sentEmailDate = j;
        setSentEmailDateIsSet(true);
    }

    public void setSentEmailDateIsSet(boolean z) {
        this.__isset_vector[6] = z;
    }

    public void setTaxExempt(boolean z) {
        this.taxExempt = z;
        setTaxExemptIsSet(true);
    }

    public void setTaxExemptIsSet(boolean z) {
        this.__isset_vector[14] = z;
    }

    public void setTwitterId(String str) {
        this.twitterId = str;
    }

    public void setTwitterIdIsSet(boolean z) {
        if (z) {
            return;
        }
        this.twitterId = null;
    }

    public void setTwitterUserName(String str) {
        this.twitterUserName = str;
    }

    public void setTwitterUserNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.twitterUserName = null;
    }

    public void setUseEmailAutoFiling(boolean z) {
        this.useEmailAutoFiling = z;
        setUseEmailAutoFilingIsSet(true);
    }

    public void setUseEmailAutoFilingIsSet(boolean z) {
        this.__isset_vector[15] = z;
    }

    public void setViewedPromotions(List<String> list) {
        this.viewedPromotions = list;
    }

    public void setViewedPromotionsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.viewedPromotions = null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("UserAttributes(");
        boolean z2 = false;
        if (isSetDefaultLocationName()) {
            sb.append("defaultLocationName:");
            String str = this.defaultLocationName;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetDefaultLatitude()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("defaultLatitude:");
            sb.append(this.defaultLatitude);
            z = false;
        }
        if (isSetDefaultLongitude()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("defaultLongitude:");
            sb.append(this.defaultLongitude);
            z = false;
        }
        if (isSetPreactivation()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("preactivation:");
            sb.append(this.preactivation);
            z = false;
        }
        if (isSetViewedPromotions()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("viewedPromotions:");
            List<String> list = this.viewedPromotions;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
            z = false;
        }
        if (isSetIncomingEmailAddress()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("incomingEmailAddress:");
            String str2 = this.incomingEmailAddress;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (isSetRecentMailedAddresses()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("recentMailedAddresses:");
            List<String> list2 = this.recentMailedAddresses;
            if (list2 == null) {
                sb.append("null");
            } else {
                sb.append(list2);
            }
            z = false;
        }
        if (isSetComments()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("comments:");
            String str3 = this.comments;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetDateAgreedToTermsOfService()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("dateAgreedToTermsOfService:");
            sb.append(this.dateAgreedToTermsOfService);
            z = false;
        }
        if (isSetMaxReferrals()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("maxReferrals:");
            sb.append(this.maxReferrals);
            z = false;
        }
        if (isSetReferralCount()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("referralCount:");
            sb.append(this.referralCount);
            z = false;
        }
        if (isSetRefererCode()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("refererCode:");
            String str4 = this.refererCode;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
            z = false;
        }
        if (isSetSentEmailDate()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("sentEmailDate:");
            sb.append(this.sentEmailDate);
            z = false;
        }
        if (isSetSentEmailCount()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("sentEmailCount:");
            sb.append(this.sentEmailCount);
            z = false;
        }
        if (isSetDailyEmailLimit()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("dailyEmailLimit:");
            sb.append(this.dailyEmailLimit);
            z = false;
        }
        if (isSetEmailOptOutDate()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("emailOptOutDate:");
            sb.append(this.emailOptOutDate);
            z = false;
        }
        if (isSetPartnerEmailOptInDate()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("partnerEmailOptInDate:");
            sb.append(this.partnerEmailOptInDate);
            z = false;
        }
        if (isSetPreferredLanguage()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("preferredLanguage:");
            String str5 = this.preferredLanguage;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
            z = false;
        }
        if (isSetPreferredCountry()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("preferredCountry:");
            String str6 = this.preferredCountry;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
            z = false;
        }
        if (isSetClipFullPage()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("clipFullPage:");
            sb.append(this.clipFullPage);
            z = false;
        }
        if (isSetTwitterUserName()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("twitterUserName:");
            String str7 = this.twitterUserName;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
            z = false;
        }
        if (isSetTwitterId()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("twitterId:");
            String str8 = this.twitterId;
            if (str8 == null) {
                sb.append("null");
            } else {
                sb.append(str8);
            }
            z = false;
        }
        if (isSetGroupName()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("groupName:");
            String str9 = this.groupName;
            if (str9 == null) {
                sb.append("null");
            } else {
                sb.append(str9);
            }
            z = false;
        }
        if (isSetRecognitionLanguage()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("recognitionLanguage:");
            String str10 = this.recognitionLanguage;
            if (str10 == null) {
                sb.append("null");
            } else {
                sb.append(str10);
            }
            z = false;
        }
        if (isSetReferralProof()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("referralProof:");
            String str11 = this.referralProof;
            if (str11 == null) {
                sb.append("null");
            } else {
                sb.append(str11);
            }
            z = false;
        }
        if (isSetEducationalDiscount()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("educationalDiscount:");
            sb.append(this.educationalDiscount);
            z = false;
        }
        if (isSetBusinessAddress()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("businessAddress:");
            String str12 = this.businessAddress;
            if (str12 == null) {
                sb.append("null");
            } else {
                sb.append(str12);
            }
            z = false;
        }
        if (isSetHideSponsorBilling()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("hideSponsorBilling:");
            sb.append(this.hideSponsorBilling);
            z = false;
        }
        if (isSetTaxExempt()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("taxExempt:");
            sb.append(this.taxExempt);
            z = false;
        }
        if (isSetUseEmailAutoFiling()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("useEmailAutoFiling:");
            sb.append(this.useEmailAutoFiling);
        } else {
            z2 = z;
        }
        if (isSetReminderEmailConfig()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("reminderEmailConfig:");
            ReminderEmailConfig reminderEmailConfig = this.reminderEmailConfig;
            if (reminderEmailConfig == null) {
                sb.append("null");
            } else {
                sb.append(reminderEmailConfig);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetBusinessAddress() {
        this.businessAddress = null;
    }

    public void unsetClipFullPage() {
        this.__isset_vector[11] = false;
    }

    public void unsetComments() {
        this.comments = null;
    }

    public void unsetDailyEmailLimit() {
        this.__isset_vector[8] = false;
    }

    public void unsetDateAgreedToTermsOfService() {
        this.__isset_vector[3] = false;
    }

    public void unsetDefaultLatitude() {
        this.__isset_vector[0] = false;
    }

    public void unsetDefaultLocationName() {
        this.defaultLocationName = null;
    }

    public void unsetDefaultLongitude() {
        this.__isset_vector[1] = false;
    }

    public void unsetEducationalDiscount() {
        this.__isset_vector[12] = false;
    }

    public void unsetEmailOptOutDate() {
        this.__isset_vector[9] = false;
    }

    public void unsetGroupName() {
        this.groupName = null;
    }

    public void unsetHideSponsorBilling() {
        this.__isset_vector[13] = false;
    }

    public void unsetIncomingEmailAddress() {
        this.incomingEmailAddress = null;
    }

    public void unsetMaxReferrals() {
        this.__isset_vector[4] = false;
    }

    public void unsetPartnerEmailOptInDate() {
        this.__isset_vector[10] = false;
    }

    public void unsetPreactivation() {
        this.__isset_vector[2] = false;
    }

    public void unsetPreferredCountry() {
        this.preferredCountry = null;
    }

    public void unsetPreferredLanguage() {
        this.preferredLanguage = null;
    }

    public void unsetRecentMailedAddresses() {
        this.recentMailedAddresses = null;
    }

    public void unsetRecognitionLanguage() {
        this.recognitionLanguage = null;
    }

    public void unsetRefererCode() {
        this.refererCode = null;
    }

    public void unsetReferralCount() {
        this.__isset_vector[5] = false;
    }

    public void unsetReferralProof() {
        this.referralProof = null;
    }

    public void unsetReminderEmailConfig() {
        this.reminderEmailConfig = null;
    }

    public void unsetSentEmailCount() {
        this.__isset_vector[7] = false;
    }

    public void unsetSentEmailDate() {
        this.__isset_vector[6] = false;
    }

    public void unsetTaxExempt() {
        this.__isset_vector[14] = false;
    }

    public void unsetTwitterId() {
        this.twitterId = null;
    }

    public void unsetTwitterUserName() {
        this.twitterUserName = null;
    }

    public void unsetUseEmailAutoFiling() {
        this.__isset_vector[15] = false;
    }

    public void unsetViewedPromotions() {
        this.viewedPromotions = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.defaultLocationName != null && isSetDefaultLocationName()) {
            tProtocol.writeFieldBegin(DEFAULT_LOCATION_NAME_FIELD_DESC);
            tProtocol.writeString(this.defaultLocationName);
            tProtocol.writeFieldEnd();
        }
        if (isSetDefaultLatitude()) {
            tProtocol.writeFieldBegin(DEFAULT_LATITUDE_FIELD_DESC);
            tProtocol.writeDouble(this.defaultLatitude);
            tProtocol.writeFieldEnd();
        }
        if (isSetDefaultLongitude()) {
            tProtocol.writeFieldBegin(DEFAULT_LONGITUDE_FIELD_DESC);
            tProtocol.writeDouble(this.defaultLongitude);
            tProtocol.writeFieldEnd();
        }
        if (isSetPreactivation()) {
            tProtocol.writeFieldBegin(PREACTIVATION_FIELD_DESC);
            tProtocol.writeBool(this.preactivation);
            tProtocol.writeFieldEnd();
        }
        if (this.viewedPromotions != null && isSetViewedPromotions()) {
            tProtocol.writeFieldBegin(VIEWED_PROMOTIONS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.viewedPromotions.size()));
            Iterator<String> it2 = this.viewedPromotions.iterator();
            while (it2.hasNext()) {
                tProtocol.writeString(it2.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.incomingEmailAddress != null && isSetIncomingEmailAddress()) {
            tProtocol.writeFieldBegin(INCOMING_EMAIL_ADDRESS_FIELD_DESC);
            tProtocol.writeString(this.incomingEmailAddress);
            tProtocol.writeFieldEnd();
        }
        if (this.recentMailedAddresses != null && isSetRecentMailedAddresses()) {
            tProtocol.writeFieldBegin(RECENT_MAILED_ADDRESSES_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.recentMailedAddresses.size()));
            Iterator<String> it3 = this.recentMailedAddresses.iterator();
            while (it3.hasNext()) {
                tProtocol.writeString(it3.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.comments != null && isSetComments()) {
            tProtocol.writeFieldBegin(COMMENTS_FIELD_DESC);
            tProtocol.writeString(this.comments);
            tProtocol.writeFieldEnd();
        }
        if (isSetDateAgreedToTermsOfService()) {
            tProtocol.writeFieldBegin(DATE_AGREED_TO_TERMS_OF_SERVICE_FIELD_DESC);
            tProtocol.writeI64(this.dateAgreedToTermsOfService);
            tProtocol.writeFieldEnd();
        }
        if (isSetMaxReferrals()) {
            tProtocol.writeFieldBegin(MAX_REFERRALS_FIELD_DESC);
            tProtocol.writeI32(this.maxReferrals);
            tProtocol.writeFieldEnd();
        }
        if (isSetReferralCount()) {
            tProtocol.writeFieldBegin(REFERRAL_COUNT_FIELD_DESC);
            tProtocol.writeI32(this.referralCount);
            tProtocol.writeFieldEnd();
        }
        if (this.refererCode != null && isSetRefererCode()) {
            tProtocol.writeFieldBegin(REFERER_CODE_FIELD_DESC);
            tProtocol.writeString(this.refererCode);
            tProtocol.writeFieldEnd();
        }
        if (isSetSentEmailDate()) {
            tProtocol.writeFieldBegin(SENT_EMAIL_DATE_FIELD_DESC);
            tProtocol.writeI64(this.sentEmailDate);
            tProtocol.writeFieldEnd();
        }
        if (isSetSentEmailCount()) {
            tProtocol.writeFieldBegin(SENT_EMAIL_COUNT_FIELD_DESC);
            tProtocol.writeI32(this.sentEmailCount);
            tProtocol.writeFieldEnd();
        }
        if (isSetDailyEmailLimit()) {
            tProtocol.writeFieldBegin(DAILY_EMAIL_LIMIT_FIELD_DESC);
            tProtocol.writeI32(this.dailyEmailLimit);
            tProtocol.writeFieldEnd();
        }
        if (isSetEmailOptOutDate()) {
            tProtocol.writeFieldBegin(EMAIL_OPT_OUT_DATE_FIELD_DESC);
            tProtocol.writeI64(this.emailOptOutDate);
            tProtocol.writeFieldEnd();
        }
        if (isSetPartnerEmailOptInDate()) {
            tProtocol.writeFieldBegin(PARTNER_EMAIL_OPT_IN_DATE_FIELD_DESC);
            tProtocol.writeI64(this.partnerEmailOptInDate);
            tProtocol.writeFieldEnd();
        }
        if (this.preferredLanguage != null && isSetPreferredLanguage()) {
            tProtocol.writeFieldBegin(PREFERRED_LANGUAGE_FIELD_DESC);
            tProtocol.writeString(this.preferredLanguage);
            tProtocol.writeFieldEnd();
        }
        if (this.preferredCountry != null && isSetPreferredCountry()) {
            tProtocol.writeFieldBegin(PREFERRED_COUNTRY_FIELD_DESC);
            tProtocol.writeString(this.preferredCountry);
            tProtocol.writeFieldEnd();
        }
        if (isSetClipFullPage()) {
            tProtocol.writeFieldBegin(CLIP_FULL_PAGE_FIELD_DESC);
            tProtocol.writeBool(this.clipFullPage);
            tProtocol.writeFieldEnd();
        }
        if (this.twitterUserName != null && isSetTwitterUserName()) {
            tProtocol.writeFieldBegin(TWITTER_USER_NAME_FIELD_DESC);
            tProtocol.writeString(this.twitterUserName);
            tProtocol.writeFieldEnd();
        }
        if (this.twitterId != null && isSetTwitterId()) {
            tProtocol.writeFieldBegin(TWITTER_ID_FIELD_DESC);
            tProtocol.writeString(this.twitterId);
            tProtocol.writeFieldEnd();
        }
        if (this.groupName != null && isSetGroupName()) {
            tProtocol.writeFieldBegin(GROUP_NAME_FIELD_DESC);
            tProtocol.writeString(this.groupName);
            tProtocol.writeFieldEnd();
        }
        if (this.recognitionLanguage != null && isSetRecognitionLanguage()) {
            tProtocol.writeFieldBegin(RECOGNITION_LANGUAGE_FIELD_DESC);
            tProtocol.writeString(this.recognitionLanguage);
            tProtocol.writeFieldEnd();
        }
        if (this.referralProof != null && isSetReferralProof()) {
            tProtocol.writeFieldBegin(REFERRAL_PROOF_FIELD_DESC);
            tProtocol.writeString(this.referralProof);
            tProtocol.writeFieldEnd();
        }
        if (isSetEducationalDiscount()) {
            tProtocol.writeFieldBegin(EDUCATIONAL_DISCOUNT_FIELD_DESC);
            tProtocol.writeBool(this.educationalDiscount);
            tProtocol.writeFieldEnd();
        }
        if (this.businessAddress != null && isSetBusinessAddress()) {
            tProtocol.writeFieldBegin(BUSINESS_ADDRESS_FIELD_DESC);
            tProtocol.writeString(this.businessAddress);
            tProtocol.writeFieldEnd();
        }
        if (isSetHideSponsorBilling()) {
            tProtocol.writeFieldBegin(HIDE_SPONSOR_BILLING_FIELD_DESC);
            tProtocol.writeBool(this.hideSponsorBilling);
            tProtocol.writeFieldEnd();
        }
        if (isSetTaxExempt()) {
            tProtocol.writeFieldBegin(TAX_EXEMPT_FIELD_DESC);
            tProtocol.writeBool(this.taxExempt);
            tProtocol.writeFieldEnd();
        }
        if (isSetUseEmailAutoFiling()) {
            tProtocol.writeFieldBegin(USE_EMAIL_AUTO_FILING_FIELD_DESC);
            tProtocol.writeBool(this.useEmailAutoFiling);
            tProtocol.writeFieldEnd();
        }
        if (this.reminderEmailConfig != null && isSetReminderEmailConfig()) {
            tProtocol.writeFieldBegin(REMINDER_EMAIL_CONFIG_FIELD_DESC);
            tProtocol.writeI32(this.reminderEmailConfig.getValue());
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(UserAttributes userAttributes) {
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
        int compareTo14;
        int compareTo15;
        int compareTo16;
        int compareTo17;
        int compareTo18;
        int compareTo19;
        int compareTo20;
        int compareTo21;
        int compareTo22;
        int compareTo23;
        int compareTo24;
        int compareTo25;
        int compareTo26;
        int compareTo27;
        int compareTo28;
        int compareTo29;
        int compareTo30;
        int compareTo31;
        if (!getClass().equals(userAttributes.getClass())) {
            return getClass().getName().compareTo(userAttributes.getClass().getName());
        }
        int compareTo32 = Boolean.valueOf(isSetDefaultLocationName()).compareTo(Boolean.valueOf(userAttributes.isSetDefaultLocationName()));
        if (compareTo32 != 0) {
            return compareTo32;
        }
        if (isSetDefaultLocationName() && (compareTo31 = TBaseHelper.compareTo(this.defaultLocationName, userAttributes.defaultLocationName)) != 0) {
            return compareTo31;
        }
        int compareTo33 = Boolean.valueOf(isSetDefaultLatitude()).compareTo(Boolean.valueOf(userAttributes.isSetDefaultLatitude()));
        if (compareTo33 != 0) {
            return compareTo33;
        }
        if (isSetDefaultLatitude() && (compareTo30 = TBaseHelper.compareTo(this.defaultLatitude, userAttributes.defaultLatitude)) != 0) {
            return compareTo30;
        }
        int compareTo34 = Boolean.valueOf(isSetDefaultLongitude()).compareTo(Boolean.valueOf(userAttributes.isSetDefaultLongitude()));
        if (compareTo34 != 0) {
            return compareTo34;
        }
        if (isSetDefaultLongitude() && (compareTo29 = TBaseHelper.compareTo(this.defaultLongitude, userAttributes.defaultLongitude)) != 0) {
            return compareTo29;
        }
        int compareTo35 = Boolean.valueOf(isSetPreactivation()).compareTo(Boolean.valueOf(userAttributes.isSetPreactivation()));
        if (compareTo35 != 0) {
            return compareTo35;
        }
        if (isSetPreactivation() && (compareTo28 = TBaseHelper.compareTo(this.preactivation, userAttributes.preactivation)) != 0) {
            return compareTo28;
        }
        int compareTo36 = Boolean.valueOf(isSetViewedPromotions()).compareTo(Boolean.valueOf(userAttributes.isSetViewedPromotions()));
        if (compareTo36 != 0) {
            return compareTo36;
        }
        if (isSetViewedPromotions() && (compareTo27 = TBaseHelper.compareTo((List) this.viewedPromotions, (List) userAttributes.viewedPromotions)) != 0) {
            return compareTo27;
        }
        int compareTo37 = Boolean.valueOf(isSetIncomingEmailAddress()).compareTo(Boolean.valueOf(userAttributes.isSetIncomingEmailAddress()));
        if (compareTo37 != 0) {
            return compareTo37;
        }
        if (isSetIncomingEmailAddress() && (compareTo26 = TBaseHelper.compareTo(this.incomingEmailAddress, userAttributes.incomingEmailAddress)) != 0) {
            return compareTo26;
        }
        int compareTo38 = Boolean.valueOf(isSetRecentMailedAddresses()).compareTo(Boolean.valueOf(userAttributes.isSetRecentMailedAddresses()));
        if (compareTo38 != 0) {
            return compareTo38;
        }
        if (isSetRecentMailedAddresses() && (compareTo25 = TBaseHelper.compareTo((List) this.recentMailedAddresses, (List) userAttributes.recentMailedAddresses)) != 0) {
            return compareTo25;
        }
        int compareTo39 = Boolean.valueOf(isSetComments()).compareTo(Boolean.valueOf(userAttributes.isSetComments()));
        if (compareTo39 != 0) {
            return compareTo39;
        }
        if (isSetComments() && (compareTo24 = TBaseHelper.compareTo(this.comments, userAttributes.comments)) != 0) {
            return compareTo24;
        }
        int compareTo40 = Boolean.valueOf(isSetDateAgreedToTermsOfService()).compareTo(Boolean.valueOf(userAttributes.isSetDateAgreedToTermsOfService()));
        if (compareTo40 != 0) {
            return compareTo40;
        }
        if (isSetDateAgreedToTermsOfService() && (compareTo23 = TBaseHelper.compareTo(this.dateAgreedToTermsOfService, userAttributes.dateAgreedToTermsOfService)) != 0) {
            return compareTo23;
        }
        int compareTo41 = Boolean.valueOf(isSetMaxReferrals()).compareTo(Boolean.valueOf(userAttributes.isSetMaxReferrals()));
        if (compareTo41 != 0) {
            return compareTo41;
        }
        if (isSetMaxReferrals() && (compareTo22 = TBaseHelper.compareTo(this.maxReferrals, userAttributes.maxReferrals)) != 0) {
            return compareTo22;
        }
        int compareTo42 = Boolean.valueOf(isSetReferralCount()).compareTo(Boolean.valueOf(userAttributes.isSetReferralCount()));
        if (compareTo42 != 0) {
            return compareTo42;
        }
        if (isSetReferralCount() && (compareTo21 = TBaseHelper.compareTo(this.referralCount, userAttributes.referralCount)) != 0) {
            return compareTo21;
        }
        int compareTo43 = Boolean.valueOf(isSetRefererCode()).compareTo(Boolean.valueOf(userAttributes.isSetRefererCode()));
        if (compareTo43 != 0) {
            return compareTo43;
        }
        if (isSetRefererCode() && (compareTo20 = TBaseHelper.compareTo(this.refererCode, userAttributes.refererCode)) != 0) {
            return compareTo20;
        }
        int compareTo44 = Boolean.valueOf(isSetSentEmailDate()).compareTo(Boolean.valueOf(userAttributes.isSetSentEmailDate()));
        if (compareTo44 != 0) {
            return compareTo44;
        }
        if (isSetSentEmailDate() && (compareTo19 = TBaseHelper.compareTo(this.sentEmailDate, userAttributes.sentEmailDate)) != 0) {
            return compareTo19;
        }
        int compareTo45 = Boolean.valueOf(isSetSentEmailCount()).compareTo(Boolean.valueOf(userAttributes.isSetSentEmailCount()));
        if (compareTo45 != 0) {
            return compareTo45;
        }
        if (isSetSentEmailCount() && (compareTo18 = TBaseHelper.compareTo(this.sentEmailCount, userAttributes.sentEmailCount)) != 0) {
            return compareTo18;
        }
        int compareTo46 = Boolean.valueOf(isSetDailyEmailLimit()).compareTo(Boolean.valueOf(userAttributes.isSetDailyEmailLimit()));
        if (compareTo46 != 0) {
            return compareTo46;
        }
        if (isSetDailyEmailLimit() && (compareTo17 = TBaseHelper.compareTo(this.dailyEmailLimit, userAttributes.dailyEmailLimit)) != 0) {
            return compareTo17;
        }
        int compareTo47 = Boolean.valueOf(isSetEmailOptOutDate()).compareTo(Boolean.valueOf(userAttributes.isSetEmailOptOutDate()));
        if (compareTo47 != 0) {
            return compareTo47;
        }
        if (isSetEmailOptOutDate() && (compareTo16 = TBaseHelper.compareTo(this.emailOptOutDate, userAttributes.emailOptOutDate)) != 0) {
            return compareTo16;
        }
        int compareTo48 = Boolean.valueOf(isSetPartnerEmailOptInDate()).compareTo(Boolean.valueOf(userAttributes.isSetPartnerEmailOptInDate()));
        if (compareTo48 != 0) {
            return compareTo48;
        }
        if (isSetPartnerEmailOptInDate() && (compareTo15 = TBaseHelper.compareTo(this.partnerEmailOptInDate, userAttributes.partnerEmailOptInDate)) != 0) {
            return compareTo15;
        }
        int compareTo49 = Boolean.valueOf(isSetPreferredLanguage()).compareTo(Boolean.valueOf(userAttributes.isSetPreferredLanguage()));
        if (compareTo49 != 0) {
            return compareTo49;
        }
        if (isSetPreferredLanguage() && (compareTo14 = TBaseHelper.compareTo(this.preferredLanguage, userAttributes.preferredLanguage)) != 0) {
            return compareTo14;
        }
        int compareTo50 = Boolean.valueOf(isSetPreferredCountry()).compareTo(Boolean.valueOf(userAttributes.isSetPreferredCountry()));
        if (compareTo50 != 0) {
            return compareTo50;
        }
        if (isSetPreferredCountry() && (compareTo13 = TBaseHelper.compareTo(this.preferredCountry, userAttributes.preferredCountry)) != 0) {
            return compareTo13;
        }
        int compareTo51 = Boolean.valueOf(isSetClipFullPage()).compareTo(Boolean.valueOf(userAttributes.isSetClipFullPage()));
        if (compareTo51 != 0) {
            return compareTo51;
        }
        if (isSetClipFullPage() && (compareTo12 = TBaseHelper.compareTo(this.clipFullPage, userAttributes.clipFullPage)) != 0) {
            return compareTo12;
        }
        int compareTo52 = Boolean.valueOf(isSetTwitterUserName()).compareTo(Boolean.valueOf(userAttributes.isSetTwitterUserName()));
        if (compareTo52 != 0) {
            return compareTo52;
        }
        if (isSetTwitterUserName() && (compareTo11 = TBaseHelper.compareTo(this.twitterUserName, userAttributes.twitterUserName)) != 0) {
            return compareTo11;
        }
        int compareTo53 = Boolean.valueOf(isSetTwitterId()).compareTo(Boolean.valueOf(userAttributes.isSetTwitterId()));
        if (compareTo53 != 0) {
            return compareTo53;
        }
        if (isSetTwitterId() && (compareTo10 = TBaseHelper.compareTo(this.twitterId, userAttributes.twitterId)) != 0) {
            return compareTo10;
        }
        int compareTo54 = Boolean.valueOf(isSetGroupName()).compareTo(Boolean.valueOf(userAttributes.isSetGroupName()));
        if (compareTo54 != 0) {
            return compareTo54;
        }
        if (isSetGroupName() && (compareTo9 = TBaseHelper.compareTo(this.groupName, userAttributes.groupName)) != 0) {
            return compareTo9;
        }
        int compareTo55 = Boolean.valueOf(isSetRecognitionLanguage()).compareTo(Boolean.valueOf(userAttributes.isSetRecognitionLanguage()));
        if (compareTo55 != 0) {
            return compareTo55;
        }
        if (isSetRecognitionLanguage() && (compareTo8 = TBaseHelper.compareTo(this.recognitionLanguage, userAttributes.recognitionLanguage)) != 0) {
            return compareTo8;
        }
        int compareTo56 = Boolean.valueOf(isSetReferralProof()).compareTo(Boolean.valueOf(userAttributes.isSetReferralProof()));
        if (compareTo56 != 0) {
            return compareTo56;
        }
        if (isSetReferralProof() && (compareTo7 = TBaseHelper.compareTo(this.referralProof, userAttributes.referralProof)) != 0) {
            return compareTo7;
        }
        int compareTo57 = Boolean.valueOf(isSetEducationalDiscount()).compareTo(Boolean.valueOf(userAttributes.isSetEducationalDiscount()));
        if (compareTo57 != 0) {
            return compareTo57;
        }
        if (isSetEducationalDiscount() && (compareTo6 = TBaseHelper.compareTo(this.educationalDiscount, userAttributes.educationalDiscount)) != 0) {
            return compareTo6;
        }
        int compareTo58 = Boolean.valueOf(isSetBusinessAddress()).compareTo(Boolean.valueOf(userAttributes.isSetBusinessAddress()));
        if (compareTo58 != 0) {
            return compareTo58;
        }
        if (isSetBusinessAddress() && (compareTo5 = TBaseHelper.compareTo(this.businessAddress, userAttributes.businessAddress)) != 0) {
            return compareTo5;
        }
        int compareTo59 = Boolean.valueOf(isSetHideSponsorBilling()).compareTo(Boolean.valueOf(userAttributes.isSetHideSponsorBilling()));
        if (compareTo59 != 0) {
            return compareTo59;
        }
        if (isSetHideSponsorBilling() && (compareTo4 = TBaseHelper.compareTo(this.hideSponsorBilling, userAttributes.hideSponsorBilling)) != 0) {
            return compareTo4;
        }
        int compareTo60 = Boolean.valueOf(isSetTaxExempt()).compareTo(Boolean.valueOf(userAttributes.isSetTaxExempt()));
        if (compareTo60 != 0) {
            return compareTo60;
        }
        if (isSetTaxExempt() && (compareTo3 = TBaseHelper.compareTo(this.taxExempt, userAttributes.taxExempt)) != 0) {
            return compareTo3;
        }
        int compareTo61 = Boolean.valueOf(isSetUseEmailAutoFiling()).compareTo(Boolean.valueOf(userAttributes.isSetUseEmailAutoFiling()));
        if (compareTo61 != 0) {
            return compareTo61;
        }
        if (isSetUseEmailAutoFiling() && (compareTo2 = TBaseHelper.compareTo(this.useEmailAutoFiling, userAttributes.useEmailAutoFiling)) != 0) {
            return compareTo2;
        }
        int compareTo62 = Boolean.valueOf(isSetReminderEmailConfig()).compareTo(Boolean.valueOf(userAttributes.isSetReminderEmailConfig()));
        if (compareTo62 != 0) {
            return compareTo62;
        }
        if (!isSetReminderEmailConfig() || (compareTo = TBaseHelper.compareTo((Comparable) this.reminderEmailConfig, (Comparable) userAttributes.reminderEmailConfig)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<UserAttributes> deepCopy2() {
        return new UserAttributes(this);
    }

    public UserAttributes(UserAttributes userAttributes) {
        boolean[] zArr = new boolean[16];
        this.__isset_vector = zArr;
        boolean[] zArr2 = userAttributes.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (userAttributes.isSetDefaultLocationName()) {
            this.defaultLocationName = userAttributes.defaultLocationName;
        }
        this.defaultLatitude = userAttributes.defaultLatitude;
        this.defaultLongitude = userAttributes.defaultLongitude;
        this.preactivation = userAttributes.preactivation;
        if (userAttributes.isSetViewedPromotions()) {
            ArrayList arrayList = new ArrayList();
            Iterator<String> it2 = userAttributes.viewedPromotions.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            this.viewedPromotions = arrayList;
        }
        if (userAttributes.isSetIncomingEmailAddress()) {
            this.incomingEmailAddress = userAttributes.incomingEmailAddress;
        }
        if (userAttributes.isSetRecentMailedAddresses()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<String> it3 = userAttributes.recentMailedAddresses.iterator();
            while (it3.hasNext()) {
                arrayList2.add(it3.next());
            }
            this.recentMailedAddresses = arrayList2;
        }
        if (userAttributes.isSetComments()) {
            this.comments = userAttributes.comments;
        }
        this.dateAgreedToTermsOfService = userAttributes.dateAgreedToTermsOfService;
        this.maxReferrals = userAttributes.maxReferrals;
        this.referralCount = userAttributes.referralCount;
        if (userAttributes.isSetRefererCode()) {
            this.refererCode = userAttributes.refererCode;
        }
        this.sentEmailDate = userAttributes.sentEmailDate;
        this.sentEmailCount = userAttributes.sentEmailCount;
        this.dailyEmailLimit = userAttributes.dailyEmailLimit;
        this.emailOptOutDate = userAttributes.emailOptOutDate;
        this.partnerEmailOptInDate = userAttributes.partnerEmailOptInDate;
        if (userAttributes.isSetPreferredLanguage()) {
            this.preferredLanguage = userAttributes.preferredLanguage;
        }
        if (userAttributes.isSetPreferredCountry()) {
            this.preferredCountry = userAttributes.preferredCountry;
        }
        this.clipFullPage = userAttributes.clipFullPage;
        if (userAttributes.isSetTwitterUserName()) {
            this.twitterUserName = userAttributes.twitterUserName;
        }
        if (userAttributes.isSetTwitterId()) {
            this.twitterId = userAttributes.twitterId;
        }
        if (userAttributes.isSetGroupName()) {
            this.groupName = userAttributes.groupName;
        }
        if (userAttributes.isSetRecognitionLanguage()) {
            this.recognitionLanguage = userAttributes.recognitionLanguage;
        }
        if (userAttributes.isSetReferralProof()) {
            this.referralProof = userAttributes.referralProof;
        }
        this.educationalDiscount = userAttributes.educationalDiscount;
        if (userAttributes.isSetBusinessAddress()) {
            this.businessAddress = userAttributes.businessAddress;
        }
        this.hideSponsorBilling = userAttributes.hideSponsorBilling;
        this.taxExempt = userAttributes.taxExempt;
        this.useEmailAutoFiling = userAttributes.useEmailAutoFiling;
        if (userAttributes.isSetReminderEmailConfig()) {
            this.reminderEmailConfig = userAttributes.reminderEmailConfig;
        }
    }

    public boolean equals(UserAttributes userAttributes) {
        if (userAttributes == null) {
            return false;
        }
        boolean isSetDefaultLocationName = isSetDefaultLocationName();
        boolean isSetDefaultLocationName2 = userAttributes.isSetDefaultLocationName();
        if ((isSetDefaultLocationName || isSetDefaultLocationName2) && !(isSetDefaultLocationName && isSetDefaultLocationName2 && this.defaultLocationName.equals(userAttributes.defaultLocationName))) {
            return false;
        }
        boolean isSetDefaultLatitude = isSetDefaultLatitude();
        boolean isSetDefaultLatitude2 = userAttributes.isSetDefaultLatitude();
        if ((isSetDefaultLatitude || isSetDefaultLatitude2) && !(isSetDefaultLatitude && isSetDefaultLatitude2 && this.defaultLatitude == userAttributes.defaultLatitude)) {
            return false;
        }
        boolean isSetDefaultLongitude = isSetDefaultLongitude();
        boolean isSetDefaultLongitude2 = userAttributes.isSetDefaultLongitude();
        if ((isSetDefaultLongitude || isSetDefaultLongitude2) && !(isSetDefaultLongitude && isSetDefaultLongitude2 && this.defaultLongitude == userAttributes.defaultLongitude)) {
            return false;
        }
        boolean isSetPreactivation = isSetPreactivation();
        boolean isSetPreactivation2 = userAttributes.isSetPreactivation();
        if ((isSetPreactivation || isSetPreactivation2) && !(isSetPreactivation && isSetPreactivation2 && this.preactivation == userAttributes.preactivation)) {
            return false;
        }
        boolean isSetViewedPromotions = isSetViewedPromotions();
        boolean isSetViewedPromotions2 = userAttributes.isSetViewedPromotions();
        if ((isSetViewedPromotions || isSetViewedPromotions2) && !(isSetViewedPromotions && isSetViewedPromotions2 && this.viewedPromotions.equals(userAttributes.viewedPromotions))) {
            return false;
        }
        boolean isSetIncomingEmailAddress = isSetIncomingEmailAddress();
        boolean isSetIncomingEmailAddress2 = userAttributes.isSetIncomingEmailAddress();
        if ((isSetIncomingEmailAddress || isSetIncomingEmailAddress2) && !(isSetIncomingEmailAddress && isSetIncomingEmailAddress2 && this.incomingEmailAddress.equals(userAttributes.incomingEmailAddress))) {
            return false;
        }
        boolean isSetRecentMailedAddresses = isSetRecentMailedAddresses();
        boolean isSetRecentMailedAddresses2 = userAttributes.isSetRecentMailedAddresses();
        if ((isSetRecentMailedAddresses || isSetRecentMailedAddresses2) && !(isSetRecentMailedAddresses && isSetRecentMailedAddresses2 && this.recentMailedAddresses.equals(userAttributes.recentMailedAddresses))) {
            return false;
        }
        boolean isSetComments = isSetComments();
        boolean isSetComments2 = userAttributes.isSetComments();
        if ((isSetComments || isSetComments2) && !(isSetComments && isSetComments2 && this.comments.equals(userAttributes.comments))) {
            return false;
        }
        boolean isSetDateAgreedToTermsOfService = isSetDateAgreedToTermsOfService();
        boolean isSetDateAgreedToTermsOfService2 = userAttributes.isSetDateAgreedToTermsOfService();
        if ((isSetDateAgreedToTermsOfService || isSetDateAgreedToTermsOfService2) && !(isSetDateAgreedToTermsOfService && isSetDateAgreedToTermsOfService2 && this.dateAgreedToTermsOfService == userAttributes.dateAgreedToTermsOfService)) {
            return false;
        }
        boolean isSetMaxReferrals = isSetMaxReferrals();
        boolean isSetMaxReferrals2 = userAttributes.isSetMaxReferrals();
        if ((isSetMaxReferrals || isSetMaxReferrals2) && !(isSetMaxReferrals && isSetMaxReferrals2 && this.maxReferrals == userAttributes.maxReferrals)) {
            return false;
        }
        boolean isSetReferralCount = isSetReferralCount();
        boolean isSetReferralCount2 = userAttributes.isSetReferralCount();
        if ((isSetReferralCount || isSetReferralCount2) && !(isSetReferralCount && isSetReferralCount2 && this.referralCount == userAttributes.referralCount)) {
            return false;
        }
        boolean isSetRefererCode = isSetRefererCode();
        boolean isSetRefererCode2 = userAttributes.isSetRefererCode();
        if ((isSetRefererCode || isSetRefererCode2) && !(isSetRefererCode && isSetRefererCode2 && this.refererCode.equals(userAttributes.refererCode))) {
            return false;
        }
        boolean isSetSentEmailDate = isSetSentEmailDate();
        boolean isSetSentEmailDate2 = userAttributes.isSetSentEmailDate();
        if ((isSetSentEmailDate || isSetSentEmailDate2) && !(isSetSentEmailDate && isSetSentEmailDate2 && this.sentEmailDate == userAttributes.sentEmailDate)) {
            return false;
        }
        boolean isSetSentEmailCount = isSetSentEmailCount();
        boolean isSetSentEmailCount2 = userAttributes.isSetSentEmailCount();
        if ((isSetSentEmailCount || isSetSentEmailCount2) && !(isSetSentEmailCount && isSetSentEmailCount2 && this.sentEmailCount == userAttributes.sentEmailCount)) {
            return false;
        }
        boolean isSetDailyEmailLimit = isSetDailyEmailLimit();
        boolean isSetDailyEmailLimit2 = userAttributes.isSetDailyEmailLimit();
        if ((isSetDailyEmailLimit || isSetDailyEmailLimit2) && !(isSetDailyEmailLimit && isSetDailyEmailLimit2 && this.dailyEmailLimit == userAttributes.dailyEmailLimit)) {
            return false;
        }
        boolean isSetEmailOptOutDate = isSetEmailOptOutDate();
        boolean isSetEmailOptOutDate2 = userAttributes.isSetEmailOptOutDate();
        if ((isSetEmailOptOutDate || isSetEmailOptOutDate2) && !(isSetEmailOptOutDate && isSetEmailOptOutDate2 && this.emailOptOutDate == userAttributes.emailOptOutDate)) {
            return false;
        }
        boolean isSetPartnerEmailOptInDate = isSetPartnerEmailOptInDate();
        boolean isSetPartnerEmailOptInDate2 = userAttributes.isSetPartnerEmailOptInDate();
        if ((isSetPartnerEmailOptInDate || isSetPartnerEmailOptInDate2) && !(isSetPartnerEmailOptInDate && isSetPartnerEmailOptInDate2 && this.partnerEmailOptInDate == userAttributes.partnerEmailOptInDate)) {
            return false;
        }
        boolean isSetPreferredLanguage = isSetPreferredLanguage();
        boolean isSetPreferredLanguage2 = userAttributes.isSetPreferredLanguage();
        if ((isSetPreferredLanguage || isSetPreferredLanguage2) && !(isSetPreferredLanguage && isSetPreferredLanguage2 && this.preferredLanguage.equals(userAttributes.preferredLanguage))) {
            return false;
        }
        boolean isSetPreferredCountry = isSetPreferredCountry();
        boolean isSetPreferredCountry2 = userAttributes.isSetPreferredCountry();
        if ((isSetPreferredCountry || isSetPreferredCountry2) && !(isSetPreferredCountry && isSetPreferredCountry2 && this.preferredCountry.equals(userAttributes.preferredCountry))) {
            return false;
        }
        boolean isSetClipFullPage = isSetClipFullPage();
        boolean isSetClipFullPage2 = userAttributes.isSetClipFullPage();
        if ((isSetClipFullPage || isSetClipFullPage2) && !(isSetClipFullPage && isSetClipFullPage2 && this.clipFullPage == userAttributes.clipFullPage)) {
            return false;
        }
        boolean isSetTwitterUserName = isSetTwitterUserName();
        boolean isSetTwitterUserName2 = userAttributes.isSetTwitterUserName();
        if ((isSetTwitterUserName || isSetTwitterUserName2) && !(isSetTwitterUserName && isSetTwitterUserName2 && this.twitterUserName.equals(userAttributes.twitterUserName))) {
            return false;
        }
        boolean isSetTwitterId = isSetTwitterId();
        boolean isSetTwitterId2 = userAttributes.isSetTwitterId();
        if ((isSetTwitterId || isSetTwitterId2) && !(isSetTwitterId && isSetTwitterId2 && this.twitterId.equals(userAttributes.twitterId))) {
            return false;
        }
        boolean isSetGroupName = isSetGroupName();
        boolean isSetGroupName2 = userAttributes.isSetGroupName();
        if ((isSetGroupName || isSetGroupName2) && !(isSetGroupName && isSetGroupName2 && this.groupName.equals(userAttributes.groupName))) {
            return false;
        }
        boolean isSetRecognitionLanguage = isSetRecognitionLanguage();
        boolean isSetRecognitionLanguage2 = userAttributes.isSetRecognitionLanguage();
        if ((isSetRecognitionLanguage || isSetRecognitionLanguage2) && !(isSetRecognitionLanguage && isSetRecognitionLanguage2 && this.recognitionLanguage.equals(userAttributes.recognitionLanguage))) {
            return false;
        }
        boolean isSetReferralProof = isSetReferralProof();
        boolean isSetReferralProof2 = userAttributes.isSetReferralProof();
        if ((isSetReferralProof || isSetReferralProof2) && !(isSetReferralProof && isSetReferralProof2 && this.referralProof.equals(userAttributes.referralProof))) {
            return false;
        }
        boolean isSetEducationalDiscount = isSetEducationalDiscount();
        boolean isSetEducationalDiscount2 = userAttributes.isSetEducationalDiscount();
        if ((isSetEducationalDiscount || isSetEducationalDiscount2) && !(isSetEducationalDiscount && isSetEducationalDiscount2 && this.educationalDiscount == userAttributes.educationalDiscount)) {
            return false;
        }
        boolean isSetBusinessAddress = isSetBusinessAddress();
        boolean isSetBusinessAddress2 = userAttributes.isSetBusinessAddress();
        if ((isSetBusinessAddress || isSetBusinessAddress2) && !(isSetBusinessAddress && isSetBusinessAddress2 && this.businessAddress.equals(userAttributes.businessAddress))) {
            return false;
        }
        boolean isSetHideSponsorBilling = isSetHideSponsorBilling();
        boolean isSetHideSponsorBilling2 = userAttributes.isSetHideSponsorBilling();
        if ((isSetHideSponsorBilling || isSetHideSponsorBilling2) && !(isSetHideSponsorBilling && isSetHideSponsorBilling2 && this.hideSponsorBilling == userAttributes.hideSponsorBilling)) {
            return false;
        }
        boolean isSetTaxExempt = isSetTaxExempt();
        boolean isSetTaxExempt2 = userAttributes.isSetTaxExempt();
        if ((isSetTaxExempt || isSetTaxExempt2) && !(isSetTaxExempt && isSetTaxExempt2 && this.taxExempt == userAttributes.taxExempt)) {
            return false;
        }
        boolean isSetUseEmailAutoFiling = isSetUseEmailAutoFiling();
        boolean isSetUseEmailAutoFiling2 = userAttributes.isSetUseEmailAutoFiling();
        if ((isSetUseEmailAutoFiling || isSetUseEmailAutoFiling2) && !(isSetUseEmailAutoFiling && isSetUseEmailAutoFiling2 && this.useEmailAutoFiling == userAttributes.useEmailAutoFiling)) {
            return false;
        }
        boolean isSetReminderEmailConfig = isSetReminderEmailConfig();
        boolean isSetReminderEmailConfig2 = userAttributes.isSetReminderEmailConfig();
        if (isSetReminderEmailConfig || isSetReminderEmailConfig2) {
            return isSetReminderEmailConfig && isSetReminderEmailConfig2 && this.reminderEmailConfig.equals(userAttributes.reminderEmailConfig);
        }
        return true;
    }
}

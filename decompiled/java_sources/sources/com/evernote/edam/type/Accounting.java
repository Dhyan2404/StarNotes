package com.evernote.edam.type;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class Accounting implements TBase<Accounting>, Serializable, Cloneable {
    private static final int __BUSINESSID_ISSET_ID = 11;
    private static final int __LASTFAILEDCHARGE_ISSET_ID = 5;
    private static final int __LASTREQUESTEDCHARGE_ISSET_ID = 9;
    private static final int __LASTSUCCESSFULCHARGE_ISSET_ID = 4;
    private static final int __NEXTCHARGEDATE_ISSET_ID = 13;
    private static final int __NEXTPAYMENTDUE_ISSET_ID = 6;
    private static final int __PREMIUMLOCKUNTIL_ISSET_ID = 7;
    private static final int __PREMIUMSERVICESTART_ISSET_ID = 3;
    private static final int __UNITDISCOUNT_ISSET_ID = 12;
    private static final int __UNITPRICE_ISSET_ID = 10;
    private static final int __UPDATED_ISSET_ID = 8;
    private static final int __UPLOADLIMITEND_ISSET_ID = 1;
    private static final int __UPLOADLIMITNEXTMONTH_ISSET_ID = 2;
    private static final int __UPLOADLIMIT_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private int businessId;
    private String businessName;
    private BusinessUserRole businessRole;
    private String currency;
    private long lastFailedCharge;
    private String lastFailedChargeReason;
    private long lastRequestedCharge;
    private long lastSuccessfulCharge;
    private long nextChargeDate;
    private long nextPaymentDue;
    private String premiumCommerceService;
    private long premiumLockUntil;
    private String premiumOrderNumber;
    private String premiumServiceSKU;
    private long premiumServiceStart;
    private PremiumOrderStatus premiumServiceStatus;
    private String premiumSubscriptionNumber;
    private int unitDiscount;
    private int unitPrice;
    private long updated;
    private long uploadLimit;
    private long uploadLimitEnd;
    private long uploadLimitNextMonth;
    private static final TStruct STRUCT_DESC = new TStruct("Accounting");
    private static final TField UPLOAD_LIMIT_FIELD_DESC = new TField("uploadLimit", (byte) 10, 1);
    private static final TField UPLOAD_LIMIT_END_FIELD_DESC = new TField("uploadLimitEnd", (byte) 10, 2);
    private static final TField UPLOAD_LIMIT_NEXT_MONTH_FIELD_DESC = new TField("uploadLimitNextMonth", (byte) 10, 3);
    private static final TField PREMIUM_SERVICE_STATUS_FIELD_DESC = new TField("premiumServiceStatus", (byte) 8, 4);
    private static final TField PREMIUM_ORDER_NUMBER_FIELD_DESC = new TField("premiumOrderNumber", (byte) 11, 5);
    private static final TField PREMIUM_COMMERCE_SERVICE_FIELD_DESC = new TField("premiumCommerceService", (byte) 11, 6);
    private static final TField PREMIUM_SERVICE_START_FIELD_DESC = new TField("premiumServiceStart", (byte) 10, 7);
    private static final TField PREMIUM_SERVICE_SKU_FIELD_DESC = new TField("premiumServiceSKU", (byte) 11, 8);
    private static final TField LAST_SUCCESSFUL_CHARGE_FIELD_DESC = new TField("lastSuccessfulCharge", (byte) 10, 9);
    private static final TField LAST_FAILED_CHARGE_FIELD_DESC = new TField("lastFailedCharge", (byte) 10, 10);
    private static final TField LAST_FAILED_CHARGE_REASON_FIELD_DESC = new TField("lastFailedChargeReason", (byte) 11, 11);
    private static final TField NEXT_PAYMENT_DUE_FIELD_DESC = new TField("nextPaymentDue", (byte) 10, 12);
    private static final TField PREMIUM_LOCK_UNTIL_FIELD_DESC = new TField("premiumLockUntil", (byte) 10, 13);
    private static final TField UPDATED_FIELD_DESC = new TField("updated", (byte) 10, 14);
    private static final TField PREMIUM_SUBSCRIPTION_NUMBER_FIELD_DESC = new TField("premiumSubscriptionNumber", (byte) 11, 16);
    private static final TField LAST_REQUESTED_CHARGE_FIELD_DESC = new TField("lastRequestedCharge", (byte) 10, 17);
    private static final TField CURRENCY_FIELD_DESC = new TField(FirebaseAnalytics.Param.CURRENCY, (byte) 11, 18);
    private static final TField UNIT_PRICE_FIELD_DESC = new TField("unitPrice", (byte) 8, 19);
    private static final TField BUSINESS_ID_FIELD_DESC = new TField("businessId", (byte) 8, 20);
    private static final TField BUSINESS_NAME_FIELD_DESC = new TField("businessName", (byte) 11, 21);
    private static final TField BUSINESS_ROLE_FIELD_DESC = new TField("businessRole", (byte) 8, 22);
    private static final TField UNIT_DISCOUNT_FIELD_DESC = new TField("unitDiscount", (byte) 8, 23);
    private static final TField NEXT_CHARGE_DATE_FIELD_DESC = new TField("nextChargeDate", (byte) 10, 24);

    public Accounting() {
        this.__isset_vector = new boolean[14];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setUploadLimitIsSet(false);
        this.uploadLimit = 0L;
        setUploadLimitEndIsSet(false);
        this.uploadLimitEnd = 0L;
        setUploadLimitNextMonthIsSet(false);
        this.uploadLimitNextMonth = 0L;
        this.premiumServiceStatus = null;
        this.premiumOrderNumber = null;
        this.premiumCommerceService = null;
        setPremiumServiceStartIsSet(false);
        this.premiumServiceStart = 0L;
        this.premiumServiceSKU = null;
        setLastSuccessfulChargeIsSet(false);
        this.lastSuccessfulCharge = 0L;
        setLastFailedChargeIsSet(false);
        this.lastFailedCharge = 0L;
        this.lastFailedChargeReason = null;
        setNextPaymentDueIsSet(false);
        this.nextPaymentDue = 0L;
        setPremiumLockUntilIsSet(false);
        this.premiumLockUntil = 0L;
        setUpdatedIsSet(false);
        this.updated = 0L;
        this.premiumSubscriptionNumber = null;
        setLastRequestedChargeIsSet(false);
        this.lastRequestedCharge = 0L;
        this.currency = null;
        setUnitPriceIsSet(false);
        this.unitPrice = 0;
        setBusinessIdIsSet(false);
        this.businessId = 0;
        this.businessName = null;
        this.businessRole = null;
        setUnitDiscountIsSet(false);
        this.unitDiscount = 0;
        setNextChargeDateIsSet(false);
        this.nextChargeDate = 0L;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Accounting)) {
            return equals((Accounting) obj);
        }
        return false;
    }

    public int getBusinessId() {
        return this.businessId;
    }

    public String getBusinessName() {
        return this.businessName;
    }

    public BusinessUserRole getBusinessRole() {
        return this.businessRole;
    }

    public String getCurrency() {
        return this.currency;
    }

    public long getLastFailedCharge() {
        return this.lastFailedCharge;
    }

    public String getLastFailedChargeReason() {
        return this.lastFailedChargeReason;
    }

    public long getLastRequestedCharge() {
        return this.lastRequestedCharge;
    }

    public long getLastSuccessfulCharge() {
        return this.lastSuccessfulCharge;
    }

    public long getNextChargeDate() {
        return this.nextChargeDate;
    }

    public long getNextPaymentDue() {
        return this.nextPaymentDue;
    }

    public String getPremiumCommerceService() {
        return this.premiumCommerceService;
    }

    public long getPremiumLockUntil() {
        return this.premiumLockUntil;
    }

    public String getPremiumOrderNumber() {
        return this.premiumOrderNumber;
    }

    public String getPremiumServiceSKU() {
        return this.premiumServiceSKU;
    }

    public long getPremiumServiceStart() {
        return this.premiumServiceStart;
    }

    public PremiumOrderStatus getPremiumServiceStatus() {
        return this.premiumServiceStatus;
    }

    public String getPremiumSubscriptionNumber() {
        return this.premiumSubscriptionNumber;
    }

    public int getUnitDiscount() {
        return this.unitDiscount;
    }

    public int getUnitPrice() {
        return this.unitPrice;
    }

    public long getUpdated() {
        return this.updated;
    }

    public long getUploadLimit() {
        return this.uploadLimit;
    }

    public long getUploadLimitEnd() {
        return this.uploadLimitEnd;
    }

    public long getUploadLimitNextMonth() {
        return this.uploadLimitNextMonth;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetBusinessId() {
        return this.__isset_vector[11];
    }

    public boolean isSetBusinessName() {
        return this.businessName != null;
    }

    public boolean isSetBusinessRole() {
        return this.businessRole != null;
    }

    public boolean isSetCurrency() {
        return this.currency != null;
    }

    public boolean isSetLastFailedCharge() {
        return this.__isset_vector[5];
    }

    public boolean isSetLastFailedChargeReason() {
        return this.lastFailedChargeReason != null;
    }

    public boolean isSetLastRequestedCharge() {
        return this.__isset_vector[9];
    }

    public boolean isSetLastSuccessfulCharge() {
        return this.__isset_vector[4];
    }

    public boolean isSetNextChargeDate() {
        return this.__isset_vector[13];
    }

    public boolean isSetNextPaymentDue() {
        return this.__isset_vector[6];
    }

    public boolean isSetPremiumCommerceService() {
        return this.premiumCommerceService != null;
    }

    public boolean isSetPremiumLockUntil() {
        return this.__isset_vector[7];
    }

    public boolean isSetPremiumOrderNumber() {
        return this.premiumOrderNumber != null;
    }

    public boolean isSetPremiumServiceSKU() {
        return this.premiumServiceSKU != null;
    }

    public boolean isSetPremiumServiceStart() {
        return this.__isset_vector[3];
    }

    public boolean isSetPremiumServiceStatus() {
        return this.premiumServiceStatus != null;
    }

    public boolean isSetPremiumSubscriptionNumber() {
        return this.premiumSubscriptionNumber != null;
    }

    public boolean isSetUnitDiscount() {
        return this.__isset_vector[12];
    }

    public boolean isSetUnitPrice() {
        return this.__isset_vector[10];
    }

    public boolean isSetUpdated() {
        return this.__isset_vector[8];
    }

    public boolean isSetUploadLimit() {
        return this.__isset_vector[0];
    }

    public boolean isSetUploadLimitEnd() {
        return this.__isset_vector[1];
    }

    public boolean isSetUploadLimitNextMonth() {
        return this.__isset_vector[2];
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
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.uploadLimit = tProtocol.readI64();
                        setUploadLimitIsSet(true);
                        break;
                    }
                case 2:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.uploadLimitEnd = tProtocol.readI64();
                        setUploadLimitEndIsSet(true);
                        break;
                    }
                case 3:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.uploadLimitNextMonth = tProtocol.readI64();
                        setUploadLimitNextMonthIsSet(true);
                        break;
                    }
                case 4:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumServiceStatus = PremiumOrderStatus.findByValue(tProtocol.readI32());
                        break;
                    }
                case 5:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumOrderNumber = tProtocol.readString();
                        break;
                    }
                case 6:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumCommerceService = tProtocol.readString();
                        break;
                    }
                case 7:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumServiceStart = tProtocol.readI64();
                        setPremiumServiceStartIsSet(true);
                        break;
                    }
                case 8:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumServiceSKU = tProtocol.readString();
                        break;
                    }
                case 9:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.lastSuccessfulCharge = tProtocol.readI64();
                        setLastSuccessfulChargeIsSet(true);
                        break;
                    }
                case 10:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.lastFailedCharge = tProtocol.readI64();
                        setLastFailedChargeIsSet(true);
                        break;
                    }
                case 11:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.lastFailedChargeReason = tProtocol.readString();
                        break;
                    }
                case 12:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.nextPaymentDue = tProtocol.readI64();
                        setNextPaymentDueIsSet(true);
                        break;
                    }
                case 13:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumLockUntil = tProtocol.readI64();
                        setPremiumLockUntilIsSet(true);
                        break;
                    }
                case 14:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.updated = tProtocol.readI64();
                        setUpdatedIsSet(true);
                        break;
                    }
                case 15:
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
                case 16:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumSubscriptionNumber = tProtocol.readString();
                        break;
                    }
                case 17:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.lastRequestedCharge = tProtocol.readI64();
                        setLastRequestedChargeIsSet(true);
                        break;
                    }
                case 18:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.currency = tProtocol.readString();
                        break;
                    }
                case 19:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.unitPrice = tProtocol.readI32();
                        setUnitPriceIsSet(true);
                        break;
                    }
                case 20:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.businessId = tProtocol.readI32();
                        setBusinessIdIsSet(true);
                        break;
                    }
                case 21:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.businessName = tProtocol.readString();
                        break;
                    }
                case 22:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.businessRole = BusinessUserRole.findByValue(tProtocol.readI32());
                        break;
                    }
                case 23:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.unitDiscount = tProtocol.readI32();
                        setUnitDiscountIsSet(true);
                        break;
                    }
                case 24:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.nextChargeDate = tProtocol.readI64();
                        setNextChargeDateIsSet(true);
                        break;
                    }
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setBusinessId(int i) {
        this.businessId = i;
        setBusinessIdIsSet(true);
    }

    public void setBusinessIdIsSet(boolean z) {
        this.__isset_vector[11] = z;
    }

    public void setBusinessName(String str) {
        this.businessName = str;
    }

    public void setBusinessNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.businessName = null;
    }

    public void setBusinessRole(BusinessUserRole businessUserRole) {
        this.businessRole = businessUserRole;
    }

    public void setBusinessRoleIsSet(boolean z) {
        if (z) {
            return;
        }
        this.businessRole = null;
    }

    public void setCurrency(String str) {
        this.currency = str;
    }

    public void setCurrencyIsSet(boolean z) {
        if (z) {
            return;
        }
        this.currency = null;
    }

    public void setLastFailedCharge(long j) {
        this.lastFailedCharge = j;
        setLastFailedChargeIsSet(true);
    }

    public void setLastFailedChargeIsSet(boolean z) {
        this.__isset_vector[5] = z;
    }

    public void setLastFailedChargeReason(String str) {
        this.lastFailedChargeReason = str;
    }

    public void setLastFailedChargeReasonIsSet(boolean z) {
        if (z) {
            return;
        }
        this.lastFailedChargeReason = null;
    }

    public void setLastRequestedCharge(long j) {
        this.lastRequestedCharge = j;
        setLastRequestedChargeIsSet(true);
    }

    public void setLastRequestedChargeIsSet(boolean z) {
        this.__isset_vector[9] = z;
    }

    public void setLastSuccessfulCharge(long j) {
        this.lastSuccessfulCharge = j;
        setLastSuccessfulChargeIsSet(true);
    }

    public void setLastSuccessfulChargeIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setNextChargeDate(long j) {
        this.nextChargeDate = j;
        setNextChargeDateIsSet(true);
    }

    public void setNextChargeDateIsSet(boolean z) {
        this.__isset_vector[13] = z;
    }

    public void setNextPaymentDue(long j) {
        this.nextPaymentDue = j;
        setNextPaymentDueIsSet(true);
    }

    public void setNextPaymentDueIsSet(boolean z) {
        this.__isset_vector[6] = z;
    }

    public void setPremiumCommerceService(String str) {
        this.premiumCommerceService = str;
    }

    public void setPremiumCommerceServiceIsSet(boolean z) {
        if (z) {
            return;
        }
        this.premiumCommerceService = null;
    }

    public void setPremiumLockUntil(long j) {
        this.premiumLockUntil = j;
        setPremiumLockUntilIsSet(true);
    }

    public void setPremiumLockUntilIsSet(boolean z) {
        this.__isset_vector[7] = z;
    }

    public void setPremiumOrderNumber(String str) {
        this.premiumOrderNumber = str;
    }

    public void setPremiumOrderNumberIsSet(boolean z) {
        if (z) {
            return;
        }
        this.premiumOrderNumber = null;
    }

    public void setPremiumServiceSKU(String str) {
        this.premiumServiceSKU = str;
    }

    public void setPremiumServiceSKUIsSet(boolean z) {
        if (z) {
            return;
        }
        this.premiumServiceSKU = null;
    }

    public void setPremiumServiceStart(long j) {
        this.premiumServiceStart = j;
        setPremiumServiceStartIsSet(true);
    }

    public void setPremiumServiceStartIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public void setPremiumServiceStatus(PremiumOrderStatus premiumOrderStatus) {
        this.premiumServiceStatus = premiumOrderStatus;
    }

    public void setPremiumServiceStatusIsSet(boolean z) {
        if (z) {
            return;
        }
        this.premiumServiceStatus = null;
    }

    public void setPremiumSubscriptionNumber(String str) {
        this.premiumSubscriptionNumber = str;
    }

    public void setPremiumSubscriptionNumberIsSet(boolean z) {
        if (z) {
            return;
        }
        this.premiumSubscriptionNumber = null;
    }

    public void setUnitDiscount(int i) {
        this.unitDiscount = i;
        setUnitDiscountIsSet(true);
    }

    public void setUnitDiscountIsSet(boolean z) {
        this.__isset_vector[12] = z;
    }

    public void setUnitPrice(int i) {
        this.unitPrice = i;
        setUnitPriceIsSet(true);
    }

    public void setUnitPriceIsSet(boolean z) {
        this.__isset_vector[10] = z;
    }

    public void setUpdated(long j) {
        this.updated = j;
        setUpdatedIsSet(true);
    }

    public void setUpdatedIsSet(boolean z) {
        this.__isset_vector[8] = z;
    }

    public void setUploadLimit(long j) {
        this.uploadLimit = j;
        setUploadLimitIsSet(true);
    }

    public void setUploadLimitEnd(long j) {
        this.uploadLimitEnd = j;
        setUploadLimitEndIsSet(true);
    }

    public void setUploadLimitEndIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setUploadLimitIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setUploadLimitNextMonth(long j) {
        this.uploadLimitNextMonth = j;
        setUploadLimitNextMonthIsSet(true);
    }

    public void setUploadLimitNextMonthIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("Accounting(");
        boolean z2 = false;
        if (isSetUploadLimit()) {
            sb.append("uploadLimit:");
            sb.append(this.uploadLimit);
            z = false;
        } else {
            z = true;
        }
        if (isSetUploadLimitEnd()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("uploadLimitEnd:");
            sb.append(this.uploadLimitEnd);
            z = false;
        }
        if (isSetUploadLimitNextMonth()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("uploadLimitNextMonth:");
            sb.append(this.uploadLimitNextMonth);
            z = false;
        }
        if (isSetPremiumServiceStatus()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("premiumServiceStatus:");
            PremiumOrderStatus premiumOrderStatus = this.premiumServiceStatus;
            if (premiumOrderStatus == null) {
                sb.append("null");
            } else {
                sb.append(premiumOrderStatus);
            }
            z = false;
        }
        if (isSetPremiumOrderNumber()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("premiumOrderNumber:");
            String str = this.premiumOrderNumber;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        }
        if (isSetPremiumCommerceService()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("premiumCommerceService:");
            String str2 = this.premiumCommerceService;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (isSetPremiumServiceStart()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("premiumServiceStart:");
            sb.append(this.premiumServiceStart);
            z = false;
        }
        if (isSetPremiumServiceSKU()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("premiumServiceSKU:");
            String str3 = this.premiumServiceSKU;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetLastSuccessfulCharge()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("lastSuccessfulCharge:");
            sb.append(this.lastSuccessfulCharge);
            z = false;
        }
        if (isSetLastFailedCharge()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("lastFailedCharge:");
            sb.append(this.lastFailedCharge);
            z = false;
        }
        if (isSetLastFailedChargeReason()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("lastFailedChargeReason:");
            String str4 = this.lastFailedChargeReason;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
            z = false;
        }
        if (isSetNextPaymentDue()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("nextPaymentDue:");
            sb.append(this.nextPaymentDue);
            z = false;
        }
        if (isSetPremiumLockUntil()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("premiumLockUntil:");
            sb.append(this.premiumLockUntil);
            z = false;
        }
        if (isSetUpdated()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("updated:");
            sb.append(this.updated);
            z = false;
        }
        if (isSetPremiumSubscriptionNumber()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("premiumSubscriptionNumber:");
            String str5 = this.premiumSubscriptionNumber;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
            z = false;
        }
        if (isSetLastRequestedCharge()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("lastRequestedCharge:");
            sb.append(this.lastRequestedCharge);
            z = false;
        }
        if (isSetCurrency()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("currency:");
            String str6 = this.currency;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
            z = false;
        }
        if (isSetUnitPrice()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("unitPrice:");
            sb.append(this.unitPrice);
            z = false;
        }
        if (isSetBusinessId()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("businessId:");
            sb.append(this.businessId);
            z = false;
        }
        if (isSetBusinessName()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("businessName:");
            String str7 = this.businessName;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
            z = false;
        }
        if (isSetBusinessRole()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("businessRole:");
            BusinessUserRole businessUserRole = this.businessRole;
            if (businessUserRole == null) {
                sb.append("null");
            } else {
                sb.append(businessUserRole);
            }
            z = false;
        }
        if (isSetUnitDiscount()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("unitDiscount:");
            sb.append(this.unitDiscount);
        } else {
            z2 = z;
        }
        if (isSetNextChargeDate()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("nextChargeDate:");
            sb.append(this.nextChargeDate);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetBusinessId() {
        this.__isset_vector[11] = false;
    }

    public void unsetBusinessName() {
        this.businessName = null;
    }

    public void unsetBusinessRole() {
        this.businessRole = null;
    }

    public void unsetCurrency() {
        this.currency = null;
    }

    public void unsetLastFailedCharge() {
        this.__isset_vector[5] = false;
    }

    public void unsetLastFailedChargeReason() {
        this.lastFailedChargeReason = null;
    }

    public void unsetLastRequestedCharge() {
        this.__isset_vector[9] = false;
    }

    public void unsetLastSuccessfulCharge() {
        this.__isset_vector[4] = false;
    }

    public void unsetNextChargeDate() {
        this.__isset_vector[13] = false;
    }

    public void unsetNextPaymentDue() {
        this.__isset_vector[6] = false;
    }

    public void unsetPremiumCommerceService() {
        this.premiumCommerceService = null;
    }

    public void unsetPremiumLockUntil() {
        this.__isset_vector[7] = false;
    }

    public void unsetPremiumOrderNumber() {
        this.premiumOrderNumber = null;
    }

    public void unsetPremiumServiceSKU() {
        this.premiumServiceSKU = null;
    }

    public void unsetPremiumServiceStart() {
        this.__isset_vector[3] = false;
    }

    public void unsetPremiumServiceStatus() {
        this.premiumServiceStatus = null;
    }

    public void unsetPremiumSubscriptionNumber() {
        this.premiumSubscriptionNumber = null;
    }

    public void unsetUnitDiscount() {
        this.__isset_vector[12] = false;
    }

    public void unsetUnitPrice() {
        this.__isset_vector[10] = false;
    }

    public void unsetUpdated() {
        this.__isset_vector[8] = false;
    }

    public void unsetUploadLimit() {
        this.__isset_vector[0] = false;
    }

    public void unsetUploadLimitEnd() {
        this.__isset_vector[1] = false;
    }

    public void unsetUploadLimitNextMonth() {
        this.__isset_vector[2] = false;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (isSetUploadLimit()) {
            tProtocol.writeFieldBegin(UPLOAD_LIMIT_FIELD_DESC);
            tProtocol.writeI64(this.uploadLimit);
            tProtocol.writeFieldEnd();
        }
        if (isSetUploadLimitEnd()) {
            tProtocol.writeFieldBegin(UPLOAD_LIMIT_END_FIELD_DESC);
            tProtocol.writeI64(this.uploadLimitEnd);
            tProtocol.writeFieldEnd();
        }
        if (isSetUploadLimitNextMonth()) {
            tProtocol.writeFieldBegin(UPLOAD_LIMIT_NEXT_MONTH_FIELD_DESC);
            tProtocol.writeI64(this.uploadLimitNextMonth);
            tProtocol.writeFieldEnd();
        }
        if (this.premiumServiceStatus != null && isSetPremiumServiceStatus()) {
            tProtocol.writeFieldBegin(PREMIUM_SERVICE_STATUS_FIELD_DESC);
            tProtocol.writeI32(this.premiumServiceStatus.getValue());
            tProtocol.writeFieldEnd();
        }
        if (this.premiumOrderNumber != null && isSetPremiumOrderNumber()) {
            tProtocol.writeFieldBegin(PREMIUM_ORDER_NUMBER_FIELD_DESC);
            tProtocol.writeString(this.premiumOrderNumber);
            tProtocol.writeFieldEnd();
        }
        if (this.premiumCommerceService != null && isSetPremiumCommerceService()) {
            tProtocol.writeFieldBegin(PREMIUM_COMMERCE_SERVICE_FIELD_DESC);
            tProtocol.writeString(this.premiumCommerceService);
            tProtocol.writeFieldEnd();
        }
        if (isSetPremiumServiceStart()) {
            tProtocol.writeFieldBegin(PREMIUM_SERVICE_START_FIELD_DESC);
            tProtocol.writeI64(this.premiumServiceStart);
            tProtocol.writeFieldEnd();
        }
        if (this.premiumServiceSKU != null && isSetPremiumServiceSKU()) {
            tProtocol.writeFieldBegin(PREMIUM_SERVICE_SKU_FIELD_DESC);
            tProtocol.writeString(this.premiumServiceSKU);
            tProtocol.writeFieldEnd();
        }
        if (isSetLastSuccessfulCharge()) {
            tProtocol.writeFieldBegin(LAST_SUCCESSFUL_CHARGE_FIELD_DESC);
            tProtocol.writeI64(this.lastSuccessfulCharge);
            tProtocol.writeFieldEnd();
        }
        if (isSetLastFailedCharge()) {
            tProtocol.writeFieldBegin(LAST_FAILED_CHARGE_FIELD_DESC);
            tProtocol.writeI64(this.lastFailedCharge);
            tProtocol.writeFieldEnd();
        }
        if (this.lastFailedChargeReason != null && isSetLastFailedChargeReason()) {
            tProtocol.writeFieldBegin(LAST_FAILED_CHARGE_REASON_FIELD_DESC);
            tProtocol.writeString(this.lastFailedChargeReason);
            tProtocol.writeFieldEnd();
        }
        if (isSetNextPaymentDue()) {
            tProtocol.writeFieldBegin(NEXT_PAYMENT_DUE_FIELD_DESC);
            tProtocol.writeI64(this.nextPaymentDue);
            tProtocol.writeFieldEnd();
        }
        if (isSetPremiumLockUntil()) {
            tProtocol.writeFieldBegin(PREMIUM_LOCK_UNTIL_FIELD_DESC);
            tProtocol.writeI64(this.premiumLockUntil);
            tProtocol.writeFieldEnd();
        }
        if (isSetUpdated()) {
            tProtocol.writeFieldBegin(UPDATED_FIELD_DESC);
            tProtocol.writeI64(this.updated);
            tProtocol.writeFieldEnd();
        }
        if (this.premiumSubscriptionNumber != null && isSetPremiumSubscriptionNumber()) {
            tProtocol.writeFieldBegin(PREMIUM_SUBSCRIPTION_NUMBER_FIELD_DESC);
            tProtocol.writeString(this.premiumSubscriptionNumber);
            tProtocol.writeFieldEnd();
        }
        if (isSetLastRequestedCharge()) {
            tProtocol.writeFieldBegin(LAST_REQUESTED_CHARGE_FIELD_DESC);
            tProtocol.writeI64(this.lastRequestedCharge);
            tProtocol.writeFieldEnd();
        }
        if (this.currency != null && isSetCurrency()) {
            tProtocol.writeFieldBegin(CURRENCY_FIELD_DESC);
            tProtocol.writeString(this.currency);
            tProtocol.writeFieldEnd();
        }
        if (isSetUnitPrice()) {
            tProtocol.writeFieldBegin(UNIT_PRICE_FIELD_DESC);
            tProtocol.writeI32(this.unitPrice);
            tProtocol.writeFieldEnd();
        }
        if (isSetBusinessId()) {
            tProtocol.writeFieldBegin(BUSINESS_ID_FIELD_DESC);
            tProtocol.writeI32(this.businessId);
            tProtocol.writeFieldEnd();
        }
        if (this.businessName != null && isSetBusinessName()) {
            tProtocol.writeFieldBegin(BUSINESS_NAME_FIELD_DESC);
            tProtocol.writeString(this.businessName);
            tProtocol.writeFieldEnd();
        }
        if (this.businessRole != null && isSetBusinessRole()) {
            tProtocol.writeFieldBegin(BUSINESS_ROLE_FIELD_DESC);
            tProtocol.writeI32(this.businessRole.getValue());
            tProtocol.writeFieldEnd();
        }
        if (isSetUnitDiscount()) {
            tProtocol.writeFieldBegin(UNIT_DISCOUNT_FIELD_DESC);
            tProtocol.writeI32(this.unitDiscount);
            tProtocol.writeFieldEnd();
        }
        if (isSetNextChargeDate()) {
            tProtocol.writeFieldBegin(NEXT_CHARGE_DATE_FIELD_DESC);
            tProtocol.writeI64(this.nextChargeDate);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(Accounting accounting) {
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
        if (!getClass().equals(accounting.getClass())) {
            return getClass().getName().compareTo(accounting.getClass().getName());
        }
        int compareTo24 = Boolean.valueOf(isSetUploadLimit()).compareTo(Boolean.valueOf(accounting.isSetUploadLimit()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (isSetUploadLimit() && (compareTo23 = TBaseHelper.compareTo(this.uploadLimit, accounting.uploadLimit)) != 0) {
            return compareTo23;
        }
        int compareTo25 = Boolean.valueOf(isSetUploadLimitEnd()).compareTo(Boolean.valueOf(accounting.isSetUploadLimitEnd()));
        if (compareTo25 != 0) {
            return compareTo25;
        }
        if (isSetUploadLimitEnd() && (compareTo22 = TBaseHelper.compareTo(this.uploadLimitEnd, accounting.uploadLimitEnd)) != 0) {
            return compareTo22;
        }
        int compareTo26 = Boolean.valueOf(isSetUploadLimitNextMonth()).compareTo(Boolean.valueOf(accounting.isSetUploadLimitNextMonth()));
        if (compareTo26 != 0) {
            return compareTo26;
        }
        if (isSetUploadLimitNextMonth() && (compareTo21 = TBaseHelper.compareTo(this.uploadLimitNextMonth, accounting.uploadLimitNextMonth)) != 0) {
            return compareTo21;
        }
        int compareTo27 = Boolean.valueOf(isSetPremiumServiceStatus()).compareTo(Boolean.valueOf(accounting.isSetPremiumServiceStatus()));
        if (compareTo27 != 0) {
            return compareTo27;
        }
        if (isSetPremiumServiceStatus() && (compareTo20 = TBaseHelper.compareTo((Comparable) this.premiumServiceStatus, (Comparable) accounting.premiumServiceStatus)) != 0) {
            return compareTo20;
        }
        int compareTo28 = Boolean.valueOf(isSetPremiumOrderNumber()).compareTo(Boolean.valueOf(accounting.isSetPremiumOrderNumber()));
        if (compareTo28 != 0) {
            return compareTo28;
        }
        if (isSetPremiumOrderNumber() && (compareTo19 = TBaseHelper.compareTo(this.premiumOrderNumber, accounting.premiumOrderNumber)) != 0) {
            return compareTo19;
        }
        int compareTo29 = Boolean.valueOf(isSetPremiumCommerceService()).compareTo(Boolean.valueOf(accounting.isSetPremiumCommerceService()));
        if (compareTo29 != 0) {
            return compareTo29;
        }
        if (isSetPremiumCommerceService() && (compareTo18 = TBaseHelper.compareTo(this.premiumCommerceService, accounting.premiumCommerceService)) != 0) {
            return compareTo18;
        }
        int compareTo30 = Boolean.valueOf(isSetPremiumServiceStart()).compareTo(Boolean.valueOf(accounting.isSetPremiumServiceStart()));
        if (compareTo30 != 0) {
            return compareTo30;
        }
        if (isSetPremiumServiceStart() && (compareTo17 = TBaseHelper.compareTo(this.premiumServiceStart, accounting.premiumServiceStart)) != 0) {
            return compareTo17;
        }
        int compareTo31 = Boolean.valueOf(isSetPremiumServiceSKU()).compareTo(Boolean.valueOf(accounting.isSetPremiumServiceSKU()));
        if (compareTo31 != 0) {
            return compareTo31;
        }
        if (isSetPremiumServiceSKU() && (compareTo16 = TBaseHelper.compareTo(this.premiumServiceSKU, accounting.premiumServiceSKU)) != 0) {
            return compareTo16;
        }
        int compareTo32 = Boolean.valueOf(isSetLastSuccessfulCharge()).compareTo(Boolean.valueOf(accounting.isSetLastSuccessfulCharge()));
        if (compareTo32 != 0) {
            return compareTo32;
        }
        if (isSetLastSuccessfulCharge() && (compareTo15 = TBaseHelper.compareTo(this.lastSuccessfulCharge, accounting.lastSuccessfulCharge)) != 0) {
            return compareTo15;
        }
        int compareTo33 = Boolean.valueOf(isSetLastFailedCharge()).compareTo(Boolean.valueOf(accounting.isSetLastFailedCharge()));
        if (compareTo33 != 0) {
            return compareTo33;
        }
        if (isSetLastFailedCharge() && (compareTo14 = TBaseHelper.compareTo(this.lastFailedCharge, accounting.lastFailedCharge)) != 0) {
            return compareTo14;
        }
        int compareTo34 = Boolean.valueOf(isSetLastFailedChargeReason()).compareTo(Boolean.valueOf(accounting.isSetLastFailedChargeReason()));
        if (compareTo34 != 0) {
            return compareTo34;
        }
        if (isSetLastFailedChargeReason() && (compareTo13 = TBaseHelper.compareTo(this.lastFailedChargeReason, accounting.lastFailedChargeReason)) != 0) {
            return compareTo13;
        }
        int compareTo35 = Boolean.valueOf(isSetNextPaymentDue()).compareTo(Boolean.valueOf(accounting.isSetNextPaymentDue()));
        if (compareTo35 != 0) {
            return compareTo35;
        }
        if (isSetNextPaymentDue() && (compareTo12 = TBaseHelper.compareTo(this.nextPaymentDue, accounting.nextPaymentDue)) != 0) {
            return compareTo12;
        }
        int compareTo36 = Boolean.valueOf(isSetPremiumLockUntil()).compareTo(Boolean.valueOf(accounting.isSetPremiumLockUntil()));
        if (compareTo36 != 0) {
            return compareTo36;
        }
        if (isSetPremiumLockUntil() && (compareTo11 = TBaseHelper.compareTo(this.premiumLockUntil, accounting.premiumLockUntil)) != 0) {
            return compareTo11;
        }
        int compareTo37 = Boolean.valueOf(isSetUpdated()).compareTo(Boolean.valueOf(accounting.isSetUpdated()));
        if (compareTo37 != 0) {
            return compareTo37;
        }
        if (isSetUpdated() && (compareTo10 = TBaseHelper.compareTo(this.updated, accounting.updated)) != 0) {
            return compareTo10;
        }
        int compareTo38 = Boolean.valueOf(isSetPremiumSubscriptionNumber()).compareTo(Boolean.valueOf(accounting.isSetPremiumSubscriptionNumber()));
        if (compareTo38 != 0) {
            return compareTo38;
        }
        if (isSetPremiumSubscriptionNumber() && (compareTo9 = TBaseHelper.compareTo(this.premiumSubscriptionNumber, accounting.premiumSubscriptionNumber)) != 0) {
            return compareTo9;
        }
        int compareTo39 = Boolean.valueOf(isSetLastRequestedCharge()).compareTo(Boolean.valueOf(accounting.isSetLastRequestedCharge()));
        if (compareTo39 != 0) {
            return compareTo39;
        }
        if (isSetLastRequestedCharge() && (compareTo8 = TBaseHelper.compareTo(this.lastRequestedCharge, accounting.lastRequestedCharge)) != 0) {
            return compareTo8;
        }
        int compareTo40 = Boolean.valueOf(isSetCurrency()).compareTo(Boolean.valueOf(accounting.isSetCurrency()));
        if (compareTo40 != 0) {
            return compareTo40;
        }
        if (isSetCurrency() && (compareTo7 = TBaseHelper.compareTo(this.currency, accounting.currency)) != 0) {
            return compareTo7;
        }
        int compareTo41 = Boolean.valueOf(isSetUnitPrice()).compareTo(Boolean.valueOf(accounting.isSetUnitPrice()));
        if (compareTo41 != 0) {
            return compareTo41;
        }
        if (isSetUnitPrice() && (compareTo6 = TBaseHelper.compareTo(this.unitPrice, accounting.unitPrice)) != 0) {
            return compareTo6;
        }
        int compareTo42 = Boolean.valueOf(isSetBusinessId()).compareTo(Boolean.valueOf(accounting.isSetBusinessId()));
        if (compareTo42 != 0) {
            return compareTo42;
        }
        if (isSetBusinessId() && (compareTo5 = TBaseHelper.compareTo(this.businessId, accounting.businessId)) != 0) {
            return compareTo5;
        }
        int compareTo43 = Boolean.valueOf(isSetBusinessName()).compareTo(Boolean.valueOf(accounting.isSetBusinessName()));
        if (compareTo43 != 0) {
            return compareTo43;
        }
        if (isSetBusinessName() && (compareTo4 = TBaseHelper.compareTo(this.businessName, accounting.businessName)) != 0) {
            return compareTo4;
        }
        int compareTo44 = Boolean.valueOf(isSetBusinessRole()).compareTo(Boolean.valueOf(accounting.isSetBusinessRole()));
        if (compareTo44 != 0) {
            return compareTo44;
        }
        if (isSetBusinessRole() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.businessRole, (Comparable) accounting.businessRole)) != 0) {
            return compareTo3;
        }
        int compareTo45 = Boolean.valueOf(isSetUnitDiscount()).compareTo(Boolean.valueOf(accounting.isSetUnitDiscount()));
        if (compareTo45 != 0) {
            return compareTo45;
        }
        if (isSetUnitDiscount() && (compareTo2 = TBaseHelper.compareTo(this.unitDiscount, accounting.unitDiscount)) != 0) {
            return compareTo2;
        }
        int compareTo46 = Boolean.valueOf(isSetNextChargeDate()).compareTo(Boolean.valueOf(accounting.isSetNextChargeDate()));
        if (compareTo46 != 0) {
            return compareTo46;
        }
        if (!isSetNextChargeDate() || (compareTo = TBaseHelper.compareTo(this.nextChargeDate, accounting.nextChargeDate)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<Accounting> deepCopy2() {
        return new Accounting(this);
    }

    public Accounting(Accounting accounting) {
        boolean[] zArr = new boolean[14];
        this.__isset_vector = zArr;
        boolean[] zArr2 = accounting.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.uploadLimit = accounting.uploadLimit;
        this.uploadLimitEnd = accounting.uploadLimitEnd;
        this.uploadLimitNextMonth = accounting.uploadLimitNextMonth;
        if (accounting.isSetPremiumServiceStatus()) {
            this.premiumServiceStatus = accounting.premiumServiceStatus;
        }
        if (accounting.isSetPremiumOrderNumber()) {
            this.premiumOrderNumber = accounting.premiumOrderNumber;
        }
        if (accounting.isSetPremiumCommerceService()) {
            this.premiumCommerceService = accounting.premiumCommerceService;
        }
        this.premiumServiceStart = accounting.premiumServiceStart;
        if (accounting.isSetPremiumServiceSKU()) {
            this.premiumServiceSKU = accounting.premiumServiceSKU;
        }
        this.lastSuccessfulCharge = accounting.lastSuccessfulCharge;
        this.lastFailedCharge = accounting.lastFailedCharge;
        if (accounting.isSetLastFailedChargeReason()) {
            this.lastFailedChargeReason = accounting.lastFailedChargeReason;
        }
        this.nextPaymentDue = accounting.nextPaymentDue;
        this.premiumLockUntil = accounting.premiumLockUntil;
        this.updated = accounting.updated;
        if (accounting.isSetPremiumSubscriptionNumber()) {
            this.premiumSubscriptionNumber = accounting.premiumSubscriptionNumber;
        }
        this.lastRequestedCharge = accounting.lastRequestedCharge;
        if (accounting.isSetCurrency()) {
            this.currency = accounting.currency;
        }
        this.unitPrice = accounting.unitPrice;
        this.businessId = accounting.businessId;
        if (accounting.isSetBusinessName()) {
            this.businessName = accounting.businessName;
        }
        if (accounting.isSetBusinessRole()) {
            this.businessRole = accounting.businessRole;
        }
        this.unitDiscount = accounting.unitDiscount;
        this.nextChargeDate = accounting.nextChargeDate;
    }

    public boolean equals(Accounting accounting) {
        if (accounting == null) {
            return false;
        }
        boolean isSetUploadLimit = isSetUploadLimit();
        boolean isSetUploadLimit2 = accounting.isSetUploadLimit();
        if ((isSetUploadLimit || isSetUploadLimit2) && !(isSetUploadLimit && isSetUploadLimit2 && this.uploadLimit == accounting.uploadLimit)) {
            return false;
        }
        boolean isSetUploadLimitEnd = isSetUploadLimitEnd();
        boolean isSetUploadLimitEnd2 = accounting.isSetUploadLimitEnd();
        if ((isSetUploadLimitEnd || isSetUploadLimitEnd2) && !(isSetUploadLimitEnd && isSetUploadLimitEnd2 && this.uploadLimitEnd == accounting.uploadLimitEnd)) {
            return false;
        }
        boolean isSetUploadLimitNextMonth = isSetUploadLimitNextMonth();
        boolean isSetUploadLimitNextMonth2 = accounting.isSetUploadLimitNextMonth();
        if ((isSetUploadLimitNextMonth || isSetUploadLimitNextMonth2) && !(isSetUploadLimitNextMonth && isSetUploadLimitNextMonth2 && this.uploadLimitNextMonth == accounting.uploadLimitNextMonth)) {
            return false;
        }
        boolean isSetPremiumServiceStatus = isSetPremiumServiceStatus();
        boolean isSetPremiumServiceStatus2 = accounting.isSetPremiumServiceStatus();
        if ((isSetPremiumServiceStatus || isSetPremiumServiceStatus2) && !(isSetPremiumServiceStatus && isSetPremiumServiceStatus2 && this.premiumServiceStatus.equals(accounting.premiumServiceStatus))) {
            return false;
        }
        boolean isSetPremiumOrderNumber = isSetPremiumOrderNumber();
        boolean isSetPremiumOrderNumber2 = accounting.isSetPremiumOrderNumber();
        if ((isSetPremiumOrderNumber || isSetPremiumOrderNumber2) && !(isSetPremiumOrderNumber && isSetPremiumOrderNumber2 && this.premiumOrderNumber.equals(accounting.premiumOrderNumber))) {
            return false;
        }
        boolean isSetPremiumCommerceService = isSetPremiumCommerceService();
        boolean isSetPremiumCommerceService2 = accounting.isSetPremiumCommerceService();
        if ((isSetPremiumCommerceService || isSetPremiumCommerceService2) && !(isSetPremiumCommerceService && isSetPremiumCommerceService2 && this.premiumCommerceService.equals(accounting.premiumCommerceService))) {
            return false;
        }
        boolean isSetPremiumServiceStart = isSetPremiumServiceStart();
        boolean isSetPremiumServiceStart2 = accounting.isSetPremiumServiceStart();
        if ((isSetPremiumServiceStart || isSetPremiumServiceStart2) && !(isSetPremiumServiceStart && isSetPremiumServiceStart2 && this.premiumServiceStart == accounting.premiumServiceStart)) {
            return false;
        }
        boolean isSetPremiumServiceSKU = isSetPremiumServiceSKU();
        boolean isSetPremiumServiceSKU2 = accounting.isSetPremiumServiceSKU();
        if ((isSetPremiumServiceSKU || isSetPremiumServiceSKU2) && !(isSetPremiumServiceSKU && isSetPremiumServiceSKU2 && this.premiumServiceSKU.equals(accounting.premiumServiceSKU))) {
            return false;
        }
        boolean isSetLastSuccessfulCharge = isSetLastSuccessfulCharge();
        boolean isSetLastSuccessfulCharge2 = accounting.isSetLastSuccessfulCharge();
        if ((isSetLastSuccessfulCharge || isSetLastSuccessfulCharge2) && !(isSetLastSuccessfulCharge && isSetLastSuccessfulCharge2 && this.lastSuccessfulCharge == accounting.lastSuccessfulCharge)) {
            return false;
        }
        boolean isSetLastFailedCharge = isSetLastFailedCharge();
        boolean isSetLastFailedCharge2 = accounting.isSetLastFailedCharge();
        if ((isSetLastFailedCharge || isSetLastFailedCharge2) && !(isSetLastFailedCharge && isSetLastFailedCharge2 && this.lastFailedCharge == accounting.lastFailedCharge)) {
            return false;
        }
        boolean isSetLastFailedChargeReason = isSetLastFailedChargeReason();
        boolean isSetLastFailedChargeReason2 = accounting.isSetLastFailedChargeReason();
        if ((isSetLastFailedChargeReason || isSetLastFailedChargeReason2) && !(isSetLastFailedChargeReason && isSetLastFailedChargeReason2 && this.lastFailedChargeReason.equals(accounting.lastFailedChargeReason))) {
            return false;
        }
        boolean isSetNextPaymentDue = isSetNextPaymentDue();
        boolean isSetNextPaymentDue2 = accounting.isSetNextPaymentDue();
        if ((isSetNextPaymentDue || isSetNextPaymentDue2) && !(isSetNextPaymentDue && isSetNextPaymentDue2 && this.nextPaymentDue == accounting.nextPaymentDue)) {
            return false;
        }
        boolean isSetPremiumLockUntil = isSetPremiumLockUntil();
        boolean isSetPremiumLockUntil2 = accounting.isSetPremiumLockUntil();
        if ((isSetPremiumLockUntil || isSetPremiumLockUntil2) && !(isSetPremiumLockUntil && isSetPremiumLockUntil2 && this.premiumLockUntil == accounting.premiumLockUntil)) {
            return false;
        }
        boolean isSetUpdated = isSetUpdated();
        boolean isSetUpdated2 = accounting.isSetUpdated();
        if ((isSetUpdated || isSetUpdated2) && !(isSetUpdated && isSetUpdated2 && this.updated == accounting.updated)) {
            return false;
        }
        boolean isSetPremiumSubscriptionNumber = isSetPremiumSubscriptionNumber();
        boolean isSetPremiumSubscriptionNumber2 = accounting.isSetPremiumSubscriptionNumber();
        if ((isSetPremiumSubscriptionNumber || isSetPremiumSubscriptionNumber2) && !(isSetPremiumSubscriptionNumber && isSetPremiumSubscriptionNumber2 && this.premiumSubscriptionNumber.equals(accounting.premiumSubscriptionNumber))) {
            return false;
        }
        boolean isSetLastRequestedCharge = isSetLastRequestedCharge();
        boolean isSetLastRequestedCharge2 = accounting.isSetLastRequestedCharge();
        if ((isSetLastRequestedCharge || isSetLastRequestedCharge2) && !(isSetLastRequestedCharge && isSetLastRequestedCharge2 && this.lastRequestedCharge == accounting.lastRequestedCharge)) {
            return false;
        }
        boolean isSetCurrency = isSetCurrency();
        boolean isSetCurrency2 = accounting.isSetCurrency();
        if ((isSetCurrency || isSetCurrency2) && !(isSetCurrency && isSetCurrency2 && this.currency.equals(accounting.currency))) {
            return false;
        }
        boolean isSetUnitPrice = isSetUnitPrice();
        boolean isSetUnitPrice2 = accounting.isSetUnitPrice();
        if ((isSetUnitPrice || isSetUnitPrice2) && !(isSetUnitPrice && isSetUnitPrice2 && this.unitPrice == accounting.unitPrice)) {
            return false;
        }
        boolean isSetBusinessId = isSetBusinessId();
        boolean isSetBusinessId2 = accounting.isSetBusinessId();
        if ((isSetBusinessId || isSetBusinessId2) && !(isSetBusinessId && isSetBusinessId2 && this.businessId == accounting.businessId)) {
            return false;
        }
        boolean isSetBusinessName = isSetBusinessName();
        boolean isSetBusinessName2 = accounting.isSetBusinessName();
        if ((isSetBusinessName || isSetBusinessName2) && !(isSetBusinessName && isSetBusinessName2 && this.businessName.equals(accounting.businessName))) {
            return false;
        }
        boolean isSetBusinessRole = isSetBusinessRole();
        boolean isSetBusinessRole2 = accounting.isSetBusinessRole();
        if ((isSetBusinessRole || isSetBusinessRole2) && !(isSetBusinessRole && isSetBusinessRole2 && this.businessRole.equals(accounting.businessRole))) {
            return false;
        }
        boolean isSetUnitDiscount = isSetUnitDiscount();
        boolean isSetUnitDiscount2 = accounting.isSetUnitDiscount();
        if ((isSetUnitDiscount || isSetUnitDiscount2) && !(isSetUnitDiscount && isSetUnitDiscount2 && this.unitDiscount == accounting.unitDiscount)) {
            return false;
        }
        boolean isSetNextChargeDate = isSetNextChargeDate();
        boolean isSetNextChargeDate2 = accounting.isSetNextChargeDate();
        if (isSetNextChargeDate || isSetNextChargeDate2) {
            return isSetNextChargeDate && isSetNextChargeDate2 && this.nextChargeDate == accounting.nextChargeDate;
        }
        return true;
    }
}

package com.evernote.edam.type;

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
public class PremiumInfo implements TBase<PremiumInfo>, Serializable, Cloneable {
    private static final int __CANPURCHASEUPLOADALLOWANCE_ISSET_ID = 7;
    private static final int __CURRENTTIME_ISSET_ID = 0;
    private static final int __PREMIUMCANCELLATIONPENDING_ISSET_ID = 6;
    private static final int __PREMIUMEXPIRATIONDATE_ISSET_ID = 3;
    private static final int __PREMIUMEXTENDABLE_ISSET_ID = 4;
    private static final int __PREMIUMPENDING_ISSET_ID = 5;
    private static final int __PREMIUMRECURRING_ISSET_ID = 2;
    private static final int __PREMIUMUPGRADABLE_ISSET_ID = 8;
    private static final int __PREMIUM_ISSET_ID = 1;
    private boolean[] __isset_vector;
    private boolean canPurchaseUploadAllowance;
    private long currentTime;
    private boolean premium;
    private boolean premiumCancellationPending;
    private long premiumExpirationDate;
    private boolean premiumExtendable;
    private boolean premiumPending;
    private boolean premiumRecurring;
    private boolean premiumUpgradable;
    private String sponsoredGroupName;
    private SponsoredGroupRole sponsoredGroupRole;
    private static final TStruct STRUCT_DESC = new TStruct("PremiumInfo");
    private static final TField CURRENT_TIME_FIELD_DESC = new TField("currentTime", (byte) 10, 1);
    private static final TField PREMIUM_FIELD_DESC = new TField("premium", (byte) 2, 2);
    private static final TField PREMIUM_RECURRING_FIELD_DESC = new TField("premiumRecurring", (byte) 2, 3);
    private static final TField PREMIUM_EXPIRATION_DATE_FIELD_DESC = new TField("premiumExpirationDate", (byte) 10, 4);
    private static final TField PREMIUM_EXTENDABLE_FIELD_DESC = new TField("premiumExtendable", (byte) 2, 5);
    private static final TField PREMIUM_PENDING_FIELD_DESC = new TField("premiumPending", (byte) 2, 6);
    private static final TField PREMIUM_CANCELLATION_PENDING_FIELD_DESC = new TField("premiumCancellationPending", (byte) 2, 7);
    private static final TField CAN_PURCHASE_UPLOAD_ALLOWANCE_FIELD_DESC = new TField("canPurchaseUploadAllowance", (byte) 2, 8);
    private static final TField SPONSORED_GROUP_NAME_FIELD_DESC = new TField("sponsoredGroupName", (byte) 11, 9);
    private static final TField SPONSORED_GROUP_ROLE_FIELD_DESC = new TField("sponsoredGroupRole", (byte) 8, 10);
    private static final TField PREMIUM_UPGRADABLE_FIELD_DESC = new TField("premiumUpgradable", (byte) 2, 11);

    public PremiumInfo() {
        this.__isset_vector = new boolean[9];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setCurrentTimeIsSet(false);
        this.currentTime = 0L;
        setPremiumIsSet(false);
        this.premium = false;
        setPremiumRecurringIsSet(false);
        this.premiumRecurring = false;
        setPremiumExpirationDateIsSet(false);
        this.premiumExpirationDate = 0L;
        setPremiumExtendableIsSet(false);
        this.premiumExtendable = false;
        setPremiumPendingIsSet(false);
        this.premiumPending = false;
        setPremiumCancellationPendingIsSet(false);
        this.premiumCancellationPending = false;
        setCanPurchaseUploadAllowanceIsSet(false);
        this.canPurchaseUploadAllowance = false;
        this.sponsoredGroupName = null;
        this.sponsoredGroupRole = null;
        setPremiumUpgradableIsSet(false);
        this.premiumUpgradable = false;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof PremiumInfo)) {
            return equals((PremiumInfo) obj);
        }
        return false;
    }

    public long getCurrentTime() {
        return this.currentTime;
    }

    public long getPremiumExpirationDate() {
        return this.premiumExpirationDate;
    }

    public String getSponsoredGroupName() {
        return this.sponsoredGroupName;
    }

    public SponsoredGroupRole getSponsoredGroupRole() {
        return this.sponsoredGroupRole;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isCanPurchaseUploadAllowance() {
        return this.canPurchaseUploadAllowance;
    }

    public boolean isPremium() {
        return this.premium;
    }

    public boolean isPremiumCancellationPending() {
        return this.premiumCancellationPending;
    }

    public boolean isPremiumExtendable() {
        return this.premiumExtendable;
    }

    public boolean isPremiumPending() {
        return this.premiumPending;
    }

    public boolean isPremiumRecurring() {
        return this.premiumRecurring;
    }

    public boolean isPremiumUpgradable() {
        return this.premiumUpgradable;
    }

    public boolean isSetCanPurchaseUploadAllowance() {
        return this.__isset_vector[7];
    }

    public boolean isSetCurrentTime() {
        return this.__isset_vector[0];
    }

    public boolean isSetPremium() {
        return this.__isset_vector[1];
    }

    public boolean isSetPremiumCancellationPending() {
        return this.__isset_vector[6];
    }

    public boolean isSetPremiumExpirationDate() {
        return this.__isset_vector[3];
    }

    public boolean isSetPremiumExtendable() {
        return this.__isset_vector[4];
    }

    public boolean isSetPremiumPending() {
        return this.__isset_vector[5];
    }

    public boolean isSetPremiumRecurring() {
        return this.__isset_vector[2];
    }

    public boolean isSetPremiumUpgradable() {
        return this.__isset_vector[8];
    }

    public boolean isSetSponsoredGroupName() {
        return this.sponsoredGroupName != null;
    }

    public boolean isSetSponsoredGroupRole() {
        return this.sponsoredGroupRole != null;
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
                        this.currentTime = tProtocol.readI64();
                        setCurrentTimeIsSet(true);
                        break;
                    }
                case 2:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premium = tProtocol.readBool();
                        setPremiumIsSet(true);
                        break;
                    }
                case 3:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumRecurring = tProtocol.readBool();
                        setPremiumRecurringIsSet(true);
                        break;
                    }
                case 4:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumExpirationDate = tProtocol.readI64();
                        setPremiumExpirationDateIsSet(true);
                        break;
                    }
                case 5:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumExtendable = tProtocol.readBool();
                        setPremiumExtendableIsSet(true);
                        break;
                    }
                case 6:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumPending = tProtocol.readBool();
                        setPremiumPendingIsSet(true);
                        break;
                    }
                case 7:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumCancellationPending = tProtocol.readBool();
                        setPremiumCancellationPendingIsSet(true);
                        break;
                    }
                case 8:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.canPurchaseUploadAllowance = tProtocol.readBool();
                        setCanPurchaseUploadAllowanceIsSet(true);
                        break;
                    }
                case 9:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.sponsoredGroupName = tProtocol.readString();
                        break;
                    }
                case 10:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.sponsoredGroupRole = SponsoredGroupRole.findByValue(tProtocol.readI32());
                        break;
                    }
                case 11:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.premiumUpgradable = tProtocol.readBool();
                        setPremiumUpgradableIsSet(true);
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setCanPurchaseUploadAllowance(boolean z) {
        this.canPurchaseUploadAllowance = z;
        setCanPurchaseUploadAllowanceIsSet(true);
    }

    public void setCanPurchaseUploadAllowanceIsSet(boolean z) {
        this.__isset_vector[7] = z;
    }

    public void setCurrentTime(long j) {
        this.currentTime = j;
        setCurrentTimeIsSet(true);
    }

    public void setCurrentTimeIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setPremium(boolean z) {
        this.premium = z;
        setPremiumIsSet(true);
    }

    public void setPremiumCancellationPending(boolean z) {
        this.premiumCancellationPending = z;
        setPremiumCancellationPendingIsSet(true);
    }

    public void setPremiumCancellationPendingIsSet(boolean z) {
        this.__isset_vector[6] = z;
    }

    public void setPremiumExpirationDate(long j) {
        this.premiumExpirationDate = j;
        setPremiumExpirationDateIsSet(true);
    }

    public void setPremiumExpirationDateIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public void setPremiumExtendable(boolean z) {
        this.premiumExtendable = z;
        setPremiumExtendableIsSet(true);
    }

    public void setPremiumExtendableIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setPremiumIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setPremiumPending(boolean z) {
        this.premiumPending = z;
        setPremiumPendingIsSet(true);
    }

    public void setPremiumPendingIsSet(boolean z) {
        this.__isset_vector[5] = z;
    }

    public void setPremiumRecurring(boolean z) {
        this.premiumRecurring = z;
        setPremiumRecurringIsSet(true);
    }

    public void setPremiumRecurringIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setPremiumUpgradable(boolean z) {
        this.premiumUpgradable = z;
        setPremiumUpgradableIsSet(true);
    }

    public void setPremiumUpgradableIsSet(boolean z) {
        this.__isset_vector[8] = z;
    }

    public void setSponsoredGroupName(String str) {
        this.sponsoredGroupName = str;
    }

    public void setSponsoredGroupNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.sponsoredGroupName = null;
    }

    public void setSponsoredGroupRole(SponsoredGroupRole sponsoredGroupRole) {
        this.sponsoredGroupRole = sponsoredGroupRole;
    }

    public void setSponsoredGroupRoleIsSet(boolean z) {
        if (z) {
            return;
        }
        this.sponsoredGroupRole = null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PremiumInfo(");
        sb.append("currentTime:");
        sb.append(this.currentTime);
        sb.append(", ");
        sb.append("premium:");
        sb.append(this.premium);
        sb.append(", ");
        sb.append("premiumRecurring:");
        sb.append(this.premiumRecurring);
        if (isSetPremiumExpirationDate()) {
            sb.append(", ");
            sb.append("premiumExpirationDate:");
            sb.append(this.premiumExpirationDate);
        }
        sb.append(", ");
        sb.append("premiumExtendable:");
        sb.append(this.premiumExtendable);
        sb.append(", ");
        sb.append("premiumPending:");
        sb.append(this.premiumPending);
        sb.append(", ");
        sb.append("premiumCancellationPending:");
        sb.append(this.premiumCancellationPending);
        sb.append(", ");
        sb.append("canPurchaseUploadAllowance:");
        sb.append(this.canPurchaseUploadAllowance);
        if (isSetSponsoredGroupName()) {
            sb.append(", ");
            sb.append("sponsoredGroupName:");
            String str = this.sponsoredGroupName;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        if (isSetSponsoredGroupRole()) {
            sb.append(", ");
            sb.append("sponsoredGroupRole:");
            SponsoredGroupRole sponsoredGroupRole = this.sponsoredGroupRole;
            if (sponsoredGroupRole == null) {
                sb.append("null");
            } else {
                sb.append(sponsoredGroupRole);
            }
        }
        if (isSetPremiumUpgradable()) {
            sb.append(", ");
            sb.append("premiumUpgradable:");
            sb.append(this.premiumUpgradable);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetCanPurchaseUploadAllowance() {
        this.__isset_vector[7] = false;
    }

    public void unsetCurrentTime() {
        this.__isset_vector[0] = false;
    }

    public void unsetPremium() {
        this.__isset_vector[1] = false;
    }

    public void unsetPremiumCancellationPending() {
        this.__isset_vector[6] = false;
    }

    public void unsetPremiumExpirationDate() {
        this.__isset_vector[3] = false;
    }

    public void unsetPremiumExtendable() {
        this.__isset_vector[4] = false;
    }

    public void unsetPremiumPending() {
        this.__isset_vector[5] = false;
    }

    public void unsetPremiumRecurring() {
        this.__isset_vector[2] = false;
    }

    public void unsetPremiumUpgradable() {
        this.__isset_vector[8] = false;
    }

    public void unsetSponsoredGroupName() {
        this.sponsoredGroupName = null;
    }

    public void unsetSponsoredGroupRole() {
        this.sponsoredGroupRole = null;
    }

    public void validate() throws TException {
        if (!isSetCurrentTime()) {
            throw new TProtocolException("Required field 'currentTime' is unset! Struct:" + toString());
        }
        if (!isSetPremium()) {
            throw new TProtocolException("Required field 'premium' is unset! Struct:" + toString());
        }
        if (!isSetPremiumRecurring()) {
            throw new TProtocolException("Required field 'premiumRecurring' is unset! Struct:" + toString());
        }
        if (!isSetPremiumExtendable()) {
            throw new TProtocolException("Required field 'premiumExtendable' is unset! Struct:" + toString());
        }
        if (!isSetPremiumPending()) {
            throw new TProtocolException("Required field 'premiumPending' is unset! Struct:" + toString());
        }
        if (!isSetPremiumCancellationPending()) {
            throw new TProtocolException("Required field 'premiumCancellationPending' is unset! Struct:" + toString());
        }
        if (isSetCanPurchaseUploadAllowance()) {
            return;
        }
        throw new TProtocolException("Required field 'canPurchaseUploadAllowance' is unset! Struct:" + toString());
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        tProtocol.writeFieldBegin(CURRENT_TIME_FIELD_DESC);
        tProtocol.writeI64(this.currentTime);
        tProtocol.writeFieldEnd();
        tProtocol.writeFieldBegin(PREMIUM_FIELD_DESC);
        tProtocol.writeBool(this.premium);
        tProtocol.writeFieldEnd();
        tProtocol.writeFieldBegin(PREMIUM_RECURRING_FIELD_DESC);
        tProtocol.writeBool(this.premiumRecurring);
        tProtocol.writeFieldEnd();
        if (isSetPremiumExpirationDate()) {
            tProtocol.writeFieldBegin(PREMIUM_EXPIRATION_DATE_FIELD_DESC);
            tProtocol.writeI64(this.premiumExpirationDate);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldBegin(PREMIUM_EXTENDABLE_FIELD_DESC);
        tProtocol.writeBool(this.premiumExtendable);
        tProtocol.writeFieldEnd();
        tProtocol.writeFieldBegin(PREMIUM_PENDING_FIELD_DESC);
        tProtocol.writeBool(this.premiumPending);
        tProtocol.writeFieldEnd();
        tProtocol.writeFieldBegin(PREMIUM_CANCELLATION_PENDING_FIELD_DESC);
        tProtocol.writeBool(this.premiumCancellationPending);
        tProtocol.writeFieldEnd();
        tProtocol.writeFieldBegin(CAN_PURCHASE_UPLOAD_ALLOWANCE_FIELD_DESC);
        tProtocol.writeBool(this.canPurchaseUploadAllowance);
        tProtocol.writeFieldEnd();
        if (this.sponsoredGroupName != null && isSetSponsoredGroupName()) {
            tProtocol.writeFieldBegin(SPONSORED_GROUP_NAME_FIELD_DESC);
            tProtocol.writeString(this.sponsoredGroupName);
            tProtocol.writeFieldEnd();
        }
        if (this.sponsoredGroupRole != null && isSetSponsoredGroupRole()) {
            tProtocol.writeFieldBegin(SPONSORED_GROUP_ROLE_FIELD_DESC);
            tProtocol.writeI32(this.sponsoredGroupRole.getValue());
            tProtocol.writeFieldEnd();
        }
        if (isSetPremiumUpgradable()) {
            tProtocol.writeFieldBegin(PREMIUM_UPGRADABLE_FIELD_DESC);
            tProtocol.writeBool(this.premiumUpgradable);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(PremiumInfo premiumInfo) {
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
        if (!getClass().equals(premiumInfo.getClass())) {
            return getClass().getName().compareTo(premiumInfo.getClass().getName());
        }
        int compareTo12 = Boolean.valueOf(isSetCurrentTime()).compareTo(Boolean.valueOf(premiumInfo.isSetCurrentTime()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (isSetCurrentTime() && (compareTo11 = TBaseHelper.compareTo(this.currentTime, premiumInfo.currentTime)) != 0) {
            return compareTo11;
        }
        int compareTo13 = Boolean.valueOf(isSetPremium()).compareTo(Boolean.valueOf(premiumInfo.isSetPremium()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (isSetPremium() && (compareTo10 = TBaseHelper.compareTo(this.premium, premiumInfo.premium)) != 0) {
            return compareTo10;
        }
        int compareTo14 = Boolean.valueOf(isSetPremiumRecurring()).compareTo(Boolean.valueOf(premiumInfo.isSetPremiumRecurring()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (isSetPremiumRecurring() && (compareTo9 = TBaseHelper.compareTo(this.premiumRecurring, premiumInfo.premiumRecurring)) != 0) {
            return compareTo9;
        }
        int compareTo15 = Boolean.valueOf(isSetPremiumExpirationDate()).compareTo(Boolean.valueOf(premiumInfo.isSetPremiumExpirationDate()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetPremiumExpirationDate() && (compareTo8 = TBaseHelper.compareTo(this.premiumExpirationDate, premiumInfo.premiumExpirationDate)) != 0) {
            return compareTo8;
        }
        int compareTo16 = Boolean.valueOf(isSetPremiumExtendable()).compareTo(Boolean.valueOf(premiumInfo.isSetPremiumExtendable()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetPremiumExtendable() && (compareTo7 = TBaseHelper.compareTo(this.premiumExtendable, premiumInfo.premiumExtendable)) != 0) {
            return compareTo7;
        }
        int compareTo17 = Boolean.valueOf(isSetPremiumPending()).compareTo(Boolean.valueOf(premiumInfo.isSetPremiumPending()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetPremiumPending() && (compareTo6 = TBaseHelper.compareTo(this.premiumPending, premiumInfo.premiumPending)) != 0) {
            return compareTo6;
        }
        int compareTo18 = Boolean.valueOf(isSetPremiumCancellationPending()).compareTo(Boolean.valueOf(premiumInfo.isSetPremiumCancellationPending()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetPremiumCancellationPending() && (compareTo5 = TBaseHelper.compareTo(this.premiumCancellationPending, premiumInfo.premiumCancellationPending)) != 0) {
            return compareTo5;
        }
        int compareTo19 = Boolean.valueOf(isSetCanPurchaseUploadAllowance()).compareTo(Boolean.valueOf(premiumInfo.isSetCanPurchaseUploadAllowance()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetCanPurchaseUploadAllowance() && (compareTo4 = TBaseHelper.compareTo(this.canPurchaseUploadAllowance, premiumInfo.canPurchaseUploadAllowance)) != 0) {
            return compareTo4;
        }
        int compareTo20 = Boolean.valueOf(isSetSponsoredGroupName()).compareTo(Boolean.valueOf(premiumInfo.isSetSponsoredGroupName()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetSponsoredGroupName() && (compareTo3 = TBaseHelper.compareTo(this.sponsoredGroupName, premiumInfo.sponsoredGroupName)) != 0) {
            return compareTo3;
        }
        int compareTo21 = Boolean.valueOf(isSetSponsoredGroupRole()).compareTo(Boolean.valueOf(premiumInfo.isSetSponsoredGroupRole()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetSponsoredGroupRole() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.sponsoredGroupRole, (Comparable) premiumInfo.sponsoredGroupRole)) != 0) {
            return compareTo2;
        }
        int compareTo22 = Boolean.valueOf(isSetPremiumUpgradable()).compareTo(Boolean.valueOf(premiumInfo.isSetPremiumUpgradable()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (!isSetPremiumUpgradable() || (compareTo = TBaseHelper.compareTo(this.premiumUpgradable, premiumInfo.premiumUpgradable)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<PremiumInfo> deepCopy2() {
        return new PremiumInfo(this);
    }

    public PremiumInfo(long j, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this();
        this.currentTime = j;
        setCurrentTimeIsSet(true);
        this.premium = z;
        setPremiumIsSet(true);
        this.premiumRecurring = z2;
        setPremiumRecurringIsSet(true);
        this.premiumExtendable = z3;
        setPremiumExtendableIsSet(true);
        this.premiumPending = z4;
        setPremiumPendingIsSet(true);
        this.premiumCancellationPending = z5;
        setPremiumCancellationPendingIsSet(true);
        this.canPurchaseUploadAllowance = z6;
        setCanPurchaseUploadAllowanceIsSet(true);
    }

    public boolean equals(PremiumInfo premiumInfo) {
        if (premiumInfo == null || this.currentTime != premiumInfo.currentTime || this.premium != premiumInfo.premium || this.premiumRecurring != premiumInfo.premiumRecurring) {
            return false;
        }
        boolean isSetPremiumExpirationDate = isSetPremiumExpirationDate();
        boolean isSetPremiumExpirationDate2 = premiumInfo.isSetPremiumExpirationDate();
        if (((isSetPremiumExpirationDate || isSetPremiumExpirationDate2) && (!isSetPremiumExpirationDate || !isSetPremiumExpirationDate2 || this.premiumExpirationDate != premiumInfo.premiumExpirationDate)) || this.premiumExtendable != premiumInfo.premiumExtendable || this.premiumPending != premiumInfo.premiumPending || this.premiumCancellationPending != premiumInfo.premiumCancellationPending || this.canPurchaseUploadAllowance != premiumInfo.canPurchaseUploadAllowance) {
            return false;
        }
        boolean isSetSponsoredGroupName = isSetSponsoredGroupName();
        boolean isSetSponsoredGroupName2 = premiumInfo.isSetSponsoredGroupName();
        if ((isSetSponsoredGroupName || isSetSponsoredGroupName2) && !(isSetSponsoredGroupName && isSetSponsoredGroupName2 && this.sponsoredGroupName.equals(premiumInfo.sponsoredGroupName))) {
            return false;
        }
        boolean isSetSponsoredGroupRole = isSetSponsoredGroupRole();
        boolean isSetSponsoredGroupRole2 = premiumInfo.isSetSponsoredGroupRole();
        if ((isSetSponsoredGroupRole || isSetSponsoredGroupRole2) && !(isSetSponsoredGroupRole && isSetSponsoredGroupRole2 && this.sponsoredGroupRole.equals(premiumInfo.sponsoredGroupRole))) {
            return false;
        }
        boolean isSetPremiumUpgradable = isSetPremiumUpgradable();
        boolean isSetPremiumUpgradable2 = premiumInfo.isSetPremiumUpgradable();
        if (isSetPremiumUpgradable || isSetPremiumUpgradable2) {
            return isSetPremiumUpgradable && isSetPremiumUpgradable2 && this.premiumUpgradable == premiumInfo.premiumUpgradable;
        }
        return true;
    }

    public PremiumInfo(PremiumInfo premiumInfo) {
        boolean[] zArr = new boolean[9];
        this.__isset_vector = zArr;
        boolean[] zArr2 = premiumInfo.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.currentTime = premiumInfo.currentTime;
        this.premium = premiumInfo.premium;
        this.premiumRecurring = premiumInfo.premiumRecurring;
        this.premiumExpirationDate = premiumInfo.premiumExpirationDate;
        this.premiumExtendable = premiumInfo.premiumExtendable;
        this.premiumPending = premiumInfo.premiumPending;
        this.premiumCancellationPending = premiumInfo.premiumCancellationPending;
        this.canPurchaseUploadAllowance = premiumInfo.canPurchaseUploadAllowance;
        if (premiumInfo.isSetSponsoredGroupName()) {
            this.sponsoredGroupName = premiumInfo.sponsoredGroupName;
        }
        if (premiumInfo.isSetSponsoredGroupRole()) {
            this.sponsoredGroupRole = premiumInfo.sponsoredGroupRole;
        }
        this.premiumUpgradable = premiumInfo.premiumUpgradable;
    }
}

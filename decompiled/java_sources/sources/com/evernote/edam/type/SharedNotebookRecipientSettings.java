package com.evernote.edam.type;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class SharedNotebookRecipientSettings implements TBase<SharedNotebookRecipientSettings>, Serializable, Cloneable {
    private static final int __REMINDERNOTIFYEMAIL_ISSET_ID = 0;
    private static final int __REMINDERNOTIFYINAPP_ISSET_ID = 1;
    private boolean[] __isset_vector;
    private boolean reminderNotifyEmail;
    private boolean reminderNotifyInApp;
    private static final TStruct STRUCT_DESC = new TStruct("SharedNotebookRecipientSettings");
    private static final TField REMINDER_NOTIFY_EMAIL_FIELD_DESC = new TField("reminderNotifyEmail", (byte) 2, 1);
    private static final TField REMINDER_NOTIFY_IN_APP_FIELD_DESC = new TField("reminderNotifyInApp", (byte) 2, 2);

    public SharedNotebookRecipientSettings() {
        this.__isset_vector = new boolean[2];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setReminderNotifyEmailIsSet(false);
        this.reminderNotifyEmail = false;
        setReminderNotifyInAppIsSet(false);
        this.reminderNotifyInApp = false;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof SharedNotebookRecipientSettings)) {
            return equals((SharedNotebookRecipientSettings) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isReminderNotifyEmail() {
        return this.reminderNotifyEmail;
    }

    public boolean isReminderNotifyInApp() {
        return this.reminderNotifyInApp;
    }

    public boolean isSetReminderNotifyEmail() {
        return this.__isset_vector[0];
    }

    public boolean isSetReminderNotifyInApp() {
        return this.__isset_vector[1];
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
            short s = readFieldBegin.f21203id;
            if (s != 1) {
                if (s != 2) {
                    TProtocolUtil.skip(tProtocol, b);
                } else if (b == 2) {
                    this.reminderNotifyInApp = tProtocol.readBool();
                    setReminderNotifyInAppIsSet(true);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 2) {
                this.reminderNotifyEmail = tProtocol.readBool();
                setReminderNotifyEmailIsSet(true);
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setReminderNotifyEmail(boolean z) {
        this.reminderNotifyEmail = z;
        setReminderNotifyEmailIsSet(true);
    }

    public void setReminderNotifyEmailIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setReminderNotifyInApp(boolean z) {
        this.reminderNotifyInApp = z;
        setReminderNotifyInAppIsSet(true);
    }

    public void setReminderNotifyInAppIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("SharedNotebookRecipientSettings(");
        if (isSetReminderNotifyEmail()) {
            sb.append("reminderNotifyEmail:");
            sb.append(this.reminderNotifyEmail);
            z = false;
        } else {
            z = true;
        }
        if (isSetReminderNotifyInApp()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("reminderNotifyInApp:");
            sb.append(this.reminderNotifyInApp);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetReminderNotifyEmail() {
        this.__isset_vector[0] = false;
    }

    public void unsetReminderNotifyInApp() {
        this.__isset_vector[1] = false;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (isSetReminderNotifyEmail()) {
            tProtocol.writeFieldBegin(REMINDER_NOTIFY_EMAIL_FIELD_DESC);
            tProtocol.writeBool(this.reminderNotifyEmail);
            tProtocol.writeFieldEnd();
        }
        if (isSetReminderNotifyInApp()) {
            tProtocol.writeFieldBegin(REMINDER_NOTIFY_IN_APP_FIELD_DESC);
            tProtocol.writeBool(this.reminderNotifyInApp);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(SharedNotebookRecipientSettings sharedNotebookRecipientSettings) {
        int compareTo;
        int compareTo2;
        if (!getClass().equals(sharedNotebookRecipientSettings.getClass())) {
            return getClass().getName().compareTo(sharedNotebookRecipientSettings.getClass().getName());
        }
        int compareTo3 = Boolean.valueOf(isSetReminderNotifyEmail()).compareTo(Boolean.valueOf(sharedNotebookRecipientSettings.isSetReminderNotifyEmail()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (isSetReminderNotifyEmail() && (compareTo2 = TBaseHelper.compareTo(this.reminderNotifyEmail, sharedNotebookRecipientSettings.reminderNotifyEmail)) != 0) {
            return compareTo2;
        }
        int compareTo4 = Boolean.valueOf(isSetReminderNotifyInApp()).compareTo(Boolean.valueOf(sharedNotebookRecipientSettings.isSetReminderNotifyInApp()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (!isSetReminderNotifyInApp() || (compareTo = TBaseHelper.compareTo(this.reminderNotifyInApp, sharedNotebookRecipientSettings.reminderNotifyInApp)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<SharedNotebookRecipientSettings> deepCopy2() {
        return new SharedNotebookRecipientSettings(this);
    }

    public SharedNotebookRecipientSettings(SharedNotebookRecipientSettings sharedNotebookRecipientSettings) {
        boolean[] zArr = new boolean[2];
        this.__isset_vector = zArr;
        boolean[] zArr2 = sharedNotebookRecipientSettings.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.reminderNotifyEmail = sharedNotebookRecipientSettings.reminderNotifyEmail;
        this.reminderNotifyInApp = sharedNotebookRecipientSettings.reminderNotifyInApp;
    }

    public boolean equals(SharedNotebookRecipientSettings sharedNotebookRecipientSettings) {
        if (sharedNotebookRecipientSettings == null) {
            return false;
        }
        boolean isSetReminderNotifyEmail = isSetReminderNotifyEmail();
        boolean isSetReminderNotifyEmail2 = sharedNotebookRecipientSettings.isSetReminderNotifyEmail();
        if ((isSetReminderNotifyEmail || isSetReminderNotifyEmail2) && !(isSetReminderNotifyEmail && isSetReminderNotifyEmail2 && this.reminderNotifyEmail == sharedNotebookRecipientSettings.reminderNotifyEmail)) {
            return false;
        }
        boolean isSetReminderNotifyInApp = isSetReminderNotifyInApp();
        boolean isSetReminderNotifyInApp2 = sharedNotebookRecipientSettings.isSetReminderNotifyInApp();
        if (isSetReminderNotifyInApp || isSetReminderNotifyInApp2) {
            return isSetReminderNotifyInApp && isSetReminderNotifyInApp2 && this.reminderNotifyInApp == sharedNotebookRecipientSettings.reminderNotifyInApp;
        }
        return true;
    }
}

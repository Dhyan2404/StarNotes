package com.tencent.beacon.event.open;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.beacon.event.p076c.C14991d;
import com.tencent.beacon.p059a.p062c.C14888c;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public final class BeaconEvent {

    /* renamed from: a */
    private String f93196a;

    /* renamed from: b */
    private String f93197b;

    /* renamed from: c */
    private EventType f93198c;

    /* renamed from: d */
    private boolean f93199d;

    /* renamed from: e */
    private Map<String, String> f93200e;

    /* loaded from: classes10.dex */
    public static final class Builder {

        /* renamed from: a */
        private String f93201a;

        /* renamed from: b */
        private String f93202b;

        /* renamed from: c */
        private EventType f93203c;

        /* renamed from: d */
        private boolean f93204d;

        /* renamed from: e */
        private Map<String, String> f93205e;

        public /* synthetic */ Builder(C15002a c15002a) {
            this();
        }

        public BeaconEvent build() {
            String m59559b = C14991d.m59559b(this.f93202b);
            if (TextUtils.isEmpty(this.f93201a)) {
                this.f93201a = C14888c.m58989c().m59002e();
            }
            C14991d.m59556a(m59559b, this.f93205e);
            return new BeaconEvent(this.f93201a, m59559b, this.f93203c, this.f93204d, this.f93205e, null);
        }

        public Builder withAppKey(String str) {
            this.f93201a = str;
            return this;
        }

        public Builder withCode(String str) {
            this.f93202b = str;
            return this;
        }

        public Builder withIsSucceed(boolean z) {
            this.f93204d = z;
            return this;
        }

        public Builder withParams(Map<String, String> map) {
            if (map != null) {
                this.f93205e.putAll(map);
            }
            return this;
        }

        public Builder withType(EventType eventType) {
            this.f93203c = eventType;
            return this;
        }

        public /* synthetic */ Builder(BeaconEvent beaconEvent, C15002a c15002a) {
            this(beaconEvent);
        }

        public Builder withParams(@NonNull String str, String str2) {
            this.f93205e.put(str, str2);
            return this;
        }

        private Builder() {
            this.f93203c = EventType.NORMAL;
            this.f93204d = true;
            this.f93205e = new HashMap();
        }

        private Builder(BeaconEvent beaconEvent) {
            this.f93203c = EventType.NORMAL;
            this.f93204d = true;
            this.f93205e = new HashMap();
            this.f93201a = beaconEvent.f93196a;
            this.f93202b = beaconEvent.f93197b;
            this.f93203c = beaconEvent.f93198c;
            this.f93204d = beaconEvent.f93199d;
            this.f93205e.putAll(beaconEvent.f93200e);
        }
    }

    public /* synthetic */ BeaconEvent(String str, String str2, EventType eventType, boolean z, Map map, C15002a c15002a) {
        this(str, str2, eventType, z, map);
    }

    public static Builder builder() {
        return new Builder((C15002a) null);
    }

    public static Builder newBuilder(BeaconEvent beaconEvent) {
        return new Builder(beaconEvent, null);
    }

    public String getAppKey() {
        return this.f93196a;
    }

    public String getCode() {
        return this.f93197b;
    }

    public String getLogidPrefix() {
        switch (C15002a.f93214a[this.f93198c.ordinal()]) {
            case 1:
            case 2:
                return "N";
            case 3:
            case 4:
                return "I";
            case 5:
            case 6:
                return "Y";
            default:
                return "";
        }
    }

    public Map<String, String> getParams() {
        return this.f93200e;
    }

    public EventType getType() {
        return this.f93198c;
    }

    public boolean isSucceed() {
        return this.f93199d;
    }

    public void setAppKey(String str) {
        this.f93196a = str;
    }

    public void setCode(String str) {
        this.f93197b = str;
    }

    public void setParams(Map<String, String> map) {
        this.f93200e = map;
    }

    public void setSucceed(boolean z) {
        this.f93199d = z;
    }

    public void setType(EventType eventType) {
        this.f93198c = eventType;
    }

    public String toString() {
        return super.toString();
    }

    private BeaconEvent(String str, String str2, EventType eventType, boolean z, Map<String, String> map) {
        this.f93196a = str;
        this.f93197b = str2;
        this.f93198c = eventType;
        this.f93199d = z;
        this.f93200e = map;
    }
}

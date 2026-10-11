package com.google.android.gms.fido.u2f.api.common;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.fido.u2f.api.common.ChannelIdValue;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: classes5.dex */
public class ClientData {

    @NonNull
    public static final String KEY_CHALLENGE = "challenge";

    @NonNull
    public static final String KEY_CID_PUBKEY = "cid_pubkey";

    @NonNull
    public static final String KEY_ORIGIN = "origin";

    @NonNull
    public static final String KEY_TYPE = "typ";

    @NonNull
    public static final String TYPE_FINISH_ENROLLMENT = "navigator.id.finishEnrollment";

    @NonNull
    public static final String TYPE_GET_ASSERTION = "navigator.id.getAssertion";

    /* renamed from: a */
    public final String f29592a;

    /* renamed from: b */
    public final String f29593b;

    /* renamed from: c */
    public final String f29594c;

    /* renamed from: d */
    public final ChannelIdValue f29595d;

    /* loaded from: classes5.dex */
    public static class Builder implements Cloneable {

        /* renamed from: e */
        public String f29596e;

        /* renamed from: f */
        public String f29597f;

        /* renamed from: g */
        public String f29598g;

        /* renamed from: h */
        public ChannelIdValue f29599h;

        public Builder(String str, String str2, String str3, ChannelIdValue channelIdValue) {
            this.f29596e = str;
            this.f29597f = str2;
            this.f29598g = str3;
            this.f29599h = channelIdValue;
        }

        @NonNull
        public static Builder newInstance() {
            return new Builder();
        }

        @NonNull
        public ClientData build() {
            return new ClientData(this.f29596e, this.f29597f, this.f29598g, this.f29599h);
        }

        @NonNull
        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Builder m72159clone() {
            return new Builder(this.f29596e, this.f29597f, this.f29598g, this.f29599h);
        }

        @NonNull
        public Builder setChallenge(@NonNull String str) {
            this.f29597f = str;
            return this;
        }

        @NonNull
        public Builder setChannelId(@NonNull ChannelIdValue channelIdValue) {
            this.f29599h = channelIdValue;
            return this;
        }

        @NonNull
        public Builder setOrigin(@NonNull String str) {
            this.f29598g = str;
            return this;
        }

        @NonNull
        public Builder setType(@NonNull String str) {
            this.f29596e = str;
            return this;
        }

        public Builder() {
            this.f29599h = ChannelIdValue.ABSENT;
        }
    }

    public ClientData(String str, String str2, String str3, ChannelIdValue channelIdValue) {
        this.f29592a = (String) Preconditions.checkNotNull(str);
        this.f29593b = (String) Preconditions.checkNotNull(str2);
        this.f29594c = (String) Preconditions.checkNotNull(str3);
        this.f29595d = (ChannelIdValue) Preconditions.checkNotNull(channelIdValue);
    }

    public boolean equals(@NonNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientData)) {
            return false;
        }
        ClientData clientData = (ClientData) obj;
        return this.f29592a.equals(clientData.f29592a) && this.f29593b.equals(clientData.f29593b) && this.f29594c.equals(clientData.f29594c) && this.f29595d.equals(clientData.f29595d);
    }

    public int hashCode() {
        return ((((((this.f29592a.hashCode() + 31) * 31) + this.f29593b.hashCode()) * 31) + this.f29594c.hashCode()) * 31) + this.f29595d.hashCode();
    }

    @NonNull
    public String toJsonString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(KEY_TYPE, this.f29592a);
            jSONObject.put(KEY_CHALLENGE, this.f29593b);
            jSONObject.put("origin", this.f29594c);
            ChannelIdValue.ChannelIdValueType channelIdValueType = ChannelIdValue.ChannelIdValueType.ABSENT;
            int ordinal = this.f29595d.getType().ordinal();
            if (ordinal == 1) {
                jSONObject.put(KEY_CID_PUBKEY, this.f29595d.getStringValue());
            } else if (ordinal == 2) {
                jSONObject.put(KEY_CID_PUBKEY, this.f29595d.getObjectValue());
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }
}

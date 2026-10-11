package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.os.PersistableBundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.decoder.CryptoConfig;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes5.dex */
public interface ExoMediaDrm {
    public static final int EVENT_KEY_EXPIRED = 3;
    public static final int EVENT_KEY_REQUIRED = 2;
    public static final int EVENT_PROVISION_REQUIRED = 1;
    public static final int KEY_TYPE_OFFLINE = 2;
    public static final int KEY_TYPE_RELEASE = 3;
    public static final int KEY_TYPE_STREAMING = 1;

    /* loaded from: classes5.dex */
    public static final class AppManagedProvider implements Provider {

        /* renamed from: a */
        public final ExoMediaDrm f23438a;

        public AppManagedProvider(ExoMediaDrm exoMediaDrm) {
            this.f23438a = exoMediaDrm;
        }

        @Override // com.google.android.exoplayer2.drm.ExoMediaDrm.Provider
        public ExoMediaDrm acquireExoMediaDrm(UUID uuid) {
            this.f23438a.acquire();
            return this.f23438a;
        }
    }

    /* loaded from: classes5.dex */
    public static final class KeyRequest {
        public static final int REQUEST_TYPE_INITIAL = 0;
        public static final int REQUEST_TYPE_NONE = 3;
        public static final int REQUEST_TYPE_RELEASE = 2;
        public static final int REQUEST_TYPE_RENEWAL = 1;
        public static final int REQUEST_TYPE_UNKNOWN = Integer.MIN_VALUE;
        public static final int REQUEST_TYPE_UPDATE = 4;

        /* renamed from: a */
        public final byte[] f23439a;

        /* renamed from: b */
        public final String f23440b;

        /* renamed from: c */
        public final int f23441c;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes5.dex */
        public @interface RequestType {
        }

        public KeyRequest(byte[] bArr, String str) {
            this(bArr, str, Integer.MIN_VALUE);
        }

        public byte[] getData() {
            return this.f23439a;
        }

        public String getLicenseServerUrl() {
            return this.f23440b;
        }

        public int getRequestType() {
            return this.f23441c;
        }

        public KeyRequest(byte[] bArr, String str, int i) {
            this.f23439a = bArr;
            this.f23440b = str;
            this.f23441c = i;
        }
    }

    /* loaded from: classes5.dex */
    public static final class KeyStatus {

        /* renamed from: a */
        public final int f23442a;

        /* renamed from: b */
        public final byte[] f23443b;

        public KeyStatus(int i, byte[] bArr) {
            this.f23442a = i;
            this.f23443b = bArr;
        }

        public byte[] getKeyId() {
            return this.f23443b;
        }

        public int getStatusCode() {
            return this.f23442a;
        }
    }

    /* loaded from: classes5.dex */
    public interface OnEventListener {
        void onEvent(ExoMediaDrm exoMediaDrm, @Nullable byte[] bArr, int i, int i2, @Nullable byte[] bArr2);
    }

    /* loaded from: classes5.dex */
    public interface OnExpirationUpdateListener {
        void onExpirationUpdate(ExoMediaDrm exoMediaDrm, byte[] bArr, long j);
    }

    /* loaded from: classes5.dex */
    public interface OnKeyStatusChangeListener {
        void onKeyStatusChange(ExoMediaDrm exoMediaDrm, byte[] bArr, List<KeyStatus> list, boolean z);
    }

    /* loaded from: classes5.dex */
    public interface Provider {
        ExoMediaDrm acquireExoMediaDrm(UUID uuid);
    }

    /* loaded from: classes5.dex */
    public static final class ProvisionRequest {

        /* renamed from: a */
        public final byte[] f23444a;

        /* renamed from: b */
        public final String f23445b;

        public ProvisionRequest(byte[] bArr, String str) {
            this.f23444a = bArr;
            this.f23445b = str;
        }

        public byte[] getData() {
            return this.f23444a;
        }

        public String getDefaultUrl() {
            return this.f23445b;
        }
    }

    void acquire();

    void closeSession(byte[] bArr);

    CryptoConfig createCryptoConfig(byte[] bArr) throws MediaCryptoException;

    int getCryptoType();

    KeyRequest getKeyRequest(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i, @Nullable HashMap<String, String> hashMap) throws NotProvisionedException;

    @Nullable
    PersistableBundle getMetrics();

    byte[] getPropertyByteArray(String str);

    String getPropertyString(String str);

    ProvisionRequest getProvisionRequest();

    byte[] openSession() throws MediaDrmException;

    @Nullable
    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException;

    void provideProvisionResponse(byte[] bArr) throws DeniedByServerException;

    Map<String, String> queryKeyStatus(byte[] bArr);

    void release();

    boolean requiresSecureDecoder(byte[] bArr, String str);

    void restoreKeys(byte[] bArr, byte[] bArr2);

    void setOnEventListener(@Nullable OnEventListener onEventListener);

    void setOnExpirationUpdateListener(@Nullable OnExpirationUpdateListener onExpirationUpdateListener);

    void setOnKeyStatusChangeListener(@Nullable OnKeyStatusChangeListener onKeyStatusChangeListener);

    default void setPlayerIdForSession(byte[] bArr, PlayerId playerId) {
    }

    void setPropertyByteArray(String str, byte[] bArr);

    void setPropertyString(String str, String str2);
}

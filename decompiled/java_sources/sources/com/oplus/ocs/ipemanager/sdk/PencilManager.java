package com.oplus.ocs.ipemanager.sdk;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.oplus.ipemanager.sdk.ISDKAidlCallback;
import com.oplus.ipemanager.sdk.ISdkAidlInterface;
import com.oplus.ipemanager.sdk.IpeFeature;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes9.dex */
public class PencilManager {
    public static final int RELEASE_CODE_SERVICE_DISCONNECTED = -1;
    public static final int RELEASE_CODE_SUCCESS = 0;
    public static final int STATE_CONNECTED = 2;
    public static final int STATE_CONNECTING = 1;
    public static final int STATE_DISCONNECTED = 0;
    public static final int STATE_DISCONNECTING = 3;
    public static final int VERSION_CODE_ERROR = -1;

    /* renamed from: e */
    public static PencilManager f63152e = new PencilManager();

    /* renamed from: a */
    public Callback f63153a;

    /* renamed from: b */
    public ISdkAidlInterface f63154b;

    /* renamed from: c */
    public IBinder.DeathRecipient f63155c = new C13077a();

    /* renamed from: d */
    public final ISDKAidlCallback f63156d = new BinderC13078b();

    /* loaded from: classes9.dex */
    public interface Callback {
        void onConnectionChanged(int i);

        void onDemoModeEnableChange(boolean z);

        void onFunctionFeedbackStateChange(boolean z);

        void onReleased(int i);

        void onVibrationSwitchStateChange(boolean z);
    }

    /* renamed from: com.oplus.ocs.ipemanager.sdk.PencilManager$a */
    /* loaded from: classes9.dex */
    public class C13077a implements IBinder.DeathRecipient {
        public C13077a() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.e("PencilManager", "ISdkAidlInterface dead!!!");
            PencilManager.m52242a(PencilManager.this);
            if (PencilManager.this.f63153a != null) {
                PencilManager.this.f63153a.onReleased(-1);
            }
        }
    }

    /* renamed from: com.oplus.ocs.ipemanager.sdk.PencilManager$b */
    /* loaded from: classes9.dex */
    public class BinderC13078b extends ISDKAidlCallback.AbstractBinderC13023a {
        public BinderC13078b() {
        }

        @Override // com.oplus.ipemanager.sdk.ISDKAidlCallback
        public void onConnectionChanged(int i) throws RemoteException {
            Log.d("PencilManager", "onConnectionChanged  state = ".concat(String.valueOf(i)));
            if (PencilManager.this.f63153a != null) {
                PencilManager.this.f63153a.onConnectionChanged(i);
            }
        }

        @Override // com.oplus.ipemanager.sdk.ISDKAidlCallback
        public void onDemoModeEnableChange(boolean z) throws RemoteException {
            Log.d("PencilManager", "onDemoModeEnableChange, enable = ".concat(String.valueOf(z)));
            if (PencilManager.this.f63153a != null) {
                PencilManager.this.f63153a.onDemoModeEnableChange(z);
            }
        }

        @Override // com.oplus.ipemanager.sdk.ISDKAidlCallback
        public void onFunctionFeedbackStateChange(boolean z) throws RemoteException {
            Log.d("PencilManager", "onFunctionFeedbackStateChange, enable = ".concat(String.valueOf(z)));
            if (PencilManager.this.f63153a != null) {
                PencilManager.this.f63153a.onFunctionFeedbackStateChange(z);
            }
        }

        @Override // com.oplus.ipemanager.sdk.ISDKAidlCallback
        public void onVibrationSwitchStateChange(boolean z) throws RemoteException {
            Log.d("PencilManager", "onVibrationSwitchStateChange  isOpen = ".concat(String.valueOf(z)));
            if (PencilManager.this.f63153a != null) {
                PencilManager.this.f63153a.onVibrationSwitchStateChange(z);
            }
        }
    }

    /* renamed from: com.oplus.ocs.ipemanager.sdk.PencilManager$c */
    /* loaded from: classes9.dex */
    public static /* synthetic */ class C13079c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f63159a;

        static {
            int[] iArr = new int[Vibration.values().length];
            f63159a = iArr;
            try {
                iArr[Vibration.PENCIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f63159a[Vibration.ERASER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f63159a[Vibration.BALLPEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f63159a[Vibration.PEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f63159a[Vibration.FUNCTION_VIBRATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ ISdkAidlInterface m52242a(PencilManager pencilManager) {
        pencilManager.f63154b = null;
        return null;
    }

    public static PencilManager getInstance() {
        return f63152e;
    }

    public int getPencilConnectState() {
        Log.d("PencilManager", "getPencilConnectState");
        ISdkAidlInterface iSdkAidlInterface = this.f63154b;
        if (iSdkAidlInterface == null) {
            return 0;
        }
        try {
            return iSdkAidlInterface.getPencilConnectState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public List<IpeFeature> getSupportFeatures() {
        Log.d("PencilManager", "getSupportFeatures");
        ISdkAidlInterface iSdkAidlInterface = this.f63154b;
        if (iSdkAidlInterface == null) {
            Log.e("PencilManager", "getSupportFeatures error, interface is null");
            return new ArrayList();
        }
        try {
            return iSdkAidlInterface.getSupportFeatures();
        } catch (RemoteException e) {
            Log.e("PencilManager", "getSupportFeatures error = ".concat(String.valueOf(e)));
            return null;
        }
    }

    public int getSupportSdkVersion() {
        Log.d("PencilManager", "getSupportSdkVersion");
        ISdkAidlInterface iSdkAidlInterface = this.f63154b;
        if (iSdkAidlInterface == null) {
            Log.e("PencilManager", "getSupportSdkVersion error, interface is null");
            return -1;
        }
        try {
            return iSdkAidlInterface.getSuportSdkVersion();
        } catch (RemoteException e) {
            Log.e("PencilManager", "getSupportSdkVersion error = ".concat(String.valueOf(e)));
            return -1;
        }
    }

    public boolean getVibrationSwitchState() {
        Log.d("PencilManager", "getVibrationSwitchState");
        ISdkAidlInterface iSdkAidlInterface = this.f63154b;
        if (iSdkAidlInterface == null) {
            return false;
        }
        try {
            return iSdkAidlInterface.getVibrationSwitchState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isDemoModeEnable() {
        Log.d("PencilManager", "isDemoModeEnable");
        ISdkAidlInterface iSdkAidlInterface = this.f63154b;
        if (iSdkAidlInterface == null) {
            Log.e("PencilManager", "isDemoModeEnable error, interface is null");
            return false;
        }
        try {
            return iSdkAidlInterface.isDemoModeEnable();
        } catch (RemoteException e) {
            Log.e("PencilManager", "isDemoModeEnable error = ".concat(String.valueOf(e)));
            return false;
        }
    }

    public boolean isFunctionFeedbackEnable() {
        Log.d("PencilManager", "isFunctionFeedbackEnable");
        ISdkAidlInterface iSdkAidlInterface = this.f63154b;
        if (iSdkAidlInterface == null) {
            Log.e("PencilManager", "isFunctionFeedbackEnable error, interface is null");
            return false;
        }
        try {
            return iSdkAidlInterface.isFunctionVibrationEnable();
        } catch (RemoteException e) {
            Log.e("PencilManager", "isFunctionFeedbackEnable error = ".concat(String.valueOf(e)));
            return false;
        }
    }

    public void release() {
        Log.d("PencilManager", "release ");
        ISdkAidlInterface iSdkAidlInterface = this.f63154b;
        if (iSdkAidlInterface != null) {
            try {
                iSdkAidlInterface.unsetISdkAidlCallback(this.f63156d);
                this.f63154b.asBinder().unlinkToDeath(this.f63155c, 0);
            } catch (RemoteException e) {
                Log.e("PencilManager", "release, error = ".concat(String.valueOf(e)));
            }
            Callback callback = this.f63153a;
            if (callback != null) {
                callback.onReleased(0);
            }
            this.f63154b = null;
        }
    }

    public void setVibrationType(Vibration vibration) {
        Log.d("PencilManager", "setVibrationType ".concat(String.valueOf(vibration)));
        if (this.f63154b == null) {
            return;
        }
        try {
            int i = C13079c.f63159a[vibration.ordinal()];
            if (i == 1) {
                this.f63154b.setVibrationType(0);
                return;
            }
            if (i == 2) {
                this.f63154b.setVibrationType(1);
            } else if (i == 3) {
                this.f63154b.setVibrationType(2);
            } else {
                if (i != 4) {
                    return;
                }
                this.f63154b.setVibrationType(3);
            }
        } catch (RemoteException e) {
            Log.e("PencilManager", "setVibrationType, error = ".concat(String.valueOf(e)));
        }
    }

    public void startFeedBackVibration() {
        ISdkAidlInterface iSdkAidlInterface = this.f63154b;
        if (iSdkAidlInterface != null) {
            try {
                iSdkAidlInterface.startFeedBackVibration();
            } catch (Exception e) {
                Log.e("PencilManager", "startFeedBackVibration, error = ".concat(String.valueOf(e)));
            }
        }
    }

    public void startVibration(Vibration vibration) {
        if (vibration == null) {
            Log.e("PencilManager", "startVibration error, type is null!");
            return;
        }
        if (this.f63154b == null) {
            Log.e("PencilManager", "mInterface is null!");
            return;
        }
        Log.d("PencilManager", "startVibration ".concat(String.valueOf(vibration)));
        try {
            if (C13079c.f63159a[vibration.ordinal()] != 5) {
                return;
            }
            this.f63154b.startVibration(vibration.ordinal());
        } catch (RemoteException e) {
            Log.e("PencilManager", "startVibration, error = ".concat(String.valueOf(e)));
        }
    }

    public void stopFeedBackVibration() {
        ISdkAidlInterface iSdkAidlInterface = this.f63154b;
        if (iSdkAidlInterface != null) {
            try {
                iSdkAidlInterface.stopFeedBackVibration();
            } catch (Exception e) {
                Log.e("PencilManager", "stopFeedBackVibration, error = ".concat(String.valueOf(e)));
            }
        }
    }
}

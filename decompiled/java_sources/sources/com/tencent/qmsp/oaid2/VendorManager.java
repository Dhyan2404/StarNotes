package com.tencent.qmsp.oaid2;

import android.content.Context;
import android.os.Build;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;

/* loaded from: classes10.dex */
public class VendorManager implements IVendorCallback {
    public InterfaceC16864b vendorInfo = null;
    public IVendorCallback userCallback = null;

    /* renamed from: com.tencent.qmsp.oaid2.VendorManager$a */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C16861a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f93705a;

        static {
            int[] iArr = new int[EnumC16868d.values().length];
            f93705a = iArr;
            try {
                iArr[EnumC16868d.XIAOMI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f93705a[EnumC16868d.BLACKSHARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f93705a[EnumC16868d.VIVO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f93705a[EnumC16868d.HUA_WEI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f93705a[EnumC16868d.OPPO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f93705a[EnumC16868d.ONEPLUS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f93705a[EnumC16868d.MOTO.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f93705a[EnumC16868d.LENOVO.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f93705a[EnumC16868d.ASUS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f93705a[EnumC16868d.SAMSUNG.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f93705a[EnumC16868d.MEIZU.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f93705a[EnumC16868d.ALPS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f93705a[EnumC16868d.NUBIA.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f93705a[EnumC16868d.ZTE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f93705a[EnumC16868d.FREEMEOS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f93705a[EnumC16868d.SSUIOS.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public int getVendorInfo(Context context, IVendorCallback iVendorCallback) {
        this.userCallback = iVendorCallback;
        EnumC16868d m60158a = EnumC16868d.m60158a(Build.MANUFACTURER);
        if (m60158a == EnumC16868d.UNSUPPORT) {
            onResult(false, "null", "null");
            return C16862a.f93706a;
        }
        switch (C16861a.f93705a[m60158a.ordinal()]) {
            case 1:
            case 2:
                this.vendorInfo = new C16889n0();
                break;
            case 3:
                this.vendorInfo = new C16887m0();
                break;
            case 4:
                this.vendorInfo = new C16884l();
                break;
            case 5:
            case 6:
                this.vendorInfo = new C16873f0();
                break;
            case 7:
            case 8:
                this.vendorInfo = new C16890o();
                break;
            case 9:
                this.vendorInfo = new C16876h();
                break;
            case 10:
                this.vendorInfo = new C16883k0();
                break;
            case 11:
            case 12:
                this.vendorInfo = new C16863a0();
                break;
            case 13:
                this.vendorInfo = new C16865b0();
                break;
            case 14:
            case 15:
            case 16:
                this.vendorInfo = new C16896u();
                break;
        }
        if (this.vendorInfo == null) {
            onResult(false, "null", "null");
            return C16862a.f93707b;
        }
        C16866c.m60153b("init");
        try {
            this.vendorInfo.mo60146a(context, this);
            if (this.vendorInfo.mo60150k()) {
                C16866c.m60153b(EventHandlerManager.SYNC);
                try {
                    onResult(this.vendorInfo.mo60148e(), this.vendorInfo.mo60147d(), this.vendorInfo.mo60145a());
                } catch (Exception unused) {
                    onResult(false, "null", "null");
                }
            } else {
                try {
                    this.vendorInfo.mo60149j();
                } catch (Exception unused2) {
                    onResult(false, "null", "null");
                    return C16862a.f93708c;
                }
            }
            return 0;
        } catch (Exception unused3) {
            onResult(false, "null", "null");
            return C16862a.f93708c;
        }
    }

    @Override // com.tencent.qmsp.oaid2.IVendorCallback
    public void onResult(boolean z, String str, String str2) {
        C16866c.m60154c("vm onResult " + z);
        IVendorCallback iVendorCallback = this.userCallback;
        if (iVendorCallback != null) {
            iVendorCallback.onResult(z, str, str2);
        }
        InterfaceC16864b interfaceC16864b = this.vendorInfo;
        if (interfaceC16864b != null) {
            interfaceC16864b.mo60151l();
        }
    }
}

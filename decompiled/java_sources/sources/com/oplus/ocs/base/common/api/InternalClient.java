package com.oplus.ocs.base.common.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.oplus.ocs.base.IAuthenticationListener;
import com.oplus.ocs.base.utils.C13071a;

/* loaded from: classes9.dex */
public class InternalClient implements Handler.Callback {
    private static final int HANDLE_UNBIND = 1001;
    private static final String TAG = "InternalClient";
    private InterfaceC13038e mAuthenticateCustomer;
    private String mClient;
    private Context mContext;
    private Handler mHandler;
    private boolean mIsActiveWritePermits;
    private boolean mIsWaitService;
    private IAuthenticationListener mListener;
    private String mPackageName;
    private int mThirdPid;

    public InternalClient(Context context, String str, String str2, int i, boolean z, IAuthenticationListener iAuthenticationListener) {
        this(context, str, str2, i, z, false, iAuthenticationListener);
    }

    public boolean connect() {
        InterfaceC13038e interfaceC13038e = this.mAuthenticateCustomer;
        if (interfaceC13038e != null) {
            return interfaceC13038e.mo52170a();
        }
        return false;
    }

    public boolean connect4Stat() {
        InterfaceC13038e interfaceC13038e = this.mAuthenticateCustomer;
        if (interfaceC13038e != null) {
            return interfaceC13038e.mo52171b();
        }
        return false;
    }

    public Intent getServiceIntent(String str, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.setComponent(new ComponentName(str2, str3));
        intent.putExtra("bind_type", 1);
        intent.putExtra("internal_third_packagename", this.mPackageName);
        intent.putExtra("internal_capability_client", this.mClient);
        intent.putExtra("internal_third_pid", this.mThirdPid);
        intent.putExtra("internal_active_write_permits", this.mIsActiveWritePermits);
        intent.putExtra("internal_base_version", "1.0.11");
        intent.putExtra("internal_wait_service", this.mIsWaitService);
        intent.setType("internal_service_" + this.mClient);
        return intent;
    }

    public Intent getServiceIntent4Stat(String str, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.setComponent(new ComponentName(str2, str3));
        intent.putExtra("bind_type", 2);
        intent.putExtra("internal_third_packagename", this.mPackageName);
        intent.putExtra("internal_capability_client", this.mClient);
        intent.setType("internal_service_" + this.mClient);
        return intent;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        InterfaceC13038e interfaceC13038e;
        C13071a.m52226a(TAG, String.format("current thread - %s and what - %d", Thread.currentThread().getName(), Integer.valueOf(message.what)));
        if (message.what != 1001 || (interfaceC13038e = this.mAuthenticateCustomer) == null) {
            return false;
        }
        interfaceC13038e.mo52172c();
        return false;
    }

    public void serviceUnbind() {
        this.mHandler.sendEmptyMessage(1001);
    }

    public InternalClient(Context context, String str, String str2, int i, boolean z, boolean z2, IAuthenticationListener iAuthenticationListener) {
        this.mIsActiveWritePermits = false;
        this.mContext = context.getApplicationContext();
        this.mListener = iAuthenticationListener;
        this.mPackageName = str;
        this.mClient = str2;
        this.mThirdPid = i;
        this.mIsActiveWritePermits = z;
        this.mIsWaitService = z2;
        HandlerThread handlerThread = new HandlerThread("internal");
        handlerThread.start();
        if (handlerThread.getLooper() != null) {
            this.mHandler = new Handler(handlerThread.getLooper(), this);
        } else {
            this.mHandler = new Handler(this);
        }
        C13035b.m52174a();
        this.mAuthenticateCustomer = C13035b.m52175a(this.mContext, this, this.mListener);
    }
}

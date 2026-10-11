package com.evernote.client.android;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentActivity;
import com.evernote.client.android.asyncclient.EvernoteClientFactory;
import com.evernote.client.android.helper.Cat;
import com.evernote.client.android.helper.EvernotePreconditions;
import com.evernote.client.android.login.EvernoteLoginActivity;
import com.evernote.client.android.login.EvernoteLoginFragment;
import java.util.Locale;

/* loaded from: classes4.dex */
public final class EvernoteSession {
    public static final String HOST_CHINA = "https://app.yinxiang.com";
    public static final String HOST_PRODUCTION = "https://www.evernote.com";
    public static final String HOST_SANDBOX = "https://sandbox.evernote.com";
    public static final int REQUEST_CODE_LOGIN = 14390;
    public static final String SCREEN_NAME_INTERNATIONAL = "Evernote International";
    public static final String SCREEN_NAME_YXBIJI = "印象笔记";

    /* renamed from: k */
    public static final Cat f20809k = new Cat(BootstrapManager.f20790e);

    /* renamed from: l */
    public static EvernoteSession f20810l = null;

    /* renamed from: a */
    public Context f20811a;

    /* renamed from: b */
    public String f20812b;

    /* renamed from: c */
    public String f20813c;

    /* renamed from: d */
    public EvernoteService f20814d;

    /* renamed from: e */
    public AuthenticationResult f20815e;

    /* renamed from: f */
    public boolean f20816f;

    /* renamed from: g */
    public boolean f20817g;

    /* renamed from: h */
    public Locale f20818h;

    /* renamed from: i */
    public EvernoteClientFactory.Builder f20819i;

    /* renamed from: j */
    public ThreadLocal<EvernoteClientFactory> f20820j;

    /* loaded from: classes4.dex */
    public static class Builder {

        /* renamed from: a */
        public final Context f20821a;

        /* renamed from: b */
        public EvernoteService f20822b;

        /* renamed from: c */
        public boolean f20823c;

        /* renamed from: d */
        public Locale f20824d;

        /* renamed from: e */
        public boolean f20825e;

        public Builder(Context context) {
            EvernotePreconditions.checkNotNull(context);
            this.f20821a = context.getApplicationContext();
            this.f20823c = true;
            this.f20822b = EvernoteService.SANDBOX;
            this.f20824d = Locale.getDefault();
        }

        /* renamed from: a */
        public final EvernoteSession m16931a(EvernoteSession evernoteSession) {
            evernoteSession.f20811a = this.f20821a;
            evernoteSession.f20818h = this.f20824d;
            evernoteSession.f20816f = this.f20823c;
            evernoteSession.f20814d = this.f20822b;
            evernoteSession.f20817g = this.f20825e;
            return evernoteSession;
        }

        public EvernoteSession build(String str, String str2) {
            EvernoteSession evernoteSession = new EvernoteSession();
            evernoteSession.f20812b = (String) EvernotePreconditions.checkNotEmpty(str);
            evernoteSession.f20813c = (String) EvernotePreconditions.checkNotEmpty(str2);
            evernoteSession.f20815e = AuthenticationResult.m16907b(this.f20821a);
            return m16931a(evernoteSession);
        }

        public EvernoteSession buildForSingleUser(String str, String str2) {
            EvernoteSession evernoteSession = new EvernoteSession();
            evernoteSession.f20815e = new AuthenticationResult((String) EvernotePreconditions.checkNotEmpty(str), (String) EvernotePreconditions.checkNotEmpty(str2), this.f20823c);
            return m16931a(evernoteSession);
        }

        public Builder setEvernoteService(EvernoteService evernoteService) {
            this.f20822b = (EvernoteService) EvernotePreconditions.checkNotNull(evernoteService);
            return this;
        }

        public Builder setForceAuthenticationInThirdPartyApp(boolean z) {
            this.f20825e = z;
            return this;
        }

        public Builder setLocale(Locale locale) {
            this.f20824d = (Locale) EvernotePreconditions.checkNotNull(locale);
            return this;
        }

        public Builder setSupportAppLinkedNotebooks(boolean z) {
            this.f20823c = z;
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public enum EvernoteService implements Parcelable {
        SANDBOX,
        PRODUCTION;

        public static final Parcelable.Creator<EvernoteService> CREATOR = new C4459a();

        /* renamed from: com.evernote.client.android.EvernoteSession$EvernoteService$a */
        /* loaded from: classes4.dex */
        public static class C4459a implements Parcelable.Creator<EvernoteService> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public EvernoteService createFromParcel(Parcel parcel) {
                return EvernoteService.values()[parcel.readInt()];
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public EvernoteService[] newArray(int i) {
                return new EvernoteService[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(ordinal());
        }
    }

    public static EvernoteSession getInstance() {
        return f20810l;
    }

    public EvernoteSession asSingleton() {
        f20810l = this;
        return this;
    }

    public void authenticate(FragmentActivity fragmentActivity) {
        authenticate(fragmentActivity, EvernoteLoginFragment.create(this.f20812b, this.f20813c, this.f20816f, this.f20818h));
    }

    public Context getApplicationContext() {
        return this.f20811a;
    }

    public String getAuthToken() {
        AuthenticationResult authenticationResult = this.f20815e;
        if (authenticationResult != null) {
            return authenticationResult.getAuthToken();
        }
        return null;
    }

    public AuthenticationResult getAuthenticationResult() {
        return this.f20815e;
    }

    public synchronized EvernoteClientFactory getEvernoteClientFactory() {
        EvernoteClientFactory evernoteClientFactory;
        if (this.f20820j == null) {
            this.f20820j = new ThreadLocal<>();
        }
        if (this.f20819i == null) {
            this.f20819i = new EvernoteClientFactory.Builder(this);
        }
        evernoteClientFactory = this.f20820j.get();
        if (evernoteClientFactory == null) {
            evernoteClientFactory = this.f20819i.build();
            this.f20820j.set(evernoteClientFactory);
        }
        return evernoteClientFactory;
    }

    public EvernoteService getEvernoteService() {
        return this.f20814d;
    }

    /* renamed from: i */
    public boolean m16930i() {
        return this.f20817g;
    }

    public synchronized boolean isLoggedIn() {
        return this.f20815e != null;
    }

    public synchronized boolean logOut() {
        if (!isLoggedIn()) {
            return false;
        }
        this.f20815e.m16910a();
        this.f20815e = null;
        EvernoteUtil.removeAllCookies(getApplicationContext());
        return true;
    }

    public synchronized void setAuthenticationResult(AuthenticationResult authenticationResult) {
        this.f20815e = authenticationResult;
    }

    public synchronized void setEvernoteClientFactoryBuilder(EvernoteClientFactory.Builder builder) {
        this.f20819i = (EvernoteClientFactory.Builder) EvernotePreconditions.checkNotNull(builder);
        this.f20820j = null;
    }

    public EvernoteSession() {
    }

    public void authenticate(FragmentActivity fragmentActivity, EvernoteLoginFragment evernoteLoginFragment) {
        evernoteLoginFragment.show(fragmentActivity.getSupportFragmentManager(), EvernoteLoginFragment.TAG);
    }

    public void authenticate(Activity activity) {
        activity.startActivityForResult(EvernoteLoginActivity.createIntent(activity, this.f20812b, this.f20813c, this.f20816f, this.f20818h), REQUEST_CODE_LOGIN);
    }
}

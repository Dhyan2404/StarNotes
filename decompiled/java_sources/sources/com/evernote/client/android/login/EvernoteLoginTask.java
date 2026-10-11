package com.evernote.client.android.login;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Intent;
import android.text.TextUtils;
import androidx.activity.result.ActivityResultCaller;
import com.evernote.client.android.EvernoteOAuthHelper;
import com.evernote.client.android.EvernoteSession;
import com.evernote.client.android.EvernoteUtil;
import com.evernote.client.android.helper.Cat;
import com.evernote.edam.userstore.BootstrapProfile;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import net.vrallev.android.task.Task;

/* loaded from: classes4.dex */
public class EvernoteLoginTask extends Task<Boolean> {

    /* renamed from: s */
    public static final Cat f21156s = new Cat("EvernoteLoginTask");

    /* renamed from: t */
    public static final int f21157t = 858;

    /* renamed from: u */
    public static final int f21158u = 859;

    /* renamed from: j */
    public final EvernoteOAuthHelper f21159j;

    /* renamed from: k */
    public List<BootstrapProfile> f21160k;

    /* renamed from: l */
    public BootstrapProfile f21161l;

    /* renamed from: m */
    public int f21162m;

    /* renamed from: n */
    public CountDownLatch f21163n;

    /* renamed from: o */
    public CountDownLatch f21164o;

    /* renamed from: p */
    public int f21165p;

    /* renamed from: q */
    public Intent f21166q;

    /* renamed from: r */
    public final boolean f21167r;

    /* loaded from: classes4.dex */
    public interface LoginTaskCallback {
        void show(String str);

        void startActivityForResult(Intent intent, int i);
    }

    public EvernoteLoginTask(EvernoteOAuthHelper evernoteOAuthHelper, boolean z) {
        this.f21159j = evernoteOAuthHelper;
        this.f21167r = z;
    }

    /* renamed from: k */
    public final boolean m17090k() {
        return (isCancelled() || getActivity() == null) ? false : true;
    }

    @Override // net.vrallev.android.task.Task
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public Boolean execute() {
        if (m17099t() && m17090k()) {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            this.f21164o = countDownLatch;
            try {
                countDownLatch.await();
                return Boolean.valueOf(m17092m());
            } catch (InterruptedException unused) {
                return Boolean.FALSE;
            }
        }
        return Boolean.FALSE;
    }

    /* renamed from: m */
    public final boolean m17092m() {
        return m17090k() && this.f21159j.finishAuthorization(getActivity(), this.f21165p, this.f21166q);
    }

    /* renamed from: n */
    public final String m17093n() {
        LoginTaskCallback m17094o;
        Intent createGetBootstrapProfileNameIntent;
        Activity activity = getActivity();
        if (activity == null || (m17094o = m17094o()) == null || (createGetBootstrapProfileNameIntent = EvernoteUtil.createGetBootstrapProfileNameIntent(activity, EvernoteSession.getInstance())) == null) {
            return null;
        }
        m17094o.startActivityForResult(createGetBootstrapProfileNameIntent, f21158u);
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f21164o = countDownLatch;
        try {
            countDownLatch.await(3L, TimeUnit.SECONDS);
            Intent intent = this.f21166q;
            if (intent == null) {
                return null;
            }
            return intent.getStringExtra(EvernoteUtil.EXTRA_BOOTSTRAP_PROFILE_NAME);
        } catch (InterruptedException unused) {
            return null;
        }
    }

    /* renamed from: o */
    public final LoginTaskCallback m17094o() {
        if (this.f21167r) {
            ActivityResultCaller fragment = getFragment();
            if (fragment instanceof LoginTaskCallback) {
                return (LoginTaskCallback) fragment;
            }
            return null;
        }
        ComponentCallbacks2 activity = getActivity();
        if (activity instanceof LoginTaskCallback) {
            return (LoginTaskCallback) activity;
        }
        return null;
    }

    /* renamed from: p */
    public final BootstrapProfile m17095p() {
        return this.f21160k.get((this.f21162m + 1) % this.f21160k.size());
    }

    /* renamed from: q */
    public final String m17096q(BootstrapProfile bootstrapProfile) {
        return EvernoteOAuthHelper.CHINA_PROFILE_NAME.equals(bootstrapProfile.getName()) ? EvernoteSession.SCREEN_NAME_YXBIJI : EvernoteSession.HOST_PRODUCTION.contains(bootstrapProfile.getSettings().getServiceHost()) ? EvernoteSession.SCREEN_NAME_INTERNATIONAL : bootstrapProfile.getName();
    }

    /* renamed from: r */
    public void m17097r(int i, Intent intent) {
        CountDownLatch countDownLatch = this.f21164o;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
        this.f21165p = i;
        this.f21166q = intent;
    }

    /* renamed from: s */
    public final void m17098s() {
        LoginTaskCallback m17094o = m17094o();
        if (m17094o == null) {
            return;
        }
        m17094o.show(m17096q(m17095p()));
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f21163n = countDownLatch;
        try {
            if (countDownLatch.await(3L, TimeUnit.SECONDS)) {
                m17098s();
            } else {
                LoginTaskCallback m17094o2 = m17094o();
                if (m17094o2 != null) {
                    m17094o2.show(null);
                }
            }
        } catch (InterruptedException e) {
            f21156s.m17075e(e);
        }
    }

    /* renamed from: t */
    public final boolean m17099t() {
        LoginTaskCallback m17094o;
        boolean z;
        if (!m17090k()) {
            return false;
        }
        try {
            List<BootstrapProfile> fetchBootstrapProfiles = this.f21159j.fetchBootstrapProfiles();
            this.f21160k = fetchBootstrapProfiles;
            this.f21161l = this.f21159j.getDefaultBootstrapProfile(fetchBootstrapProfiles);
        } catch (Exception e) {
            f21156s.m17075e(e);
        }
        if (!m17090k()) {
            return false;
        }
        List<BootstrapProfile> list = this.f21160k;
        if (list != null && list.size() > 1) {
            String m17093n = m17093n();
            if (!m17090k()) {
                return false;
            }
            if (!TextUtils.isEmpty(m17093n)) {
                for (BootstrapProfile bootstrapProfile : this.f21160k) {
                    if (m17093n.equals(bootstrapProfile.getName())) {
                        this.f21161l = bootstrapProfile;
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            if (z) {
                int i = 0;
                while (true) {
                    if (i >= this.f21160k.size()) {
                        break;
                    }
                    if (this.f21161l.equals(this.f21160k.get(i))) {
                        this.f21162m = i;
                        break;
                    }
                    i++;
                }
                m17098s();
            }
        }
        BootstrapProfile bootstrapProfile2 = this.f21161l;
        if (bootstrapProfile2 != null) {
            this.f21159j.setBootstrapProfile(bootstrapProfile2);
        }
        if (!m17090k()) {
            return false;
        }
        Intent startAuthorization = this.f21159j.startAuthorization(getActivity());
        if (!m17090k() || startAuthorization == null || (m17094o = m17094o()) == null) {
            return false;
        }
        m17094o.startActivityForResult(startAuthorization, f21157t);
        return true;
    }

    /* renamed from: u */
    public void m17100u() {
        int size = (this.f21162m + 1) % this.f21160k.size();
        this.f21162m = size;
        this.f21161l = this.f21160k.get(size);
        CountDownLatch countDownLatch = this.f21163n;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }
}

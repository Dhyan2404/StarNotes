package com.evernote.client.android;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.evernote.client.android.helper.Cat;
import com.sagittarius.p050v6.C13086AB;

/* loaded from: classes17.dex */
public class EvernoteOAuthActivity extends FragmentActivity {

    /* renamed from: t0 */
    public static final Cat f20799t0 = new Cat("EvernoteOAuthActivity");

    /* renamed from: u0 */
    public static final String f20800u0 = "www.evernote.com";

    /* renamed from: v0 */
    public static final String f20801v0 = "sandbox.evernote.com";

    /* renamed from: w0 */
    public static final String f20802w0 = "app.yinxiang.com";

    /* loaded from: classes4.dex */
    public static class WebViewFragment extends Fragment {

        /* renamed from: g1 */
        public static final String f20803g1 = "IntentKey";

        /* renamed from: c1 */
        public WebView f20804c1;

        /* renamed from: d1 */
        public boolean f20805d1;

        /* renamed from: e1 */
        public String f20806e1;

        /* renamed from: f1 */
        public WebViewClient f20807f1 = new C4458a();

        /* renamed from: com.evernote.client.android.EvernoteOAuthActivity$WebViewFragment$a */
        /* loaded from: classes4.dex */
        public class C4458a extends WebViewClient {
            public C4458a() {
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (!"en-oauth".equals(Uri.parse(str).getScheme())) {
                    return super.shouldOverrideUrlLoading(webView, str);
                }
                ((EvernoteOAuthActivity) WebViewFragment.this.getActivity()).m16919A(str);
                WebViewFragment.this.getActivity().finish();
                return true;
            }
        }

        public static WebViewFragment createInstance() {
            WebViewFragment webViewFragment = new WebViewFragment();
            webViewFragment.setRetainInstance(true);
            return webViewFragment;
        }

        public WebView getWebView() {
            if (this.f20805d1) {
                return this.f20804c1;
            }
            return null;
        }

        /* renamed from: k0 */
        public final void m16920k0() {
            WebView webView = this.f20804c1;
            if (webView != null) {
                ViewGroup viewGroup = (ViewGroup) webView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.f20804c1);
                }
                this.f20804c1.destroy();
                this.f20804c1 = null;
            }
        }

        @Override // androidx.fragment.app.Fragment
        public void onAttach(Activity activity) {
            if (!(activity instanceof EvernoteOAuthActivity)) {
                throw new IllegalArgumentException();
            }
            super.onAttach(activity);
            this.f20806e1 = activity.getIntent().getStringExtra(EvernoteUtil.EXTRA_AUTHORIZATION_URL);
        }

        @Override // androidx.fragment.app.Fragment
        @SuppressLint({"SetJavaScriptEnabled"})
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            m16920k0();
            WebView webView = new WebView(getActivity());
            this.f20804c1 = webView;
            webView.setWebViewClient(this.f20807f1);
            this.f20804c1.getSettings().setJavaScriptEnabled(true);
            if (bundle == null) {
                this.f20804c1.loadUrl(this.f20806e1);
            } else {
                this.f20804c1.restoreState(bundle);
            }
            this.f20805d1 = true;
            return this.f20804c1;
        }

        @Override // androidx.fragment.app.Fragment
        public void onDestroy() {
            m16920k0();
            super.onDestroy();
        }

        @Override // androidx.fragment.app.Fragment
        public void onDestroyView() {
            this.f20805d1 = false;
            super.onDestroyView();
        }

        @Override // androidx.fragment.app.Fragment
        public void onPause() {
            super.onPause();
            this.f20804c1.onPause();
        }

        @Override // androidx.fragment.app.Fragment
        public void onResume() {
            this.f20804c1.onResume();
            super.onResume();
        }

        @Override // androidx.fragment.app.Fragment
        public void onSaveInstanceState(Bundle bundle) {
            super.onSaveInstanceState(bundle);
            this.f20804c1.saveState(bundle);
        }
    }

    public static Intent createIntent(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) EvernoteOAuthActivity.class);
        intent.putExtra(EvernoteUtil.EXTRA_AUTHORIZATION_URL, str);
        return intent;
    }

    /* renamed from: A */
    public final void m16919A(String str) {
        Intent intent = new Intent();
        intent.putExtra(EvernoteUtil.EXTRA_OAUTH_CALLBACK_URL, str);
        setResult(TextUtils.isEmpty(str) ? 0 : -1, intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        C13086AB.m52315v(-1426063358, this, bundle);
    }
}

package androidx.media.session;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.media.MediaBrowserServiceCompat;
import java.util.List;

/* loaded from: classes3.dex */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f8289a = "MediaButtonReceiver";

    /* renamed from: androidx.media.session.MediaButtonReceiver$a */
    /* loaded from: classes3.dex */
    public static class C1215a extends MediaBrowserCompat.ConnectionCallback {

        /* renamed from: c */
        public final Context f8290c;

        /* renamed from: d */
        public final Intent f8291d;

        /* renamed from: e */
        public final BroadcastReceiver.PendingResult f8292e;

        /* renamed from: f */
        public MediaBrowserCompat f8293f;

        public C1215a(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f8290c = context;
            this.f8291d = intent;
            this.f8292e = pendingResult;
        }

        /* renamed from: b */
        public final void m5088b() {
            this.f8293f.disconnect();
            this.f8292e.finish();
        }

        /* renamed from: c */
        public void m5089c(MediaBrowserCompat mediaBrowser) {
            this.f8293f = mediaBrowser;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnected() {
            new MediaControllerCompat(this.f8290c, this.f8293f.getSessionToken()).dispatchMediaButtonEvent((KeyEvent) this.f8291d.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            m5088b();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnectionFailed() {
            m5088b();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnectionSuspended() {
            m5088b();
        }
    }

    /* renamed from: a */
    public static ComponentName m5087a(Context context, String action) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(action);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices.size() == 1) {
            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
            return new ComponentName(serviceInfo.packageName, serviceInfo.name);
        }
        if (queryIntentServices.isEmpty()) {
            return null;
        }
        throw new IllegalStateException("Expected 1 service that handles " + action + ", found " + queryIntentServices.size());
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, long action) {
        ComponentName mediaButtonReceiverComponent = getMediaButtonReceiverComponent(context);
        if (mediaButtonReceiverComponent == null) {
            Log.w(f8289a, "A unique media button receiver could not be found in the given context, so couldn't build a pending intent.");
            return null;
        }
        return buildMediaButtonPendingIntent(context, mediaButtonReceiverComponent, action);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static ComponentName getMediaButtonReceiverComponent(Context context) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers.size() == 1) {
            ActivityInfo activityInfo = queryBroadcastReceivers.get(0).activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        }
        if (queryBroadcastReceivers.size() <= 1) {
            return null;
        }
        Log.w(f8289a, "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
        return null;
    }

    public static KeyEvent handleIntent(MediaSessionCompat mediaSessionCompat, Intent intent) {
        if (mediaSessionCompat == null || intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            return null;
        }
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        mediaSessionCompat.getController().dispatchMediaButtonEvent(keyEvent);
        return keyEvent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            Log.d(f8289a, "Ignore unsupported intent: " + intent);
            return;
        }
        ComponentName m5087a = m5087a(context, "android.intent.action.MEDIA_BUTTON");
        if (m5087a != null) {
            intent.setComponent(m5087a);
            ContextCompat.startForegroundService(context, intent);
            return;
        }
        ComponentName m5087a2 = m5087a(context, MediaBrowserServiceCompat.SERVICE_INTERFACE);
        if (m5087a2 == null) {
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
        BroadcastReceiver.PendingResult goAsync = goAsync();
        Context applicationContext = context.getApplicationContext();
        C1215a c1215a = new C1215a(applicationContext, intent, goAsync);
        MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, m5087a2, c1215a, null);
        c1215a.m5089c(mediaBrowserCompat);
        mediaBrowserCompat.connect();
    }

    @SuppressLint({"WrongConstant"})
    public static PendingIntent buildMediaButtonPendingIntent(Context context, ComponentName mbrComponent, long action) {
        if (mbrComponent == null) {
            Log.w(f8289a, "The component name of media button receiver should be provided.");
            return null;
        }
        int keyCode = PlaybackStateCompat.toKeyCode(action);
        if (keyCode == 0) {
            Log.w(f8289a, "Cannot build a media button pending intent with the given action: " + action);
            return null;
        }
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(mbrComponent);
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, keyCode));
        intent.addFlags(268435456);
        return PendingIntent.getBroadcast(context, keyCode, intent, MediaSessionCompat.PENDING_INTENT_FLAG_MUTABLE);
    }
}

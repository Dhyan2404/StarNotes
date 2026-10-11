package com.google.android.exoplayer2.p008ui;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.media.app.NotificationCompat;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.p008ui.PlayerNotificationManager;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.NotificationUtil;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public class PlayerNotificationManager {
    public static final String ACTION_FAST_FORWARD = "com.google.android.exoplayer.ffwd";
    public static final String ACTION_NEXT = "com.google.android.exoplayer.next";
    public static final String ACTION_PAUSE = "com.google.android.exoplayer.pause";
    public static final String ACTION_PLAY = "com.google.android.exoplayer.play";
    public static final String ACTION_PREVIOUS = "com.google.android.exoplayer.prev";
    public static final String ACTION_REWIND = "com.google.android.exoplayer.rewind";
    public static final String ACTION_STOP = "com.google.android.exoplayer.stop";
    public static final String EXTRA_INSTANCE_ID = "INSTANCE_ID";

    /* renamed from: O */
    public static final String f27590O = "com.google.android.exoplayer.dismiss";

    /* renamed from: P */
    public static final int f27591P = 0;

    /* renamed from: Q */
    public static final int f27592Q = 1;

    /* renamed from: R */
    public static int f27593R;

    /* renamed from: A */
    public boolean f27594A;

    /* renamed from: B */
    public boolean f27595B;

    /* renamed from: C */
    public boolean f27596C;

    /* renamed from: D */
    public boolean f27597D;

    /* renamed from: E */
    public boolean f27598E;

    /* renamed from: F */
    public int f27599F;

    /* renamed from: G */
    public boolean f27600G;

    /* renamed from: H */
    public int f27601H;

    /* renamed from: I */
    public int f27602I;

    /* renamed from: J */
    @DrawableRes
    public int f27603J;

    /* renamed from: K */
    public int f27604K;

    /* renamed from: L */
    public int f27605L;

    /* renamed from: M */
    public boolean f27606M;

    /* renamed from: N */
    @Nullable
    public String f27607N;

    /* renamed from: a */
    public final Context f27608a;

    /* renamed from: b */
    public final String f27609b;

    /* renamed from: c */
    public final int f27610c;

    /* renamed from: d */
    public final MediaDescriptionAdapter f27611d;

    /* renamed from: e */
    @Nullable
    public final NotificationListener f27612e;

    /* renamed from: f */
    @Nullable
    public final CustomActionReceiver f27613f;

    /* renamed from: g */
    public final Handler f27614g;

    /* renamed from: h */
    public final NotificationManagerCompat f27615h;

    /* renamed from: i */
    public final IntentFilter f27616i;

    /* renamed from: j */
    public final Player.Listener f27617j;

    /* renamed from: k */
    public final C4967b f27618k;

    /* renamed from: l */
    public final Map<String, NotificationCompat.Action> f27619l;

    /* renamed from: m */
    public final Map<String, NotificationCompat.Action> f27620m;

    /* renamed from: n */
    public final PendingIntent f27621n;

    /* renamed from: o */
    public final int f27622o;

    /* renamed from: p */
    @Nullable
    public NotificationCompat.Builder f27623p;

    /* renamed from: q */
    @Nullable
    public List<NotificationCompat.Action> f27624q;

    /* renamed from: r */
    @Nullable
    public Player f27625r;

    /* renamed from: s */
    public boolean f27626s;

    /* renamed from: t */
    public int f27627t;

    /* renamed from: u */
    @Nullable
    public MediaSessionCompat.Token f27628u;

    /* renamed from: v */
    public boolean f27629v;

    /* renamed from: w */
    public boolean f27630w;

    /* renamed from: x */
    public boolean f27631x;

    /* renamed from: y */
    public boolean f27632y;

    /* renamed from: z */
    public boolean f27633z;

    /* loaded from: classes5.dex */
    public final class BitmapCallback {

        /* renamed from: a */
        public final int f27634a;

        public void onBitmap(Bitmap bitmap) {
            if (bitmap != null) {
                PlayerNotificationManager.this.m21012n(bitmap, this.f27634a);
            }
        }

        public BitmapCallback(int i) {
            this.f27634a = i;
        }
    }

    /* loaded from: classes5.dex */
    public interface CustomActionReceiver {
        Map<String, NotificationCompat.Action> createCustomActions(Context context, int i);

        List<String> getCustomActions(Player player);

        void onCustomAction(Player player, String str, Intent intent);
    }

    /* loaded from: classes5.dex */
    public interface MediaDescriptionAdapter {
        @Nullable
        PendingIntent createCurrentContentIntent(Player player);

        @Nullable
        CharSequence getCurrentContentText(Player player);

        CharSequence getCurrentContentTitle(Player player);

        @Nullable
        Bitmap getCurrentLargeIcon(Player player, BitmapCallback bitmapCallback);

        @Nullable
        default CharSequence getCurrentSubText(Player player) {
            return null;
        }
    }

    /* loaded from: classes5.dex */
    public interface NotificationListener {
        default void onNotificationCancelled(int i, boolean z) {
        }

        default void onNotificationPosted(int i, Notification notification, boolean z) {
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Priority {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Visibility {
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerNotificationManager$b */
    /* loaded from: classes5.dex */
    public class C4967b extends BroadcastReceiver {
        public C4967b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Player player = PlayerNotificationManager.this.f27625r;
            if (player != null && PlayerNotificationManager.this.f27626s && intent.getIntExtra(PlayerNotificationManager.EXTRA_INSTANCE_ID, PlayerNotificationManager.this.f27622o) == PlayerNotificationManager.this.f27622o) {
                String action = intent.getAction();
                if (PlayerNotificationManager.ACTION_PLAY.equals(action)) {
                    if (player.getPlaybackState() == 1) {
                        player.prepare();
                    } else if (player.getPlaybackState() == 4) {
                        player.seekToDefaultPosition(player.getCurrentMediaItemIndex());
                    }
                    player.play();
                    return;
                }
                if (PlayerNotificationManager.ACTION_PAUSE.equals(action)) {
                    player.pause();
                    return;
                }
                if (PlayerNotificationManager.ACTION_PREVIOUS.equals(action)) {
                    player.seekToPrevious();
                    return;
                }
                if (PlayerNotificationManager.ACTION_REWIND.equals(action)) {
                    player.seekBack();
                    return;
                }
                if (PlayerNotificationManager.ACTION_FAST_FORWARD.equals(action)) {
                    player.seekForward();
                    return;
                }
                if (PlayerNotificationManager.ACTION_NEXT.equals(action)) {
                    player.seekToNext();
                    return;
                }
                if (PlayerNotificationManager.ACTION_STOP.equals(action)) {
                    player.stop(true);
                    return;
                }
                if (PlayerNotificationManager.f27590O.equals(action)) {
                    PlayerNotificationManager.this.m21015r(true);
                } else {
                    if (action == null || PlayerNotificationManager.this.f27613f == null || !PlayerNotificationManager.this.f27620m.containsKey(action)) {
                        return;
                    }
                    PlayerNotificationManager.this.f27613f.onCustomAction(player, action, intent);
                }
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerNotificationManager$c */
    /* loaded from: classes5.dex */
    public class C4968c implements Player.Listener {
        public C4968c() {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            if (events.containsAny(4, 5, 7, 0, 12, 11, 8, 9, 14)) {
                PlayerNotificationManager.this.m21011m();
            }
        }
    }

    public PlayerNotificationManager(Context context, String str, int i, MediaDescriptionAdapter mediaDescriptionAdapter, @Nullable NotificationListener notificationListener, @Nullable CustomActionReceiver customActionReceiver, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, @Nullable String str2) {
        Context applicationContext = context.getApplicationContext();
        this.f27608a = applicationContext;
        this.f27609b = str;
        this.f27610c = i;
        this.f27611d = mediaDescriptionAdapter;
        this.f27612e = notificationListener;
        this.f27613f = customActionReceiver;
        this.f27603J = i2;
        this.f27607N = str2;
        int i10 = f27593R;
        f27593R = i10 + 1;
        this.f27622o = i10;
        this.f27614g = Util.createHandler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.sunia.HTREnginev2.u4l
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean m21010l;
                m21010l = PlayerNotificationManager.this.m21010l(message);
                return m21010l;
            }
        });
        this.f27615h = NotificationManagerCompat.from(applicationContext);
        this.f27617j = new C4968c();
        this.f27618k = new C4967b();
        this.f27616i = new IntentFilter();
        this.f27629v = true;
        this.f27630w = true;
        this.f27597D = true;
        this.f27633z = true;
        this.f27594A = true;
        this.f27600G = true;
        this.f27606M = true;
        this.f27602I = 0;
        this.f27601H = 0;
        this.f27605L = -1;
        this.f27599F = 1;
        this.f27604K = 1;
        Map<String, NotificationCompat.Action> m21008k = m21008k(applicationContext, i10, i3, i4, i5, i6, i7, i8, i9);
        this.f27619l = m21008k;
        Iterator<String> it2 = m21008k.keySet().iterator();
        while (it2.hasNext()) {
            this.f27616i.addAction(it2.next());
        }
        Map<String, NotificationCompat.Action> createCustomActions = customActionReceiver != null ? customActionReceiver.createCustomActions(applicationContext, this.f27622o) : Collections.emptyMap();
        this.f27620m = createCustomActions;
        Iterator<String> it3 = createCustomActions.keySet().iterator();
        while (it3.hasNext()) {
            this.f27616i.addAction(it3.next());
        }
        this.f27621n = m21007j(f27590O, applicationContext, this.f27622o);
        this.f27616i.addAction(f27590O);
    }

    /* renamed from: j */
    public static PendingIntent m21007j(String str, Context context, int i) {
        Intent intent = new Intent(str).setPackage(context.getPackageName());
        intent.putExtra(EXTRA_INSTANCE_ID, i);
        return PendingIntent.getBroadcast(context, i, intent, Util.SDK_INT >= 23 ? 201326592 : 134217728);
    }

    /* renamed from: k */
    public static Map<String, NotificationCompat.Action> m21008k(Context context, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        HashMap hashMap = new HashMap();
        hashMap.put(ACTION_PLAY, new NotificationCompat.Action(i2, context.getString(C4970R.string.exo_controls_play_description), m21007j(ACTION_PLAY, context, i)));
        hashMap.put(ACTION_PAUSE, new NotificationCompat.Action(i3, context.getString(C4970R.string.exo_controls_pause_description), m21007j(ACTION_PAUSE, context, i)));
        hashMap.put(ACTION_STOP, new NotificationCompat.Action(i4, context.getString(C4970R.string.exo_controls_stop_description), m21007j(ACTION_STOP, context, i)));
        hashMap.put(ACTION_REWIND, new NotificationCompat.Action(i5, context.getString(C4970R.string.exo_controls_rewind_description), m21007j(ACTION_REWIND, context, i)));
        hashMap.put(ACTION_FAST_FORWARD, new NotificationCompat.Action(i6, context.getString(C4970R.string.exo_controls_fastforward_description), m21007j(ACTION_FAST_FORWARD, context, i)));
        hashMap.put(ACTION_PREVIOUS, new NotificationCompat.Action(i7, context.getString(C4970R.string.exo_controls_previous_description), m21007j(ACTION_PREVIOUS, context, i)));
        hashMap.put(ACTION_NEXT, new NotificationCompat.Action(i8, context.getString(C4970R.string.exo_controls_next_description), m21007j(ACTION_NEXT, context, i)));
        return hashMap;
    }

    /* renamed from: o */
    public static void m21009o(NotificationCompat.Builder builder, @Nullable Bitmap bitmap) {
        builder.setLargeIcon(bitmap);
    }

    @Nullable
    public NotificationCompat.Builder createNotification(Player player, @Nullable NotificationCompat.Builder builder, boolean z, @Nullable Bitmap bitmap) {
        if (player.getPlaybackState() == 1 && player.getCurrentTimeline().isEmpty()) {
            this.f27624q = null;
            return null;
        }
        List<String> actions = getActions(player);
        ArrayList arrayList = new ArrayList(actions.size());
        for (int i = 0; i < actions.size(); i++) {
            String str = actions.get(i);
            NotificationCompat.Action action = this.f27619l.containsKey(str) ? this.f27619l.get(str) : this.f27620m.get(str);
            if (action != null) {
                arrayList.add(action);
            }
        }
        if (builder == null || !arrayList.equals(this.f27624q)) {
            builder = new NotificationCompat.Builder(this.f27608a, this.f27609b);
            this.f27624q = arrayList;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                builder.addAction((NotificationCompat.Action) arrayList.get(i2));
            }
        }
        NotificationCompat.MediaStyle mediaStyle = new NotificationCompat.MediaStyle();
        MediaSessionCompat.Token token = this.f27628u;
        if (token != null) {
            mediaStyle.setMediaSession(token);
        }
        mediaStyle.setShowActionsInCompactView(getActionIndicesForCompactView(actions, player));
        mediaStyle.setShowCancelButton(!z);
        mediaStyle.setCancelButtonIntent(this.f27621n);
        builder.setStyle(mediaStyle);
        builder.setDeleteIntent(this.f27621n);
        builder.setBadgeIconType(this.f27599F).setOngoing(z).setColor(this.f27602I).setColorized(this.f27600G).setSmallIcon(this.f27603J).setVisibility(this.f27604K).setPriority(this.f27605L).setDefaults(this.f27601H);
        if (Util.SDK_INT < 21 || !this.f27606M || !player.isPlaying() || player.isPlayingAd() || player.isCurrentMediaItemDynamic() || player.getPlaybackParameters().speed != 1.0f) {
            builder.setShowWhen(false).setUsesChronometer(false);
        } else {
            builder.setWhen(System.currentTimeMillis() - player.getContentPosition()).setShowWhen(true).setUsesChronometer(true);
        }
        builder.setContentTitle(this.f27611d.getCurrentContentTitle(player));
        builder.setContentText(this.f27611d.getCurrentContentText(player));
        builder.setSubText(this.f27611d.getCurrentSubText(player));
        if (bitmap == null) {
            MediaDescriptionAdapter mediaDescriptionAdapter = this.f27611d;
            int i3 = this.f27627t + 1;
            this.f27627t = i3;
            bitmap = mediaDescriptionAdapter.getCurrentLargeIcon(player, new BitmapCallback(i3));
        }
        m21009o(builder, bitmap);
        builder.setContentIntent(this.f27611d.createCurrentContentIntent(player));
        String str2 = this.f27607N;
        if (str2 != null) {
            builder.setGroup(str2);
        }
        builder.setOnlyAlertOnce(true);
        return builder;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int[] getActionIndicesForCompactView(java.util.List<java.lang.String> r7, com.google.android.exoplayer2.Player r8) {
        /*
            r6 = this;
            java.lang.String r0 = "com.google.android.exoplayer.pause"
            int r0 = r7.indexOf(r0)
            java.lang.String r1 = "com.google.android.exoplayer.play"
            int r1 = r7.indexOf(r1)
            boolean r2 = r6.f27631x
            r3 = -1
            if (r2 == 0) goto L18
            java.lang.String r2 = "com.google.android.exoplayer.prev"
            int r2 = r7.indexOf(r2)
            goto L24
        L18:
            boolean r2 = r6.f27595B
            if (r2 == 0) goto L23
            java.lang.String r2 = "com.google.android.exoplayer.rewind"
            int r2 = r7.indexOf(r2)
            goto L24
        L23:
            r2 = r3
        L24:
            boolean r4 = r6.f27632y
            if (r4 == 0) goto L2f
            java.lang.String r4 = "com.google.android.exoplayer.next"
            int r7 = r7.indexOf(r4)
            goto L3b
        L2f:
            boolean r4 = r6.f27596C
            if (r4 == 0) goto L3a
            java.lang.String r4 = "com.google.android.exoplayer.ffwd"
            int r7 = r7.indexOf(r4)
            goto L3b
        L3a:
            r7 = r3
        L3b:
            r4 = 3
            int[] r4 = new int[r4]
            r5 = 0
            if (r2 == r3) goto L44
            r4[r5] = r2
            r5 = 1
        L44:
            boolean r6 = r6.m21013p(r8)
            if (r0 == r3) goto L52
            if (r6 == 0) goto L52
            int r6 = r5 + 1
            r4[r5] = r0
        L50:
            r5 = r6
            goto L5b
        L52:
            if (r1 == r3) goto L5b
            if (r6 != 0) goto L5b
            int r6 = r5 + 1
            r4[r5] = r1
            goto L50
        L5b:
            if (r7 == r3) goto L62
            int r6 = r5 + 1
            r4[r5] = r7
            r5 = r6
        L62:
            int[] r6 = java.util.Arrays.copyOf(r4, r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p008ui.PlayerNotificationManager.getActionIndicesForCompactView(java.util.List, com.google.android.exoplayer2.Player):int[]");
    }

    public List<String> getActions(Player player) {
        boolean isCommandAvailable = player.isCommandAvailable(7);
        boolean isCommandAvailable2 = player.isCommandAvailable(11);
        boolean isCommandAvailable3 = player.isCommandAvailable(12);
        boolean isCommandAvailable4 = player.isCommandAvailable(9);
        ArrayList arrayList = new ArrayList();
        if (this.f27629v && isCommandAvailable) {
            arrayList.add(ACTION_PREVIOUS);
        }
        if (this.f27633z && isCommandAvailable2) {
            arrayList.add(ACTION_REWIND);
        }
        if (this.f27597D) {
            if (m21013p(player)) {
                arrayList.add(ACTION_PAUSE);
            } else {
                arrayList.add(ACTION_PLAY);
            }
        }
        if (this.f27594A && isCommandAvailable3) {
            arrayList.add(ACTION_FAST_FORWARD);
        }
        if (this.f27630w && isCommandAvailable4) {
            arrayList.add(ACTION_NEXT);
        }
        CustomActionReceiver customActionReceiver = this.f27613f;
        if (customActionReceiver != null) {
            arrayList.addAll(customActionReceiver.getCustomActions(player));
        }
        if (this.f27598E) {
            arrayList.add(ACTION_STOP);
        }
        return arrayList;
    }

    public boolean getOngoing(Player player) {
        int playbackState = player.getPlaybackState();
        return (playbackState == 2 || playbackState == 3) && player.getPlayWhenReady();
    }

    public final void invalidate() {
        if (this.f27626s) {
            m21011m();
        }
    }

    /* renamed from: l */
    public final boolean m21010l(Message message) {
        int i = message.what;
        if (i == 0) {
            Player player = this.f27625r;
            if (player != null) {
                m21014q(player, null);
            }
        } else {
            if (i != 1) {
                return false;
            }
            Player player2 = this.f27625r;
            if (player2 != null && this.f27626s && this.f27627t == message.arg1) {
                m21014q(player2, (Bitmap) message.obj);
            }
        }
        return true;
    }

    /* renamed from: m */
    public final void m21011m() {
        if (this.f27614g.hasMessages(0)) {
            return;
        }
        this.f27614g.sendEmptyMessage(0);
    }

    /* renamed from: n */
    public final void m21012n(Bitmap bitmap, int i) {
        this.f27614g.obtainMessage(1, i, -1, bitmap).sendToTarget();
    }

    /* renamed from: p */
    public final boolean m21013p(Player player) {
        return (player.getPlaybackState() == 4 || player.getPlaybackState() == 1 || !player.getPlayWhenReady()) ? false : true;
    }

    /* renamed from: q */
    public final void m21014q(Player player, @Nullable Bitmap bitmap) {
        boolean ongoing = getOngoing(player);
        NotificationCompat.Builder createNotification = createNotification(player, this.f27623p, ongoing, bitmap);
        this.f27623p = createNotification;
        if (createNotification == null) {
            m21015r(false);
            return;
        }
        Notification build = createNotification.build();
        this.f27615h.notify(this.f27610c, build);
        if (!this.f27626s) {
            this.f27608a.registerReceiver(this.f27618k, this.f27616i);
        }
        NotificationListener notificationListener = this.f27612e;
        if (notificationListener != null) {
            notificationListener.onNotificationPosted(this.f27610c, build, ongoing || !this.f27626s);
        }
        this.f27626s = true;
    }

    /* renamed from: r */
    public final void m21015r(boolean z) {
        if (this.f27626s) {
            this.f27626s = false;
            this.f27614g.removeMessages(0);
            this.f27615h.cancel(this.f27610c);
            this.f27608a.unregisterReceiver(this.f27618k);
            NotificationListener notificationListener = this.f27612e;
            if (notificationListener != null) {
                notificationListener.onNotificationCancelled(this.f27610c, z);
            }
        }
    }

    public final void setBadgeIconType(int i) {
        if (this.f27599F == i) {
            return;
        }
        if (i != 0 && i != 1 && i != 2) {
            throw new IllegalArgumentException();
        }
        this.f27599F = i;
        invalidate();
    }

    public final void setColor(int i) {
        if (this.f27602I != i) {
            this.f27602I = i;
            invalidate();
        }
    }

    public final void setColorized(boolean z) {
        if (this.f27600G != z) {
            this.f27600G = z;
            invalidate();
        }
    }

    public final void setDefaults(int i) {
        if (this.f27601H != i) {
            this.f27601H = i;
            invalidate();
        }
    }

    public final void setMediaSessionToken(MediaSessionCompat.Token token) {
        if (Util.areEqual(this.f27628u, token)) {
            return;
        }
        this.f27628u = token;
        invalidate();
    }

    public final void setPlayer(@Nullable Player player) {
        boolean z = true;
        Assertions.checkState(Looper.myLooper() == Looper.getMainLooper());
        if (player != null && player.getApplicationLooper() != Looper.getMainLooper()) {
            z = false;
        }
        Assertions.checkArgument(z);
        Player player2 = this.f27625r;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.f27617j);
            if (player == null) {
                m21015r(false);
            }
        }
        this.f27625r = player;
        if (player != null) {
            player.addListener(this.f27617j);
            m21011m();
        }
    }

    public final void setPriority(int i) {
        if (this.f27605L == i) {
            return;
        }
        if (i != -2 && i != -1 && i != 0 && i != 1 && i != 2) {
            throw new IllegalArgumentException();
        }
        this.f27605L = i;
        invalidate();
    }

    public final void setSmallIcon(@DrawableRes int i) {
        if (this.f27603J != i) {
            this.f27603J = i;
            invalidate();
        }
    }

    public final void setUseChronometer(boolean z) {
        if (this.f27606M != z) {
            this.f27606M = z;
            invalidate();
        }
    }

    public final void setUseFastForwardAction(boolean z) {
        if (this.f27594A != z) {
            this.f27594A = z;
            invalidate();
        }
    }

    public final void setUseFastForwardActionInCompactView(boolean z) {
        if (this.f27596C != z) {
            this.f27596C = z;
            if (z) {
                this.f27632y = false;
            }
            invalidate();
        }
    }

    public final void setUseNextAction(boolean z) {
        if (this.f27630w != z) {
            this.f27630w = z;
            invalidate();
        }
    }

    public final void setUseNextActionInCompactView(boolean z) {
        if (this.f27632y != z) {
            this.f27632y = z;
            if (z) {
                this.f27596C = false;
            }
            invalidate();
        }
    }

    public final void setUsePlayPauseActions(boolean z) {
        if (this.f27597D != z) {
            this.f27597D = z;
            invalidate();
        }
    }

    public final void setUsePreviousAction(boolean z) {
        if (this.f27629v != z) {
            this.f27629v = z;
            invalidate();
        }
    }

    public final void setUsePreviousActionInCompactView(boolean z) {
        if (this.f27631x != z) {
            this.f27631x = z;
            if (z) {
                this.f27595B = false;
            }
            invalidate();
        }
    }

    public final void setUseRewindAction(boolean z) {
        if (this.f27633z != z) {
            this.f27633z = z;
            invalidate();
        }
    }

    public final void setUseRewindActionInCompactView(boolean z) {
        if (this.f27595B != z) {
            this.f27595B = z;
            if (z) {
                this.f27631x = false;
            }
            invalidate();
        }
    }

    public final void setUseStopAction(boolean z) {
        if (this.f27598E == z) {
            return;
        }
        this.f27598E = z;
        invalidate();
    }

    public final void setVisibility(int i) {
        if (this.f27604K == i) {
            return;
        }
        if (i != -1 && i != 0 && i != 1) {
            throw new IllegalStateException();
        }
        this.f27604K = i;
        invalidate();
    }

    /* loaded from: classes5.dex */
    public static class Builder {
        protected int channelDescriptionResourceId;
        protected final String channelId;
        protected int channelImportance;
        protected int channelNameResourceId;
        protected final Context context;

        @Nullable
        protected CustomActionReceiver customActionReceiver;
        protected int fastForwardActionIconResourceId;

        @Nullable
        protected String groupKey;
        protected MediaDescriptionAdapter mediaDescriptionAdapter;
        protected int nextActionIconResourceId;
        protected final int notificationId;

        @Nullable
        protected NotificationListener notificationListener;
        protected int pauseActionIconResourceId;
        protected int playActionIconResourceId;
        protected int previousActionIconResourceId;
        protected int rewindActionIconResourceId;
        protected int smallIconResourceId;
        protected int stopActionIconResourceId;

        @Deprecated
        public Builder(Context context, int i, String str, MediaDescriptionAdapter mediaDescriptionAdapter) {
            this(context, i, str);
            this.mediaDescriptionAdapter = mediaDescriptionAdapter;
        }

        public PlayerNotificationManager build() {
            int i = this.channelNameResourceId;
            if (i != 0) {
                NotificationUtil.createNotificationChannel(this.context, this.channelId, i, this.channelDescriptionResourceId, this.channelImportance);
            }
            return new PlayerNotificationManager(this.context, this.channelId, this.notificationId, this.mediaDescriptionAdapter, this.notificationListener, this.customActionReceiver, this.smallIconResourceId, this.playActionIconResourceId, this.pauseActionIconResourceId, this.stopActionIconResourceId, this.rewindActionIconResourceId, this.fastForwardActionIconResourceId, this.previousActionIconResourceId, this.nextActionIconResourceId, this.groupKey);
        }

        public Builder setChannelDescriptionResourceId(int i) {
            this.channelDescriptionResourceId = i;
            return this;
        }

        public Builder setChannelImportance(int i) {
            this.channelImportance = i;
            return this;
        }

        public Builder setChannelNameResourceId(int i) {
            this.channelNameResourceId = i;
            return this;
        }

        public Builder setCustomActionReceiver(CustomActionReceiver customActionReceiver) {
            this.customActionReceiver = customActionReceiver;
            return this;
        }

        public Builder setFastForwardActionIconResourceId(int i) {
            this.fastForwardActionIconResourceId = i;
            return this;
        }

        public Builder setGroup(String str) {
            this.groupKey = str;
            return this;
        }

        public Builder setMediaDescriptionAdapter(MediaDescriptionAdapter mediaDescriptionAdapter) {
            this.mediaDescriptionAdapter = mediaDescriptionAdapter;
            return this;
        }

        public Builder setNextActionIconResourceId(int i) {
            this.nextActionIconResourceId = i;
            return this;
        }

        public Builder setNotificationListener(NotificationListener notificationListener) {
            this.notificationListener = notificationListener;
            return this;
        }

        public Builder setPauseActionIconResourceId(int i) {
            this.pauseActionIconResourceId = i;
            return this;
        }

        public Builder setPlayActionIconResourceId(int i) {
            this.playActionIconResourceId = i;
            return this;
        }

        public Builder setPreviousActionIconResourceId(int i) {
            this.previousActionIconResourceId = i;
            return this;
        }

        public Builder setRewindActionIconResourceId(int i) {
            this.rewindActionIconResourceId = i;
            return this;
        }

        public Builder setSmallIconResourceId(int i) {
            this.smallIconResourceId = i;
            return this;
        }

        public Builder setStopActionIconResourceId(int i) {
            this.stopActionIconResourceId = i;
            return this;
        }

        public Builder(Context context, @IntRange(from = 1) int i, String str) {
            Assertions.checkArgument(i > 0);
            this.context = context;
            this.notificationId = i;
            this.channelId = str;
            this.channelImportance = 2;
            this.mediaDescriptionAdapter = new DefaultMediaDescriptionAdapter(null);
            this.smallIconResourceId = C4970R.drawable.exo_notification_small_icon;
            this.playActionIconResourceId = C4970R.drawable.exo_notification_play;
            this.pauseActionIconResourceId = C4970R.drawable.exo_notification_pause;
            this.stopActionIconResourceId = C4970R.drawable.exo_notification_stop;
            this.rewindActionIconResourceId = C4970R.drawable.exo_notification_rewind;
            this.fastForwardActionIconResourceId = C4970R.drawable.exo_notification_fastforward;
            this.previousActionIconResourceId = C4970R.drawable.exo_notification_previous;
            this.nextActionIconResourceId = C4970R.drawable.exo_notification_next;
        }
    }
}

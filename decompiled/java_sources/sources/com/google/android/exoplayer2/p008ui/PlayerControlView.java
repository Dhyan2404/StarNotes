package com.google.android.exoplayer2.p008ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.p008ui.PlayerControlView;
import com.google.android.exoplayer2.p008ui.TimeBar;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.RepeatModeUtil;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public class PlayerControlView extends FrameLayout {
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    public static final int DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS = 200;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;

    /* renamed from: U0 */
    public static final int f27534U0 = 1000;

    /* renamed from: A0 */
    public boolean f27535A0;

    /* renamed from: B0 */
    public boolean f27536B0;

    /* renamed from: C0 */
    public boolean f27537C0;

    /* renamed from: D0 */
    public boolean f27538D0;

    /* renamed from: E0 */
    public int f27539E0;

    /* renamed from: F0 */
    public int f27540F0;

    /* renamed from: G0 */
    public int f27541G0;

    /* renamed from: H0 */
    public boolean f27542H0;

    /* renamed from: I0 */
    public boolean f27543I0;

    /* renamed from: J */
    public final Drawable f27544J;

    /* renamed from: J0 */
    public boolean f27545J0;

    /* renamed from: K0 */
    public boolean f27546K0;

    /* renamed from: L0 */
    public boolean f27547L0;

    /* renamed from: M0 */
    public long f27548M0;

    /* renamed from: N0 */
    public long[] f27549N0;

    /* renamed from: O */
    public final String f27550O;

    /* renamed from: O0 */
    public boolean[] f27551O0;

    /* renamed from: P0 */
    public long[] f27552P0;

    /* renamed from: Q */
    public final String f27553Q;

    /* renamed from: Q0 */
    public boolean[] f27554Q0;

    /* renamed from: R0 */
    public long f27555R0;

    /* renamed from: S0 */
    public long f27556S0;

    /* renamed from: T0 */
    public long f27557T0;

    /* renamed from: e */
    public final ViewOnClickListenerC4965c f27558e;

    /* renamed from: f */
    public final CopyOnWriteArrayList<VisibilityListener> f27559f;

    /* renamed from: g */
    @Nullable
    public final View f27560g;

    /* renamed from: h */
    @Nullable
    public final View f27561h;

    /* renamed from: i */
    @Nullable
    public final View f27562i;

    /* renamed from: j */
    @Nullable
    public final View f27563j;

    /* renamed from: k */
    @Nullable
    public final View f27564k;

    /* renamed from: k0 */
    public final String f27565k0;

    /* renamed from: l */
    @Nullable
    public final View f27566l;

    /* renamed from: m */
    @Nullable
    public final ImageView f27567m;

    /* renamed from: n */
    @Nullable
    public final ImageView f27568n;

    /* renamed from: o */
    @Nullable
    public final View f27569o;

    /* renamed from: p */
    @Nullable
    public final TextView f27570p;

    /* renamed from: q */
    @Nullable
    public final TextView f27571q;

    /* renamed from: q0 */
    public final Drawable f27572q0;

    /* renamed from: r */
    @Nullable
    public final TimeBar f27573r;

    /* renamed from: s */
    public final StringBuilder f27574s;

    /* renamed from: t */
    public final Formatter f27575t;

    /* renamed from: t0 */
    public final Drawable f27576t0;

    /* renamed from: u */
    public final Timeline.Period f27577u;

    /* renamed from: u0 */
    public final float f27578u0;

    /* renamed from: v */
    public final Timeline.Window f27579v;

    /* renamed from: v0 */
    public final float f27580v0;

    /* renamed from: w */
    public final Runnable f27581w;

    /* renamed from: w0 */
    public final String f27582w0;

    /* renamed from: x */
    public final Runnable f27583x;

    /* renamed from: x0 */
    public final String f27584x0;

    /* renamed from: y */
    public final Drawable f27585y;

    /* renamed from: y0 */
    @Nullable
    public Player f27586y0;

    /* renamed from: z */
    public final Drawable f27587z;

    /* renamed from: z0 */
    @Nullable
    public ProgressUpdateListener f27588z0;

    /* loaded from: classes5.dex */
    public interface ProgressUpdateListener {
        void onProgressUpdate(long j, long j2);
    }

    /* loaded from: classes5.dex */
    public interface VisibilityListener {
        void onVisibilityChange(int i);
    }

    @RequiresApi(21)
    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$b */
    /* loaded from: classes5.dex */
    public static final class C4964b {
        @DoNotInline
        /* renamed from: a */
        public static boolean m20997a(View view) {
            return view.isAccessibilityFocused();
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$c */
    /* loaded from: classes5.dex */
    public final class ViewOnClickListenerC4965c implements Player.Listener, TimeBar.OnScrubListener, View.OnClickListener {
        public ViewOnClickListenerC4965c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Player player = PlayerControlView.this.f27586y0;
            if (player == null) {
                return;
            }
            if (PlayerControlView.this.f27561h == view) {
                player.seekToNext();
                return;
            }
            if (PlayerControlView.this.f27560g == view) {
                player.seekToPrevious();
                return;
            }
            if (PlayerControlView.this.f27564k == view) {
                if (player.getPlaybackState() != 4) {
                    player.seekForward();
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f27566l == view) {
                player.seekBack();
                return;
            }
            if (PlayerControlView.this.f27562i == view) {
                PlayerControlView.this.m20980A(player);
                return;
            }
            if (PlayerControlView.this.f27563j == view) {
                PlayerControlView.this.m20996z(player);
            } else if (PlayerControlView.this.f27567m == view) {
                player.setRepeatMode(RepeatModeUtil.getNextRepeatMode(player.getRepeatMode(), PlayerControlView.this.f27541G0));
            } else if (PlayerControlView.this.f27568n == view) {
                player.setShuffleModeEnabled(!player.getShuffleModeEnabled());
            }
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            if (events.containsAny(4, 5)) {
                PlayerControlView.this.m20991N();
            }
            if (events.containsAny(4, 5, 7)) {
                PlayerControlView.this.m20992O();
            }
            if (events.contains(8)) {
                PlayerControlView.this.m20993P();
            }
            if (events.contains(9)) {
                PlayerControlView.this.m20994Q();
            }
            if (events.containsAny(8, 9, 11, 0, 13)) {
                PlayerControlView.this.m20990M();
            }
            if (events.containsAny(11, 0)) {
                PlayerControlView.this.m20995R();
            }
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubMove(TimeBar timeBar, long j) {
            if (PlayerControlView.this.f27571q != null) {
                PlayerControlView.this.f27571q.setText(Util.getStringForTime(PlayerControlView.this.f27574s, PlayerControlView.this.f27575t, j));
            }
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubStart(TimeBar timeBar, long j) {
            PlayerControlView.this.f27538D0 = true;
            if (PlayerControlView.this.f27571q != null) {
                PlayerControlView.this.f27571q.setText(Util.getStringForTime(PlayerControlView.this.f27574s, PlayerControlView.this.f27575t, j));
            }
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubStop(TimeBar timeBar, long j, boolean z) {
            PlayerControlView.this.f27538D0 = false;
            if (z || PlayerControlView.this.f27586y0 == null) {
                return;
            }
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.m20986I(playerControlView.f27586y0, j);
        }
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.ui");
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    /* renamed from: C */
    public static int m20953C(TypedArray typedArray, int i) {
        return typedArray.getInt(C4970R.styleable.PlayerControlView_repeat_toggle_modes, i);
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: E */
    public static boolean m20954E(int i) {
        return i == 90 || i == 89 || i == 85 || i == 79 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    /* renamed from: y */
    public static boolean m20979y(Timeline timeline, Timeline.Window window) {
        if (timeline.getWindowCount() > 100) {
            return false;
        }
        int windowCount = timeline.getWindowCount();
        for (int i = 0; i < windowCount; i++) {
            if (timeline.getWindow(i, window).durationUs == C4649C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: A */
    public final void m20980A(Player player) {
        int playbackState = player.getPlaybackState();
        if (playbackState == 1) {
            player.prepare();
        } else if (playbackState == 4) {
            m20985H(player, player.getCurrentMediaItemIndex(), C4649C.TIME_UNSET);
        }
        player.play();
    }

    /* renamed from: B */
    public final void m20981B(Player player) {
        int playbackState = player.getPlaybackState();
        if (playbackState == 1 || playbackState == 4 || !player.getPlayWhenReady()) {
            m20980A(player);
        } else {
            m20996z(player);
        }
    }

    /* renamed from: D */
    public final void m20982D() {
        removeCallbacks(this.f27583x);
        if (this.f27539E0 <= 0) {
            this.f27548M0 = C4649C.TIME_UNSET;
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        int i = this.f27539E0;
        this.f27548M0 = uptimeMillis + i;
        if (this.f27535A0) {
            postDelayed(this.f27583x, i);
        }
    }

    /* renamed from: F */
    public final void m20983F() {
        View view;
        View view2;
        boolean m20987J = m20987J();
        if (!m20987J && (view2 = this.f27562i) != null) {
            view2.sendAccessibilityEvent(8);
        } else {
            if (!m20987J || (view = this.f27563j) == null) {
                return;
            }
            view.sendAccessibilityEvent(8);
        }
    }

    /* renamed from: G */
    public final void m20984G() {
        View view;
        View view2;
        boolean m20987J = m20987J();
        if (!m20987J && (view2 = this.f27562i) != null) {
            view2.requestFocus();
        } else {
            if (!m20987J || (view = this.f27563j) == null) {
                return;
            }
            view.requestFocus();
        }
    }

    /* renamed from: H */
    public final void m20985H(Player player, int i, long j) {
        player.seekTo(i, j);
    }

    /* renamed from: I */
    public final void m20986I(Player player, long j) {
        int currentMediaItemIndex;
        Timeline currentTimeline = player.getCurrentTimeline();
        if (this.f27537C0 && !currentTimeline.isEmpty()) {
            int windowCount = currentTimeline.getWindowCount();
            currentMediaItemIndex = 0;
            while (true) {
                long durationMs = currentTimeline.getWindow(currentMediaItemIndex, this.f27579v).getDurationMs();
                if (j < durationMs) {
                    break;
                }
                if (currentMediaItemIndex == windowCount - 1) {
                    j = durationMs;
                    break;
                } else {
                    j -= durationMs;
                    currentMediaItemIndex++;
                }
            }
        } else {
            currentMediaItemIndex = player.getCurrentMediaItemIndex();
        }
        m20985H(player, currentMediaItemIndex, j);
        m20992O();
    }

    /* renamed from: J */
    public final boolean m20987J() {
        Player player = this.f27586y0;
        return (player == null || player.getPlaybackState() == 4 || this.f27586y0.getPlaybackState() == 1 || !this.f27586y0.getPlayWhenReady()) ? false : true;
    }

    /* renamed from: K */
    public final void m20988K() {
        m20991N();
        m20990M();
        m20993P();
        m20994Q();
        m20995R();
    }

    /* renamed from: L */
    public final void m20989L(boolean z, boolean z2, @Nullable View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z2);
        view.setAlpha(z2 ? this.f27578u0 : this.f27580v0);
        view.setVisibility(z ? 0 : 8);
    }

    /* renamed from: M */
    public final void m20990M() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (isVisible() && this.f27535A0) {
            Player player = this.f27586y0;
            if (player != null) {
                z = player.isCommandAvailable(5);
                z3 = player.isCommandAvailable(7);
                z4 = player.isCommandAvailable(11);
                z5 = player.isCommandAvailable(12);
                z2 = player.isCommandAvailable(9);
            } else {
                z = false;
                z2 = false;
                z3 = false;
                z4 = false;
                z5 = false;
            }
            m20989L(this.f27545J0, z3, this.f27560g);
            m20989L(this.f27542H0, z4, this.f27566l);
            m20989L(this.f27543I0, z5, this.f27564k);
            m20989L(this.f27546K0, z2, this.f27561h);
            TimeBar timeBar = this.f27573r;
            if (timeBar != null) {
                timeBar.setEnabled(z);
            }
        }
    }

    /* renamed from: N */
    public final void m20991N() {
        boolean z;
        boolean z2;
        if (isVisible() && this.f27535A0) {
            boolean m20987J = m20987J();
            View view = this.f27562i;
            boolean z3 = true;
            if (view != null) {
                z = (m20987J && view.isFocused()) | false;
                z2 = (Util.SDK_INT < 21 ? z : m20987J && C4964b.m20997a(this.f27562i)) | false;
                this.f27562i.setVisibility(m20987J ? 8 : 0);
            } else {
                z = false;
                z2 = false;
            }
            View view2 = this.f27563j;
            if (view2 != null) {
                z |= !m20987J && view2.isFocused();
                if (Util.SDK_INT < 21) {
                    z3 = z;
                } else if (m20987J || !C4964b.m20997a(this.f27563j)) {
                    z3 = false;
                }
                z2 |= z3;
                this.f27563j.setVisibility(m20987J ? 0 : 8);
            }
            if (z) {
                m20984G();
            }
            if (z2) {
                m20983F();
            }
        }
    }

    /* renamed from: O */
    public final void m20992O() {
        long j;
        long j2;
        if (isVisible() && this.f27535A0) {
            Player player = this.f27586y0;
            if (player != null) {
                j = this.f27555R0 + player.getContentPosition();
                j2 = this.f27555R0 + player.getContentBufferedPosition();
            } else {
                j = 0;
                j2 = 0;
            }
            boolean z = j != this.f27556S0;
            boolean z2 = j2 != this.f27557T0;
            this.f27556S0 = j;
            this.f27557T0 = j2;
            TextView textView = this.f27571q;
            if (textView != null && !this.f27538D0 && z) {
                textView.setText(Util.getStringForTime(this.f27574s, this.f27575t, j));
            }
            TimeBar timeBar = this.f27573r;
            if (timeBar != null) {
                timeBar.setPosition(j);
                this.f27573r.setBufferedPosition(j2);
            }
            ProgressUpdateListener progressUpdateListener = this.f27588z0;
            if (progressUpdateListener != null && (z || z2)) {
                progressUpdateListener.onProgressUpdate(j, j2);
            }
            removeCallbacks(this.f27581w);
            int playbackState = player == null ? 1 : player.getPlaybackState();
            if (player == null || !player.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.f27581w, 1000L);
                return;
            }
            TimeBar timeBar2 = this.f27573r;
            long min = Math.min(timeBar2 != null ? timeBar2.getPreferredUpdateDelay() : 1000L, 1000 - (j % 1000));
            postDelayed(this.f27581w, Util.constrainValue(player.getPlaybackParameters().speed > 0.0f ? ((float) min) / r0 : 1000L, this.f27540F0, 1000L));
        }
    }

    /* renamed from: P */
    public final void m20993P() {
        ImageView imageView;
        if (isVisible() && this.f27535A0 && (imageView = this.f27567m) != null) {
            if (this.f27541G0 == 0) {
                m20989L(false, false, imageView);
                return;
            }
            Player player = this.f27586y0;
            if (player == null) {
                m20989L(true, false, imageView);
                this.f27567m.setImageDrawable(this.f27585y);
                this.f27567m.setContentDescription(this.f27550O);
                return;
            }
            m20989L(true, true, imageView);
            int repeatMode = player.getRepeatMode();
            if (repeatMode == 0) {
                this.f27567m.setImageDrawable(this.f27585y);
                this.f27567m.setContentDescription(this.f27550O);
            } else if (repeatMode == 1) {
                this.f27567m.setImageDrawable(this.f27587z);
                this.f27567m.setContentDescription(this.f27553Q);
            } else if (repeatMode == 2) {
                this.f27567m.setImageDrawable(this.f27544J);
                this.f27567m.setContentDescription(this.f27565k0);
            }
            this.f27567m.setVisibility(0);
        }
    }

    /* renamed from: Q */
    public final void m20994Q() {
        ImageView imageView;
        if (isVisible() && this.f27535A0 && (imageView = this.f27568n) != null) {
            Player player = this.f27586y0;
            if (!this.f27547L0) {
                m20989L(false, false, imageView);
                return;
            }
            if (player == null) {
                m20989L(true, false, imageView);
                this.f27568n.setImageDrawable(this.f27576t0);
                this.f27568n.setContentDescription(this.f27584x0);
            } else {
                m20989L(true, true, imageView);
                this.f27568n.setImageDrawable(player.getShuffleModeEnabled() ? this.f27572q0 : this.f27576t0);
                this.f27568n.setContentDescription(player.getShuffleModeEnabled() ? this.f27582w0 : this.f27584x0);
            }
        }
    }

    /* renamed from: R */
    public final void m20995R() {
        int i;
        Timeline.Window window;
        Player player = this.f27586y0;
        if (player == null) {
            return;
        }
        boolean z = true;
        this.f27537C0 = this.f27536B0 && m20979y(player.getCurrentTimeline(), this.f27579v);
        long j = 0;
        this.f27555R0 = 0L;
        Timeline currentTimeline = player.getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            i = 0;
        } else {
            int currentMediaItemIndex = player.getCurrentMediaItemIndex();
            boolean z2 = this.f27537C0;
            int i2 = z2 ? 0 : currentMediaItemIndex;
            int windowCount = z2 ? currentTimeline.getWindowCount() - 1 : currentMediaItemIndex;
            long j2 = 0;
            i = 0;
            while (true) {
                if (i2 > windowCount) {
                    break;
                }
                if (i2 == currentMediaItemIndex) {
                    this.f27555R0 = Util.usToMs(j2);
                }
                currentTimeline.getWindow(i2, this.f27579v);
                Timeline.Window window2 = this.f27579v;
                if (window2.durationUs == C4649C.TIME_UNSET) {
                    Assertions.checkState(this.f27537C0 ^ z);
                    break;
                }
                int i3 = window2.firstPeriodIndex;
                while (true) {
                    window = this.f27579v;
                    if (i3 <= window.lastPeriodIndex) {
                        currentTimeline.getPeriod(i3, this.f27577u);
                        int adGroupCount = this.f27577u.getAdGroupCount();
                        for (int removedAdGroupCount = this.f27577u.getRemovedAdGroupCount(); removedAdGroupCount < adGroupCount; removedAdGroupCount++) {
                            long adGroupTimeUs = this.f27577u.getAdGroupTimeUs(removedAdGroupCount);
                            if (adGroupTimeUs == Long.MIN_VALUE) {
                                long j3 = this.f27577u.durationUs;
                                if (j3 != C4649C.TIME_UNSET) {
                                    adGroupTimeUs = j3;
                                }
                            }
                            long positionInWindowUs = adGroupTimeUs + this.f27577u.getPositionInWindowUs();
                            if (positionInWindowUs >= 0) {
                                long[] jArr = this.f27549N0;
                                if (i == jArr.length) {
                                    int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                    this.f27549N0 = Arrays.copyOf(jArr, length);
                                    this.f27551O0 = Arrays.copyOf(this.f27551O0, length);
                                }
                                this.f27549N0[i] = Util.usToMs(j2 + positionInWindowUs);
                                this.f27551O0[i] = this.f27577u.hasPlayedAdGroup(removedAdGroupCount);
                                i++;
                            }
                        }
                        i3++;
                    }
                }
                j2 += window.durationUs;
                i2++;
                z = true;
            }
            j = j2;
        }
        long usToMs = Util.usToMs(j);
        TextView textView = this.f27570p;
        if (textView != null) {
            textView.setText(Util.getStringForTime(this.f27574s, this.f27575t, usToMs));
        }
        TimeBar timeBar = this.f27573r;
        if (timeBar != null) {
            timeBar.setDuration(usToMs);
            int length2 = this.f27552P0.length;
            int i4 = i + length2;
            long[] jArr2 = this.f27549N0;
            if (i4 > jArr2.length) {
                this.f27549N0 = Arrays.copyOf(jArr2, i4);
                this.f27551O0 = Arrays.copyOf(this.f27551O0, i4);
            }
            System.arraycopy(this.f27552P0, 0, this.f27549N0, i, length2);
            System.arraycopy(this.f27554Q0, 0, this.f27551O0, i, length2);
            this.f27573r.setAdGroupTimesMs(this.f27549N0, this.f27551O0, i4);
        }
        m20992O();
    }

    public void addVisibilityListener(VisibilityListener visibilityListener) {
        Assertions.checkNotNull(visibilityListener);
        this.f27559f.add(visibilityListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        Player player = this.f27586y0;
        if (player == null || !m20954E(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (player.getPlaybackState() == 4) {
                return true;
            }
            player.seekForward();
            return true;
        }
        if (keyCode == 89) {
            player.seekBack();
            return true;
        }
        if (keyEvent.getRepeatCount() != 0) {
            return true;
        }
        if (keyCode == 79 || keyCode == 85) {
            m20981B(player);
            return true;
        }
        if (keyCode == 87) {
            player.seekToNext();
            return true;
        }
        if (keyCode == 88) {
            player.seekToPrevious();
            return true;
        }
        if (keyCode == 126) {
            m20980A(player);
            return true;
        }
        if (keyCode != 127) {
            return true;
        }
        m20996z(player);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f27583x);
        } else if (motionEvent.getAction() == 1) {
            m20982D();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public Player getPlayer() {
        return this.f27586y0;
    }

    public int getRepeatToggleModes() {
        return this.f27541G0;
    }

    public boolean getShowShuffleButton() {
        return this.f27547L0;
    }

    public int getShowTimeoutMs() {
        return this.f27539E0;
    }

    public boolean getShowVrButton() {
        View view = this.f27569o;
        return view != null && view.getVisibility() == 0;
    }

    public void hide() {
        if (isVisible()) {
            setVisibility(8);
            Iterator<VisibilityListener> it2 = this.f27559f.iterator();
            while (it2.hasNext()) {
                it2.next().onVisibilityChange(getVisibility());
            }
            removeCallbacks(this.f27581w);
            removeCallbacks(this.f27583x);
            this.f27548M0 = C4649C.TIME_UNSET;
        }
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f27535A0 = true;
        long j = this.f27548M0;
        if (j != C4649C.TIME_UNSET) {
            long uptimeMillis = j - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                hide();
            } else {
                postDelayed(this.f27583x, uptimeMillis);
            }
        } else if (isVisible()) {
            m20982D();
        }
        m20988K();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f27535A0 = false;
        removeCallbacks(this.f27581w);
        removeCallbacks(this.f27583x);
    }

    public void removeVisibilityListener(VisibilityListener visibilityListener) {
        this.f27559f.remove(visibilityListener);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        if (jArr == null) {
            this.f27552P0 = new long[0];
            this.f27554Q0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) Assertions.checkNotNull(zArr);
            Assertions.checkArgument(jArr.length == zArr2.length);
            this.f27552P0 = jArr;
            this.f27554Q0 = zArr2;
        }
        m20995R();
    }

    public void setPlayer(@Nullable Player player) {
        boolean z = true;
        Assertions.checkState(Looper.myLooper() == Looper.getMainLooper());
        if (player != null && player.getApplicationLooper() != Looper.getMainLooper()) {
            z = false;
        }
        Assertions.checkArgument(z);
        Player player2 = this.f27586y0;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.f27558e);
        }
        this.f27586y0 = player;
        if (player != null) {
            player.addListener(this.f27558e);
        }
        m20988K();
    }

    public void setProgressUpdateListener(@Nullable ProgressUpdateListener progressUpdateListener) {
        this.f27588z0 = progressUpdateListener;
    }

    public void setRepeatToggleModes(int i) {
        this.f27541G0 = i;
        Player player = this.f27586y0;
        if (player != null) {
            int repeatMode = player.getRepeatMode();
            if (i == 0 && repeatMode != 0) {
                this.f27586y0.setRepeatMode(0);
            } else if (i == 1 && repeatMode == 2) {
                this.f27586y0.setRepeatMode(1);
            } else if (i == 2 && repeatMode == 1) {
                this.f27586y0.setRepeatMode(2);
            }
        }
        m20993P();
    }

    public void setShowFastForwardButton(boolean z) {
        this.f27543I0 = z;
        m20990M();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.f27536B0 = z;
        m20995R();
    }

    public void setShowNextButton(boolean z) {
        this.f27546K0 = z;
        m20990M();
    }

    public void setShowPreviousButton(boolean z) {
        this.f27545J0 = z;
        m20990M();
    }

    public void setShowRewindButton(boolean z) {
        this.f27542H0 = z;
        m20990M();
    }

    public void setShowShuffleButton(boolean z) {
        this.f27547L0 = z;
        m20994Q();
    }

    public void setShowTimeoutMs(int i) {
        this.f27539E0 = i;
        if (isVisible()) {
            m20982D();
        }
    }

    public void setShowVrButton(boolean z) {
        View view = this.f27569o;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.f27540F0 = Util.constrainValue(i, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f27569o;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            m20989L(getShowVrButton(), onClickListener != null, this.f27569o);
        }
    }

    public void show() {
        if (!isVisible()) {
            setVisibility(0);
            Iterator<VisibilityListener> it2 = this.f27559f.iterator();
            while (it2.hasNext()) {
                it2.next().onVisibilityChange(getVisibility());
            }
            m20988K();
            m20984G();
            m20983F();
        }
        m20982D();
    }

    /* renamed from: z */
    public final void m20996z(Player player) {
        player.pause();
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, attributeSet);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i);
        int i2 = C4970R.layout.exo_player_control_view;
        this.f27539E0 = 5000;
        this.f27541G0 = 0;
        this.f27540F0 = 200;
        this.f27548M0 = C4649C.TIME_UNSET;
        this.f27542H0 = true;
        this.f27543I0 = true;
        this.f27545J0 = true;
        this.f27546K0 = true;
        this.f27547L0 = false;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C4970R.styleable.PlayerControlView, i, 0);
            try {
                this.f27539E0 = obtainStyledAttributes.getInt(C4970R.styleable.PlayerControlView_show_timeout, this.f27539E0);
                i2 = obtainStyledAttributes.getResourceId(C4970R.styleable.PlayerControlView_controller_layout_id, i2);
                this.f27541G0 = m20953C(obtainStyledAttributes, this.f27541G0);
                this.f27542H0 = obtainStyledAttributes.getBoolean(C4970R.styleable.PlayerControlView_show_rewind_button, this.f27542H0);
                this.f27543I0 = obtainStyledAttributes.getBoolean(C4970R.styleable.PlayerControlView_show_fastforward_button, this.f27543I0);
                this.f27545J0 = obtainStyledAttributes.getBoolean(C4970R.styleable.PlayerControlView_show_previous_button, this.f27545J0);
                this.f27546K0 = obtainStyledAttributes.getBoolean(C4970R.styleable.PlayerControlView_show_next_button, this.f27546K0);
                this.f27547L0 = obtainStyledAttributes.getBoolean(C4970R.styleable.PlayerControlView_show_shuffle_button, this.f27547L0);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(C4970R.styleable.PlayerControlView_time_bar_min_update_interval, this.f27540F0));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f27559f = new CopyOnWriteArrayList<>();
        this.f27577u = new Timeline.Period();
        this.f27579v = new Timeline.Window();
        StringBuilder sb = new StringBuilder();
        this.f27574s = sb;
        this.f27575t = new Formatter(sb, Locale.getDefault());
        this.f27549N0 = new long[0];
        this.f27551O0 = new boolean[0];
        this.f27552P0 = new long[0];
        this.f27554Q0 = new boolean[0];
        ViewOnClickListenerC4965c viewOnClickListenerC4965c = new ViewOnClickListenerC4965c();
        this.f27558e = viewOnClickListenerC4965c;
        this.f27581w = new Runnable() { // from class: com.sunia.HTREnginev2.s4l
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.m20992O();
            }
        };
        this.f27583x = new Runnable() { // from class: com.sunia.HTREnginev2.t4l
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.hide();
            }
        };
        LayoutInflater.from(context).inflate(i2, this);
        setDescendantFocusability(262144);
        TimeBar timeBar = (TimeBar) findViewById(C4970R.id.exo_progress);
        View findViewById = findViewById(C4970R.id.exo_progress_placeholder);
        if (timeBar != null) {
            this.f27573r = timeBar;
        } else if (findViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(C4970R.id.exo_progress);
            defaultTimeBar.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f27573r = defaultTimeBar;
        } else {
            this.f27573r = null;
        }
        this.f27570p = (TextView) findViewById(C4970R.id.exo_duration);
        this.f27571q = (TextView) findViewById(C4970R.id.exo_position);
        TimeBar timeBar2 = this.f27573r;
        if (timeBar2 != null) {
            timeBar2.addListener(viewOnClickListenerC4965c);
        }
        View findViewById2 = findViewById(C4970R.id.exo_play);
        this.f27562i = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(viewOnClickListenerC4965c);
        }
        View findViewById3 = findViewById(C4970R.id.exo_pause);
        this.f27563j = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(viewOnClickListenerC4965c);
        }
        View findViewById4 = findViewById(C4970R.id.exo_prev);
        this.f27560g = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(viewOnClickListenerC4965c);
        }
        View findViewById5 = findViewById(C4970R.id.exo_next);
        this.f27561h = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(viewOnClickListenerC4965c);
        }
        View findViewById6 = findViewById(C4970R.id.exo_rew);
        this.f27566l = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(viewOnClickListenerC4965c);
        }
        View findViewById7 = findViewById(C4970R.id.exo_ffwd);
        this.f27564k = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(viewOnClickListenerC4965c);
        }
        ImageView imageView = (ImageView) findViewById(C4970R.id.exo_repeat_toggle);
        this.f27567m = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(viewOnClickListenerC4965c);
        }
        ImageView imageView2 = (ImageView) findViewById(C4970R.id.exo_shuffle);
        this.f27568n = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(viewOnClickListenerC4965c);
        }
        View findViewById8 = findViewById(C4970R.id.exo_vr);
        this.f27569o = findViewById8;
        setShowVrButton(false);
        m20989L(false, false, findViewById8);
        Resources resources = context.getResources();
        this.f27578u0 = resources.getInteger(C4970R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.f27580v0 = resources.getInteger(C4970R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.f27585y = resources.getDrawable(C4970R.drawable.exo_controls_repeat_off);
        this.f27587z = resources.getDrawable(C4970R.drawable.exo_controls_repeat_one);
        this.f27544J = resources.getDrawable(C4970R.drawable.exo_controls_repeat_all);
        this.f27572q0 = resources.getDrawable(C4970R.drawable.exo_controls_shuffle_on);
        this.f27576t0 = resources.getDrawable(C4970R.drawable.exo_controls_shuffle_off);
        this.f27550O = resources.getString(C4970R.string.exo_controls_repeat_off_description);
        this.f27553Q = resources.getString(C4970R.string.exo_controls_repeat_one_description);
        this.f27565k0 = resources.getString(C4970R.string.exo_controls_repeat_all_description);
        this.f27582w0 = resources.getString(C4970R.string.exo_controls_shuffle_on_description);
        this.f27584x0 = resources.getString(C4970R.string.exo_controls_shuffle_off_description);
        this.f27556S0 = C4649C.TIME_UNSET;
        this.f27557T0 = C4649C.TIME_UNSET;
    }
}

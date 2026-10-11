package com.google.android.exoplayer2.p008ui;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.opengl.GLSurfaceView;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.TracksInfo;
import com.google.android.exoplayer2.p008ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.p008ui.PlayerControlView;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ErrorMessageProvider;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.common.collect.ImmutableList;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

@Deprecated
/* loaded from: classes5.dex */
public class PlayerView extends FrameLayout implements AdViewProvider {
    public static final int SHOW_BUFFERING_ALWAYS = 2;
    public static final int SHOW_BUFFERING_NEVER = 0;
    public static final int SHOW_BUFFERING_WHEN_PLAYING = 1;

    /* renamed from: t0 */
    public static final int f27638t0 = 0;

    /* renamed from: u0 */
    public static final int f27639u0 = 1;

    /* renamed from: v0 */
    public static final int f27640v0 = 2;

    /* renamed from: w0 */
    public static final int f27641w0 = 3;

    /* renamed from: x0 */
    public static final int f27642x0 = 4;

    /* renamed from: y0 */
    public static final int f27643y0 = 3;

    /* renamed from: z0 */
    public static final int f27644z0 = -1;

    /* renamed from: J */
    public boolean f27645J;

    /* renamed from: O */
    public boolean f27646O;

    /* renamed from: Q */
    public boolean f27647Q;

    /* renamed from: e */
    public final ViewOnLayoutChangeListenerC4969a f27648e;

    /* renamed from: f */
    @Nullable
    public final AspectRatioFrameLayout f27649f;

    /* renamed from: g */
    @Nullable
    public final View f27650g;

    /* renamed from: h */
    @Nullable
    public final View f27651h;

    /* renamed from: i */
    public final boolean f27652i;

    /* renamed from: j */
    @Nullable
    public final ImageView f27653j;

    /* renamed from: k */
    @Nullable
    public final SubtitleView f27654k;

    /* renamed from: k0 */
    public int f27655k0;

    /* renamed from: l */
    @Nullable
    public final View f27656l;

    /* renamed from: m */
    @Nullable
    public final TextView f27657m;

    /* renamed from: n */
    @Nullable
    public final PlayerControlView f27658n;

    /* renamed from: o */
    @Nullable
    public final FrameLayout f27659o;

    /* renamed from: p */
    @Nullable
    public final FrameLayout f27660p;

    /* renamed from: q */
    @Nullable
    public Player f27661q;

    /* renamed from: q0 */
    public boolean f27662q0;

    /* renamed from: r */
    public boolean f27663r;

    /* renamed from: s */
    @Nullable
    public PlayerControlView.VisibilityListener f27664s;

    /* renamed from: t */
    public boolean f27665t;

    /* renamed from: u */
    @Nullable
    public Drawable f27666u;

    /* renamed from: v */
    public int f27667v;

    /* renamed from: w */
    public boolean f27668w;

    /* renamed from: x */
    @Nullable
    public ErrorMessageProvider<? super PlaybackException> f27669x;

    /* renamed from: y */
    @Nullable
    public CharSequence f27670y;

    /* renamed from: z */
    public int f27671z;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface ShowBuffering {
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerView$a */
    /* loaded from: classes5.dex */
    public final class ViewOnLayoutChangeListenerC4969a implements Player.Listener, View.OnLayoutChangeListener, View.OnClickListener, PlayerControlView.VisibilityListener {

        /* renamed from: e */
        public final Timeline.Period f27672e = new Timeline.Period();

        /* renamed from: f */
        @Nullable
        public Object f27673f;

        public ViewOnLayoutChangeListenerC4969a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PlayerView.this.m21035B();
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onCues(List<Cue> list) {
            if (PlayerView.this.f27654k != null) {
                PlayerView.this.f27654k.setCues(list);
            }
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            PlayerView.m21030o((TextureView) view, PlayerView.this.f27655k0);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onPlayWhenReadyChanged(boolean z, int i) {
            PlayerView.this.m21037D();
            PlayerView.this.m21039F();
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onPlaybackStateChanged(int i) {
            PlayerView.this.m21037D();
            PlayerView.this.m21040G();
            PlayerView.this.m21039F();
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
            if (PlayerView.this.m21047u() && PlayerView.this.f27646O) {
                PlayerView.this.hideController();
            }
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onRenderedFirstFrame() {
            if (PlayerView.this.f27650g != null) {
                PlayerView.this.f27650g.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onTracksInfoChanged(TracksInfo tracksInfo) {
            Player player = (Player) Assertions.checkNotNull(PlayerView.this.f27661q);
            Timeline currentTimeline = player.getCurrentTimeline();
            if (currentTimeline.isEmpty()) {
                this.f27673f = null;
            } else if (player.getCurrentTracksInfo().getTrackGroupInfos().isEmpty()) {
                Object obj = this.f27673f;
                if (obj != null) {
                    int indexOfPeriod = currentTimeline.getIndexOfPeriod(obj);
                    if (indexOfPeriod != -1) {
                        if (player.getCurrentMediaItemIndex() == currentTimeline.getPeriod(indexOfPeriod, this.f27672e).windowIndex) {
                            return;
                        }
                    }
                    this.f27673f = null;
                }
            } else {
                this.f27673f = currentTimeline.getPeriod(player.getCurrentPeriodIndex(), this.f27672e, true).uid;
            }
            PlayerView.this.m21041H(false);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onVideoSizeChanged(VideoSize videoSize) {
            PlayerView.this.m21036C();
        }

        @Override // com.google.android.exoplayer2.ui.PlayerControlView.VisibilityListener
        public void onVisibilityChange(int i) {
            PlayerView.this.m21038E();
        }
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    /* renamed from: o */
    public static void m21030o(TextureView textureView, int i) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != 0.0f && height != 0.0f && i != 0) {
            float f = width / 2.0f;
            float f2 = height / 2.0f;
            matrix.postRotate(i, f, f2);
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f, f2);
        }
        textureView.setTransform(matrix);
    }

    /* renamed from: q */
    public static void m21031q(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(C4970R.drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(C4970R.color.exo_edit_mode_background_color));
    }

    @RequiresApi(23)
    /* renamed from: r */
    public static void m21032r(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(C4970R.drawable.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(C4970R.color.exo_edit_mode_background_color, null));
    }

    public static void switchTargetView(Player player, @Nullable PlayerView playerView, @Nullable PlayerView playerView2) {
        if (playerView == playerView2) {
            return;
        }
        if (playerView2 != null) {
            playerView2.setPlayer(player);
        }
        if (playerView != null) {
            playerView.setPlayer(null);
        }
    }

    /* renamed from: y */
    public static void m21033y(AspectRatioFrameLayout aspectRatioFrameLayout, int i) {
        aspectRatioFrameLayout.setResizeMode(i);
    }

    /* renamed from: A */
    public final void m21034A(boolean z) {
        if (m21043J()) {
            this.f27658n.setShowTimeoutMs(z ? 0 : this.f27671z);
            this.f27658n.show();
        }
    }

    /* renamed from: B */
    public final boolean m21035B() {
        if (!m21043J() || this.f27661q == null) {
            return false;
        }
        if (!this.f27658n.isVisible()) {
            m21048v(true);
        } else if (this.f27647Q) {
            this.f27658n.hide();
        }
        return true;
    }

    /* renamed from: C */
    public final void m21036C() {
        Player player = this.f27661q;
        VideoSize videoSize = player != null ? player.getVideoSize() : VideoSize.UNKNOWN;
        int i = videoSize.width;
        int i2 = videoSize.height;
        int i3 = videoSize.unappliedRotationDegrees;
        float f = (i2 == 0 || i == 0) ? 0.0f : (i * videoSize.pixelWidthHeightRatio) / i2;
        View view = this.f27651h;
        if (view instanceof TextureView) {
            if (f > 0.0f && (i3 == 90 || i3 == 270)) {
                f = 1.0f / f;
            }
            if (this.f27655k0 != 0) {
                view.removeOnLayoutChangeListener(this.f27648e);
            }
            this.f27655k0 = i3;
            if (i3 != 0) {
                this.f27651h.addOnLayoutChangeListener(this.f27648e);
            }
            m21030o((TextureView) this.f27651h, this.f27655k0);
        }
        onContentAspectRatioChanged(this.f27649f, this.f27652i ? 0.0f : f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
    
        if (r4.f27661q.getPlayWhenReady() == false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21037D() {
        /*
            r4 = this;
            android.view.View r0 = r4.f27656l
            if (r0 == 0) goto L2b
            com.google.android.exoplayer2.Player r0 = r4.f27661q
            r1 = 0
            if (r0 == 0) goto L20
            int r0 = r0.getPlaybackState()
            r2 = 2
            if (r0 != r2) goto L20
            int r0 = r4.f27667v
            r3 = 1
            if (r0 == r2) goto L21
            if (r0 != r3) goto L20
            com.google.android.exoplayer2.Player r0 = r4.f27661q
            boolean r0 = r0.getPlayWhenReady()
            if (r0 == 0) goto L20
            goto L21
        L20:
            r3 = r1
        L21:
            android.view.View r4 = r4.f27656l
            if (r3 == 0) goto L26
            goto L28
        L26:
            r1 = 8
        L28:
            r4.setVisibility(r1)
        L2b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p008ui.PlayerView.m21037D():void");
    }

    /* renamed from: E */
    public final void m21038E() {
        PlayerControlView playerControlView = this.f27658n;
        if (playerControlView == null || !this.f27663r) {
            setContentDescription(null);
        } else if (playerControlView.getVisibility() == 0) {
            setContentDescription(this.f27647Q ? getResources().getString(C4970R.string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(C4970R.string.exo_controls_show));
        }
    }

    /* renamed from: F */
    public final void m21039F() {
        if (m21047u() && this.f27646O) {
            hideController();
        } else {
            m21048v(false);
        }
    }

    /* renamed from: G */
    public final void m21040G() {
        ErrorMessageProvider<? super PlaybackException> errorMessageProvider;
        TextView textView = this.f27657m;
        if (textView != null) {
            CharSequence charSequence = this.f27670y;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f27657m.setVisibility(0);
                return;
            }
            Player player = this.f27661q;
            PlaybackException playerError = player != null ? player.getPlayerError() : null;
            if (playerError == null || (errorMessageProvider = this.f27669x) == null) {
                this.f27657m.setVisibility(8);
            } else {
                this.f27657m.setText((CharSequence) errorMessageProvider.getErrorMessage(playerError).second);
                this.f27657m.setVisibility(0);
            }
        }
    }

    /* renamed from: H */
    public final void m21041H(boolean z) {
        Player player = this.f27661q;
        if (player == null || !player.isCommandAvailable(30) || player.getCurrentTracksInfo().getTrackGroupInfos().isEmpty()) {
            if (this.f27668w) {
                return;
            }
            m21045s();
            m21044p();
            return;
        }
        if (z && !this.f27668w) {
            m21044p();
        }
        if (player.getCurrentTracksInfo().isTypeSelected(2)) {
            m21045s();
            return;
        }
        m21044p();
        if (m21042I() && (m21049w(player.getMediaMetadata()) || m21050x(this.f27666u))) {
            return;
        }
        m21045s();
    }

    @EnsuresNonNullIf(expression = {"artworkView"}, result = true)
    /* renamed from: I */
    public final boolean m21042I() {
        if (!this.f27665t) {
            return false;
        }
        Assertions.checkStateNotNull(this.f27653j);
        return true;
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = true)
    /* renamed from: J */
    public final boolean m21043J() {
        if (!this.f27663r) {
            return false;
        }
        Assertions.checkStateNotNull(this.f27658n);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Player player = this.f27661q;
        if (player != null && player.isPlayingAd()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean m21046t = m21046t(keyEvent.getKeyCode());
        if (m21046t && m21043J() && !this.f27658n.isVisible()) {
            m21048v(true);
            return true;
        }
        if (dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            m21048v(true);
            return true;
        }
        if (m21046t && m21043J()) {
            m21048v(true);
        }
        return false;
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        return m21043J() && this.f27658n.dispatchMediaKeyEvent(keyEvent);
    }

    @Override // com.google.android.exoplayer2.p008ui.AdViewProvider
    public List<AdOverlayInfo> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f27660p;
        if (frameLayout != null) {
            arrayList.add(new AdOverlayInfo(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        PlayerControlView playerControlView = this.f27658n;
        if (playerControlView != null) {
            arrayList.add(new AdOverlayInfo(playerControlView, 1));
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    @Override // com.google.android.exoplayer2.p008ui.AdViewProvider
    public ViewGroup getAdViewGroup() {
        return (ViewGroup) Assertions.checkStateNotNull(this.f27659o, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f27645J;
    }

    public boolean getControllerHideOnTouch() {
        return this.f27647Q;
    }

    public int getControllerShowTimeoutMs() {
        return this.f27671z;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f27666u;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f27660p;
    }

    @Nullable
    public Player getPlayer() {
        return this.f27661q;
    }

    public int getResizeMode() {
        Assertions.checkStateNotNull(this.f27649f);
        return this.f27649f.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f27654k;
    }

    public boolean getUseArtwork() {
        return this.f27665t;
    }

    public boolean getUseController() {
        return this.f27663r;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f27651h;
    }

    public void hideController() {
        PlayerControlView playerControlView = this.f27658n;
        if (playerControlView != null) {
            playerControlView.hide();
        }
    }

    public boolean isControllerVisible() {
        PlayerControlView playerControlView = this.f27658n;
        return playerControlView != null && playerControlView.isVisible();
    }

    public void onContentAspectRatioChanged(@Nullable AspectRatioFrameLayout aspectRatioFrameLayout, float f) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f);
        }
    }

    public void onPause() {
        View view = this.f27651h;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onPause();
        }
    }

    public void onResume() {
        View view = this.f27651h;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onResume();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!m21043J() || this.f27661q == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f27662q0 = true;
            return true;
        }
        if (action != 1 || !this.f27662q0) {
            return false;
        }
        this.f27662q0 = false;
        performClick();
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!m21043J() || this.f27661q == null) {
            return false;
        }
        m21048v(true);
        return true;
    }

    /* renamed from: p */
    public final void m21044p() {
        View view = this.f27650g;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return m21035B();
    }

    /* renamed from: s */
    public final void m21045s() {
        ImageView imageView = this.f27653j;
        if (imageView != null) {
            imageView.setImageResource(R.color.transparent);
            this.f27653j.setVisibility(4);
        }
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.AspectRatioListener aspectRatioListener) {
        Assertions.checkStateNotNull(this.f27649f);
        this.f27649f.setAspectRatioListener(aspectRatioListener);
    }

    public void setControllerAutoShow(boolean z) {
        this.f27645J = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.f27646O = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        Assertions.checkStateNotNull(this.f27658n);
        this.f27647Q = z;
        m21038E();
    }

    public void setControllerShowTimeoutMs(int i) {
        Assertions.checkStateNotNull(this.f27658n);
        this.f27671z = i;
        if (this.f27658n.isVisible()) {
            showController();
        }
    }

    public void setControllerVisibilityListener(@Nullable PlayerControlView.VisibilityListener visibilityListener) {
        Assertions.checkStateNotNull(this.f27658n);
        PlayerControlView.VisibilityListener visibilityListener2 = this.f27664s;
        if (visibilityListener2 == visibilityListener) {
            return;
        }
        if (visibilityListener2 != null) {
            this.f27658n.removeVisibilityListener(visibilityListener2);
        }
        this.f27664s = visibilityListener;
        if (visibilityListener != null) {
            this.f27658n.addVisibilityListener(visibilityListener);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        Assertions.checkState(this.f27657m != null);
        this.f27670y = charSequence;
        m21040G();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f27666u != drawable) {
            this.f27666u = drawable;
            m21041H(false);
        }
    }

    public void setErrorMessageProvider(@Nullable ErrorMessageProvider<? super PlaybackException> errorMessageProvider) {
        if (this.f27669x != errorMessageProvider) {
            this.f27669x = errorMessageProvider;
            m21040G();
        }
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        Assertions.checkStateNotNull(this.f27658n);
        this.f27658n.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.f27668w != z) {
            this.f27668w = z;
            m21041H(false);
        }
    }

    public void setPlayer(@Nullable Player player) {
        Assertions.checkState(Looper.myLooper() == Looper.getMainLooper());
        Assertions.checkArgument(player == null || player.getApplicationLooper() == Looper.getMainLooper());
        Player player2 = this.f27661q;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.f27648e);
            if (player2.isCommandAvailable(27)) {
                View view = this.f27651h;
                if (view instanceof TextureView) {
                    player2.clearVideoTextureView((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    player2.clearVideoSurfaceView((SurfaceView) view);
                }
            }
        }
        SubtitleView subtitleView = this.f27654k;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f27661q = player;
        if (m21043J()) {
            this.f27658n.setPlayer(player);
        }
        m21037D();
        m21040G();
        m21041H(true);
        if (player == null) {
            hideController();
            return;
        }
        if (player.isCommandAvailable(27)) {
            View view2 = this.f27651h;
            if (view2 instanceof TextureView) {
                player.setVideoTextureView((TextureView) view2);
            } else if (view2 instanceof SurfaceView) {
                player.setVideoSurfaceView((SurfaceView) view2);
            }
            m21036C();
        }
        if (this.f27654k != null && player.isCommandAvailable(28)) {
            this.f27654k.setCues(player.getCurrentCues());
        }
        player.addListener(this.f27648e);
        m21048v(false);
    }

    public void setRepeatToggleModes(int i) {
        Assertions.checkStateNotNull(this.f27658n);
        this.f27658n.setRepeatToggleModes(i);
    }

    public void setResizeMode(int i) {
        Assertions.checkStateNotNull(this.f27649f);
        this.f27649f.setResizeMode(i);
    }

    public void setShowBuffering(int i) {
        if (this.f27667v != i) {
            this.f27667v = i;
            m21037D();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        Assertions.checkStateNotNull(this.f27658n);
        this.f27658n.setShowFastForwardButton(z);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        Assertions.checkStateNotNull(this.f27658n);
        this.f27658n.setShowMultiWindowTimeBar(z);
    }

    public void setShowNextButton(boolean z) {
        Assertions.checkStateNotNull(this.f27658n);
        this.f27658n.setShowNextButton(z);
    }

    public void setShowPreviousButton(boolean z) {
        Assertions.checkStateNotNull(this.f27658n);
        this.f27658n.setShowPreviousButton(z);
    }

    public void setShowRewindButton(boolean z) {
        Assertions.checkStateNotNull(this.f27658n);
        this.f27658n.setShowRewindButton(z);
    }

    public void setShowShuffleButton(boolean z) {
        Assertions.checkStateNotNull(this.f27658n);
        this.f27658n.setShowShuffleButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.f27650g;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setUseArtwork(boolean z) {
        Assertions.checkState((z && this.f27653j == null) ? false : true);
        if (this.f27665t != z) {
            this.f27665t = z;
            m21041H(false);
        }
    }

    public void setUseController(boolean z) {
        Assertions.checkState((z && this.f27658n == null) ? false : true);
        if (this.f27663r == z) {
            return;
        }
        this.f27663r = z;
        if (m21043J()) {
            this.f27658n.setPlayer(this.f27661q);
        } else {
            PlayerControlView playerControlView = this.f27658n;
            if (playerControlView != null) {
                playerControlView.hide();
                this.f27658n.setPlayer(null);
            }
        }
        m21038E();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.f27651h;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }

    public void showController() {
        m21034A(m21051z());
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: t */
    public final boolean m21046t(int i) {
        return i == 19 || i == 270 || i == 22 || i == 271 || i == 20 || i == 269 || i == 21 || i == 268 || i == 23;
    }

    /* renamed from: u */
    public final boolean m21047u() {
        Player player = this.f27661q;
        return player != null && player.isPlayingAd() && this.f27661q.getPlayWhenReady();
    }

    /* renamed from: v */
    public final void m21048v(boolean z) {
        if (!(m21047u() && this.f27646O) && m21043J()) {
            boolean z2 = this.f27658n.isVisible() && this.f27658n.getShowTimeoutMs() <= 0;
            boolean m21051z = m21051z();
            if (z || z2 || m21051z) {
                m21034A(m21051z);
            }
        }
    }

    @RequiresNonNull({"artworkView"})
    /* renamed from: w */
    public final boolean m21049w(MediaMetadata mediaMetadata) {
        byte[] bArr = mediaMetadata.artworkData;
        if (bArr == null) {
            return false;
        }
        return m21050x(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    @RequiresNonNull({"artworkView"})
    /* renamed from: x */
    public final boolean m21050x(@Nullable Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                onContentAspectRatioChanged(this.f27649f, intrinsicWidth / intrinsicHeight);
                this.f27653j.setImageDrawable(drawable);
                this.f27653j.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    /* renamed from: z */
    public final boolean m21051z() {
        Player player = this.f27661q;
        if (player == null) {
            return true;
        }
        int playbackState = player.getPlaybackState();
        return this.f27645J && (playbackState == 1 || playbackState == 4 || !this.f27661q.getPlayWhenReady());
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlayerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2;
        boolean z;
        int i3;
        int i4;
        boolean z2;
        boolean z3;
        int i5;
        boolean z4;
        int i6;
        boolean z5;
        int i7;
        boolean z6;
        boolean z7;
        boolean z8;
        int i8;
        boolean z9;
        ViewOnLayoutChangeListenerC4969a viewOnLayoutChangeListenerC4969a = new ViewOnLayoutChangeListenerC4969a();
        this.f27648e = viewOnLayoutChangeListenerC4969a;
        if (isInEditMode()) {
            this.f27649f = null;
            this.f27650g = null;
            this.f27651h = null;
            this.f27652i = false;
            this.f27653j = null;
            this.f27654k = null;
            this.f27656l = null;
            this.f27657m = null;
            this.f27658n = null;
            this.f27659o = null;
            this.f27660p = null;
            ImageView imageView = new ImageView(context);
            if (Util.SDK_INT >= 23) {
                m21032r(getResources(), imageView);
            } else {
                m21031q(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i9 = C4970R.layout.exo_player_view;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C4970R.styleable.PlayerView, i, 0);
            try {
                boolean hasValue = obtainStyledAttributes.hasValue(C4970R.styleable.PlayerView_shutter_background_color);
                int color = obtainStyledAttributes.getColor(C4970R.styleable.PlayerView_shutter_background_color, 0);
                int resourceId = obtainStyledAttributes.getResourceId(C4970R.styleable.PlayerView_player_layout_id, i9);
                boolean z10 = obtainStyledAttributes.getBoolean(C4970R.styleable.PlayerView_use_artwork, true);
                int resourceId2 = obtainStyledAttributes.getResourceId(C4970R.styleable.PlayerView_default_artwork, 0);
                boolean z11 = obtainStyledAttributes.getBoolean(C4970R.styleable.PlayerView_use_controller, true);
                int i10 = obtainStyledAttributes.getInt(C4970R.styleable.PlayerView_surface_type, 1);
                int i11 = obtainStyledAttributes.getInt(C4970R.styleable.PlayerView_resize_mode, 0);
                int i12 = obtainStyledAttributes.getInt(C4970R.styleable.PlayerView_show_timeout, 5000);
                boolean z12 = obtainStyledAttributes.getBoolean(C4970R.styleable.PlayerView_hide_on_touch, true);
                boolean z13 = obtainStyledAttributes.getBoolean(C4970R.styleable.PlayerView_auto_show, true);
                i4 = obtainStyledAttributes.getInteger(C4970R.styleable.PlayerView_show_buffering, 0);
                this.f27668w = obtainStyledAttributes.getBoolean(C4970R.styleable.PlayerView_keep_content_on_player_reset, this.f27668w);
                boolean z14 = obtainStyledAttributes.getBoolean(C4970R.styleable.PlayerView_hide_during_ads, true);
                obtainStyledAttributes.recycle();
                z3 = z12;
                z = z13;
                i3 = i11;
                z6 = z11;
                i7 = resourceId2;
                z5 = z10;
                i6 = color;
                z4 = hasValue;
                i5 = i10;
                i9 = resourceId;
                i2 = i12;
                z2 = z14;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i2 = 5000;
            z = true;
            i3 = 0;
            i4 = 0;
            z2 = true;
            z3 = true;
            i5 = 1;
            z4 = false;
            i6 = 0;
            z5 = true;
            i7 = 0;
            z6 = true;
        }
        LayoutInflater.from(context).inflate(i9, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(C4970R.id.exo_content_frame);
        this.f27649f = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            m21033y(aspectRatioFrameLayout, i3);
        }
        View findViewById = findViewById(C4970R.id.exo_shutter);
        this.f27650g = findViewById;
        if (findViewById != null && z4) {
            findViewById.setBackgroundColor(i6);
        }
        if (aspectRatioFrameLayout != null && i5 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i5 == 2) {
                z7 = true;
                this.f27651h = new TextureView(context);
            } else if (i5 != 3) {
                if (i5 != 4) {
                    this.f27651h = new SurfaceView(context);
                } else {
                    try {
                        this.f27651h = (View) Class.forName("com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView").getConstructor(Context.class).newInstance(context);
                    } catch (Exception e) {
                        throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e);
                    }
                }
                z7 = true;
            } else {
                try {
                    z7 = true;
                    this.f27651h = (View) Class.forName("com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView").getConstructor(Context.class).newInstance(context);
                    z9 = true;
                    this.f27651h.setLayoutParams(layoutParams);
                    this.f27651h.setOnClickListener(viewOnLayoutChangeListenerC4969a);
                    this.f27651h.setClickable(false);
                    aspectRatioFrameLayout.addView(this.f27651h, 0);
                    z8 = z9;
                } catch (Exception e2) {
                    throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e2);
                }
            }
            z9 = false;
            this.f27651h.setLayoutParams(layoutParams);
            this.f27651h.setOnClickListener(viewOnLayoutChangeListenerC4969a);
            this.f27651h.setClickable(false);
            aspectRatioFrameLayout.addView(this.f27651h, 0);
            z8 = z9;
        } else {
            z7 = true;
            this.f27651h = null;
            z8 = false;
        }
        this.f27652i = z8;
        this.f27659o = (FrameLayout) findViewById(C4970R.id.exo_ad_overlay);
        this.f27660p = (FrameLayout) findViewById(C4970R.id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(C4970R.id.exo_artwork);
        this.f27653j = imageView2;
        this.f27665t = (!z5 || imageView2 == null) ? false : z7;
        if (i7 != 0) {
            this.f27666u = ContextCompat.getDrawable(getContext(), i7);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(C4970R.id.exo_subtitles);
        this.f27654k = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View findViewById2 = findViewById(C4970R.id.exo_buffering);
        this.f27656l = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f27667v = i4;
        TextView textView = (TextView) findViewById(C4970R.id.exo_error_message);
        this.f27657m = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        PlayerControlView playerControlView = (PlayerControlView) findViewById(C4970R.id.exo_controller);
        View findViewById3 = findViewById(C4970R.id.exo_controller_placeholder);
        if (playerControlView != null) {
            this.f27658n = playerControlView;
            i8 = 0;
        } else if (findViewById3 != null) {
            i8 = 0;
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.f27658n = playerControlView2;
            playerControlView2.setId(C4970R.id.exo_controller);
            playerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(playerControlView2, indexOfChild);
        } else {
            i8 = 0;
            this.f27658n = null;
        }
        PlayerControlView playerControlView3 = this.f27658n;
        this.f27671z = playerControlView3 != null ? i2 : i8;
        this.f27647Q = z3;
        this.f27645J = z;
        this.f27646O = z2;
        this.f27663r = (!z6 || playerControlView3 == null) ? i8 : z7;
        hideController();
        m21038E();
        PlayerControlView playerControlView4 = this.f27658n;
        if (playerControlView4 != null) {
            playerControlView4.addVisibilityListener(viewOnLayoutChangeListenerC4969a);
        }
    }
}

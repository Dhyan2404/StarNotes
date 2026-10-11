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
import com.google.android.exoplayer2.p008ui.StyledPlayerControlView;
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

/* loaded from: classes5.dex */
public class StyledPlayerView extends FrameLayout implements AdViewProvider {
    public static final int SHOW_BUFFERING_ALWAYS = 2;
    public static final int SHOW_BUFFERING_NEVER = 0;
    public static final int SHOW_BUFFERING_WHEN_PLAYING = 1;

    /* renamed from: t0 */
    public static final int f27783t0 = 0;

    /* renamed from: u0 */
    public static final int f27784u0 = 1;

    /* renamed from: v0 */
    public static final int f27785v0 = 2;

    /* renamed from: w0 */
    public static final int f27786w0 = 3;

    /* renamed from: x0 */
    public static final int f27787x0 = 4;

    /* renamed from: y0 */
    public static final int f27788y0 = 3;

    /* renamed from: z0 */
    public static final int f27789z0 = -1;

    /* renamed from: J */
    public boolean f27790J;

    /* renamed from: O */
    public boolean f27791O;

    /* renamed from: Q */
    public boolean f27792Q;

    /* renamed from: e */
    public final ViewOnLayoutChangeListenerC4984a f27793e;

    /* renamed from: f */
    @Nullable
    public final AspectRatioFrameLayout f27794f;

    /* renamed from: g */
    @Nullable
    public final View f27795g;

    /* renamed from: h */
    @Nullable
    public final View f27796h;

    /* renamed from: i */
    public final boolean f27797i;

    /* renamed from: j */
    @Nullable
    public final ImageView f27798j;

    /* renamed from: k */
    @Nullable
    public final SubtitleView f27799k;

    /* renamed from: k0 */
    public int f27800k0;

    /* renamed from: l */
    @Nullable
    public final View f27801l;

    /* renamed from: m */
    @Nullable
    public final TextView f27802m;

    /* renamed from: n */
    @Nullable
    public final StyledPlayerControlView f27803n;

    /* renamed from: o */
    @Nullable
    public final FrameLayout f27804o;

    /* renamed from: p */
    @Nullable
    public final FrameLayout f27805p;

    /* renamed from: q */
    @Nullable
    public Player f27806q;

    /* renamed from: q0 */
    public boolean f27807q0;

    /* renamed from: r */
    public boolean f27808r;

    /* renamed from: s */
    @Nullable
    public StyledPlayerControlView.VisibilityListener f27809s;

    /* renamed from: t */
    public boolean f27810t;

    /* renamed from: u */
    @Nullable
    public Drawable f27811u;

    /* renamed from: v */
    public int f27812v;

    /* renamed from: w */
    public boolean f27813w;

    /* renamed from: x */
    @Nullable
    public ErrorMessageProvider<? super PlaybackException> f27814x;

    /* renamed from: y */
    @Nullable
    public CharSequence f27815y;

    /* renamed from: z */
    public int f27816z;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface ShowBuffering {
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerView$a */
    /* loaded from: classes5.dex */
    public final class ViewOnLayoutChangeListenerC4984a implements Player.Listener, View.OnLayoutChangeListener, View.OnClickListener, StyledPlayerControlView.VisibilityListener {

        /* renamed from: e */
        public final Timeline.Period f27817e = new Timeline.Period();

        /* renamed from: f */
        @Nullable
        public Object f27818f;

        public ViewOnLayoutChangeListenerC4984a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StyledPlayerView.this.m21192B();
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onCues(List<Cue> list) {
            if (StyledPlayerView.this.f27799k != null) {
                StyledPlayerView.this.f27799k.setCues(list);
            }
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            StyledPlayerView.m21187o((TextureView) view, StyledPlayerView.this.f27800k0);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onPlayWhenReadyChanged(boolean z, int i) {
            StyledPlayerView.this.m21194D();
            StyledPlayerView.this.m21196F();
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onPlaybackStateChanged(int i) {
            StyledPlayerView.this.m21194D();
            StyledPlayerView.this.m21197G();
            StyledPlayerView.this.m21196F();
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
            if (StyledPlayerView.this.m21204u() && StyledPlayerView.this.f27791O) {
                StyledPlayerView.this.hideController();
            }
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onRenderedFirstFrame() {
            if (StyledPlayerView.this.f27795g != null) {
                StyledPlayerView.this.f27795g.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onTracksInfoChanged(TracksInfo tracksInfo) {
            Player player = (Player) Assertions.checkNotNull(StyledPlayerView.this.f27806q);
            Timeline currentTimeline = player.getCurrentTimeline();
            if (currentTimeline.isEmpty()) {
                this.f27818f = null;
            } else if (player.getCurrentTracksInfo().getTrackGroupInfos().isEmpty()) {
                Object obj = this.f27818f;
                if (obj != null) {
                    int indexOfPeriod = currentTimeline.getIndexOfPeriod(obj);
                    if (indexOfPeriod != -1) {
                        if (player.getCurrentMediaItemIndex() == currentTimeline.getPeriod(indexOfPeriod, this.f27817e).windowIndex) {
                            return;
                        }
                    }
                    this.f27818f = null;
                }
            } else {
                this.f27818f = currentTimeline.getPeriod(player.getCurrentPeriodIndex(), this.f27817e, true).uid;
            }
            StyledPlayerView.this.m21198H(false);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onVideoSizeChanged(VideoSize videoSize) {
            StyledPlayerView.this.m21193C();
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.VisibilityListener
        public void onVisibilityChange(int i) {
            StyledPlayerView.this.m21195E();
        }
    }

    public StyledPlayerView(Context context) {
        this(context, null);
    }

    /* renamed from: o */
    public static void m21187o(TextureView textureView, int i) {
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
    public static void m21188q(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(C4970R.drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(C4970R.color.exo_edit_mode_background_color));
    }

    @RequiresApi(23)
    /* renamed from: r */
    public static void m21189r(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(C4970R.drawable.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(C4970R.color.exo_edit_mode_background_color, null));
    }

    public static void switchTargetView(Player player, @Nullable StyledPlayerView styledPlayerView, @Nullable StyledPlayerView styledPlayerView2) {
        if (styledPlayerView == styledPlayerView2) {
            return;
        }
        if (styledPlayerView2 != null) {
            styledPlayerView2.setPlayer(player);
        }
        if (styledPlayerView != null) {
            styledPlayerView.setPlayer(null);
        }
    }

    /* renamed from: y */
    public static void m21190y(AspectRatioFrameLayout aspectRatioFrameLayout, int i) {
        aspectRatioFrameLayout.setResizeMode(i);
    }

    /* renamed from: A */
    public final void m21191A(boolean z) {
        if (m21200J()) {
            this.f27803n.setShowTimeoutMs(z ? 0 : this.f27816z);
            this.f27803n.show();
        }
    }

    /* renamed from: B */
    public final boolean m21192B() {
        if (m21200J() && this.f27806q != null) {
            if (!this.f27803n.isFullyVisible()) {
                m21205v(true);
                return true;
            }
            if (this.f27792Q) {
                this.f27803n.hide();
                return true;
            }
        }
        return false;
    }

    /* renamed from: C */
    public final void m21193C() {
        Player player = this.f27806q;
        VideoSize videoSize = player != null ? player.getVideoSize() : VideoSize.UNKNOWN;
        int i = videoSize.width;
        int i2 = videoSize.height;
        int i3 = videoSize.unappliedRotationDegrees;
        float f = (i2 == 0 || i == 0) ? 0.0f : (i * videoSize.pixelWidthHeightRatio) / i2;
        View view = this.f27796h;
        if (view instanceof TextureView) {
            if (f > 0.0f && (i3 == 90 || i3 == 270)) {
                f = 1.0f / f;
            }
            if (this.f27800k0 != 0) {
                view.removeOnLayoutChangeListener(this.f27793e);
            }
            this.f27800k0 = i3;
            if (i3 != 0) {
                this.f27796h.addOnLayoutChangeListener(this.f27793e);
            }
            m21187o((TextureView) this.f27796h, this.f27800k0);
        }
        onContentAspectRatioChanged(this.f27794f, this.f27797i ? 0.0f : f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
    
        if (r4.f27806q.getPlayWhenReady() == false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21194D() {
        /*
            r4 = this;
            android.view.View r0 = r4.f27801l
            if (r0 == 0) goto L2b
            com.google.android.exoplayer2.Player r0 = r4.f27806q
            r1 = 0
            if (r0 == 0) goto L20
            int r0 = r0.getPlaybackState()
            r2 = 2
            if (r0 != r2) goto L20
            int r0 = r4.f27812v
            r3 = 1
            if (r0 == r2) goto L21
            if (r0 != r3) goto L20
            com.google.android.exoplayer2.Player r0 = r4.f27806q
            boolean r0 = r0.getPlayWhenReady()
            if (r0 == 0) goto L20
            goto L21
        L20:
            r3 = r1
        L21:
            android.view.View r4 = r4.f27801l
            if (r3 == 0) goto L26
            goto L28
        L26:
            r1 = 8
        L28:
            r4.setVisibility(r1)
        L2b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p008ui.StyledPlayerView.m21194D():void");
    }

    /* renamed from: E */
    public final void m21195E() {
        StyledPlayerControlView styledPlayerControlView = this.f27803n;
        if (styledPlayerControlView == null || !this.f27808r) {
            setContentDescription(null);
        } else if (styledPlayerControlView.isFullyVisible()) {
            setContentDescription(this.f27792Q ? getResources().getString(C4970R.string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(C4970R.string.exo_controls_show));
        }
    }

    /* renamed from: F */
    public final void m21196F() {
        if (m21204u() && this.f27791O) {
            hideController();
        } else {
            m21205v(false);
        }
    }

    /* renamed from: G */
    public final void m21197G() {
        ErrorMessageProvider<? super PlaybackException> errorMessageProvider;
        TextView textView = this.f27802m;
        if (textView != null) {
            CharSequence charSequence = this.f27815y;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f27802m.setVisibility(0);
                return;
            }
            Player player = this.f27806q;
            PlaybackException playerError = player != null ? player.getPlayerError() : null;
            if (playerError == null || (errorMessageProvider = this.f27814x) == null) {
                this.f27802m.setVisibility(8);
            } else {
                this.f27802m.setText((CharSequence) errorMessageProvider.getErrorMessage(playerError).second);
                this.f27802m.setVisibility(0);
            }
        }
    }

    /* renamed from: H */
    public final void m21198H(boolean z) {
        Player player = this.f27806q;
        if (player == null || player.getCurrentTracksInfo().getTrackGroupInfos().isEmpty()) {
            if (this.f27813w) {
                return;
            }
            m21202s();
            m21201p();
            return;
        }
        if (z && !this.f27813w) {
            m21201p();
        }
        if (player.getCurrentTracksInfo().isTypeSelected(2)) {
            m21202s();
            return;
        }
        m21201p();
        if (m21199I() && (m21206w(player.getMediaMetadata()) || m21207x(this.f27811u))) {
            return;
        }
        m21202s();
    }

    @EnsuresNonNullIf(expression = {"artworkView"}, result = true)
    /* renamed from: I */
    public final boolean m21199I() {
        if (!this.f27810t) {
            return false;
        }
        Assertions.checkStateNotNull(this.f27798j);
        return true;
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = true)
    /* renamed from: J */
    public final boolean m21200J() {
        if (!this.f27808r) {
            return false;
        }
        Assertions.checkStateNotNull(this.f27803n);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Player player = this.f27806q;
        if (player != null && player.isPlayingAd()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean m21203t = m21203t(keyEvent.getKeyCode());
        if (m21203t && m21200J() && !this.f27803n.isFullyVisible()) {
            m21205v(true);
            return true;
        }
        if (dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            m21205v(true);
            return true;
        }
        if (m21203t && m21200J()) {
            m21205v(true);
        }
        return false;
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        return m21200J() && this.f27803n.dispatchMediaKeyEvent(keyEvent);
    }

    @Override // com.google.android.exoplayer2.p008ui.AdViewProvider
    public List<AdOverlayInfo> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f27805p;
        if (frameLayout != null) {
            arrayList.add(new AdOverlayInfo(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        StyledPlayerControlView styledPlayerControlView = this.f27803n;
        if (styledPlayerControlView != null) {
            arrayList.add(new AdOverlayInfo(styledPlayerControlView, 1));
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    @Override // com.google.android.exoplayer2.p008ui.AdViewProvider
    public ViewGroup getAdViewGroup() {
        return (ViewGroup) Assertions.checkStateNotNull(this.f27804o, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f27790J;
    }

    public boolean getControllerHideOnTouch() {
        return this.f27792Q;
    }

    public int getControllerShowTimeoutMs() {
        return this.f27816z;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f27811u;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f27805p;
    }

    @Nullable
    public Player getPlayer() {
        return this.f27806q;
    }

    public int getResizeMode() {
        Assertions.checkStateNotNull(this.f27794f);
        return this.f27794f.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f27799k;
    }

    public boolean getUseArtwork() {
        return this.f27810t;
    }

    public boolean getUseController() {
        return this.f27808r;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f27796h;
    }

    public void hideController() {
        StyledPlayerControlView styledPlayerControlView = this.f27803n;
        if (styledPlayerControlView != null) {
            styledPlayerControlView.hide();
        }
    }

    public boolean isControllerFullyVisible() {
        StyledPlayerControlView styledPlayerControlView = this.f27803n;
        return styledPlayerControlView != null && styledPlayerControlView.isFullyVisible();
    }

    public void onContentAspectRatioChanged(@Nullable AspectRatioFrameLayout aspectRatioFrameLayout, float f) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f);
        }
    }

    public void onPause() {
        View view = this.f27796h;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onPause();
        }
    }

    public void onResume() {
        View view = this.f27796h;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onResume();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!m21200J() || this.f27806q == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f27807q0 = true;
            return true;
        }
        if (action != 1 || !this.f27807q0) {
            return false;
        }
        this.f27807q0 = false;
        return performClick();
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!m21200J() || this.f27806q == null) {
            return false;
        }
        m21205v(true);
        return true;
    }

    /* renamed from: p */
    public final void m21201p() {
        View view = this.f27795g;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return m21192B();
    }

    /* renamed from: s */
    public final void m21202s() {
        ImageView imageView = this.f27798j;
        if (imageView != null) {
            imageView.setImageResource(R.color.transparent);
            this.f27798j.setVisibility(4);
        }
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.AspectRatioListener aspectRatioListener) {
        Assertions.checkStateNotNull(this.f27794f);
        this.f27794f.setAspectRatioListener(aspectRatioListener);
    }

    public void setControllerAutoShow(boolean z) {
        this.f27790J = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.f27791O = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27792Q = z;
        m21195E();
    }

    public void setControllerOnFullScreenModeChangedListener(@Nullable StyledPlayerControlView.OnFullScreenModeChangedListener onFullScreenModeChangedListener) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27803n.setOnFullScreenModeChangedListener(onFullScreenModeChangedListener);
    }

    public void setControllerShowTimeoutMs(int i) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27816z = i;
        if (this.f27803n.isFullyVisible()) {
            showController();
        }
    }

    public void setControllerVisibilityListener(@Nullable StyledPlayerControlView.VisibilityListener visibilityListener) {
        Assertions.checkStateNotNull(this.f27803n);
        StyledPlayerControlView.VisibilityListener visibilityListener2 = this.f27809s;
        if (visibilityListener2 == visibilityListener) {
            return;
        }
        if (visibilityListener2 != null) {
            this.f27803n.removeVisibilityListener(visibilityListener2);
        }
        this.f27809s = visibilityListener;
        if (visibilityListener != null) {
            this.f27803n.addVisibilityListener(visibilityListener);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        Assertions.checkState(this.f27802m != null);
        this.f27815y = charSequence;
        m21197G();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f27811u != drawable) {
            this.f27811u = drawable;
            m21198H(false);
        }
    }

    public void setErrorMessageProvider(@Nullable ErrorMessageProvider<? super PlaybackException> errorMessageProvider) {
        if (this.f27814x != errorMessageProvider) {
            this.f27814x = errorMessageProvider;
            m21197G();
        }
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27803n.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.f27813w != z) {
            this.f27813w = z;
            m21198H(false);
        }
    }

    public void setPlayer(@Nullable Player player) {
        Assertions.checkState(Looper.myLooper() == Looper.getMainLooper());
        Assertions.checkArgument(player == null || player.getApplicationLooper() == Looper.getMainLooper());
        Player player2 = this.f27806q;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.f27793e);
            View view = this.f27796h;
            if (view instanceof TextureView) {
                player2.clearVideoTextureView((TextureView) view);
            } else if (view instanceof SurfaceView) {
                player2.clearVideoSurfaceView((SurfaceView) view);
            }
        }
        SubtitleView subtitleView = this.f27799k;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f27806q = player;
        if (m21200J()) {
            this.f27803n.setPlayer(player);
        }
        m21194D();
        m21197G();
        m21198H(true);
        if (player == null) {
            hideController();
            return;
        }
        if (player.isCommandAvailable(27)) {
            View view2 = this.f27796h;
            if (view2 instanceof TextureView) {
                player.setVideoTextureView((TextureView) view2);
            } else if (view2 instanceof SurfaceView) {
                player.setVideoSurfaceView((SurfaceView) view2);
            }
            m21193C();
        }
        if (this.f27799k != null && player.isCommandAvailable(28)) {
            this.f27799k.setCues(player.getCurrentCues());
        }
        player.addListener(this.f27793e);
        m21205v(false);
    }

    public void setRepeatToggleModes(int i) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27803n.setRepeatToggleModes(i);
    }

    public void setResizeMode(int i) {
        Assertions.checkStateNotNull(this.f27794f);
        this.f27794f.setResizeMode(i);
    }

    public void setShowBuffering(int i) {
        if (this.f27812v != i) {
            this.f27812v = i;
            m21194D();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27803n.setShowFastForwardButton(z);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27803n.setShowMultiWindowTimeBar(z);
    }

    public void setShowNextButton(boolean z) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27803n.setShowNextButton(z);
    }

    public void setShowPreviousButton(boolean z) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27803n.setShowPreviousButton(z);
    }

    public void setShowRewindButton(boolean z) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27803n.setShowRewindButton(z);
    }

    public void setShowShuffleButton(boolean z) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27803n.setShowShuffleButton(z);
    }

    public void setShowSubtitleButton(boolean z) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27803n.setShowSubtitleButton(z);
    }

    public void setShowVrButton(boolean z) {
        Assertions.checkStateNotNull(this.f27803n);
        this.f27803n.setShowVrButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.f27795g;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setUseArtwork(boolean z) {
        Assertions.checkState((z && this.f27798j == null) ? false : true);
        if (this.f27810t != z) {
            this.f27810t = z;
            m21198H(false);
        }
    }

    public void setUseController(boolean z) {
        Assertions.checkState((z && this.f27803n == null) ? false : true);
        if (this.f27808r == z) {
            return;
        }
        this.f27808r = z;
        if (m21200J()) {
            this.f27803n.setPlayer(this.f27806q);
        } else {
            StyledPlayerControlView styledPlayerControlView = this.f27803n;
            if (styledPlayerControlView != null) {
                styledPlayerControlView.hide();
                this.f27803n.setPlayer(null);
            }
        }
        m21195E();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.f27796h;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }

    public void showController() {
        m21191A(m21208z());
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: t */
    public final boolean m21203t(int i) {
        return i == 19 || i == 270 || i == 22 || i == 271 || i == 20 || i == 269 || i == 21 || i == 268 || i == 23;
    }

    /* renamed from: u */
    public final boolean m21204u() {
        Player player = this.f27806q;
        return player != null && player.isPlayingAd() && this.f27806q.getPlayWhenReady();
    }

    /* renamed from: v */
    public final void m21205v(boolean z) {
        if (!(m21204u() && this.f27791O) && m21200J()) {
            boolean z2 = this.f27803n.isFullyVisible() && this.f27803n.getShowTimeoutMs() <= 0;
            boolean m21208z = m21208z();
            if (z || z2 || m21208z) {
                m21191A(m21208z);
            }
        }
    }

    @RequiresNonNull({"artworkView"})
    /* renamed from: w */
    public final boolean m21206w(MediaMetadata mediaMetadata) {
        byte[] bArr = mediaMetadata.artworkData;
        if (bArr == null) {
            return false;
        }
        return m21207x(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    @RequiresNonNull({"artworkView"})
    /* renamed from: x */
    public final boolean m21207x(@Nullable Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                onContentAspectRatioChanged(this.f27794f, intrinsicWidth / intrinsicHeight);
                this.f27798j.setImageDrawable(drawable);
                this.f27798j.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    /* renamed from: z */
    public final boolean m21208z() {
        Player player = this.f27806q;
        if (player == null) {
            return true;
        }
        int playbackState = player.getPlaybackState();
        return this.f27790J && !this.f27806q.getCurrentTimeline().isEmpty() && (playbackState == 1 || playbackState == 4 || !((Player) Assertions.checkNotNull(this.f27806q)).getPlayWhenReady());
    }

    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet, int i) {
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
        ViewOnLayoutChangeListenerC4984a viewOnLayoutChangeListenerC4984a = new ViewOnLayoutChangeListenerC4984a();
        this.f27793e = viewOnLayoutChangeListenerC4984a;
        if (isInEditMode()) {
            this.f27794f = null;
            this.f27795g = null;
            this.f27796h = null;
            this.f27797i = false;
            this.f27798j = null;
            this.f27799k = null;
            this.f27801l = null;
            this.f27802m = null;
            this.f27803n = null;
            this.f27804o = null;
            this.f27805p = null;
            ImageView imageView = new ImageView(context);
            if (Util.SDK_INT >= 23) {
                m21189r(getResources(), imageView);
            } else {
                m21188q(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i9 = C4970R.layout.exo_styled_player_view;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C4970R.styleable.StyledPlayerView, i, 0);
            try {
                boolean hasValue = obtainStyledAttributes.hasValue(C4970R.styleable.StyledPlayerView_shutter_background_color);
                int color = obtainStyledAttributes.getColor(C4970R.styleable.StyledPlayerView_shutter_background_color, 0);
                int resourceId = obtainStyledAttributes.getResourceId(C4970R.styleable.StyledPlayerView_player_layout_id, i9);
                boolean z10 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerView_use_artwork, true);
                int resourceId2 = obtainStyledAttributes.getResourceId(C4970R.styleable.StyledPlayerView_default_artwork, 0);
                boolean z11 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerView_use_controller, true);
                int i10 = obtainStyledAttributes.getInt(C4970R.styleable.StyledPlayerView_surface_type, 1);
                int i11 = obtainStyledAttributes.getInt(C4970R.styleable.StyledPlayerView_resize_mode, 0);
                int i12 = obtainStyledAttributes.getInt(C4970R.styleable.StyledPlayerView_show_timeout, 5000);
                boolean z12 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerView_hide_on_touch, true);
                boolean z13 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerView_auto_show, true);
                i4 = obtainStyledAttributes.getInteger(C4970R.styleable.StyledPlayerView_show_buffering, 0);
                this.f27813w = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerView_keep_content_on_player_reset, this.f27813w);
                boolean z14 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerView_hide_during_ads, true);
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
        this.f27794f = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            m21190y(aspectRatioFrameLayout, i3);
        }
        View findViewById = findViewById(C4970R.id.exo_shutter);
        this.f27795g = findViewById;
        if (findViewById != null && z4) {
            findViewById.setBackgroundColor(i6);
        }
        if (aspectRatioFrameLayout != null && i5 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i5 == 2) {
                z7 = true;
                this.f27796h = new TextureView(context);
            } else if (i5 != 3) {
                if (i5 != 4) {
                    this.f27796h = new SurfaceView(context);
                } else {
                    try {
                        this.f27796h = (View) Class.forName("com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView").getConstructor(Context.class).newInstance(context);
                    } catch (Exception e) {
                        throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e);
                    }
                }
                z7 = true;
            } else {
                try {
                    z7 = true;
                    this.f27796h = (View) Class.forName("com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView").getConstructor(Context.class).newInstance(context);
                    z9 = true;
                    this.f27796h.setLayoutParams(layoutParams);
                    this.f27796h.setOnClickListener(viewOnLayoutChangeListenerC4984a);
                    this.f27796h.setClickable(false);
                    aspectRatioFrameLayout.addView(this.f27796h, 0);
                    z8 = z9;
                } catch (Exception e2) {
                    throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e2);
                }
            }
            z9 = false;
            this.f27796h.setLayoutParams(layoutParams);
            this.f27796h.setOnClickListener(viewOnLayoutChangeListenerC4984a);
            this.f27796h.setClickable(false);
            aspectRatioFrameLayout.addView(this.f27796h, 0);
            z8 = z9;
        } else {
            z7 = true;
            this.f27796h = null;
            z8 = false;
        }
        this.f27797i = z8;
        this.f27804o = (FrameLayout) findViewById(C4970R.id.exo_ad_overlay);
        this.f27805p = (FrameLayout) findViewById(C4970R.id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(C4970R.id.exo_artwork);
        this.f27798j = imageView2;
        this.f27810t = (!z5 || imageView2 == null) ? false : z7;
        if (i7 != 0) {
            this.f27811u = ContextCompat.getDrawable(getContext(), i7);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(C4970R.id.exo_subtitles);
        this.f27799k = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View findViewById2 = findViewById(C4970R.id.exo_buffering);
        this.f27801l = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f27812v = i4;
        TextView textView = (TextView) findViewById(C4970R.id.exo_error_message);
        this.f27802m = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        StyledPlayerControlView styledPlayerControlView = (StyledPlayerControlView) findViewById(C4970R.id.exo_controller);
        View findViewById3 = findViewById(C4970R.id.exo_controller_placeholder);
        if (styledPlayerControlView != null) {
            this.f27803n = styledPlayerControlView;
            i8 = 0;
        } else if (findViewById3 != null) {
            i8 = 0;
            StyledPlayerControlView styledPlayerControlView2 = new StyledPlayerControlView(context, null, 0, attributeSet);
            this.f27803n = styledPlayerControlView2;
            styledPlayerControlView2.setId(C4970R.id.exo_controller);
            styledPlayerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(styledPlayerControlView2, indexOfChild);
        } else {
            i8 = 0;
            this.f27803n = null;
        }
        StyledPlayerControlView styledPlayerControlView3 = this.f27803n;
        this.f27816z = styledPlayerControlView3 != null ? i2 : i8;
        this.f27792Q = z3;
        this.f27790J = z;
        this.f27791O = z2;
        this.f27808r = (!z6 || styledPlayerControlView3 == null) ? i8 : z7;
        if (styledPlayerControlView3 != null) {
            styledPlayerControlView3.hideImmediately();
            this.f27803n.addVisibilityListener(viewOnLayoutChangeListenerC4984a);
        }
        m21195E();
    }
}

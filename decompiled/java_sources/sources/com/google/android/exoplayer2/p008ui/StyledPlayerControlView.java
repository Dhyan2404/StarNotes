package com.google.android.exoplayer2.p008ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.ForwardingPlayer;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.TracksInfo;
import com.google.android.exoplayer2.p008ui.StyledPlayerControlView;
import com.google.android.exoplayer2.p008ui.TimeBar;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.trackselection.TrackSelectionOverrides;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.RepeatModeUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public class StyledPlayerControlView extends FrameLayout {
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    public static final int DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS = 200;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;

    /* renamed from: n1 */
    public static final int f27684n1 = 1000;

    /* renamed from: o1 */
    public static final float[] f27685o1;

    /* renamed from: p1 */
    public static final int f27686p1 = 0;

    /* renamed from: q1 */
    public static final int f27687q1 = 1;

    /* renamed from: A0 */
    public final String f27688A0;

    /* renamed from: B0 */
    public final String f27689B0;

    /* renamed from: C0 */
    public final Drawable f27690C0;

    /* renamed from: D0 */
    public final Drawable f27691D0;

    /* renamed from: E0 */
    public final String f27692E0;

    /* renamed from: F0 */
    public final String f27693F0;

    /* renamed from: G0 */
    @Nullable
    public Player f27694G0;

    /* renamed from: H0 */
    @Nullable
    public ProgressUpdateListener f27695H0;

    /* renamed from: I0 */
    @Nullable
    public OnFullScreenModeChangedListener f27696I0;

    /* renamed from: J */
    public final Drawable f27697J;

    /* renamed from: J0 */
    public boolean f27698J0;

    /* renamed from: K0 */
    public boolean f27699K0;

    /* renamed from: L0 */
    public boolean f27700L0;

    /* renamed from: M0 */
    public boolean f27701M0;

    /* renamed from: N0 */
    public boolean f27702N0;

    /* renamed from: O */
    public final String f27703O;

    /* renamed from: O0 */
    public int f27704O0;

    /* renamed from: P0 */
    public int f27705P0;

    /* renamed from: Q */
    public final String f27706Q;

    /* renamed from: Q0 */
    public int f27707Q0;

    /* renamed from: R0 */
    public long[] f27708R0;

    /* renamed from: S0 */
    public boolean[] f27709S0;

    /* renamed from: T0 */
    public long[] f27710T0;

    /* renamed from: U0 */
    public boolean[] f27711U0;

    /* renamed from: V0 */
    public long f27712V0;

    /* renamed from: W0 */
    public C4990b f27713W0;

    /* renamed from: X0 */
    public Resources f27714X0;

    /* renamed from: Y0 */
    public RecyclerView f27715Y0;

    /* renamed from: Z0 */
    public C4979f f27716Z0;

    /* renamed from: a1 */
    public C4977d f27717a1;

    /* renamed from: b1 */
    public PopupWindow f27718b1;

    /* renamed from: c1 */
    public boolean f27719c1;

    /* renamed from: d1 */
    public int f27720d1;

    /* renamed from: e */
    public final ViewOnClickListenerC4976c f27721e;

    /* renamed from: e1 */
    public C4981h f27722e1;

    /* renamed from: f */
    public final CopyOnWriteArrayList<VisibilityListener> f27723f;

    /* renamed from: f1 */
    public C4975b f27724f1;

    /* renamed from: g */
    @Nullable
    public final View f27725g;

    /* renamed from: g1 */
    public TrackNameProvider f27726g1;

    /* renamed from: h */
    @Nullable
    public final View f27727h;

    /* renamed from: h1 */
    @Nullable
    public ImageView f27728h1;

    /* renamed from: i */
    @Nullable
    public final View f27729i;

    /* renamed from: i1 */
    @Nullable
    public ImageView f27730i1;

    /* renamed from: j */
    @Nullable
    public final View f27731j;

    /* renamed from: j1 */
    @Nullable
    public ImageView f27732j1;

    /* renamed from: k */
    @Nullable
    public final View f27733k;

    /* renamed from: k0 */
    public final String f27734k0;

    /* renamed from: k1 */
    @Nullable
    public View f27735k1;

    /* renamed from: l */
    @Nullable
    public final TextView f27736l;

    /* renamed from: l1 */
    @Nullable
    public View f27737l1;

    /* renamed from: m */
    @Nullable
    public final TextView f27738m;

    /* renamed from: m1 */
    @Nullable
    public View f27739m1;

    /* renamed from: n */
    @Nullable
    public final ImageView f27740n;

    /* renamed from: o */
    @Nullable
    public final ImageView f27741o;

    /* renamed from: p */
    @Nullable
    public final View f27742p;

    /* renamed from: q */
    @Nullable
    public final TextView f27743q;

    /* renamed from: q0 */
    public final Drawable f27744q0;

    /* renamed from: r */
    @Nullable
    public final TextView f27745r;

    /* renamed from: s */
    @Nullable
    public final TimeBar f27746s;

    /* renamed from: t */
    public final StringBuilder f27747t;

    /* renamed from: t0 */
    public final Drawable f27748t0;

    /* renamed from: u */
    public final Formatter f27749u;

    /* renamed from: u0 */
    public final float f27750u0;

    /* renamed from: v */
    public final Timeline.Period f27751v;

    /* renamed from: v0 */
    public final float f27752v0;

    /* renamed from: w */
    public final Timeline.Window f27753w;

    /* renamed from: w0 */
    public final String f27754w0;

    /* renamed from: x */
    public final Runnable f27755x;

    /* renamed from: x0 */
    public final String f27756x0;

    /* renamed from: y */
    public final Drawable f27757y;

    /* renamed from: y0 */
    public final Drawable f27758y0;

    /* renamed from: z */
    public final Drawable f27759z;

    /* renamed from: z0 */
    public final Drawable f27760z0;

    /* loaded from: classes5.dex */
    public interface OnFullScreenModeChangedListener {
        void onFullScreenModeChanged(boolean z);
    }

    /* loaded from: classes5.dex */
    public interface ProgressUpdateListener {
        void onProgressUpdate(long j, long j2);
    }

    /* loaded from: classes5.dex */
    public interface VisibilityListener {
        void onVisibilityChange(int i);
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$b */
    /* loaded from: classes5.dex */
    public final class C4975b extends AbstractC4983j {
        public C4975b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public /* synthetic */ void m21146l(View view) {
            if (StyledPlayerControlView.this.f27694G0 == null) {
                return;
            }
            TrackSelectionParameters trackSelectionParameters = StyledPlayerControlView.this.f27694G0.getTrackSelectionParameters();
            TrackSelectionOverrides build = trackSelectionParameters.trackSelectionOverrides.buildUpon().clearOverridesOfType(1).build();
            HashSet hashSet = new HashSet(trackSelectionParameters.disabledTrackTypes);
            hashSet.remove(1);
            ((Player) Util.castNonNull(StyledPlayerControlView.this.f27694G0)).setTrackSelectionParameters(trackSelectionParameters.buildUpon().setTrackSelectionOverrides(build).setDisabledTrackTypes(hashSet).build());
            StyledPlayerControlView.this.f27716Z0.m21164d(1, StyledPlayerControlView.this.getResources().getString(C4970R.string.exo_track_selection_auto));
            StyledPlayerControlView.this.f27718b1.dismiss();
        }

        @Override // com.google.android.exoplayer2.p008ui.StyledPlayerControlView.AbstractC4983j
        /* renamed from: d */
        public void mo21147d(List<C4982i> list) {
            this.f27781d = list;
            TrackSelectionParameters trackSelectionParameters = ((Player) Assertions.checkNotNull(StyledPlayerControlView.this.f27694G0)).getTrackSelectionParameters();
            if (list.isEmpty()) {
                StyledPlayerControlView.this.f27716Z0.m21164d(1, StyledPlayerControlView.this.getResources().getString(C4970R.string.exo_track_selection_none));
                return;
            }
            if (!m21150k(trackSelectionParameters.trackSelectionOverrides)) {
                StyledPlayerControlView.this.f27716Z0.m21164d(1, StyledPlayerControlView.this.getResources().getString(C4970R.string.exo_track_selection_auto));
                return;
            }
            for (int i = 0; i < list.size(); i++) {
                C4982i c4982i = list.get(i);
                if (c4982i.m21168a()) {
                    StyledPlayerControlView.this.f27716Z0.m21164d(1, c4982i.f27780c);
                    return;
                }
            }
        }

        @Override // com.google.android.exoplayer2.p008ui.StyledPlayerControlView.AbstractC4983j
        /* renamed from: g */
        public void mo21148g(C4980g c4980g) {
            c4980g.f27775H.setText(C4970R.string.exo_track_selection_auto);
            c4980g.f27776I.setVisibility(m21150k(((Player) Assertions.checkNotNull(StyledPlayerControlView.this.f27694G0)).getTrackSelectionParameters().trackSelectionOverrides) ? 4 : 0);
            c4980g.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.p3n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.C4975b.this.m21146l(view);
                }
            });
        }

        @Override // com.google.android.exoplayer2.p008ui.StyledPlayerControlView.AbstractC4983j
        /* renamed from: i */
        public void mo21149i(String str) {
            StyledPlayerControlView.this.f27716Z0.m21164d(1, str);
        }

        /* renamed from: k */
        public final boolean m21150k(TrackSelectionOverrides trackSelectionOverrides) {
            for (int i = 0; i < this.f27781d.size(); i++) {
                if (trackSelectionOverrides.getOverride(this.f27781d.get(i).f27778a.getTrackGroup()) != null) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$c */
    /* loaded from: classes5.dex */
    public final class ViewOnClickListenerC4976c implements Player.Listener, TimeBar.OnScrubListener, View.OnClickListener, PopupWindow.OnDismissListener {
        public ViewOnClickListenerC4976c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Player player = StyledPlayerControlView.this.f27694G0;
            if (player == null) {
                return;
            }
            StyledPlayerControlView.this.f27713W0.m21282X();
            if (StyledPlayerControlView.this.f27727h == view) {
                player.seekToNext();
                return;
            }
            if (StyledPlayerControlView.this.f27725g == view) {
                player.seekToPrevious();
                return;
            }
            if (StyledPlayerControlView.this.f27731j == view) {
                if (player.getPlaybackState() != 4) {
                    player.seekForward();
                    return;
                }
                return;
            }
            if (StyledPlayerControlView.this.f27733k == view) {
                player.seekBack();
                return;
            }
            if (StyledPlayerControlView.this.f27729i == view) {
                StyledPlayerControlView.this.m21119V(player);
                return;
            }
            if (StyledPlayerControlView.this.f27740n == view) {
                player.setRepeatMode(RepeatModeUtil.getNextRepeatMode(player.getRepeatMode(), StyledPlayerControlView.this.f27707Q0));
                return;
            }
            if (StyledPlayerControlView.this.f27741o == view) {
                player.setShuffleModeEnabled(!player.getShuffleModeEnabled());
                return;
            }
            if (StyledPlayerControlView.this.f27735k1 == view) {
                StyledPlayerControlView.this.f27713W0.m21281W();
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.m21120W(styledPlayerControlView.f27716Z0);
                return;
            }
            if (StyledPlayerControlView.this.f27737l1 == view) {
                StyledPlayerControlView.this.f27713W0.m21281W();
                StyledPlayerControlView styledPlayerControlView2 = StyledPlayerControlView.this;
                styledPlayerControlView2.m21120W(styledPlayerControlView2.f27717a1);
            } else if (StyledPlayerControlView.this.f27739m1 == view) {
                StyledPlayerControlView.this.f27713W0.m21281W();
                StyledPlayerControlView styledPlayerControlView3 = StyledPlayerControlView.this;
                styledPlayerControlView3.m21120W(styledPlayerControlView3.f27724f1);
            } else if (StyledPlayerControlView.this.f27728h1 == view) {
                StyledPlayerControlView.this.f27713W0.m21281W();
                StyledPlayerControlView styledPlayerControlView4 = StyledPlayerControlView.this;
                styledPlayerControlView4.m21120W(styledPlayerControlView4.f27722e1);
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (StyledPlayerControlView.this.f27719c1) {
                StyledPlayerControlView.this.f27713W0.m21282X();
            }
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            if (events.containsAny(4, 5)) {
                StyledPlayerControlView.this.m21136q0();
            }
            if (events.containsAny(4, 5, 7)) {
                StyledPlayerControlView.this.m21138s0();
            }
            if (events.contains(8)) {
                StyledPlayerControlView.this.m21139t0();
            }
            if (events.contains(9)) {
                StyledPlayerControlView.this.m21142w0();
            }
            if (events.containsAny(8, 9, 11, 0, 16, 17, 13)) {
                StyledPlayerControlView.this.m21135p0();
            }
            if (events.containsAny(11, 0)) {
                StyledPlayerControlView.this.m21143x0();
            }
            if (events.contains(12)) {
                StyledPlayerControlView.this.m21137r0();
            }
            if (events.contains(2)) {
                StyledPlayerControlView.this.m21144y0();
            }
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubMove(TimeBar timeBar, long j) {
            if (StyledPlayerControlView.this.f27745r != null) {
                StyledPlayerControlView.this.f27745r.setText(Util.getStringForTime(StyledPlayerControlView.this.f27747t, StyledPlayerControlView.this.f27749u, j));
            }
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubStart(TimeBar timeBar, long j) {
            StyledPlayerControlView.this.f27702N0 = true;
            if (StyledPlayerControlView.this.f27745r != null) {
                StyledPlayerControlView.this.f27745r.setText(Util.getStringForTime(StyledPlayerControlView.this.f27747t, StyledPlayerControlView.this.f27749u, j));
            }
            StyledPlayerControlView.this.f27713W0.m21281W();
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubStop(TimeBar timeBar, long j, boolean z) {
            StyledPlayerControlView.this.f27702N0 = false;
            if (!z && StyledPlayerControlView.this.f27694G0 != null) {
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.m21129i0(styledPlayerControlView.f27694G0, j);
            }
            StyledPlayerControlView.this.f27713W0.m21282X();
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$d */
    /* loaded from: classes5.dex */
    public final class C4977d extends RecyclerView.Adapter<C4980g> {

        /* renamed from: d */
        public final String[] f27763d;

        /* renamed from: e */
        public final float[] f27764e;

        /* renamed from: f */
        public int f27765f;

        public C4977d(String[] strArr, float[] fArr) {
            this.f27763d = strArr;
            this.f27764e = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ void m21152d(int i, View view) {
            if (i != this.f27765f) {
                StyledPlayerControlView.this.setPlaybackSpeed(this.f27764e[i]);
            }
            StyledPlayerControlView.this.f27718b1.dismiss();
        }

        /* renamed from: c */
        public String m21153c() {
            return this.f27763d[this.f27765f];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(C4980g c4980g, final int i) {
            String[] strArr = this.f27763d;
            if (i < strArr.length) {
                c4980g.f27775H.setText(strArr[i]);
            }
            c4980g.f27776I.setVisibility(i == this.f27765f ? 0 : 4);
            c4980g.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.q3n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.C4977d.this.m21152d(i, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public C4980g onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new C4980g(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(C4970R.layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        /* renamed from: g */
        public void m21156g(float f) {
            int i = 0;
            float f2 = Float.MAX_VALUE;
            int i2 = 0;
            while (true) {
                float[] fArr = this.f27764e;
                if (i >= fArr.length) {
                    this.f27765f = i2;
                    return;
                }
                float abs = Math.abs(f - fArr[i]);
                if (abs < f2) {
                    i2 = i;
                    f2 = abs;
                }
                i++;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f27763d.length;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$e */
    /* loaded from: classes5.dex */
    public final class C4978e extends RecyclerView.ViewHolder {

        /* renamed from: H */
        public final TextView f27767H;

        /* renamed from: I */
        public final TextView f27768I;

        /* renamed from: J */
        public final ImageView f27769J;

        public C4978e(View view) {
            super(view);
            if (Util.SDK_INT < 26) {
                view.setFocusable(true);
            }
            this.f27767H = (TextView) view.findViewById(C4970R.id.exo_main_text);
            this.f27768I = (TextView) view.findViewById(C4970R.id.exo_sub_text);
            this.f27769J = (ImageView) view.findViewById(C4970R.id.exo_icon);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r3n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.C4978e.this.m21161K(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: K */
        public /* synthetic */ void m21161K(View view) {
            StyledPlayerControlView.this.m21126f0(getAdapterPosition());
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$f */
    /* loaded from: classes5.dex */
    public class C4979f extends RecyclerView.Adapter<C4978e> {

        /* renamed from: d */
        public final String[] f27771d;

        /* renamed from: e */
        public final String[] f27772e;

        /* renamed from: f */
        public final Drawable[] f27773f;

        public C4979f(String[] strArr, Drawable[] drawableArr) {
            this.f27771d = strArr;
            this.f27772e = new String[strArr.length];
            this.f27773f = drawableArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(C4978e c4978e, int i) {
            c4978e.f27767H.setText(this.f27771d[i]);
            if (this.f27772e[i] == null) {
                c4978e.f27768I.setVisibility(8);
            } else {
                c4978e.f27768I.setText(this.f27772e[i]);
            }
            if (this.f27773f[i] == null) {
                c4978e.f27769J.setVisibility(8);
            } else {
                c4978e.f27769J.setImageDrawable(this.f27773f[i]);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public C4978e onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new C4978e(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(C4970R.layout.exo_styled_settings_list_item, viewGroup, false));
        }

        /* renamed from: d */
        public void m21164d(int i, String str) {
            this.f27772e[i] = str;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f27771d.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$g */
    /* loaded from: classes5.dex */
    public static class C4980g extends RecyclerView.ViewHolder {

        /* renamed from: H */
        public final TextView f27775H;

        /* renamed from: I */
        public final View f27776I;

        public C4980g(View view) {
            super(view);
            if (Util.SDK_INT < 26) {
                view.setFocusable(true);
            }
            this.f27775H = (TextView) view.findViewById(C4970R.id.exo_text);
            this.f27776I = view.findViewById(C4970R.id.exo_check);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$h */
    /* loaded from: classes5.dex */
    public final class C4981h extends AbstractC4983j {
        public C4981h() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public /* synthetic */ void m21166k(View view) {
            if (StyledPlayerControlView.this.f27694G0 != null) {
                TrackSelectionParameters trackSelectionParameters = StyledPlayerControlView.this.f27694G0.getTrackSelectionParameters();
                StyledPlayerControlView.this.f27694G0.setTrackSelectionParameters(trackSelectionParameters.buildUpon().setDisabledTrackTypes(new ImmutableSet.Builder().addAll((Iterable) trackSelectionParameters.disabledTrackTypes).add((ImmutableSet.Builder) 3).build()).build());
                StyledPlayerControlView.this.f27718b1.dismiss();
            }
        }

        @Override // com.google.android.exoplayer2.p008ui.StyledPlayerControlView.AbstractC4983j
        /* renamed from: d */
        public void mo21147d(List<C4982i> list) {
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= list.size()) {
                    break;
                }
                if (list.get(i).m21168a()) {
                    z = true;
                    break;
                }
                i++;
            }
            if (StyledPlayerControlView.this.f27728h1 != null) {
                ImageView imageView = StyledPlayerControlView.this.f27728h1;
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                imageView.setImageDrawable(z ? styledPlayerControlView.f27758y0 : styledPlayerControlView.f27760z0);
                StyledPlayerControlView.this.f27728h1.setContentDescription(z ? StyledPlayerControlView.this.f27688A0 : StyledPlayerControlView.this.f27689B0);
            }
            this.f27781d = list;
        }

        @Override // com.google.android.exoplayer2.p008ui.StyledPlayerControlView.AbstractC4983j, androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(C4980g c4980g, int i) {
            super.onBindViewHolder(c4980g, i);
            if (i > 0) {
                c4980g.f27776I.setVisibility(this.f27781d.get(i + (-1)).m21168a() ? 0 : 4);
            }
        }

        @Override // com.google.android.exoplayer2.p008ui.StyledPlayerControlView.AbstractC4983j
        /* renamed from: g */
        public void mo21148g(C4980g c4980g) {
            boolean z;
            c4980g.f27775H.setText(C4970R.string.exo_track_selection_none);
            int i = 0;
            while (true) {
                if (i >= this.f27781d.size()) {
                    z = true;
                    break;
                } else {
                    if (this.f27781d.get(i).m21168a()) {
                        z = false;
                        break;
                    }
                    i++;
                }
            }
            c4980g.f27776I.setVisibility(z ? 0 : 4);
            c4980g.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.s3n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.C4981h.this.m21166k(view);
                }
            });
        }

        @Override // com.google.android.exoplayer2.p008ui.StyledPlayerControlView.AbstractC4983j
        /* renamed from: i */
        public void mo21149i(String str) {
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$i */
    /* loaded from: classes5.dex */
    public static final class C4982i {

        /* renamed from: a */
        public final TracksInfo.TrackGroupInfo f27778a;

        /* renamed from: b */
        public final int f27779b;

        /* renamed from: c */
        public final String f27780c;

        public C4982i(TracksInfo tracksInfo, int i, int i2, String str) {
            this.f27778a = tracksInfo.getTrackGroupInfos().get(i);
            this.f27779b = i2;
            this.f27780c = str;
        }

        /* renamed from: a */
        public boolean m21168a() {
            return this.f27778a.isTrackSelected(this.f27779b);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$j */
    /* loaded from: classes5.dex */
    public abstract class AbstractC4983j extends RecyclerView.Adapter<C4980g> {

        /* renamed from: d */
        public List<C4982i> f27781d = new ArrayList();

        public AbstractC4983j() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e */
        public /* synthetic */ void m21170e(TrackGroup trackGroup, C4982i c4982i, View view) {
            if (StyledPlayerControlView.this.f27694G0 == null) {
                return;
            }
            TrackSelectionParameters trackSelectionParameters = StyledPlayerControlView.this.f27694G0.getTrackSelectionParameters();
            TrackSelectionOverrides build = trackSelectionParameters.trackSelectionOverrides.buildUpon().setOverrideForType(new TrackSelectionOverrides.TrackSelectionOverride(trackGroup, ImmutableList.m26162of(Integer.valueOf(c4982i.f27779b)))).build();
            HashSet hashSet = new HashSet(trackSelectionParameters.disabledTrackTypes);
            hashSet.remove(Integer.valueOf(c4982i.f27778a.getTrackType()));
            ((Player) Assertions.checkNotNull(StyledPlayerControlView.this.f27694G0)).setTrackSelectionParameters(trackSelectionParameters.buildUpon().setTrackSelectionOverrides(build).setDisabledTrackTypes(hashSet).build());
            mo21149i(c4982i.f27780c);
            StyledPlayerControlView.this.f27718b1.dismiss();
        }

        /* renamed from: c */
        public void m21171c() {
            this.f27781d = Collections.emptyList();
        }

        /* renamed from: d */
        public abstract void mo21147d(List<C4982i> list);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: f */
        public void onBindViewHolder(C4980g c4980g, int i) {
            if (StyledPlayerControlView.this.f27694G0 == null) {
                return;
            }
            if (i == 0) {
                mo21148g(c4980g);
                return;
            }
            final C4982i c4982i = this.f27781d.get(i - 1);
            final TrackGroup trackGroup = c4982i.f27778a.getTrackGroup();
            boolean z = ((Player) Assertions.checkNotNull(StyledPlayerControlView.this.f27694G0)).getTrackSelectionParameters().trackSelectionOverrides.getOverride(trackGroup) != null && c4982i.m21168a();
            c4980g.f27775H.setText(c4982i.f27780c);
            c4980g.f27776I.setVisibility(z ? 0 : 4);
            c4980g.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t3n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.AbstractC4983j.this.m21170e(trackGroup, c4982i, view);
                }
            });
        }

        /* renamed from: g */
        public abstract void mo21148g(C4980g c4980g);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.f27781d.isEmpty()) {
                return 0;
            }
            return this.f27781d.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public C4980g onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new C4980g(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(C4970R.layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        /* renamed from: i */
        public abstract void mo21149i(String str);
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.ui");
        f27685o1 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    public StyledPlayerControlView(Context context) {
        this(context, null);
    }

    /* renamed from: S */
    public static boolean m21086S(Timeline timeline, Timeline.Window window) {
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

    /* renamed from: Y */
    public static int m21087Y(TypedArray typedArray, int i) {
        return typedArray.getInt(C4970R.styleable.StyledPlayerControlView_repeat_toggle_modes, i);
    }

    /* renamed from: a0 */
    public static void m21089a0(View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        view.setOnClickListener(onClickListener);
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: b0 */
    public static boolean m21091b0(int i) {
        return i == 90 || i == 89 || i == 85 || i == 79 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    /* renamed from: o0 */
    public static void m21105o0(@Nullable View view, boolean z) {
        if (view == null) {
            return;
        }
        if (z) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f) {
        Player player = this.f27694G0;
        if (player == null) {
            return;
        }
        player.setPlaybackParameters(player.getPlaybackParameters().withSpeed(f));
    }

    /* renamed from: T */
    public final void m21117T(Player player) {
        player.pause();
    }

    /* renamed from: U */
    public final void m21118U(Player player) {
        int playbackState = player.getPlaybackState();
        if (playbackState == 1) {
            player.prepare();
        } else if (playbackState == 4) {
            m21128h0(player, player.getCurrentMediaItemIndex(), C4649C.TIME_UNSET);
        }
        player.play();
    }

    /* renamed from: V */
    public final void m21119V(Player player) {
        int playbackState = player.getPlaybackState();
        if (playbackState == 1 || playbackState == 4 || !player.getPlayWhenReady()) {
            m21118U(player);
        } else {
            m21117T(player);
        }
    }

    /* renamed from: W */
    public final void m21120W(RecyclerView.Adapter<?> adapter) {
        this.f27715Y0.setAdapter(adapter);
        m21141v0();
        this.f27719c1 = false;
        this.f27718b1.dismiss();
        this.f27719c1 = true;
        this.f27718b1.showAsDropDown(this, (getWidth() - this.f27718b1.getWidth()) - this.f27720d1, (-this.f27718b1.getHeight()) - this.f27720d1);
    }

    /* renamed from: X */
    public final ImmutableList<C4982i> m21121X(TracksInfo tracksInfo, int i) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        ImmutableList<TracksInfo.TrackGroupInfo> trackGroupInfos = tracksInfo.getTrackGroupInfos();
        for (int i2 = 0; i2 < trackGroupInfos.size(); i2++) {
            TracksInfo.TrackGroupInfo trackGroupInfo = trackGroupInfos.get(i2);
            if (trackGroupInfo.getTrackType() == i) {
                TrackGroup trackGroup = trackGroupInfo.getTrackGroup();
                for (int i3 = 0; i3 < trackGroup.length; i3++) {
                    if (trackGroupInfo.isTrackSupported(i3)) {
                        builder.add((ImmutableList.Builder) new C4982i(tracksInfo, i2, i3, this.f27726g1.getTrackName(trackGroup.getFormat(i3))));
                    }
                }
            }
        }
        return builder.build();
    }

    /* renamed from: Z */
    public final void m21122Z() {
        this.f27722e1.m21171c();
        this.f27724f1.m21171c();
        Player player = this.f27694G0;
        if (player != null && player.isCommandAvailable(30) && this.f27694G0.isCommandAvailable(29)) {
            TracksInfo currentTracksInfo = this.f27694G0.getCurrentTracksInfo();
            this.f27724f1.mo21147d(m21121X(currentTracksInfo, 1));
            if (this.f27713W0.m21265A(this.f27728h1)) {
                this.f27722e1.mo21147d(m21121X(currentTracksInfo, 3));
            } else {
                this.f27722e1.mo21147d(ImmutableList.m26161of());
            }
        }
    }

    public void addVisibilityListener(VisibilityListener visibilityListener) {
        Assertions.checkNotNull(visibilityListener);
        this.f27723f.add(visibilityListener);
    }

    /* renamed from: c0 */
    public void m21123c0() {
        Iterator<VisibilityListener> it2 = this.f27723f.iterator();
        while (it2.hasNext()) {
            it2.next().onVisibilityChange(getVisibility());
        }
    }

    /* renamed from: d0 */
    public final void m21124d0(View view) {
        if (this.f27696I0 == null) {
            return;
        }
        boolean z = !this.f27698J0;
        this.f27698J0 = z;
        m21134n0(this.f27730i1, z);
        m21134n0(this.f27732j1, this.f27698J0);
        OnFullScreenModeChangedListener onFullScreenModeChangedListener = this.f27696I0;
        if (onFullScreenModeChangedListener != null) {
            onFullScreenModeChangedListener.onFullScreenModeChanged(this.f27698J0);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        Player player = this.f27694G0;
        if (player == null || !m21091b0(keyCode)) {
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
            m21119V(player);
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
            m21118U(player);
            return true;
        }
        if (keyCode != 127) {
            return true;
        }
        m21117T(player);
        return true;
    }

    /* renamed from: e0 */
    public final void m21125e0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = i4 - i2;
        int i10 = i8 - i6;
        if (!(i3 - i == i7 - i5 && i9 == i10) && this.f27718b1.isShowing()) {
            m21141v0();
            this.f27718b1.update(view, (getWidth() - this.f27718b1.getWidth()) - this.f27720d1, (-this.f27718b1.getHeight()) - this.f27720d1, -1, -1);
        }
    }

    /* renamed from: f0 */
    public final void m21126f0(int i) {
        if (i == 0) {
            m21120W(this.f27717a1);
        } else if (i == 1) {
            m21120W(this.f27724f1);
        } else {
            this.f27718b1.dismiss();
        }
    }

    /* renamed from: g0 */
    public void m21127g0() {
        View view = this.f27729i;
        if (view != null) {
            view.requestFocus();
        }
    }

    @Nullable
    public Player getPlayer() {
        return this.f27694G0;
    }

    public int getRepeatToggleModes() {
        return this.f27707Q0;
    }

    public boolean getShowShuffleButton() {
        return this.f27713W0.m21265A(this.f27741o);
    }

    public boolean getShowSubtitleButton() {
        return this.f27713W0.m21265A(this.f27728h1);
    }

    public int getShowTimeoutMs() {
        return this.f27704O0;
    }

    public boolean getShowVrButton() {
        return this.f27713W0.m21265A(this.f27742p);
    }

    /* renamed from: h0 */
    public final void m21128h0(Player player, int i, long j) {
        player.seekTo(i, j);
    }

    public void hide() {
        this.f27713W0.m21266C();
    }

    public void hideImmediately() {
        this.f27713W0.m21269F();
    }

    /* renamed from: i0 */
    public final void m21129i0(Player player, long j) {
        int currentMediaItemIndex;
        Timeline currentTimeline = player.getCurrentTimeline();
        if (this.f27701M0 && !currentTimeline.isEmpty()) {
            int windowCount = currentTimeline.getWindowCount();
            currentMediaItemIndex = 0;
            while (true) {
                long durationMs = currentTimeline.getWindow(currentMediaItemIndex, this.f27753w).getDurationMs();
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
        m21128h0(player, currentMediaItemIndex, j);
        m21138s0();
    }

    public boolean isAnimationEnabled() {
        return this.f27713W0.m21272I();
    }

    public boolean isFullyVisible() {
        return this.f27713W0.m21273J();
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    /* renamed from: j0 */
    public final boolean m21130j0() {
        Player player = this.f27694G0;
        return (player == null || player.getPlaybackState() == 4 || this.f27694G0.getPlaybackState() == 1 || !this.f27694G0.getPlayWhenReady()) ? false : true;
    }

    /* renamed from: k0 */
    public void m21131k0() {
        m21136q0();
        m21135p0();
        m21139t0();
        m21142w0();
        m21144y0();
        m21137r0();
        m21143x0();
    }

    /* renamed from: l0 */
    public final void m21132l0(boolean z, @Nullable View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        view.setAlpha(z ? this.f27750u0 : this.f27752v0);
    }

    /* renamed from: m0 */
    public final void m21133m0() {
        Player player = this.f27694G0;
        int seekForwardIncrement = (int) ((player != null ? player.getSeekForwardIncrement() : 15000L) / 1000);
        TextView textView = this.f27736l;
        if (textView != null) {
            textView.setText(String.valueOf(seekForwardIncrement));
        }
        View view = this.f27731j;
        if (view != null) {
            view.setContentDescription(this.f27714X0.getQuantityString(C4970R.plurals.exo_controls_fastforward_by_amount_description, seekForwardIncrement, Integer.valueOf(seekForwardIncrement)));
        }
    }

    /* renamed from: n0 */
    public final void m21134n0(@Nullable ImageView imageView, boolean z) {
        if (imageView == null) {
            return;
        }
        if (z) {
            imageView.setImageDrawable(this.f27690C0);
            imageView.setContentDescription(this.f27692E0);
        } else {
            imageView.setImageDrawable(this.f27691D0);
            imageView.setContentDescription(this.f27693F0);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f27713W0.m21274P();
        this.f27699K0 = true;
        if (isFullyVisible()) {
            this.f27713W0.m21282X();
        }
        m21131k0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f27713W0.m21275Q();
        this.f27699K0 = false;
        removeCallbacks(this.f27755x);
        this.f27713W0.m21281W();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f27713W0.m21276R(z, i, i2, i3, i4);
    }

    /* renamed from: p0 */
    public final void m21135p0() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (isVisible() && this.f27699K0) {
            Player player = this.f27694G0;
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
            if (z4) {
                m21140u0();
            }
            if (z5) {
                m21133m0();
            }
            m21132l0(z3, this.f27725g);
            m21132l0(z4, this.f27733k);
            m21132l0(z5, this.f27731j);
            m21132l0(z2, this.f27727h);
            TimeBar timeBar = this.f27746s;
            if (timeBar != null) {
                timeBar.setEnabled(z);
            }
        }
    }

    /* renamed from: q0 */
    public final void m21136q0() {
        if (isVisible() && this.f27699K0 && this.f27729i != null) {
            if (m21130j0()) {
                ((ImageView) this.f27729i).setImageDrawable(this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_pause));
                this.f27729i.setContentDescription(this.f27714X0.getString(C4970R.string.exo_controls_pause_description));
            } else {
                ((ImageView) this.f27729i).setImageDrawable(this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_play));
                this.f27729i.setContentDescription(this.f27714X0.getString(C4970R.string.exo_controls_play_description));
            }
        }
    }

    /* renamed from: r0 */
    public final void m21137r0() {
        Player player = this.f27694G0;
        if (player == null) {
            return;
        }
        this.f27717a1.m21156g(player.getPlaybackParameters().speed);
        this.f27716Z0.m21164d(0, this.f27717a1.m21153c());
    }

    public void removeVisibilityListener(VisibilityListener visibilityListener) {
        this.f27723f.remove(visibilityListener);
    }

    /* renamed from: s0 */
    public final void m21138s0() {
        long j;
        long j2;
        if (isVisible() && this.f27699K0) {
            Player player = this.f27694G0;
            if (player != null) {
                j = this.f27712V0 + player.getContentPosition();
                j2 = this.f27712V0 + player.getContentBufferedPosition();
            } else {
                j = 0;
                j2 = 0;
            }
            TextView textView = this.f27745r;
            if (textView != null && !this.f27702N0) {
                textView.setText(Util.getStringForTime(this.f27747t, this.f27749u, j));
            }
            TimeBar timeBar = this.f27746s;
            if (timeBar != null) {
                timeBar.setPosition(j);
                this.f27746s.setBufferedPosition(j2);
            }
            ProgressUpdateListener progressUpdateListener = this.f27695H0;
            if (progressUpdateListener != null) {
                progressUpdateListener.onProgressUpdate(j, j2);
            }
            removeCallbacks(this.f27755x);
            int playbackState = player == null ? 1 : player.getPlaybackState();
            if (player == null || !player.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.f27755x, 1000L);
                return;
            }
            TimeBar timeBar2 = this.f27746s;
            long min = Math.min(timeBar2 != null ? timeBar2.getPreferredUpdateDelay() : 1000L, 1000 - (j % 1000));
            postDelayed(this.f27755x, Util.constrainValue(player.getPlaybackParameters().speed > 0.0f ? ((float) min) / r0 : 1000L, this.f27705P0, 1000L));
        }
    }

    public void setAnimationEnabled(boolean z) {
        this.f27713W0.m21283Y(z);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        if (jArr == null) {
            this.f27710T0 = new long[0];
            this.f27711U0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) Assertions.checkNotNull(zArr);
            Assertions.checkArgument(jArr.length == zArr2.length);
            this.f27710T0 = jArr;
            this.f27711U0 = zArr2;
        }
        m21143x0();
    }

    public void setOnFullScreenModeChangedListener(@Nullable OnFullScreenModeChangedListener onFullScreenModeChangedListener) {
        this.f27696I0 = onFullScreenModeChangedListener;
        m21105o0(this.f27730i1, onFullScreenModeChangedListener != null);
        m21105o0(this.f27732j1, onFullScreenModeChangedListener != null);
    }

    public void setPlayer(@Nullable Player player) {
        boolean z = true;
        Assertions.checkState(Looper.myLooper() == Looper.getMainLooper());
        if (player != null && player.getApplicationLooper() != Looper.getMainLooper()) {
            z = false;
        }
        Assertions.checkArgument(z);
        Player player2 = this.f27694G0;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.f27721e);
        }
        this.f27694G0 = player;
        if (player != null) {
            player.addListener(this.f27721e);
        }
        if (player instanceof ForwardingPlayer) {
            ((ForwardingPlayer) player).getWrappedPlayer();
        }
        m21131k0();
    }

    public void setProgressUpdateListener(@Nullable ProgressUpdateListener progressUpdateListener) {
        this.f27695H0 = progressUpdateListener;
    }

    public void setRepeatToggleModes(int i) {
        this.f27707Q0 = i;
        Player player = this.f27694G0;
        if (player != null) {
            int repeatMode = player.getRepeatMode();
            if (i == 0 && repeatMode != 0) {
                this.f27694G0.setRepeatMode(0);
            } else if (i == 1 && repeatMode == 2) {
                this.f27694G0.setRepeatMode(1);
            } else if (i == 2 && repeatMode == 1) {
                this.f27694G0.setRepeatMode(2);
            }
        }
        this.f27713W0.m21284Z(this.f27740n, i != 0);
        m21139t0();
    }

    public void setShowFastForwardButton(boolean z) {
        this.f27713W0.m21284Z(this.f27731j, z);
        m21135p0();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.f27700L0 = z;
        m21143x0();
    }

    public void setShowNextButton(boolean z) {
        this.f27713W0.m21284Z(this.f27727h, z);
        m21135p0();
    }

    public void setShowPreviousButton(boolean z) {
        this.f27713W0.m21284Z(this.f27725g, z);
        m21135p0();
    }

    public void setShowRewindButton(boolean z) {
        this.f27713W0.m21284Z(this.f27733k, z);
        m21135p0();
    }

    public void setShowShuffleButton(boolean z) {
        this.f27713W0.m21284Z(this.f27741o, z);
        m21142w0();
    }

    public void setShowSubtitleButton(boolean z) {
        this.f27713W0.m21284Z(this.f27728h1, z);
    }

    public void setShowTimeoutMs(int i) {
        this.f27704O0 = i;
        if (isFullyVisible()) {
            this.f27713W0.m21282X();
        }
    }

    public void setShowVrButton(boolean z) {
        this.f27713W0.m21284Z(this.f27742p, z);
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.f27705P0 = Util.constrainValue(i, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f27742p;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            m21132l0(onClickListener != null, this.f27742p);
        }
    }

    public void show() {
        this.f27713W0.m21287c0();
    }

    /* renamed from: t0 */
    public final void m21139t0() {
        ImageView imageView;
        if (isVisible() && this.f27699K0 && (imageView = this.f27740n) != null) {
            if (this.f27707Q0 == 0) {
                m21132l0(false, imageView);
                return;
            }
            Player player = this.f27694G0;
            if (player == null) {
                m21132l0(false, imageView);
                this.f27740n.setImageDrawable(this.f27757y);
                this.f27740n.setContentDescription(this.f27703O);
                return;
            }
            m21132l0(true, imageView);
            int repeatMode = player.getRepeatMode();
            if (repeatMode == 0) {
                this.f27740n.setImageDrawable(this.f27757y);
                this.f27740n.setContentDescription(this.f27703O);
            } else if (repeatMode == 1) {
                this.f27740n.setImageDrawable(this.f27759z);
                this.f27740n.setContentDescription(this.f27706Q);
            } else {
                if (repeatMode != 2) {
                    return;
                }
                this.f27740n.setImageDrawable(this.f27697J);
                this.f27740n.setContentDescription(this.f27734k0);
            }
        }
    }

    /* renamed from: u0 */
    public final void m21140u0() {
        Player player = this.f27694G0;
        int seekBackIncrement = (int) ((player != null ? player.getSeekBackIncrement() : 5000L) / 1000);
        TextView textView = this.f27738m;
        if (textView != null) {
            textView.setText(String.valueOf(seekBackIncrement));
        }
        View view = this.f27733k;
        if (view != null) {
            view.setContentDescription(this.f27714X0.getQuantityString(C4970R.plurals.exo_controls_rewind_by_amount_description, seekBackIncrement, Integer.valueOf(seekBackIncrement)));
        }
    }

    /* renamed from: v0 */
    public final void m21141v0() {
        this.f27715Y0.measure(0, 0);
        this.f27718b1.setWidth(Math.min(this.f27715Y0.getMeasuredWidth(), getWidth() - (this.f27720d1 * 2)));
        this.f27718b1.setHeight(Math.min(getHeight() - (this.f27720d1 * 2), this.f27715Y0.getMeasuredHeight()));
    }

    /* renamed from: w0 */
    public final void m21142w0() {
        ImageView imageView;
        if (isVisible() && this.f27699K0 && (imageView = this.f27741o) != null) {
            Player player = this.f27694G0;
            if (!this.f27713W0.m21265A(imageView)) {
                m21132l0(false, this.f27741o);
                return;
            }
            if (player == null) {
                m21132l0(false, this.f27741o);
                this.f27741o.setImageDrawable(this.f27748t0);
                this.f27741o.setContentDescription(this.f27756x0);
            } else {
                m21132l0(true, this.f27741o);
                this.f27741o.setImageDrawable(player.getShuffleModeEnabled() ? this.f27744q0 : this.f27748t0);
                this.f27741o.setContentDescription(player.getShuffleModeEnabled() ? this.f27754w0 : this.f27756x0);
            }
        }
    }

    /* renamed from: x0 */
    public final void m21143x0() {
        int i;
        Timeline.Window window;
        Player player = this.f27694G0;
        if (player == null) {
            return;
        }
        boolean z = true;
        this.f27701M0 = this.f27700L0 && m21086S(player.getCurrentTimeline(), this.f27753w);
        long j = 0;
        this.f27712V0 = 0L;
        Timeline currentTimeline = player.getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            i = 0;
        } else {
            int currentMediaItemIndex = player.getCurrentMediaItemIndex();
            boolean z2 = this.f27701M0;
            int i2 = z2 ? 0 : currentMediaItemIndex;
            int windowCount = z2 ? currentTimeline.getWindowCount() - 1 : currentMediaItemIndex;
            long j2 = 0;
            i = 0;
            while (true) {
                if (i2 > windowCount) {
                    break;
                }
                if (i2 == currentMediaItemIndex) {
                    this.f27712V0 = Util.usToMs(j2);
                }
                currentTimeline.getWindow(i2, this.f27753w);
                Timeline.Window window2 = this.f27753w;
                if (window2.durationUs == C4649C.TIME_UNSET) {
                    Assertions.checkState(this.f27701M0 ^ z);
                    break;
                }
                int i3 = window2.firstPeriodIndex;
                while (true) {
                    window = this.f27753w;
                    if (i3 <= window.lastPeriodIndex) {
                        currentTimeline.getPeriod(i3, this.f27751v);
                        int adGroupCount = this.f27751v.getAdGroupCount();
                        for (int removedAdGroupCount = this.f27751v.getRemovedAdGroupCount(); removedAdGroupCount < adGroupCount; removedAdGroupCount++) {
                            long adGroupTimeUs = this.f27751v.getAdGroupTimeUs(removedAdGroupCount);
                            if (adGroupTimeUs == Long.MIN_VALUE) {
                                long j3 = this.f27751v.durationUs;
                                if (j3 != C4649C.TIME_UNSET) {
                                    adGroupTimeUs = j3;
                                }
                            }
                            long positionInWindowUs = adGroupTimeUs + this.f27751v.getPositionInWindowUs();
                            if (positionInWindowUs >= 0) {
                                long[] jArr = this.f27708R0;
                                if (i == jArr.length) {
                                    int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                    this.f27708R0 = Arrays.copyOf(jArr, length);
                                    this.f27709S0 = Arrays.copyOf(this.f27709S0, length);
                                }
                                this.f27708R0[i] = Util.usToMs(j2 + positionInWindowUs);
                                this.f27709S0[i] = this.f27751v.hasPlayedAdGroup(removedAdGroupCount);
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
        TextView textView = this.f27743q;
        if (textView != null) {
            textView.setText(Util.getStringForTime(this.f27747t, this.f27749u, usToMs));
        }
        TimeBar timeBar = this.f27746s;
        if (timeBar != null) {
            timeBar.setDuration(usToMs);
            int length2 = this.f27710T0.length;
            int i4 = i + length2;
            long[] jArr2 = this.f27708R0;
            if (i4 > jArr2.length) {
                this.f27708R0 = Arrays.copyOf(jArr2, i4);
                this.f27709S0 = Arrays.copyOf(this.f27709S0, i4);
            }
            System.arraycopy(this.f27710T0, 0, this.f27708R0, i, length2);
            System.arraycopy(this.f27711U0, 0, this.f27709S0, i, length2);
            this.f27746s.setAdGroupTimesMs(this.f27708R0, this.f27709S0, i4);
        }
        m21138s0();
    }

    /* renamed from: y0 */
    public final void m21144y0() {
        m21122Z();
        m21132l0(this.f27722e1.getItemCount() > 0, this.f27728h1);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, attributeSet);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i);
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        ViewOnClickListenerC4976c viewOnClickListenerC4976c;
        boolean z9;
        TextView textView;
        boolean z10;
        int i2 = C4970R.layout.exo_styled_player_control_view;
        this.f27704O0 = 5000;
        this.f27707Q0 = 0;
        this.f27705P0 = 200;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C4970R.styleable.StyledPlayerControlView, i, 0);
            try {
                i2 = obtainStyledAttributes.getResourceId(C4970R.styleable.StyledPlayerControlView_controller_layout_id, i2);
                this.f27704O0 = obtainStyledAttributes.getInt(C4970R.styleable.StyledPlayerControlView_show_timeout, this.f27704O0);
                this.f27707Q0 = m21087Y(obtainStyledAttributes, this.f27707Q0);
                boolean z11 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerControlView_show_rewind_button, true);
                boolean z12 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerControlView_show_fastforward_button, true);
                boolean z13 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerControlView_show_previous_button, true);
                boolean z14 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerControlView_show_next_button, true);
                boolean z15 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerControlView_show_shuffle_button, false);
                boolean z16 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerControlView_show_subtitle_button, false);
                boolean z17 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerControlView_show_vr_button, false);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(C4970R.styleable.StyledPlayerControlView_time_bar_min_update_interval, this.f27705P0));
                boolean z18 = obtainStyledAttributes.getBoolean(C4970R.styleable.StyledPlayerControlView_animation_enabled, true);
                obtainStyledAttributes.recycle();
                z2 = z16;
                z3 = z17;
                z7 = z13;
                z8 = z14;
                z4 = z18;
                z5 = z11;
                z = z15;
                z6 = z12;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            z = false;
            z2 = false;
            z3 = false;
            z4 = true;
            z5 = true;
            z6 = true;
            z7 = true;
            z8 = true;
        }
        LayoutInflater.from(context).inflate(i2, this);
        setDescendantFocusability(262144);
        ViewOnClickListenerC4976c viewOnClickListenerC4976c2 = new ViewOnClickListenerC4976c();
        this.f27721e = viewOnClickListenerC4976c2;
        this.f27723f = new CopyOnWriteArrayList<>();
        this.f27751v = new Timeline.Period();
        this.f27753w = new Timeline.Window();
        StringBuilder sb = new StringBuilder();
        this.f27747t = sb;
        this.f27749u = new Formatter(sb, Locale.getDefault());
        this.f27708R0 = new long[0];
        this.f27709S0 = new boolean[0];
        this.f27710T0 = new long[0];
        this.f27711U0 = new boolean[0];
        this.f27755x = new Runnable() { // from class: com.sunia.HTREnginev2.m3n
            @Override // java.lang.Runnable
            public final void run() {
                StyledPlayerControlView.this.m21138s0();
            }
        };
        this.f27743q = (TextView) findViewById(C4970R.id.exo_duration);
        this.f27745r = (TextView) findViewById(C4970R.id.exo_position);
        ImageView imageView = (ImageView) findViewById(C4970R.id.exo_subtitle);
        this.f27728h1 = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(viewOnClickListenerC4976c2);
        }
        ImageView imageView2 = (ImageView) findViewById(C4970R.id.exo_fullscreen);
        this.f27730i1 = imageView2;
        m21089a0(imageView2, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n3n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StyledPlayerControlView.this.m21124d0(view);
            }
        });
        ImageView imageView3 = (ImageView) findViewById(C4970R.id.exo_minimal_fullscreen);
        this.f27732j1 = imageView3;
        m21089a0(imageView3, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n3n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StyledPlayerControlView.this.m21124d0(view);
            }
        });
        View findViewById = findViewById(C4970R.id.exo_settings);
        this.f27735k1 = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(viewOnClickListenerC4976c2);
        }
        View findViewById2 = findViewById(C4970R.id.exo_playback_speed);
        this.f27737l1 = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(viewOnClickListenerC4976c2);
        }
        View findViewById3 = findViewById(C4970R.id.exo_audio_track);
        this.f27739m1 = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(viewOnClickListenerC4976c2);
        }
        TimeBar timeBar = (TimeBar) findViewById(C4970R.id.exo_progress);
        View findViewById4 = findViewById(C4970R.id.exo_progress_placeholder);
        if (timeBar != null) {
            this.f27746s = timeBar;
            viewOnClickListenerC4976c = viewOnClickListenerC4976c2;
            z9 = z4;
            textView = null;
        } else if (findViewById4 != null) {
            textView = null;
            viewOnClickListenerC4976c = viewOnClickListenerC4976c2;
            z9 = z4;
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, C4970R.style.ExoStyledControls_TimeBar);
            defaultTimeBar.setId(C4970R.id.exo_progress);
            defaultTimeBar.setLayoutParams(findViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById4.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById4);
            viewGroup.removeView(findViewById4);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f27746s = defaultTimeBar;
        } else {
            viewOnClickListenerC4976c = viewOnClickListenerC4976c2;
            z9 = z4;
            textView = null;
            this.f27746s = null;
        }
        TimeBar timeBar2 = this.f27746s;
        ViewOnClickListenerC4976c viewOnClickListenerC4976c3 = viewOnClickListenerC4976c;
        if (timeBar2 != null) {
            timeBar2.addListener(viewOnClickListenerC4976c3);
        }
        View findViewById5 = findViewById(C4970R.id.exo_play_pause);
        this.f27729i = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(viewOnClickListenerC4976c3);
        }
        View findViewById6 = findViewById(C4970R.id.exo_prev);
        this.f27725g = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(viewOnClickListenerC4976c3);
        }
        View findViewById7 = findViewById(C4970R.id.exo_next);
        this.f27727h = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(viewOnClickListenerC4976c3);
        }
        Typeface font = ResourcesCompat.getFont(context, C4970R.font.roboto_medium_numbers);
        View findViewById8 = findViewById(C4970R.id.exo_rew);
        TextView textView2 = findViewById8 == null ? (TextView) findViewById(C4970R.id.exo_rew_with_amount) : textView;
        this.f27738m = textView2;
        if (textView2 != null) {
            textView2.setTypeface(font);
        }
        findViewById8 = findViewById8 == null ? textView2 : findViewById8;
        this.f27733k = findViewById8;
        if (findViewById8 != null) {
            findViewById8.setOnClickListener(viewOnClickListenerC4976c3);
        }
        View findViewById9 = findViewById(C4970R.id.exo_ffwd);
        TextView textView3 = findViewById9 == null ? (TextView) findViewById(C4970R.id.exo_ffwd_with_amount) : null;
        this.f27736l = textView3;
        if (textView3 != null) {
            textView3.setTypeface(font);
        }
        findViewById9 = findViewById9 == null ? textView3 : findViewById9;
        this.f27731j = findViewById9;
        if (findViewById9 != null) {
            findViewById9.setOnClickListener(viewOnClickListenerC4976c3);
        }
        ImageView imageView4 = (ImageView) findViewById(C4970R.id.exo_repeat_toggle);
        this.f27740n = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(viewOnClickListenerC4976c3);
        }
        ImageView imageView5 = (ImageView) findViewById(C4970R.id.exo_shuffle);
        this.f27741o = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(viewOnClickListenerC4976c3);
        }
        this.f27714X0 = context.getResources();
        this.f27750u0 = r5.getInteger(C4970R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.f27752v0 = this.f27714X0.getInteger(C4970R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        View findViewById10 = findViewById(C4970R.id.exo_vr);
        this.f27742p = findViewById10;
        if (findViewById10 != null) {
            m21132l0(false, findViewById10);
        }
        C4990b c4990b = new C4990b(this);
        this.f27713W0 = c4990b;
        c4990b.m21283Y(z9);
        boolean z19 = z3;
        boolean z20 = z2;
        this.f27716Z0 = new C4979f(new String[]{this.f27714X0.getString(C4970R.string.exo_controls_playback_speed), this.f27714X0.getString(C4970R.string.exo_track_selection_title_audio)}, new Drawable[]{this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_speed), this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_audiotrack)});
        this.f27720d1 = this.f27714X0.getDimensionPixelSize(C4970R.dimen.exo_settings_offset);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(C4970R.layout.exo_styled_settings_list, (ViewGroup) null);
        this.f27715Y0 = recyclerView;
        recyclerView.setAdapter(this.f27716Z0);
        this.f27715Y0.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) this.f27715Y0, -2, -2, true);
        this.f27718b1 = popupWindow;
        if (Util.SDK_INT < 23) {
            z10 = false;
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        } else {
            z10 = false;
        }
        this.f27718b1.setOnDismissListener(viewOnClickListenerC4976c3);
        this.f27719c1 = true;
        this.f27726g1 = new DefaultTrackNameProvider(getResources());
        this.f27758y0 = this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_subtitle_on);
        this.f27760z0 = this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_subtitle_off);
        this.f27688A0 = this.f27714X0.getString(C4970R.string.exo_controls_cc_enabled_description);
        this.f27689B0 = this.f27714X0.getString(C4970R.string.exo_controls_cc_disabled_description);
        this.f27722e1 = new C4981h();
        this.f27724f1 = new C4975b();
        this.f27717a1 = new C4977d(this.f27714X0.getStringArray(C4970R.array.exo_controls_playback_speeds), f27685o1);
        this.f27690C0 = this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_fullscreen_exit);
        this.f27691D0 = this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_fullscreen_enter);
        this.f27757y = this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_repeat_off);
        this.f27759z = this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_repeat_one);
        this.f27697J = this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_repeat_all);
        this.f27744q0 = this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_shuffle_on);
        this.f27748t0 = this.f27714X0.getDrawable(C4970R.drawable.exo_styled_controls_shuffle_off);
        this.f27692E0 = this.f27714X0.getString(C4970R.string.exo_controls_fullscreen_exit_description);
        this.f27693F0 = this.f27714X0.getString(C4970R.string.exo_controls_fullscreen_enter_description);
        this.f27703O = this.f27714X0.getString(C4970R.string.exo_controls_repeat_off_description);
        this.f27706Q = this.f27714X0.getString(C4970R.string.exo_controls_repeat_one_description);
        this.f27734k0 = this.f27714X0.getString(C4970R.string.exo_controls_repeat_all_description);
        this.f27754w0 = this.f27714X0.getString(C4970R.string.exo_controls_shuffle_on_description);
        this.f27756x0 = this.f27714X0.getString(C4970R.string.exo_controls_shuffle_off_description);
        this.f27713W0.m21284Z((ViewGroup) findViewById(C4970R.id.exo_bottom_bar), true);
        this.f27713W0.m21284Z(findViewById9, z6);
        this.f27713W0.m21284Z(findViewById8, z5);
        this.f27713W0.m21284Z(findViewById6, z7);
        this.f27713W0.m21284Z(findViewById7, z8);
        this.f27713W0.m21284Z(imageView5, z);
        this.f27713W0.m21284Z(this.f27728h1, z20);
        this.f27713W0.m21284Z(findViewById10, z19);
        this.f27713W0.m21284Z(imageView4, this.f27707Q0 != 0 ? true : z10);
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.sunia.HTREnginev2.o3n
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                StyledPlayerControlView.this.m21125e0(view, i3, i4, i5, i6, i7, i8, i9, i10);
            }
        });
    }
}

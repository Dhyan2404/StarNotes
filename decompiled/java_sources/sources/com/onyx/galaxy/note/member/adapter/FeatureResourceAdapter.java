package com.onyx.galaxy.note.member.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.StringUtils;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.database.VersionTable;
import com.google.android.exoplayer2.p008ui.PlayerView;
import com.google.android.exoplayer2.p008ui.TimeBar;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.glide.GlideApp;
import com.onyx.galaxy.note.databinding.ItemFeatureResourceBinding;
import com.onyx.galaxy.note.member.adapter.FeatureResourceAdapter;
import com.onyx.galaxy.note.member.data.Feature;
import com.onyx.galaxy.note.member.data.FeatureResource;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\u0018\u0000 52\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u000256B\u0007¢\u0006\u0004\b3\u00104J&\u0010\t\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014J\u000e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\bJ\u0006\u0010\u0014\u001a\u00020\bJ\u001c\u0010\u0017\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0014\u0010\u0018\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u0000H\u0002J$\u0010\u001b\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u001c\u0010\u001c\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u001c\u0010\u001d\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u001c\u0010\u001e\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\b\u0010 \u001a\u00020\u001fH\u0002J\b\u0010\"\u001a\u00020!H\u0002R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010/R\u0016\u00102\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u00101¨\u00067"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/member/data/FeatureResource;", "Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Lcom/onyx/galaxy/note/member/data/Feature;", VersionTable.f23321b, "updateFeatureResource", "pausePlayer", "stopPlayer", "", "url", "q", "w", "Lcom/google/android/exoplayer2/Player;", "player", "p", "x", "y", "u", "Lcom/google/android/exoplayer2/ExoPlayer;", C4921e.f26528e, "", "v", "Lcom/google/android/exoplayer2/Player$Listener;", "r", "Lcom/google/android/exoplayer2/Player$Listener;", "playerListener", "s", "Lcom/google/android/exoplayer2/ExoPlayer;", "exoPlayer", "Lio/reactivex/rxjava3/disposables/Disposable;", "t", "Lio/reactivex/rxjava3/disposables/Disposable;", "timerDisposable", "", "J", "lastTouchControlTime", Constants.STRING_SIG, "resourceType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "ItemViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFeatureResourceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureResourceAdapter.kt\ncom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,215:1\n256#2,2:216\n256#2,2:218\n256#2,2:221\n256#2,2:223\n256#2,2:225\n256#2,2:227\n1#3:220\n*S KotlinDebug\n*F\n+ 1 FeatureResourceAdapter.kt\ncom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter\n*L\n55#1:216,2\n56#1:218,2\n135#1:221,2\n136#1:223,2\n198#1:225,2\n128#1:227,2\n*E\n"})
/* loaded from: classes9.dex */
public final class FeatureResourceAdapter extends BaseQuickAdapter<FeatureResource, ItemViewHolder> {
    public static final int PLAYER_CONTROL_SHOW_TIME = 5000;

    @NotNull
    public static final String TYPE_VIDEO = "video";

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public Player.Listener playerListener;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public ExoPlayer exoPlayer;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public Disposable timerDisposable;

    /* renamed from: u, reason: from kotlin metadata */
    public long lastTouchControlTime;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public String resourceType;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;", "binding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class ItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFeatureResourceBinding binding;

        /* renamed from: I */
        public final /* synthetic */ FeatureResourceAdapter f61272I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ItemViewHolder(@NotNull FeatureResourceAdapter featureResourceAdapter, ItemFeatureResourceBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f61272I = featureResourceAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemFeatureResourceBinding getBinding() {
            return this.binding;
        }
    }

    /* renamed from: com.onyx.galaxy.note.member.adapter.FeatureResourceAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C12604a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ItemViewHolder f61273e;

        /* renamed from: f */
        public final /* synthetic */ Player f61274f;

        /* renamed from: g */
        public final /* synthetic */ FeatureResourceAdapter f61275g;

        public C12604a(ItemViewHolder itemViewHolder, Player player, FeatureResourceAdapter featureResourceAdapter) {
            this.f61273e = itemViewHolder;
            this.f61274f = player;
            this.f61275g = featureResourceAdapter;
        }

        /* renamed from: a */
        public final void m50475a(long j) {
            this.f61273e.getBinding().playerTimeBar.setPosition(this.f61274f.getCurrentPosition());
            StringBuilder sb = new StringBuilder();
            DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
            sb.append(DateTimeUtil.formatDurationSecondRoundUp$default(dateTimeUtil, this.f61274f.getCurrentPosition(), false, null, null, 12, null));
            sb.append('/');
            sb.append(DateTimeUtil.formatDurationSecondRoundUp$default(dateTimeUtil, this.f61274f.getDuration(), false, null, null, 12, null));
            this.f61273e.getBinding().tvDuration.setText(sb.toString());
            this.f61275g.m50470u(this.f61273e, this.f61274f);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50475a(((Number) obj).longValue());
        }
    }

    public FeatureResourceAdapter() {
        super(null, 1, null);
        this.resourceType = "";
    }

    /* renamed from: r */
    public static final void m50464r(ExoPlayer player, View view) {
        Intrinsics.checkNotNullParameter(player, "$player");
        if (player.getPlaybackState() == 4) {
            player.seekTo(0L);
        }
        if (player.isPlaying()) {
            player.pause();
        } else {
            player.play();
        }
    }

    /* renamed from: s */
    public static final void m50465s(ExoPlayer player, FeatureResourceAdapter this$0, ItemViewHolder holder, View view) {
        Intrinsics.checkNotNullParameter(player, "$player");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(holder, "$holder");
        if (player.getVolume() == 0.0f) {
            player.setVolume(1.0f);
        } else {
            player.setVolume(0.0f);
        }
        this$0.m50474y(holder, player);
    }

    /* renamed from: t */
    public static final void m50466t(FeatureResourceAdapter this$0, ItemFeatureResourceBinding binding, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        this$0.lastTouchControlTime = System.currentTimeMillis();
        TintConstraintLayout clyControl = binding.clyControl;
        Intrinsics.checkNotNullExpressionValue(clyControl, "clyControl");
        clyControl.setVisibility(0);
    }

    /* renamed from: o */
    public final ExoPlayer m50467o() {
        ExoPlayer exoPlayer = this.exoPlayer;
        if (exoPlayer != null) {
            return exoPlayer;
        }
        ResManager resManager = ResManager.INSTANCE;
        ExoPlayer build = new ExoPlayer.Builder(resManager.getAppContext(), new DefaultMediaSourceFactory(resManager.getAppContext())).build();
        this.exoPlayer = build;
        return build;
    }

    /* renamed from: p */
    public final void m50468p(final ItemViewHolder holder, final Player player, String url) {
        final ItemFeatureResourceBinding binding = holder.getBinding();
        Player.Listener listener = new Player.Listener() { // from class: com.onyx.galaxy.note.member.adapter.FeatureResourceAdapter$handlePlayer$listener$1
            @Override // com.google.android.exoplayer2.Player.Listener
            public void onIsPlayingChanged(boolean isPlaying) {
                super.onIsPlayingChanged(isPlaying);
                ItemFeatureResourceBinding.this.playerTimeBar.setDuration(player.getDuration());
                ItemFeatureResourceBinding.this.playerTimeBar.setPosition(player.getCurrentPosition());
                ItemFeatureResourceBinding.this.ivPlay.setImageResource(isPlaying ? C10651R.drawable.ic_player_pause : C10651R.drawable.ic_player_play);
                TintTextView tvDuration = ItemFeatureResourceBinding.this.tvDuration;
                Intrinsics.checkNotNullExpressionValue(tvDuration, "tvDuration");
                tvDuration.setVisibility(0);
                TintImageView ivPlayerVolume = ItemFeatureResourceBinding.this.ivPlayerVolume;
                Intrinsics.checkNotNullExpressionValue(ivPlayerVolume, "ivPlayerVolume");
                ivPlayerVolume.setVisibility(0);
                this.m50474y(holder, player);
            }
        };
        this.playerListener = listener;
        PlayerView playerView = holder.getBinding().playerView;
        Intrinsics.checkNotNullExpressionValue(playerView, "playerView");
        player.setVolume(0.0f);
        playerView.setPlayer(player);
        player.setMediaItem(MediaItem.fromUri(url));
        player.addListener(listener);
        player.prepare();
        player.play();
        m50473x(holder, player);
    }

    public final void pausePlayer() {
        ExoPlayer exoPlayer = this.exoPlayer;
        if (exoPlayer != null) {
            exoPlayer.pause();
        }
    }

    /* renamed from: q */
    public final void m50469q(final ItemViewHolder holder, String url) {
        final ItemFeatureResourceBinding binding = holder.getBinding();
        final ExoPlayer m50467o = m50467o();
        binding.playerTimeBar.addListener(new TimeBar.OnScrubListener() { // from class: com.onyx.galaxy.note.member.adapter.FeatureResourceAdapter$handleVideo$1
            @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
            public void onScrubMove(@NotNull TimeBar timeBar, long position) {
                Intrinsics.checkNotNullParameter(timeBar, "timeBar");
            }

            @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
            public void onScrubStart(@NotNull TimeBar timeBar, long position) {
                Intrinsics.checkNotNullParameter(timeBar, "timeBar");
            }

            @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
            public void onScrubStop(@NotNull TimeBar timeBar, long position, boolean canceled) {
                Intrinsics.checkNotNullParameter(timeBar, "timeBar");
                ExoPlayer.this.seekTo(position);
            }
        });
        TintImageView ivPlay = binding.ivPlay;
        Intrinsics.checkNotNullExpressionValue(ivPlay, "ivPlay");
        ViewKt.click$default(ivPlay, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.z9g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FeatureResourceAdapter.m50464r(ExoPlayer.this, view);
            }
        }, 1, null);
        TintImageView ivPlayerVolume = binding.ivPlayerVolume;
        Intrinsics.checkNotNullExpressionValue(ivPlayerVolume, "ivPlayerVolume");
        ViewKt.click$default(ivPlayerVolume, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.aag
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FeatureResourceAdapter.m50465s(ExoPlayer.this, this, holder, view);
            }
        }, 1, null);
        FrameLayout flyPlayer = binding.flyPlayer;
        Intrinsics.checkNotNullExpressionValue(flyPlayer, "flyPlayer");
        ViewKt.click$default(flyPlayer, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bag
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FeatureResourceAdapter.m50466t(FeatureResourceAdapter.this, binding, view);
            }
        }, 1, null);
        m50472w(holder);
        m50468p(holder, m50467o, url);
    }

    public final void stopPlayer() {
        ExoPlayer exoPlayer;
        Player.Listener listener = this.playerListener;
        if (listener != null && (exoPlayer = this.exoPlayer) != null) {
            exoPlayer.removeListener(listener);
        }
        ExoPlayer exoPlayer2 = this.exoPlayer;
        if (exoPlayer2 != null) {
            exoPlayer2.stop();
        }
        Disposable disposable = this.timerDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: u */
    public final void m50470u(ItemViewHolder holder, Player player) {
        if (System.currentTimeMillis() - this.lastTouchControlTime < 5000 || !player.isPlaying()) {
            return;
        }
        TintConstraintLayout clyControl = holder.getBinding().clyControl;
        Intrinsics.checkNotNullExpressionValue(clyControl, "clyControl");
        clyControl.setVisibility(8);
    }

    public final void updateFeatureResource(@NotNull Feature feature) {
        Intrinsics.checkNotNullParameter(feature, "feature");
        stopPlayer();
        this.resourceType = feature.getResourceType();
        submitList(feature.getResources());
    }

    /* renamed from: v */
    public final boolean m50471v() {
        return StringUtils.equals(this.resourceType, "video");
    }

    /* renamed from: w */
    public final void m50472w(ItemViewHolder holder) {
        TintTextView tvDuration = holder.getBinding().tvDuration;
        Intrinsics.checkNotNullExpressionValue(tvDuration, "tvDuration");
        tvDuration.setVisibility(8);
        TintImageView ivPlayerVolume = holder.getBinding().ivPlayerVolume;
        Intrinsics.checkNotNullExpressionValue(ivPlayerVolume, "ivPlayerVolume");
        ivPlayerVolume.setVisibility(8);
        this.lastTouchControlTime = System.currentTimeMillis();
    }

    /* renamed from: x */
    public final void m50473x(ItemViewHolder holder, Player player) {
        Disposable disposable = this.timerDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        this.timerDisposable = Observable.interval(500L, 500L, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12604a(holder, player, this)).subscribe();
    }

    /* renamed from: y */
    public final void m50474y(ItemViewHolder holder, Player player) {
        holder.getBinding().ivPlayerVolume.setImageResource((player.getVolume() > 0.0f ? 1 : (player.getVolume() == 0.0f ? 0 : -1)) == 0 ? C10651R.drawable.ic_player_volume_off : C10651R.drawable.ic_player_volume_up);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull ItemViewHolder holder, int position, @Nullable FeatureResource item) {
        String str;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null || (str = item.getUrl()) == null) {
            str = "";
        }
        boolean m50471v = m50471v();
        FrameLayout flyPlayer = holder.getBinding().flyPlayer;
        Intrinsics.checkNotNullExpressionValue(flyPlayer, "flyPlayer");
        flyPlayer.setVisibility(m50471v ? 0 : 8);
        TintImageView ivResource = holder.getBinding().ivResource;
        Intrinsics.checkNotNullExpressionValue(ivResource, "ivResource");
        ivResource.setVisibility(m50471v ^ true ? 0 : 8);
        if (m50471v()) {
            m50469q(holder, str);
        } else {
            GlideApp.with(holder.getBinding().ivResource).load(str).into(holder.getBinding().ivResource);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public ItemViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemFeatureResourceBinding inflate = ItemFeatureResourceBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new ItemViewHolder(this, inflate);
    }
}

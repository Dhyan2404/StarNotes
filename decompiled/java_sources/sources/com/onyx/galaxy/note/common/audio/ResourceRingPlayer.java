package com.onyx.galaxy.note.common.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u000b¢\u0006\u0004\b*\u0010+J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u0004J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u0017R\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001b\u0010)\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b\u0014\u0010(¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;", "Landroid/media/MediaPlayer$OnCompletionListener;", "Landroid/media/MediaPlayer;", "mp", "", "onCompletion", "", "volume", "setVolume", "release", "stop", "", "isPlaying", "play", "c", "a", "Landroid/content/Context;", "Landroid/content/Context;", "context", "", "b", "I", "rawResId", Constants.HASIDCALL_INDEX_SIG, "playInSilentMode", "d", "Landroid/media/MediaPlayer;", "mediaPlayer", "e", "F", "currentVolume", C6997f.f39671c, "isSelfStopped", "Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;", C6998g.f39679a, "Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;", "muteStrategy", "Landroid/content/BroadcastReceiver;", C6999h.f39688c, "Lkotlin/Lazy;", "()Landroid/content/BroadcastReceiver;", "modeChangeReceiver", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;IZ)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nResourceRingPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceRingPlayer.kt\ncom/onyx/galaxy/note/common/audio/ResourceRingPlayer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1#2:119\n*E\n"})
/* loaded from: classes9.dex */
public final class ResourceRingPlayer implements MediaPlayer.OnCompletionListener {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: b, reason: from kotlin metadata */
    public final int rawResId;

    /* renamed from: c, reason: from kotlin metadata */
    public final boolean playInSilentMode;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public MediaPlayer mediaPlayer;

    /* renamed from: e, reason: from kotlin metadata */
    public float currentVolume;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isSelfStopped;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final RingMuteStrategy muteStrategy;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy modeChangeReceiver;

    public ResourceRingPlayer(@NotNull Context context, int i, boolean z) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.rawResId = i;
        this.playInSilentMode = z;
        this.currentVolume = 1.0f;
        this.muteStrategy = new RingMuteStrategy(context, z);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<BroadcastReceiver>() { // from class: com.onyx.galaxy.note.common.audio.ResourceRingPlayer$modeChangeReceiver$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BroadcastReceiver invoke() {
                Context context2;
                context2 = ResourceRingPlayer.this.context;
                final ResourceRingPlayer resourceRingPlayer = ResourceRingPlayer.this;
                return ContextExtKt.registerRingerModeChangeListener(context2, new Function0<Unit>() { // from class: com.onyx.galaxy.note.common.audio.ResourceRingPlayer$modeChangeReceiver$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        ResourceRingPlayer.this.m44979a();
                    }
                });
            }
        });
        this.modeChangeReceiver = lazy;
    }

    /* renamed from: a */
    public final void m44979a() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            if (!mediaPlayer.isPlaying()) {
                mediaPlayer = null;
            }
            if (mediaPlayer != null) {
                if (this.muteStrategy.shouldMute()) {
                    if (this.playInSilentMode) {
                        mediaPlayer.pause();
                        return;
                    } else {
                        stop();
                        return;
                    }
                }
                if (mediaPlayer.isPlaying() || this.isSelfStopped) {
                    return;
                }
                mediaPlayer.start();
            }
        }
    }

    /* renamed from: b */
    public final BroadcastReceiver m44980b() {
        return (BroadcastReceiver) this.modeChangeReceiver.getValue();
    }

    /* renamed from: c */
    public final void m44981c() {
        float coerceAtMost;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(this.currentVolume, ContextExtKt.getSystemMusicVolumeRatio(this.context));
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.setVolume(coerceAtMost, coerceAtMost);
            }
        } catch (Exception e) {
            Debug.INSTANCE.m32044e(ResourceRingPlayer.class, "updateVolume failed " + e.getMessage(), new Object[0]);
            e.printStackTrace();
        }
    }

    public final boolean isPlaying() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.isPlaying();
        }
        return false;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(@Nullable MediaPlayer mp) {
        stop();
    }

    public final void play() {
        stop();
        if (this.muteStrategy.shouldMute()) {
            return;
        }
        this.isSelfStopped = false;
        try {
            MediaPlayer create = MediaPlayer.create(this.context, this.rawResId);
            create.setAudioAttributes(new AudioAttributes.Builder().setContentType(4).setUsage(13).build());
            create.setOnCompletionListener(this);
            float f = this.currentVolume;
            create.setVolume(f, f);
            create.start();
            this.mediaPlayer = create;
        } catch (Exception e) {
            Debug.INSTANCE.m32044e(ResourceRingPlayer.class, "play failed rawResId: " + this.rawResId + " playInSilentMode: " + this.playInSilentMode + ' ' + e.getMessage(), new Object[0]);
            e.printStackTrace();
        }
    }

    public final void release() {
        try {
            this.context.unregisterReceiver(m44980b());
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    public final void setVolume(float volume) {
        float coerceIn;
        coerceIn = RangesKt___RangesKt.coerceIn(volume, 0.0f, 1.0f);
        this.currentVolume = coerceIn;
        m44981c();
    }

    public final void stop() {
        this.isSelfStopped = true;
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            try {
                if (mediaPlayer.isPlaying()) {
                    mediaPlayer.stop();
                }
                mediaPlayer.reset();
                mediaPlayer.release();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.mediaPlayer = null;
    }

    public /* synthetic */ ResourceRingPlayer(Context context, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, i, (i2 & 4) != 0 ? false : z);
    }
}

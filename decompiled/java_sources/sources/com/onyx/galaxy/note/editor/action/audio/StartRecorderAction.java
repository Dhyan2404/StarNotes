package com.onyx.galaxy.note.editor.action.audio;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.media.bean.AudioDataBean;
import com.onyx.android.sdk.media.config.FormatConfig;
import com.onyx.android.sdk.media.config.RecordingConfig;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.utils.NoteMediaUtils;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.MediaBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.note.CreateAudioShapeEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0002J\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u000bH\u0014J\b\u0010\r\u001a\u00020\u0005H\u0002J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000b2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001a¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/audio/StartRecorderAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "acceptAudioData", "setAcceptAudioData", "", "audioFilePath", "setAudioFilePath", "appendMode", "setAppendMode", "getAudioFilePath", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "path", "Lcom/onyx/android/sdk/media/bean/AudioDataBean;", "p", "Lcom/onyx/android/sdk/universal/editor/MediaBundle;", "l", "Lcom/onyx/android/sdk/note/NoteBundle;", "m", "", C4921e.f26528e, C6999h.f39688c, Constants.STRING_SIG, "i", Constants.HASIDCALL_INDEX_SIG, "j", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class StartRecorderAction extends RxBaseAppAction<StartRecorderAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String audioFilePath;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean acceptAudioData;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean appendMode;

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.StartRecorderAction$a */
    /* loaded from: classes9.dex */
    public static final class C11837a<T, R> implements Function {
        public C11837a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull StartRecorderAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartRecorderAction.this.m45691n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.StartRecorderAction$b */
    /* loaded from: classes9.dex */
    public static final class C11838b<T, R> implements Function {
        public C11838b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AudioDataBean> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartRecorderAction.this.m45693p(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.StartRecorderAction$c */
    /* loaded from: classes9.dex */
    public static final class C11839c<T, R> implements Function {
        public C11839c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartRecorderAction apply(@NotNull AudioDataBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartRecorderAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.StartRecorderAction$d */
    /* loaded from: classes9.dex */
    public static final class C11840d<T> implements Consumer {
        public C11840d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartRecorderAction.this.m45692o();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartRecorderAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartRecorderAction> create() {
        Observable<StartRecorderAction> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C11837a()).observeOn(Schedulers.m61350io()).flatMap(new C11838b()).map(new C11839c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getAudioFilePath() {
        return StringKt.safelyGetStr(this.audioFilePath);
    }

    /* renamed from: l */
    public final MediaBundle m45689l() {
        return getEditorBundle().getMediaBundle();
    }

    /* renamed from: m */
    public final NoteBundle m45690m() {
        return EditorBundleKt.noteBundle(getEditorBundle());
    }

    /* renamed from: n */
    public final String m45691n() {
        String str = this.audioFilePath;
        if (str == null || str.length() == 0) {
            this.audioFilePath = NoteMediaUtils.INSTANCE.getRecordOutputPath(m45690m().getNoteDoc().getDocumentUniqueId());
        }
        return StringKt.safelyGetStr(this.audioFilePath);
    }

    /* renamed from: o */
    public final void m45692o() {
        AudioInfoBean ensureObject = AudioInfoBean.INSTANCE.ensureObject(null);
        ensureObject.setAudioPath(this.audioFilePath);
        ensureObject.setCreationTime(System.currentTimeMillis());
        EditorBundleKt.postEvent(getEditorBundle(), new CreateAudioShapeEvent(ensureObject, false));
    }

    /* renamed from: p */
    public final Observable<AudioDataBean> m45693p(String path) {
        Observable<AudioDataBean> doOnSubscribe = m45689l().getRecorderManager().startRecording(new RecordingConfig(NoteMediaUtils.INSTANCE.getRecordIdFromPath(path), FormatConfig.INSTANCE.defaultAudioConfig(), path, this.acceptAudioData, this.appendMode, false, 32, null)).doOnSubscribe(new C11840d());
        Intrinsics.checkNotNullExpressionValue(doOnSubscribe, "doOnSubscribe(...)");
        return doOnSubscribe;
    }

    @NotNull
    public final StartRecorderAction setAcceptAudioData(boolean acceptAudioData) {
        this.acceptAudioData = acceptAudioData;
        return this;
    }

    @NotNull
    public final StartRecorderAction setAppendMode(boolean appendMode) {
        this.appendMode = appendMode;
        return this;
    }

    @NotNull
    public final StartRecorderAction setAudioFilePath(@Nullable String audioFilePath) {
        this.audioFilePath = audioFilePath;
        return this;
    }
}

package com.onyx.galaxy.note.utils;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.category.action.CheckNoteEncryptedAction;
import com.onyx.galaxy.note.editor.event.ReLockNoteEvent;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000S\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u001f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b%\u0010&J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\f\u001a\u00020\u0002J\u0006\u0010\r\u001a\u00020\u0002J\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u00102\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0013\u001a\u00020\tJ\b\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0016\u001a\u00020\u0014H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\b\u0010\u0018\u001a\u00020\u0002H\u0002R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u001aR \u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00140\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;", "", "", "onScreenOffEvent", "", EditorConstants.ARGS_DOC_ID, "addAutoReLockNoteTask", "delayReLockNoteTask", "removeAutoReLockNoteTask", "", "isNoteReLocked", "hasAutoReLockNoteTask", "stop", "updateReLockTaskTime", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lio/reactivex/rxjava3/core/Observable;", "checkEditorAutoReLockObservable", "checkEnableIdleAutoLockInterval", "checkEnableAutoReLock", "", "c", "b", "a", "d", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Ljava/util/concurrent/CopyOnWriteArraySet;", "reLockedNoteSet", "Ljava/util/concurrent/ConcurrentHashMap;", "Ljava/util/concurrent/ConcurrentHashMap;", "reLockTimesMap", "com/onyx/galaxy/note/utils/AutoReLockNoteManager$timerObserver$1", "Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager$timerObserver$1;", "timerObserver", "", Constants.INTEGER_SIG, "timerObserverKey", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAutoReLockNoteManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoReLockNoteManager.kt\ncom/onyx/galaxy/note/utils/AutoReLockNoteManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,143:1\n1#2:144\n215#3,2:145\n215#3,2:154\n526#4:147\n511#4,6:148\n*S KotlinDebug\n*F\n+ 1 AutoReLockNoteManager.kt\ncom/onyx/galaxy/note/utils/AutoReLockNoteManager\n*L\n82#1:145,2\n124#1:154,2\n123#1:147\n123#1:148,6\n*E\n"})
/* loaded from: classes9.dex */
public final class AutoReLockNoteManager {

    @NotNull
    public static final AutoReLockNoteManager INSTANCE = new AutoReLockNoteManager();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final CopyOnWriteArraySet<String> reLockedNoteSet = new CopyOnWriteArraySet<>();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final ConcurrentHashMap<String, Long> reLockTimesMap = new ConcurrentHashMap<>();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final AutoReLockNoteManager$timerObserver$1 timerObserver = new RxTimerUtil.TimerObserver() { // from class: com.onyx.galaxy.note.utils.AutoReLockNoteManager$timerObserver$1
        @Override // io.reactivex.rxjava3.core.Observer
        public /* bridge */ /* synthetic */ void onNext(Long l) {
            onNext(l.longValue());
        }

        public void onNext(long t) {
            AutoReLockNoteManager.INSTANCE.m51958a();
        }
    };

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public static volatile Integer timerObserverKey;

    /* renamed from: com.onyx.galaxy.note.utils.AutoReLockNoteManager$a */
    /* loaded from: classes9.dex */
    public static final class C12978a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f62689e;

        public C12978a(String str) {
            this.f62689e = str;
        }

        @NotNull
        /* renamed from: a */
        public final Boolean m51962a(boolean z) {
            return Boolean.valueOf(z && !AutoReLockNoteManager.INSTANCE.hasAutoReLockNoteTask(this.f62689e));
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51962a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: a */
    public final void m51958a() {
        ConcurrentHashMap<String, Long> concurrentHashMap = reLockTimesMap;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Long> entry : concurrentHashMap.entrySet()) {
            if (entry.getValue().longValue() < System.currentTimeMillis()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it2 = linkedHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            String str = (String) ((Map.Entry) it2.next()).getKey();
            reLockTimesMap.remove(str);
            reLockedNoteSet.add(str);
            GlobalBundle.INSTANCE.postEvent(new ReLockNoteEvent(str));
        }
    }

    public final void addAutoReLockNoteTask(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        if (!checkEnableAutoReLock()) {
            stop();
            return;
        }
        reLockTimesMap.put(docId, Long.valueOf(System.currentTimeMillis() + m51960c()));
        reLockedNoteSet.remove(docId);
        m51961d();
    }

    /* renamed from: b */
    public final long m51959b() {
        return MMKVNote.INSTANCE.getNoteIdleAutoLockIntervalOption().get();
    }

    /* renamed from: c */
    public final long m51960c() {
        if (checkEnableIdleAutoLockInterval()) {
            return m51959b() * 60000;
        }
        return 4611686018427387903L;
    }

    @NotNull
    public final Observable<Boolean> checkEditorAutoReLockObservable(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        if (!checkEnableAutoReLock()) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        String docId = EditorBundleKt.docId(editorBundle);
        if (isNoteReLocked(docId)) {
            Observable<Boolean> just2 = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Observable map = new CheckNoteEncryptedAction(docId).build().map(new C12978a(docId));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean checkEnableAutoReLock() {
        return StringKt.isNotBlank(MMKVNote.INSTANCE.getNoteLockPasswordOption().get());
    }

    public final boolean checkEnableIdleAutoLockInterval() {
        return m51959b() > 0;
    }

    /* renamed from: d */
    public final void m51961d() {
        if (timerObserverKey != null) {
            return;
        }
        timerObserverKey = Integer.valueOf(RxTimerUtil.INSTANCE.timer(0L, 10000L, RxScheduler.INSTANCE.newSingleThreadManager().getObserveOn(), timerObserver));
    }

    public final void delayReLockNoteTask(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        ConcurrentHashMap<String, Long> concurrentHashMap = reLockTimesMap;
        if (concurrentHashMap.containsKey(docId)) {
            concurrentHashMap.put(docId, Long.valueOf(System.currentTimeMillis() + m51960c()));
        }
    }

    public final boolean hasAutoReLockNoteTask(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        return reLockTimesMap.containsKey(docId);
    }

    public final boolean isNoteReLocked(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        return reLockedNoteSet.contains(docId);
    }

    public final void onScreenOffEvent() {
        CopyOnWriteArraySet<String> copyOnWriteArraySet = reLockedNoteSet;
        ConcurrentHashMap<String, Long> concurrentHashMap = reLockTimesMap;
        copyOnWriteArraySet.addAll(concurrentHashMap.keySet());
        concurrentHashMap.clear();
    }

    public final void removeAutoReLockNoteTask(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        ConcurrentHashMap<String, Long> concurrentHashMap = reLockTimesMap;
        concurrentHashMap.remove(docId);
        reLockedNoteSet.remove(docId);
        if (concurrentHashMap.isEmpty()) {
            stop();
        }
    }

    public final void stop() {
        reLockTimesMap.clear();
        reLockedNoteSet.clear();
        Integer num = timerObserverKey;
        if (num != null) {
            RxTimerUtil.INSTANCE.cancel(num.intValue());
        }
        timerObserverKey = null;
    }

    public final void updateReLockTaskTime() {
        Iterator<Map.Entry<String, Long>> it2 = reLockTimesMap.entrySet().iterator();
        while (it2.hasNext()) {
            reLockTimesMap.put(it2.next().getKey(), Long.valueOf(System.currentTimeMillis() + INSTANCE.m51960c()));
        }
    }
}

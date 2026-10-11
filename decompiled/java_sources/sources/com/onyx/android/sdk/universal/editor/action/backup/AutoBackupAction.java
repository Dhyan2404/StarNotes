package com.onyx.android.sdk.universal.editor.action.backup;

import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.replicator.note.p035db.AutoBackupProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.AutoBackupModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureAutoBackupProviderAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction;
import com.onyx.android.sdk.universal.p042ui.data.AutoBackupContext;
import com.onyx.android.sdk.universal.p042ui.data.AutoBackupResult;
import com.onyx.android.sdk.universal.p042ui.data.BackupConstant;
import com.onyx.android.sdk.universal.p042ui.data.BackupContext;
import com.onyx.android.sdk.universal.p042ui.data.BackupFilePaths;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 Q2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001QB\u0017\u0012\u0006\u00109\u001a\u000204\u0012\u0006\u0010<\u001a\u00020\u0006¢\u0006\u0004\bO\u0010PJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\b\u0010\u000b\u001a\u00020\u0003H\u0002J\b\u0010\f\u001a\u00020\u0003H\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\u0005H\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J \u0010\u0015\u001a\u00020\u00002\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0002J\u0012\u0010\u0016\u001a\u00020\t2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0002J\u0016\u0010\u0018\u001a\u00020\u00032\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00100\u0012H\u0002J\u000e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00100\u0012H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\b\u0010\u001e\u001a\u00020\u001cH\u0002J\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00020\t0\u00052\u0006\u0010\u001f\u001a\u00020\tH\u0002J\b\u0010!\u001a\u00020\tH\u0002J2\u0010&\u001a\b\u0012\u0004\u0012\u00020\t0\u00052\u0006\u0010#\u001a\u00020\"2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100$2\u0006\u0010\u001f\u001a\u00020\tH\u0002J\b\u0010'\u001a\u00020\u000eH\u0002J\u0010\u0010*\u001a\u00020)2\u0006\u0010(\u001a\u00020\"H\u0002J,\u0010,\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100$2\u0006\u0010\u001f\u001a\u00020\tH\u0002J$\u0010.\u001a\u00020\u00032\u0006\u0010#\u001a\u00020-2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100$H\u0002J,\u0010/\u001a\u00020\u00032\u0006\u0010#\u001a\u00020-2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100$2\u0006\u0010\u001f\u001a\u00020\tH\u0002J\u0012\u00101\u001a\u00020\u00032\b\u00100\u001a\u0004\u0018\u00010\u000eH\u0002J\b\u00102\u001a\u00020\u0003H\u0002J\u000e\u00103\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014R\u0017\u00109\u001a\u0002048\u0006¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108R\u0014\u0010<\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010?\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010C\u001a\u00020@8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010G\u001a\u00020D8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010K\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010IR\u0014\u0010N\u001a\u00020\t8\u0002X\u0082D¢\u0006\u0006\n\u0004\bL\u0010M¨\u0006R"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;", "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;", "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;", "", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;", "L", "x", "", "p", "w", "M", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "", "noteBackupFilePath", "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;", "K", "", "localBackupModels", "autoBackupModel", "G", "I", "models", "r", "B", "", "type", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "z", "A", "localBackupSuccess", "s", "q", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", CouchFieldKey.KEY_PROVIDER, "", "cloudAutoBackupModelMap", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "E", "baseCloudStorageProvider", "Ljava/io/File;", "t", "backupModelMap", "J", "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;", "F", "H", NotificationCompat.CATEGORY_MESSAGE, "v", "N", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;", "autoBackupContext", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;", "autoBackupResult", "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;", "i", "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;", "autoBackupProvider", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "j", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", C4921e.f26537n, Constants.STRING_SIG, "l", "noteCloudLocalPath", "m", Constants.HASIDCALL_INDEX_SIG, "debugAutoBackup", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAutoBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,437:1\n1855#2,2:438\n1726#2,3:440\n1855#2,2:443\n1855#2,2:445\n288#2,2:447\n*S KotlinDebug\n*F\n+ 1 AutoBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction\n*L\n130#1:438,2\n134#1:440,3\n211#1:443,2\n223#1:445,2\n390#1:447,2\n*E\n"})
/* loaded from: classes8.dex */
public final class AutoBackupAction extends RxBaseBackupAction<AutoBackupResult> {

    /* renamed from: n */
    @NotNull
    public static final String f47924n = "AutoBackupAction";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final AutoBackupContext autoBackupContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final AutoBackupResult autoBackupResult;

    /* renamed from: i, reason: from kotlin metadata */
    public AutoBackupProvider autoBackupProvider;

    /* renamed from: j, reason: from kotlin metadata */
    public SyncNoteModel noteModel;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public String noteBackupFilePath;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public String noteCloudLocalPath;

    /* renamed from: m, reason: from kotlin metadata */
    public final boolean debugAutoBackup;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$a */
    /* loaded from: classes8.dex */
    public static final class C8433a<T> implements Consumer {

        /* renamed from: e */
        public static final C8433a<T> f47933e = new C8433a<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends CloudStorageProvider> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (it2.isEmpty()) {
                throw new Exception("not found auth providers");
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$b */
    /* loaded from: classes8.dex */
    public static final class C8434b<T, R> implements Function {

        /* renamed from: e */
        public static final C8434b<T, R> f47934e = new C8434b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudStorageProvider> apply(@NotNull List<? extends CloudStorageProvider> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$c */
    /* loaded from: classes8.dex */
    public static final class C8435c<T, R> implements Function {

        /* renamed from: e */
        public static final C8435c<T, R> f47935e = new C8435c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseCloudStorageProvider apply(@NotNull CloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return (BaseCloudStorageProvider) it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$d */
    /* loaded from: classes8.dex */
    public static final class C8436d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Map<String, AutoBackupModel> f47937f;

        /* renamed from: g */
        public final /* synthetic */ boolean f47938g;

        public C8436d(Map<String, AutoBackupModel> map, boolean z) {
            this.f47937f = map;
            this.f47938g = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseCloudStorageProvider apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AutoBackupAction.this.m37184J(it2, this.f47937f, this.f47938g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$e */
    /* loaded from: classes8.dex */
    public static final class C8437e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Map<String, AutoBackupModel> f47940f;

        /* renamed from: g */
        public final /* synthetic */ boolean f47941g;

        public C8437e(Map<String, AutoBackupModel> map, boolean z) {
            this.f47940f = map;
            this.f47941g = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull BaseCloudStorageProvider provider) {
            Intrinsics.checkNotNullParameter(provider, "provider");
            return AutoBackupAction.this.m37189O(provider, this.f47940f, this.f47941g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$f */
    /* loaded from: classes8.dex */
    public static final class C8438f<T, R> implements Function {

        /* renamed from: e */
        public static final C8438f<T, R> f47942e = new C8438f<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Debug.INSTANCE.m32048e(it2);
            return Boolean.FALSE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$g */
    /* loaded from: classes8.dex */
    public static final class C8439g<T> implements Consumer {
        public C8439g() {
        }

        /* renamed from: a */
        public final void m37205a(boolean z) {
            AutoBackupAction.this.autoBackupResult.setCloudBackupResult(z);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m37205a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$h */
    /* loaded from: classes8.dex */
    public static final class C8440h<T, R> implements Function {
        public C8440h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull AutoBackupContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(AutoBackupAction.this.m37190p());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$i */
    /* loaded from: classes8.dex */
    public static final class C8441i<T, R> implements Function {
        public C8441i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AutoBackupResult apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AutoBackupAction.this.autoBackupResult;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$j */
    /* loaded from: classes8.dex */
    public static final class C8442j<T, R> implements Function {
        public C8442j() {
        }

        @NotNull
        /* renamed from: a */
        public final AutoBackupAction m37208a(boolean z) {
            return AutoBackupAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37208a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$k */
    /* loaded from: classes8.dex */
    public static final class C8443k<T, R> implements Function {

        /* renamed from: e */
        public static final C8443k<T, R> f47947e = new C8443k<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AutoBackupProvider> apply(@NotNull AutoBackupAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureAutoBackupProviderAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$l */
    /* loaded from: classes8.dex */
    public static final class C8444l<T> implements Consumer {
        public C8444l() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AutoBackupProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AutoBackupAction.this.autoBackupProvider = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$m */
    /* loaded from: classes8.dex */
    public static final class C8445m<T, R> implements Function {

        /* renamed from: e */
        public static final C8445m<T, R> f47949e = new C8445m<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull AutoBackupProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNoteProviderAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$n */
    /* loaded from: classes8.dex */
    public static final class C8446n<T, R> implements Function {
        public C8446n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteModel apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SyncNoteModel loadNote = NoteModelProviderKt.loadNote(it2, AutoBackupAction.this.autoBackupContext.getDocumentId());
            Intrinsics.checkNotNull(loadNote);
            return loadNote;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$o */
    /* loaded from: classes8.dex */
    public static final class C8447o<T> implements Consumer {
        public C8447o() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AutoBackupAction.this.noteModel = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$p */
    /* loaded from: classes8.dex */
    public static final class C8448p<T, R> implements Function {
        public C8448p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AutoBackupAction.this.m37177C();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$q */
    /* loaded from: classes8.dex */
    public static final class C8449q<T, R> implements Function {
        public C8449q() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m37215a(boolean z) {
            return AutoBackupAction.this.m37193s(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37215a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$r */
    /* loaded from: classes8.dex */
    public static final class C8450r<T> implements Consumer {
        public C8450r() {
        }

        /* renamed from: a */
        public final void m37216a(boolean z) {
            AutoBackupAction.this.m37187M();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m37216a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$s */
    /* loaded from: classes8.dex */
    public static final class C8451s<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BackupContext f47955e;

        /* renamed from: f */
        public final /* synthetic */ AutoBackupAction f47956f;

        /* renamed from: g */
        public final /* synthetic */ AutoBackupModel f47957g;

        /* renamed from: h */
        public final /* synthetic */ List<AutoBackupModel> f47958h;

        /* renamed from: i */
        public final /* synthetic */ Ref.BooleanRef f47959i;

        public C8451s(BackupContext backupContext, AutoBackupAction autoBackupAction, AutoBackupModel autoBackupModel, List<AutoBackupModel> list, Ref.BooleanRef booleanRef) {
            this.f47955e = backupContext;
            this.f47956f = autoBackupAction;
            this.f47957g = autoBackupModel;
            this.f47958h = list;
            this.f47959i = booleanRef;
        }

        /* renamed from: a */
        public final void m37217a(@NotNull LocalBackupAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (this.f47955e.isError()) {
                this.f47956f.m37183I(this.f47957g);
            } else {
                this.f47956f.m37181G(this.f47958h, this.f47957g);
            }
            this.f47959i.element = !this.f47955e.isError();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37217a((LocalBackupAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$t */
    /* loaded from: classes8.dex */
    public static final class C8452t<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Ref.BooleanRef f47960e;

        /* renamed from: f */
        public final /* synthetic */ AutoBackupAction f47961f;

        /* renamed from: g */
        public final /* synthetic */ AutoBackupModel f47962g;

        public C8452t(Ref.BooleanRef booleanRef, AutoBackupAction autoBackupAction, AutoBackupModel autoBackupModel) {
            this.f47960e = booleanRef;
            this.f47961f = autoBackupAction;
            this.f47962g = autoBackupModel;
        }

        /* renamed from: a */
        public final void m37218a(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Debug.INSTANCE.m32048e(it2);
            this.f47960e.element = false;
            this.f47961f.m37183I(this.f47962g);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37218a((Throwable) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$u */
    /* loaded from: classes8.dex */
    public static final class C8453u<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Ref.BooleanRef f47964f;

        public C8453u(Ref.BooleanRef booleanRef) {
            this.f47964f = booleanRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AutoBackupAction.this.autoBackupResult.setLocalBackupResult(this.f47964f.element);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$v */
    /* loaded from: classes8.dex */
    public static final class C8454v<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Ref.BooleanRef f47965e;

        public C8454v(Ref.BooleanRef booleanRef) {
            this.f47965e = booleanRef;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(this.f47965e.element);
        }
    }

    @SourceDebugExtension({"SMAP\nAutoBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$prepareAutoBackupContext$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,437:1\n1#2:438\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$w */
    /* loaded from: classes8.dex */
    public static final class C8455w<T, R> implements Function {
        public C8455w() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AutoBackupContext apply(@NotNull List<? extends CloudStorageProvider> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AutoBackupContext autoBackupContext = AutoBackupAction.this.autoBackupContext;
            autoBackupContext.setCloudBackup(!it2.isEmpty());
            return autoBackupContext;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$x */
    /* loaded from: classes8.dex */
    public static final class C8456x<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ BaseCloudStorageProvider f47968f;

        /* renamed from: g */
        public final /* synthetic */ Map<String, AutoBackupModel> f47969g;

        /* renamed from: h */
        public final /* synthetic */ boolean f47970h;

        public C8456x(BaseCloudStorageProvider baseCloudStorageProvider, Map<String, AutoBackupModel> map, boolean z) {
            this.f47968f = baseCloudStorageProvider;
            this.f47969g = map;
            this.f47970h = z;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AutoBackupAction.this.m37182H(this.f47968f, this.f47969g, this.f47970h);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$y */
    /* loaded from: classes8.dex */
    public static final class C8457y<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BaseCloudStorageProvider f47972f;

        /* renamed from: g */
        public final /* synthetic */ Map<String, AutoBackupModel> f47973g;

        public C8457y(BaseCloudStorageProvider baseCloudStorageProvider, Map<String, AutoBackupModel> map) {
            this.f47972f = baseCloudStorageProvider;
            this.f47973g = map;
        }

        /* renamed from: a */
        public final void m37223a(@NotNull UploadBackupFileToCloudAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AutoBackupAction.this.m37180F(this.f47972f, this.f47973g);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37223a((UploadBackupFileToCloudAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.AutoBackupAction$z */
    /* loaded from: classes8.dex */
    public static final class C8458z<T, R> implements Function {

        /* renamed from: e */
        public static final C8458z<T, R> f47974e = new C8458z<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoBackupAction(@NotNull EditorBundle editorBundle, @NotNull AutoBackupContext autoBackupContext) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(autoBackupContext, "autoBackupContext");
        this.editorBundle = editorBundle;
        this.autoBackupContext = autoBackupContext;
        this.autoBackupResult = new AutoBackupResult(false, false, 3, null);
        this.noteBackupFilePath = "";
        this.noteCloudLocalPath = "";
    }

    /* renamed from: P */
    public static final void m37169P(AutoBackupAction this$0, BaseCloudStorageProvider provider) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(provider, "$provider");
        this$0.cleanExpiredDriverLocalFiles(provider);
    }

    /* renamed from: u */
    public static final void m37173u(AutoBackupAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m37178D();
    }

    /* renamed from: y */
    public static final void m37174y(AutoBackupAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m37196w();
    }

    /* renamed from: A */
    public final CBQueryArgs m37175A() {
        List<? extends Object> listOf;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 1));
        cBQueryArgs.andWith(couchUtils.equalExpression("type", 1));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 4});
        cBQueryArgs.andWith(couchUtils.nestedInExpression(listOf, CouchFieldKey.KEY_ASSOCIATION, CouchFieldKey.KEY_ASSOCIATION_TYPE));
        cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, this.autoBackupContext.getDocumentId()));
        return cBQueryArgs;
    }

    /* renamed from: B */
    public final List<AutoBackupModel> m37176B() {
        CBQueryArgs m37198z = m37198z(0);
        AutoBackupProvider autoBackupProvider = this.autoBackupProvider;
        AutoBackupProvider autoBackupProvider2 = null;
        if (autoBackupProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupProvider");
            autoBackupProvider = null;
        }
        List<AutoBackupModel> loadAutoBackupList = autoBackupProvider.loadAutoBackupList(m37198z);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (AutoBackupModel autoBackupModel : loadAutoBackupList) {
            if (new File(autoBackupModel.getLocalFilePath()).exists() && autoBackupModel.getStatus() == 0) {
                arrayList2.add(autoBackupModel);
            } else {
                Debug.INSTANCE.m32035d(AutoBackupAction.class, "path not exist: " + autoBackupModel.getLocalFilePath(), new Object[0]);
                arrayList.add(autoBackupModel);
            }
        }
        if (!arrayList.isEmpty()) {
            AutoBackupProvider autoBackupProvider3 = this.autoBackupProvider;
            if (autoBackupProvider3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("autoBackupProvider");
            } else {
                autoBackupProvider2 = autoBackupProvider3;
            }
            autoBackupProvider2.deleteAutoBackupList(arrayList);
        }
        return arrayList2;
    }

    /* renamed from: C */
    public final Observable<Boolean> m37177C() {
        boolean z;
        if (!this.autoBackupContext.getAutoBackupModels().isEmpty()) {
            List<AutoBackupModel> autoBackupModels = this.autoBackupContext.getAutoBackupModels();
            if (!(autoBackupModels instanceof Collection) || !autoBackupModels.isEmpty()) {
                Iterator<T> it2 = autoBackupModels.iterator();
                while (it2.hasNext()) {
                    if (!new File(((AutoBackupModel) it2.next()).getLocalFilePath()).exists()) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            if (z) {
                Observable<Boolean> just = Observable.just(Boolean.TRUE);
                Intrinsics.checkNotNullExpressionValue(just, "just(...)");
                return just;
            }
        }
        List<AutoBackupModel> m37176B = m37176B();
        BackupFilePaths backupFilePaths = BackupFilePaths.INSTANCE;
        SyncNoteModel syncNoteModel = this.noteModel;
        if (syncNoteModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteModel");
            syncNoteModel = null;
        }
        this.noteBackupFilePath = backupFilePaths.localNoteBackupFilePath(syncNoteModel);
        CBQueryArgs m37175A = m37175A();
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        m37195v("localBackup noteFilePath:" + this.noteBackupFilePath);
        AutoBackupModel m37185K = m37185K(this.noteBackupFilePath);
        BackupContext backupContext = new BackupContext(m37175A, this.noteBackupFilePath);
        backupContext.setUpdateLastTime(this.autoBackupContext.getLocalBackup());
        this.autoBackupContext.setBackupContext(backupContext);
        Observable<Boolean> map = new LocalBackupAction(getDocManagerBundle(), backupContext).build().takeLast(1).observeOn(getBackupProviderObserveOn()).map(new C8451s(backupContext, this, m37185K, m37176B, booleanRef)).onErrorReturn(new C8452t(booleanRef, this, m37185K)).doOnNext(new C8453u(booleanRef)).map(new C8454v(booleanRef));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: D */
    public final void m37178D() {
        LogUtils.dTag(f47924n, "do not enable backup or filter by cloud network condition");
    }

    /* renamed from: E */
    public final String m37179E() {
        FileUtils fileUtils = FileUtils.INSTANCE;
        SyncNoteModel syncNoteModel = this.noteModel;
        if (syncNoteModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteModel");
            syncNoteModel = null;
        }
        String title = syncNoteModel.getTitle();
        if (title == null) {
            title = "";
        }
        return fileUtils.getValidFileName(title, CloudStorageConstants.YNOTE_TITLE_SUFFIX);
    }

    /* renamed from: F */
    public final void m37180F(CloudStorageProvider provider, Map<String, AutoBackupModel> backupModelMap) {
        List<AutoBackupModel> listOf;
        m37188N();
        AutoBackupModel autoBackupModel = backupModelMap.get(provider.getProviderType().getTitle());
        if (autoBackupModel == null) {
            return;
        }
        AutoBackupProvider autoBackupProvider = this.autoBackupProvider;
        if (autoBackupProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupProvider");
            autoBackupProvider = null;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(autoBackupModel);
        autoBackupProvider.deleteAutoBackupList(listOf);
        m37195v("onCompleteCloudAutoBackup");
    }

    /* renamed from: G */
    public final AutoBackupAction m37181G(List<AutoBackupModel> localBackupModels, AutoBackupModel autoBackupModel) {
        if (autoBackupModel == null) {
            return this;
        }
        autoBackupModel.setStatus(0);
        AutoBackupProvider autoBackupProvider = this.autoBackupProvider;
        if (autoBackupProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupProvider");
            autoBackupProvider = null;
        }
        autoBackupProvider.saveAutoBackup(autoBackupModel);
        m37192r(localBackupModels);
        m37195v("onCompleteLocalAutoBackup:" + this.noteBackupFilePath);
        return this;
    }

    /* renamed from: H */
    public final void m37182H(CloudStorageProvider provider, Map<String, AutoBackupModel> backupModelMap, boolean localBackupSuccess) {
        AutoBackupModel autoBackupModel = backupModelMap.get(provider.getProviderType().getTitle());
        if (autoBackupModel == null) {
            return;
        }
        autoBackupModel.setStatus(localBackupSuccess ? 2 : 1);
        AutoBackupProvider autoBackupProvider = this.autoBackupProvider;
        if (autoBackupProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupProvider");
            autoBackupProvider = null;
        }
        autoBackupProvider.saveAutoBackup(autoBackupModel);
        m37195v("onErrorCloudAutoBackup");
    }

    /* renamed from: I */
    public final boolean m37183I(AutoBackupModel autoBackupModel) {
        if (autoBackupModel == null) {
            return false;
        }
        autoBackupModel.setStatus(3);
        AutoBackupProvider autoBackupProvider = this.autoBackupProvider;
        if (autoBackupProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupProvider");
            autoBackupProvider = null;
        }
        autoBackupProvider.saveAutoBackup(autoBackupModel);
        m37195v("onErrorLocalAutoBackup:" + this.noteBackupFilePath);
        return false;
    }

    /* renamed from: J */
    public final BaseCloudStorageProvider m37184J(BaseCloudStorageProvider provider, Map<String, AutoBackupModel> backupModelMap, boolean localBackupSuccess) {
        Object obj;
        String title = provider.getProviderType().getTitle();
        AutoBackupProvider autoBackupProvider = this.autoBackupProvider;
        AutoBackupProvider autoBackupProvider2 = null;
        if (autoBackupProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupProvider");
            autoBackupProvider = null;
        }
        CBQueryArgs m37198z = m37198z(1);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        autoBackupProvider.deleteAutoBackupList(m37198z.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PROVIDER_NAME, title)).andWith(couchUtils.equalExpression("status", 0)));
        Iterator<T> it2 = this.autoBackupContext.getAutoBackupModels().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((AutoBackupModel) obj).getProviderName(), title)) {
                break;
            }
        }
        AutoBackupModel autoBackupModel = (AutoBackupModel) obj;
        if (autoBackupModel == null) {
            autoBackupModel = new AutoBackupModel();
            autoBackupModel.setProviderName(title);
            autoBackupModel.setDocumentId(this.autoBackupContext.getDocumentId());
            autoBackupModel.setType(1);
            autoBackupModel.setStatus(localBackupSuccess ? 2 : 1);
        }
        if (!new File(autoBackupModel.getLocalFilePath()).exists() && FileUtils.INSTANCE.fileExist(this.noteBackupFilePath)) {
            String absolutePath = m37194t(provider).getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            autoBackupModel.setLocalFilePath(absolutePath);
        }
        AutoBackupProvider autoBackupProvider3 = this.autoBackupProvider;
        if (autoBackupProvider3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupProvider");
        } else {
            autoBackupProvider2 = autoBackupProvider3;
        }
        autoBackupProvider2.saveAutoBackup(autoBackupModel);
        backupModelMap.put(title, autoBackupModel);
        m37195v("onPrepareCloudAutoBackup: " + JSONUtils.INSTANCE.toJson(autoBackupModel));
        return provider;
    }

    /* renamed from: K */
    public final AutoBackupModel m37185K(String noteBackupFilePath) {
        AutoBackupProvider autoBackupProvider = null;
        if (!this.autoBackupContext.getLocalBackup()) {
            return null;
        }
        AutoBackupModel autoBackupModel = new AutoBackupModel();
        autoBackupModel.setDocumentId(this.autoBackupContext.getDocumentId());
        autoBackupModel.setLocalFilePath(noteBackupFilePath);
        autoBackupModel.setType(0);
        autoBackupModel.setStatus(1);
        AutoBackupProvider autoBackupProvider2 = this.autoBackupProvider;
        if (autoBackupProvider2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupProvider");
        } else {
            autoBackupProvider = autoBackupProvider2;
        }
        autoBackupProvider.saveAutoBackup(autoBackupModel);
        return autoBackupModel;
    }

    /* renamed from: L */
    public final Observable<AutoBackupContext> m37186L() {
        if (this.autoBackupContext.getCloudBackup()) {
            Observable map = CloudStorageManager.INSTANCE.getOurInstance().getAuthProviders().map(new C8455w());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable<AutoBackupContext> just = Observable.just(this.autoBackupContext);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: M */
    public final void m37187M() {
        if (this.debugAutoBackup) {
            AutoBackupProvider autoBackupProvider = this.autoBackupProvider;
            if (autoBackupProvider == null) {
                Intrinsics.throwUninitializedPropertyAccessException("autoBackupProvider");
                autoBackupProvider = null;
            }
            List<AutoBackupModel> loadAutoBackupList = autoBackupProvider.loadAutoBackupList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("documentId", this.autoBackupContext.getDocumentId())));
            m37195v("printAutoModels count: " + loadAutoBackupList.size());
            Iterator<T> it2 = loadAutoBackupList.iterator();
            while (it2.hasNext()) {
                m37195v("printAutoModels: " + JSONUtils.INSTANCE.toJson((AutoBackupModel) it2.next()));
            }
        }
    }

    /* renamed from: N */
    public final void m37188N() {
        String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HHMMSS().format(new Date());
        StringOption cloudBackupLastTime = MMKVBackup.INSTANCE.getCloudBackupLastTime();
        Intrinsics.checkNotNull(format);
        cloudBackupLastTime.put(format);
    }

    /* renamed from: O */
    public final Observable<Boolean> m37189O(final BaseCloudStorageProvider provider, Map<String, AutoBackupModel> cloudAutoBackupModelMap, boolean localBackupSuccess) {
        if (!localBackupSuccess) {
            m37182H(provider, cloudAutoBackupModelMap, localBackupSuccess);
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        AutoBackupModel autoBackupModel = cloudAutoBackupModelMap.get(provider.getProviderType().getTitle());
        EditorBundle editorBundle = this.editorBundle;
        BackupContext backupContext = new BackupContext(m37175A(), null, 2, null);
        backupContext.setAutoBackup(true);
        backupContext.setDocumentId(this.autoBackupContext.getDocumentId());
        Unit unit = Unit.INSTANCE;
        UploadBackupFileToCloudAction uploadBackupFileToCloudAction = new UploadBackupFileToCloudAction(provider, editorBundle, backupContext);
        Intrinsics.checkNotNull(autoBackupModel);
        uploadBackupFileToCloudAction.setNoteFile(new File(autoBackupModel.getLocalFilePath()));
        uploadBackupFileToCloudAction.setNoteFileName(m37179E());
        Observable<Boolean> doFinally = uploadBackupFileToCloudAction.build().observeOn(getBackupProviderObserveOn()).doOnError(new C8456x(provider, cloudAutoBackupModelMap, localBackupSuccess)).map(new C8457y(provider, cloudAutoBackupModelMap)).map(C8458z.f47974e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.fj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AutoBackupAction.m37169P(AutoBackupAction.this, provider);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AutoBackupResult> create() {
        Observable<R> map = m37186L().map(new C8440h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<AutoBackupResult> observeOn = RxjavaKt.flatMapIfTrue(RxjavaKt.doOnNextIfFalse(map, new Consumer() { // from class: com.sunia.HTREnginev2.ej
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                AutoBackupAction.m37173u(AutoBackupAction.this, ((Boolean) obj).booleanValue());
            }
        }), m37197x()).map(new C8441i()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: p */
    public final boolean m37190p() {
        return this.autoBackupContext.onlyCloudBackup() ? m37191q() : this.autoBackupContext.backupEnabled();
    }

    /* renamed from: q */
    public final boolean m37191q() {
        return MMKVBackup.INSTANCE.getCloudBackupWifiOnlyOption().get() ? NetworkUtils.INSTANCE.isWifiConnected(ResManager.INSTANCE.getAppContext()) : NetworkUtils.INSTANCE.isNetworkConnected(ResManager.INSTANCE.getAppContext());
    }

    /* renamed from: r */
    public final void m37192r(List<AutoBackupModel> models) {
        Object lastOrNull;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) models);
        AutoBackupModel autoBackupModel = (AutoBackupModel) lastOrNull;
        if (autoBackupModel == null) {
            return;
        }
        if (System.currentTimeMillis() - autoBackupModel.getUpdatedAt() < 86400000) {
            CollectionsKt__MutableCollectionsKt.removeLast(models);
        }
        AutoBackupProvider autoBackupProvider = this.autoBackupProvider;
        if (autoBackupProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupProvider");
            autoBackupProvider = null;
        }
        autoBackupProvider.deleteAutoBackupList(models);
        for (AutoBackupModel autoBackupModel2 : models) {
            onyx.org.apache.commons.io.FileUtils.deleteQuietly(new File(autoBackupModel2.getLocalFilePath()));
            m37195v("checkRemoveLastAutoBackupModels removeModel:" + autoBackupModel2.getLocalFilePath());
        }
    }

    /* renamed from: s */
    public final Observable<Boolean> m37193s(boolean localBackupSuccess) {
        if (!this.autoBackupContext.getCloudBackup()) {
            this.autoBackupResult.setCloudBackupResult(true);
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (m37191q()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Observable<Boolean> doOnNext = CloudStorageManager.INSTANCE.getOurInstance().getAuthProviders().doOnNext(C8433a.f47933e).flatMap(C8434b.f47934e).observeOn(getBackupProviderObserveOn()).map(C8435c.f47935e).map(new C8436d(linkedHashMap, localBackupSuccess)).observeOn(getBackupIoObserveOn()).concatMap(new C8437e(linkedHashMap, localBackupSuccess)).takeLast(1).onErrorReturn(C8438f.f47942e).doOnNext(new C8439g());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        this.autoBackupResult.setCloudBackupResult(false);
        Observable<Boolean> just2 = Observable.just(Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    /* renamed from: t */
    public final File m37194t(BaseCloudStorageProvider baseCloudStorageProvider) {
        Provider providerType = baseCloudStorageProvider.getProviderType();
        String accountId = baseCloudStorageProvider.getAccountId();
        providerType.ensureCreateRootPath();
        StringBuilder sb = new StringBuilder();
        sb.append(providerType.getProviderRootPath());
        String str = File.separator;
        sb.append(str);
        sb.append(accountId);
        sb.append(str);
        sb.append(BackupConstant.BACKUP_FOLDER_NAME);
        String sb2 = sb.toString();
        String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HH_MM_SS().format(new Date());
        FileUtils fileUtils = FileUtils.INSTANCE;
        StringBuilder sb3 = new StringBuilder();
        SyncNoteModel syncNoteModel = this.noteModel;
        if (syncNoteModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteModel");
            syncNoteModel = null;
        }
        sb3.append(syncNoteModel.getTitle());
        sb3.append(NameUtil.USCORE);
        sb3.append(format);
        File file = new File(sb2, fileUtils.getValidFileName(sb3.toString(), CloudStorageConstants.YNOTE_TITLE_SUFFIX));
        onyx.org.apache.commons.io.FileUtils.copyFile(new File(this.noteBackupFilePath), file);
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        this.noteCloudLocalPath = absolutePath;
        return file;
    }

    /* renamed from: v */
    public final void m37195v(String msg) {
        if (this.debugAutoBackup) {
            Debug.INSTANCE.m32035d(AutoBackupAction.class, msg, new Object[0]);
        }
    }

    /* renamed from: w */
    public final void m37196w() {
        File file = new File(this.noteBackupFilePath);
        if (!this.autoBackupContext.getLocalBackup() && file.exists()) {
            onyx.org.apache.commons.io.FileUtils.deleteQuietly(file);
            m37195v("deleteLocalBackupFile: " + file.getAbsolutePath());
        }
        onyx.org.apache.commons.io.FileUtils.deleteQuietly(new File(this.noteCloudLocalPath));
    }

    /* renamed from: x */
    public final Observable<AutoBackupAction> m37197x() {
        Observable<AutoBackupAction> map = Observable.just(this).flatMap(C8443k.f47947e).doOnNext(new C8444l()).flatMap(C8445m.f47949e).observeOn(getNoteObserveOn()).map(new C8446n()).doOnNext(new C8447o()).observeOn(getBackupIoObserveOn()).flatMap(new C8448p()).observeOn(getBackupProviderObserveOn()).flatMap(new C8449q()).observeOn(getBackupProviderObserveOn()).doOnNext(new C8450r()).observeOn(getBackupIoObserveOn()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.dj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AutoBackupAction.m37174y(AutoBackupAction.this);
            }
        }).map(new C8442j());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: z */
    public final CBQueryArgs m37198z(int type) {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("type", Integer.valueOf(type)));
        cBQueryArgs.andWith(couchUtils.equalExpression("documentId", this.autoBackupContext.getDocumentId()));
        cBQueryArgs.setVarargOrdering(couchUtils.getOrdering("updatedAt", false));
        return cBQueryArgs;
    }
}

package com.onyx.galaxy.note.category.action.p127import;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.IntentUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.account.utils.QuotaManager;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.filepicker.DocumentType;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentUrisEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageUrisEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.DelayShowLoadingAction;
import com.onyx.galaxy.note.category.action.p127import.ParseIntentAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnSaveNoteEvent;
import com.onyx.galaxy.note.category.view.dialog.ImportSuccessDialog;
import com.onyx.galaxy.note.category.view.dialog.SelectImportLocationDialog;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.v6l;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.collections4.CollectionUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sun.awt.AppContext;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0019\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010/\u001a\u00020,\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\bC\u0010DJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\u0014\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002J\u0014\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002J\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u000bH\u0002J\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00000\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u000bH\u0002J\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00000\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u000bH\u0002J\u0016\u0010\u0011\u001a\u00020\u00022\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0014\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0002J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0004H\u0002J\u001a\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00042\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0004H\u0002J\u0014\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002J\u0018\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\u0010\u0010\"\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\u0010\u0010#\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\u0010\u0010$\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\u000e\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\u001a\u0010)\u001a\u00020\u00022\b\u0010'\u001a\u0004\u0018\u00010&2\b\u0010(\u001a\u0004\u0018\u00010&J\u000e\u0010*\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001dJ\b\u0010+\u001a\u00020\u001aH\u0016R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\"\u0010\u001e\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u0016\u00108\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010;\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b9\u0010:R\u001e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010@\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010B\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010?¨\u0006E"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "H", "Lio/reactivex/rxjava3/core/Observable;", "G", "", "Landroid/net/Uri;", "q", "r", C4921e.f26528e, "", "uriList", "E", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "F", "uriParseList", "w", "u", "p", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "t", "noteFileUris", "J", "uri", "L", "", "I", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Landroid/content/Intent;", v6l.f87196g, "v", "A", "x", "y", "z", "B", BaiduYunConstant.CREATE, "", "folderId", CouchFieldKey.KEY_TAG_ID, "setDefaultSelection", "validIntent", "isDisposed", "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "activityContext", C6999h.f39688c, "Landroid/content/Intent;", "getIntent", "()Landroid/content/Intent;", "setIntent", "(Landroid/content/Intent;)V", "i", Constants.HASIDCALL_INDEX_SIG, AppContext.DISPOSED_PROPERTY_NAME, "j", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "importSelectedContext", C4921e.f26537n, "Ljava/util/List;", "l", Constants.STRING_SIG, "defaultFolderId", "m", "defaultTagId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/content/Intent;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,401:1\n766#2:402\n857#2,2:403\n766#2:405\n857#2,2:406\n766#2:408\n857#2,2:409\n1603#2,9:411\n1855#2:420\n1856#2:422\n1612#2:423\n1#3:421\n1#3:424\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction\n*L\n152#1:402\n152#1:403,2\n182#1:405\n182#1:406,2\n194#1:408\n194#1:409,2\n349#1:411,9\n349#1:420\n349#1:422\n349#1:423\n349#1:421\n*E\n"})
/* loaded from: classes9.dex */
public final class ParseIntentAction extends RxBaseNoteAppAction<ParseIntentAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Intent intent;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean disposed;

    /* renamed from: j, reason: from kotlin metadata */
    public ImportSelectedContext importSelectedContext;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public List<Uri> uriList;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public String defaultFolderId;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public String defaultTagId;

    @SourceDebugExtension({"SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$checkCopyZipStoreSpace$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,401:1\n1855#2,2:402\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$checkCopyZipStoreSpace$1\n*L\n138#1:402,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$a */
    /* loaded from: classes9.dex */
    public static final class C11084a<T, R> implements Function {
        public C11084a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Uri>> apply(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            long usableSpace = ResManager.INSTANCE.getAppContext().getCacheDir().getUsableSpace();
            List list = ParseIntentAction.this.uriList;
            long j = 0;
            if (list != null) {
                Iterator<T> it3 = list.iterator();
                while (it3.hasNext()) {
                    j += UriKt.getFileSize((Uri) it3.next(), ResManager.INSTANCE.getAppContext());
                }
            }
            if (j * 2 <= usableSpace) {
                return Observable.just(CollectionKt.ensureList(ParseIntentAction.this.uriList));
            }
            ToastUtils.show$default(ToastUtils.INSTANCE, C7373R.string.space_not_enough_error, false, 2, (Object) null);
            return Observable.empty();
        }
    }

    @SourceDebugExtension({"SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseOtherFileUriList$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,401:1\n1549#2:402\n1620#2,3:403\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseOtherFileUriList$2\n*L\n200#1:402\n200#1:403,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$a0 */
    /* loaded from: classes9.dex */
    public static final class C11085a0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Uri> f54193e;

        /* JADX WARN: Multi-variable type inference failed */
        public C11085a0(List<? extends Uri> list) {
            this.f54193e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Pair<Uri, String>> apply(@NotNull List<? extends Uri> it2) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(it2, "it");
            List<Uri> list = this.f54193e;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (Uri uri : list) {
                arrayList.add(new Pair(uri, ResManager.INSTANCE.getAppContext().getContentResolver().getType(uri)));
            }
            return arrayList;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$b */
    /* loaded from: classes9.dex */
    public static final class C11086b<T, R> implements Function {
        public C11086b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Uri>> apply(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this.m42774r();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$b0 */
    /* loaded from: classes9.dex */
    public static final class C11087b0<T> implements Consumer {
        public C11087b0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Pair<? extends Uri, String>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocCollectionBundle docCollectionBundle = DocCollectionBundle.INSTANCE;
            ImportSelectedContext importSelectedContext = ParseIntentAction.this.importSelectedContext;
            if (importSelectedContext == null) {
                Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
                importSelectedContext = null;
            }
            docCollectionBundle.postEvent(new ImportDocumentUrisEvent(it2, importSelectedContext));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$c */
    /* loaded from: classes9.dex */
    public static final class C11088c<T, R> implements Function {

        /* renamed from: e */
        public static final C11088c<T, R> f54196e = new C11088c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Uri>> apply(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ResManager resManager = ResManager.INSTANCE;
            int integer = resManager.getInteger(C10651R.integer.image_picker_max_count);
            if (it2.size() <= integer) {
                return Observable.just(it2);
            }
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) resManager.getString(C7453R.string.error_over_count, Integer.valueOf(integer)), false, 2, (Object) null);
            return Observable.empty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$c0 */
    /* loaded from: classes9.dex */
    public static final class C11089c0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Uri> f54197e;

        /* renamed from: f */
        public final /* synthetic */ List<Uri> f54198f;

        /* JADX WARN: Multi-variable type inference failed */
        public C11089c0(List<Uri> list, List<? extends Uri> list2) {
            this.f54197e = list;
            this.f54198f = list2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Pair<? extends Uri, String>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f54197e.removeAll(this.f54198f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$d */
    /* loaded from: classes9.dex */
    public static final class C11090d<T, R> implements Function {
        public C11090d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ParseIntentAction apply(@NotNull ParseIntentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$d0 */
    /* loaded from: classes9.dex */
    public static final class C11091d0<T, R> implements Function {
        public C11091d0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ParseIntentAction apply(@NotNull List<? extends Pair<? extends Uri, String>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$e */
    /* loaded from: classes9.dex */
    public static final class C11092e<T> implements Consumer {
        public C11092e() {
        }

        /* renamed from: a */
        public final void m42790a(boolean z) {
            ParseIntentAction.this.disposed = false;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42790a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$e0 */
    /* loaded from: classes9.dex */
    public static final class C11093e0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Uri> f54203f;

        public C11093e0(List<Uri> list) {
            this.f54203f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ParseIntentAction> apply(@NotNull List<Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this.m42764E(this.f54203f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$f */
    /* loaded from: classes9.dex */
    public static final class C11094f<T, R> implements Function {
        public C11094f() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends List<Uri>> m42792a(boolean z) {
            return ParseIntentAction.this.m42763D();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42792a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$f0 */
    /* loaded from: classes9.dex */
    public static final class C11095f0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Uri> f54206f;

        public C11095f0(List<Uri> list) {
            this.f54206f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ParseIntentAction> apply(@NotNull ParseIntentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this.m42762C(this.f54206f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$g */
    /* loaded from: classes9.dex */
    public static final class C11096g<T, R> implements Function {
        public C11096g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Uri>> apply(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this.m42773q();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$g0 */
    /* loaded from: classes9.dex */
    public static final class C11097g0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Uri> f54209f;

        public C11097g0(List<Uri> list) {
            this.f54209f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ParseIntentAction> apply(@NotNull ParseIntentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this.m42765F(this.f54209f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$h */
    /* loaded from: classes9.dex */
    public static final class C11098h<T, R> implements Function {
        public C11098h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Uri>> apply(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this.m42776u();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$h0 */
    /* loaded from: classes9.dex */
    public static final class C11099h0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<Uri> f54212f;

        public C11099h0(List<Uri> list) {
            this.f54212f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ParseIntentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ParseIntentAction.this.m42778w(this.f54212f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$i */
    /* loaded from: classes9.dex */
    public static final class C11100i<T, R> implements Function {
        public C11100i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ImportSelectedContext> apply(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this.m42775t();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$i0 */
    /* loaded from: classes9.dex */
    public static final class C11101i0<T, R> implements Function {
        public C11101i0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ParseIntentAction apply(@NotNull ParseIntentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$j */
    /* loaded from: classes9.dex */
    public static final class C11102j<T, R> implements Function {
        public C11102j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull ImportSelectedContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this.m42772p();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$j0 */
    /* loaded from: classes9.dex */
    public static final class C11103j0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Ref.ObjectRef<DelayShowLoadingAction> f54217f;

        public C11103j0(Ref.ObjectRef<DelayShowLoadingAction> objectRef) {
            this.f54217f = objectRef;
        }

        /* JADX WARN: Type inference failed for: r4v1, types: [T, com.onyx.android.sdk.base.rx.RxBaseAction, com.onyx.galaxy.note.category.action.DelayShowLoadingAction] */
        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DelayShowLoadingAction> apply(@NotNull ParseIntentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ?? r4 = (T) new DelayShowLoadingAction(ParseIntentAction.this.activityContext, 1500L);
            this.f54217f.element = r4;
            return r4.build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$k */
    /* loaded from: classes9.dex */
    public static final class C11104k<T, R> implements Function {
        public C11104k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this.m42768I();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$k0 */
    /* loaded from: classes9.dex */
    public static final class C11105k0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Uri> f54219e;

        /* JADX WARN: Multi-variable type inference failed */
        public C11105k0(List<? extends Uri> list) {
            this.f54219e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Uri> apply(@NotNull DelayShowLoadingAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(this.f54219e);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$l */
    /* loaded from: classes9.dex */
    public static final class C11106l<T, R> implements Function {
        public C11106l() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends List<Uri>> m42804a(boolean z) {
            return ParseIntentAction.this.m42771o();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42804a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$l0 */
    /* loaded from: classes9.dex */
    public static final class C11107l0<T, R> implements Function {
        public C11107l0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull Uri uri) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            return ParseIntentAction.this.m42770L(uri);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$m */
    /* loaded from: classes9.dex */
    public static final class C11108m<T, R> implements Function {
        public C11108m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ParseIntentAction> apply(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this.m42766G();
        }
    }

    @SourceDebugExtension({"SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$createImportContext$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,401:1\n766#2:402\n857#2,2:403\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$createImportContext$2\n*L\n261#1:402\n261#1:403,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$n */
    /* loaded from: classes9.dex */
    public static final class C11109n<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Uri> f54223e;

        /* renamed from: f */
        public final /* synthetic */ ParseIntentAction f54224f;

        public C11109n(List<Uri> list, ParseIntentAction parseIntentAction) {
            this.f54223e = list;
            this.f54224f = parseIntentAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Uri> apply(@NotNull ImportSelectedContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            List<Uri> list = this.f54223e;
            ParseIntentAction parseIntentAction = this.f54224f;
            ArrayList arrayList = new ArrayList();
            for (T t : list) {
                if (parseIntentAction.m42761B((Uri) t)) {
                    arrayList.add(t);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$o */
    /* loaded from: classes9.dex */
    public static final class C11110o<T, R> implements Function {
        public C11110o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportSelectedContext apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportSelectedContext importSelectedContext = ParseIntentAction.this.importSelectedContext;
            if (importSelectedContext != null) {
                return importSelectedContext;
            }
            Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
            return null;
        }
    }

    @SourceDebugExtension({"SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$filterUnSupportFormat$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,401:1\n766#2:402\n857#2,2:403\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$filterUnSupportFormat$1\n*L\n224#1:402\n224#1:403,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$p */
    /* loaded from: classes9.dex */
    public static final class C11111p<T, R> implements Function {
        public C11111p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Uri> apply(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ParseIntentAction parseIntentAction = ParseIntentAction.this;
            ArrayList arrayList = new ArrayList();
            for (T t : it2) {
                if (parseIntentAction.m42780y((Uri) t)) {
                    arrayList.add(t);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$q */
    /* loaded from: classes9.dex */
    public static final class C11114q<T, R> implements Function {

        /* renamed from: e */
        public static final C11114q<T, R> f54231e = new C11114q<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Uri>> apply(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (!CollectionKt.isNullOrEmpty(it2)) {
                return Observable.just(it2);
            }
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.open_file_not_supported_format, false, 2, (Object) null);
            return Observable.empty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$r */
    /* loaded from: classes9.dex */
    public static final class C11115r<T> implements Consumer {
        public C11115r() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Uri> it2) {
            List mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            ParseIntentAction parseIntentAction = ParseIntentAction.this;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) it2);
            parseIntentAction.uriList = mutableList;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$s */
    /* loaded from: classes9.dex */
    public static final class C11116s<T> implements Consumer {
        public C11116s() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportSelectedContext importSelectedContext = ParseIntentAction.this.importSelectedContext;
            if (importSelectedContext == null) {
                Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
                importSelectedContext = null;
            }
            importSelectedContext.addTaskInfo(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$t */
    /* loaded from: classes9.dex */
    public static final class C11117t<T> implements Consumer {
        public C11117t() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocCollectionBundle docCollectionBundle = DocCollectionBundle.INSTANCE;
            ImportSelectedContext importSelectedContext = ParseIntentAction.this.importSelectedContext;
            if (importSelectedContext == null) {
                Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
                importSelectedContext = null;
            }
            docCollectionBundle.postEvent(new ImportImageUrisEvent(it2, importSelectedContext));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$u */
    /* loaded from: classes9.dex */
    public static final class C11118u<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Uri> f54235e;

        /* renamed from: f */
        public final /* synthetic */ List<Uri> f54236f;

        /* JADX WARN: Multi-variable type inference failed */
        public C11118u(List<Uri> list, List<? extends Uri> list2) {
            this.f54235e = list;
            this.f54236f = list2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f54235e.removeAll(this.f54236f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$v */
    /* loaded from: classes9.dex */
    public static final class C11119v<T, R> implements Function {
        public C11119v() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ParseIntentAction apply(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this;
        }
    }

    @SourceDebugExtension({"SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,401:1\n2634#2:402\n1#3:403\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$1\n*L\n157#1:402\n157#1:403\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$w */
    /* loaded from: classes9.dex */
    public static final class C11120w<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Uri> f54238e;

        /* renamed from: f */
        public final /* synthetic */ ParseIntentAction f54239f;

        /* JADX WARN: Multi-variable type inference failed */
        public C11120w(List<? extends Uri> list, ParseIntentAction parseIntentAction) {
            this.f54238e = list;
            this.f54239f = parseIntentAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            List<Uri> list = this.f54238e;
            ParseIntentAction parseIntentAction = this.f54239f;
            for (Uri uri : list) {
                ImportSelectedContext importSelectedContext = parseIntentAction.importSelectedContext;
                if (importSelectedContext == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
                    importSelectedContext = null;
                }
                importSelectedContext.addTaskInfo(CollectionKt.asList(uri));
            }
        }
    }

    @SourceDebugExtension({"SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$3\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,401:1\n563#2:402\n1#3:403\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$3\n*L\n169#1:402\n169#1:403\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$x */
    /* loaded from: classes9.dex */
    public static final class C11121x<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Uri> f54240e;

        /* renamed from: f */
        public final /* synthetic */ ParseIntentAction f54241f;

        public C11121x(List<Uri> list, ParseIntentAction parseIntentAction) {
            this.f54240e = list;
            this.f54241f = parseIntentAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Map<Uri, List<SyncNoteModel>> it2) {
            List mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            List<Uri> list = this.f54240e;
            ParseIntentAction parseIntentAction = this.f54241f;
            for (Map.Entry<Uri, List<SyncNoteModel>> entry : it2.entrySet()) {
                if (CollectionKt.isNonBlank(entry.getValue())) {
                    DocCollectionBundle docCollectionBundle = DocCollectionBundle.INSTANCE;
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) entry.getValue());
                    docCollectionBundle.postEvent(new OnSaveNoteEvent(mutableList));
                    list.remove(entry.getKey());
                } else {
                    ImportSelectedContext importSelectedContext = parseIntentAction.importSelectedContext;
                    if (importSelectedContext == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
                        importSelectedContext = null;
                    }
                    importSelectedContext.removeTaskInfo(CollectionKt.asList(entry.getKey()));
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$y */
    /* loaded from: classes9.dex */
    public static final class C11122y<T, R> implements Function {
        public C11122y() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ParseIntentAction apply(@NotNull Map<Uri, List<SyncNoteModel>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ParseIntentAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$z */
    /* loaded from: classes9.dex */
    public static final class C11123z<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<Uri> f54244f;

        /* JADX WARN: Multi-variable type inference failed */
        public C11123z(List<? extends Uri> list) {
            this.f54244f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportSelectedContext importSelectedContext = ParseIntentAction.this.importSelectedContext;
            if (importSelectedContext == null) {
                Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
                importSelectedContext = null;
            }
            importSelectedContext.addTaskInfo(this.f54244f);
        }
    }

    public ParseIntentAction(@NotNull Context activityContext, @NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(intent, "intent");
        this.activityContext = activityContext;
        this.intent = intent;
        setActivityContext(activityContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: K */
    public static final void m42754K(Ref.ObjectRef action) {
        Intrinsics.checkNotNullParameter(action, "$action");
        DelayShowLoadingAction delayShowLoadingAction = (DelayShowLoadingAction) action.element;
        if (delayShowLoadingAction != null) {
            delayShowLoadingAction.dismiss();
        }
    }

    /* renamed from: M */
    public static final Unit m42755M(Uri uri, ParseIntentAction this$0) {
        boolean endsWith;
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(uri, "$uri");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InputStream openInputStream = ResManager.INSTANCE.getAppContext().getContentResolver().openInputStream(uri);
        if (openInputStream != null) {
            try {
                ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(openInputStream));
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry.isDirectory()) {
                        String name = nextEntry.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, SyncConstant.EXPORT_USER_DATA, false, 2, null);
                        if (!startsWith$default) {
                            zipInputStream.closeEntry();
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(zipInputStream, null);
                            CloseableKt.closeFinally(openInputStream, null);
                        }
                    }
                    int i = 0;
                    while (nextEntry != null) {
                        String name2 = nextEntry.getName();
                        Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                        endsWith = StringsKt__StringsJVMKt.endsWith(name2, "note", false);
                        if (endsWith) {
                            i++;
                        }
                        nextEntry = zipInputStream.getNextEntry();
                    }
                    zipInputStream.closeEntry();
                    ImportSelectedContext importSelectedContext = this$0.importSelectedContext;
                    if (importSelectedContext == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
                        importSelectedContext = null;
                    }
                    importSelectedContext.updateImportInfo(uri, i);
                    Unit unit2 = Unit.INSTANCE;
                    CloseableKt.closeFinally(zipInputStream, null);
                    CloseableKt.closeFinally(openInputStream, null);
                } finally {
                }
            } finally {
            }
        }
        return Unit.INSTANCE;
    }

    /* renamed from: s */
    public static final void m42759s(ParseIntentAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m42767H();
    }

    /* renamed from: A */
    public final boolean m42760A(Uri uri) {
        FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
        if (fileExtensionUtils.isImageType(this.intent.getType())) {
            return true;
        }
        return fileExtensionUtils.isAllType(this.intent.getType()) && fileExtensionUtils.isImageFile(UriKt.getFileName(uri, this.activityContext));
    }

    /* renamed from: B */
    public final boolean m42761B(Uri uri) {
        Object obj;
        String type = ResManager.INSTANCE.getAppContext().getContentResolver().getType(uri);
        Iterator<T> it2 = DocumentType.INSTANCE.partDocumentExtension().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(FileExtensionUtils.INSTANCE.extension(type), (String) obj)) {
                break;
            }
        }
        return !(obj != null) && ZipUtils.INSTANCE.isZipFile(uri);
    }

    /* renamed from: C */
    public final Observable<ParseIntentAction> m42762C(List<Uri> uriList) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : uriList) {
            Uri uri = (Uri) obj;
            if (!m42779x(uri) && m42760A(uri)) {
                arrayList.add(obj);
            }
        }
        if (CollectionKt.isNullOrEmpty(arrayList)) {
            Observable<ParseIntentAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<ParseIntentAction> map = Observable.just(arrayList).doOnNext(new C11116s()).doOnNext(new C11117t()).doOnNext(new C11118u(uriList, arrayList)).map(new C11119v());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: D */
    public final Observable<List<Uri>> m42763D() {
        List<Uri> m42777v = m42777v(this.intent);
        List<Uri> mutableList = m42777v != null ? CollectionsKt___CollectionsKt.toMutableList((Collection) m42777v) : null;
        this.uriList = mutableList;
        if (CollectionKt.isNullOrEmpty(mutableList)) {
            Observable<List<Uri>> empty = Observable.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
            return empty;
        }
        Observable<List<Uri>> just = Observable.just(CollectionKt.ensureList(this.uriList));
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: E */
    public final Observable<ParseIntentAction> m42764E(List<Uri> uriList) {
        final ArrayList arrayList = new ArrayList();
        for (Object obj : uriList) {
            if (m42761B((Uri) obj)) {
                arrayList.add(obj);
            }
        }
        if (CollectionKt.isNullOrEmpty(arrayList)) {
            Observable<ParseIntentAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<ParseIntentAction> map = Observable.just(arrayList).doOnNext(new C11120w(arrayList, this)).flatMap(new Function() { // from class: com.onyx.galaxy.note.category.action.import.ParseIntentAction$parseNoteFileUriList$2

            /* renamed from: com.onyx.galaxy.note.category.action.import.ParseIntentAction$parseNoteFileUriList$2$a */
            /* loaded from: classes9.dex */
            public static final class C11113a<T, R> implements Function {

                /* renamed from: e */
                public static final C11113a<T, R> f54230e = new C11113a<>();

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Map<Uri, List<SyncNoteModel>> apply(@NotNull ParseNoteFileFromUriAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return it2.getResultList();
                }
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Map<Uri, List<SyncNoteModel>>> apply(@NotNull List<? extends Uri> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ImportSelectedContext importSelectedContext = ParseIntentAction.this.importSelectedContext;
                if (importSelectedContext == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
                    importSelectedContext = null;
                }
                List<Uri> list = arrayList;
                final ParseIntentAction parseIntentAction = ParseIntentAction.this;
                return new ParseNoteFileFromUriAction(list, importSelectedContext) { // from class: com.onyx.galaxy.note.category.action.import.ParseIntentAction$parseNoteFileUriList$2.1
                    @Override // com.onyx.galaxy.note.category.action.p127import.ParseNoteFileFromUriAction
                    public void onDispose() {
                        parseIntentAction.disposed = true;
                    }
                }.setActivityContext(ParseIntentAction.this.activityContext).build().map(C11113a.f54230e);
            }
        }).doOnNext(new C11121x(uriList, this)).map(new C11122y());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: F */
    public final Observable<ParseIntentAction> m42765F(List<Uri> uriList) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : uriList) {
            Uri uri = (Uri) obj;
            if ((m42779x(uri) || m42760A(uri) || !m42781z(uri)) ? false : true) {
                arrayList.add(obj);
            }
        }
        if (CollectionKt.isNullOrEmpty(arrayList)) {
            Observable<ParseIntentAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<ParseIntentAction> map = Observable.just(arrayList).doOnNext(new C11123z(arrayList)).map(new C11085a0(arrayList)).doOnNext(new C11087b0()).doOnNext(new C11089c0(uriList, arrayList)).map(new C11091d0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: G */
    public final Observable<ParseIntentAction> m42766G() {
        List copy = CollectionKt.copy(this.uriList);
        Observable<ParseIntentAction> map = Observable.just(copy).observeOn(Schedulers.m61350io()).flatMap(new C11093e0(copy)).flatMap(new C11095f0(copy)).flatMap(new C11097g0(copy)).doOnNext(new C11099h0(copy)).map(new C11101i0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: H */
    public final void m42767H() {
        this.intent.setData(null);
        this.intent.setType(null);
        this.intent.setClipData(null);
    }

    /* renamed from: I */
    public final Observable<Boolean> m42768I() {
        List<String> listOfNotNull;
        NoteModelBean data;
        PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        List<Uri> list = this.uriList;
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        List<Uri> list2 = list;
        Context context = this.activityContext;
        ManageFolderContext manageFolderContext = new ManageFolderContext();
        NoteTreeBundle noteTreeBundle = NoteTreeBundle.INSTANCE;
        manageFolderContext.setRootNode(noteTreeBundle.getFolderRootNote());
        if (StringKt.isNotBlank(this.defaultFolderId)) {
            manageFolderContext.setOldParentId(this.defaultFolderId);
            manageFolderContext.setSelectNoteId(manageFolderContext.getOldParentId());
            TreeNode<NoteModelBean> findNode = manageFolderContext.getRootNode().findNode(manageFolderContext.getSelectNoteId());
            String title = (findNode == null || (data = findNode.getData()) == null) ? null : data.getTitle();
            if (title == null) {
                title = "";
            }
            manageFolderContext.setSelectedFolderName(title);
        }
        ManageTagContext manageTagContext = new ManageTagContext();
        manageTagContext.setRootNode(noteTreeBundle.getTagRootNote());
        if (StringKt.isNotBlank(this.defaultTagId)) {
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(this.defaultTagId);
            manageTagContext.saveSelectedTags(listOfNotNull);
        }
        ImportSelectedContext importSelectedContext = this.importSelectedContext;
        if (importSelectedContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
            importSelectedContext = null;
        }
        SelectImportLocationDialog selectImportLocationDialog = new SelectImportLocationDialog(context, manageFolderContext, manageTagContext, importSelectedContext, list2);
        selectImportLocationDialog.setPublishSubject(create);
        selectImportLocationDialog.show();
        return create;
    }

    /* renamed from: J */
    public final Observable<?> m42769J(List<? extends Uri> noteFileUris) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Observable<?> doFinally = Observable.just(this).flatMap(new C11103j0(objectRef)).observeOn(getObserveOn()).flatMap(new C11105k0(noteFileUris)).concatMap(new C11107l0()).toList().toObservable().observeOn(getMainUIScheduler()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.kwk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ParseIntentAction.m42754K(Ref.ObjectRef.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: L */
    public final Observable<Unit> m42770L(final Uri uri) {
        Observable<Unit> observable = Single.fromCallable(new Callable() { // from class: com.sunia.HTREnginev2.lwk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Unit m42755M;
                m42755M = ParseIntentAction.m42755M(uri, this);
                return m42755M;
            }
        }).toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "toObservable(...)");
        return observable;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ParseIntentAction> create() {
        Observable<ParseIntentAction> doFinally = Observable.just(Boolean.TRUE).doOnNext(new C11092e()).observeOn(getMainUIScheduler()).flatMap(new C11094f()).flatMap(new C11096g()).flatMap(new C11098h()).flatMap(new C11100i()).flatMap(new C11102j()).flatMap(new C11104k()).flatMap(new C11106l()).flatMap(new C11108m()).observeOn(getMainUIScheduler()).map(new C11090d()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.mwk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ParseIntentAction.m42759s(ParseIntentAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @NotNull
    public final Intent getIntent() {
        return this.intent;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return super.isDisposed() || this.disposed;
    }

    /* renamed from: o */
    public final Observable<List<Uri>> m42771o() {
        Observable<List<Uri>> observeOn = Observable.just(CollectionKt.ensureList(this.uriList)).observeOn(Schedulers.m61350io()).flatMap(new C11084a()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: p */
    public final Observable<Unit> m42772p() {
        long noteCreateQuota$default = QuotaManager.getNoteCreateQuota$default(QuotaManager.INSTANCE, false, 1, null);
        int docCountIncludeDustbin = NoteTreeBundle.FilterManager.INSTANCE.getQuotaInfo().getDocCountIncludeDustbin();
        ImportSelectedContext importSelectedContext = this.importSelectedContext;
        if (importSelectedContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
            importSelectedContext = null;
        }
        if (docCountIncludeDustbin + importSelectedContext.getTotalDocCount() <= noteCreateQuota$default) {
            Observable<Unit> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.quota_note_cannot_import, false, 2, (Object) null);
        Observable<Unit> empty = Observable.empty();
        Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
        return empty;
    }

    /* renamed from: q */
    public final Observable<List<Uri>> m42773q() {
        Observable<List<Uri>> flatMap = Observable.just(CollectionKt.ensureList(this.uriList)).flatMap(new C11086b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: r */
    public final Observable<List<Uri>> m42774r() {
        Observable<List<Uri>> flatMap = Observable.just(CollectionKt.ensureList(this.uriList)).flatMap(C11088c.f54196e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final void setDefaultSelection(@Nullable String folderId, @Nullable String tagId) {
        this.defaultFolderId = folderId;
        this.defaultTagId = tagId;
    }

    public final void setIntent(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "<set-?>");
        this.intent = intent;
    }

    /* renamed from: t */
    public final Observable<ImportSelectedContext> m42775t() {
        Object first;
        Object first2;
        List<Uri> list = this.uriList;
        if (list == null) {
            Observable<ImportSelectedContext> empty = Observable.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
            return empty;
        }
        ImportSelectedContext importSelectedContext = new ImportSelectedContext(list);
        importSelectedContext.addDefaultImportInfo(list);
        if (list.size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            if (m42760A((Uri) first)) {
                ResManager resManager = ResManager.INSTANCE;
                String stringSafely = resManager.getStringSafely(C10651R.string.unnamed_note);
                first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
                Uri uri = (Uri) first2;
                Context appContext = resManager.getAppContext();
                String combine = FileUtils.INSTANCE.combine(stringSafely, FilenameUtils.getExtension(UriKt.getFileName(uri, appContext)));
                if (combine == null) {
                    combine = "";
                }
                importSelectedContext.setModifyItem(new ImportSelectedContext.ModifyItem(combine, UriKt.getFileName(uri, appContext)));
            }
        }
        this.importSelectedContext = importSelectedContext;
        Observable map = Observable.just(importSelectedContext).observeOn(Schedulers.m61350io()).map(new C11109n(list, this));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable map2 = RxjavaKt.flatMapIf(map, new Function1<List<? extends Uri>, Boolean>() { // from class: com.onyx.galaxy.note.category.action.import.ParseIntentAction$createImportContext$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Uri> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(CollectionKt.isNonBlank(it2));
            }
        }, new Function1<List<? extends Uri>, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.category.action.import.ParseIntentAction$createImportContext$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull List<? extends Uri> it2) {
                Observable<? extends Object> m42769J;
                Intrinsics.checkNotNullParameter(it2, "it");
                m42769J = ParseIntentAction.this.m42769J(it2);
                return m42769J;
            }
        }).observeOn(getMainUIScheduler()).map(new C11110o());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: u */
    public final Observable<List<Uri>> m42776u() {
        List<Uri> list = this.uriList;
        if (list == null) {
            Observable<List<Uri>> empty = Observable.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
            return empty;
        }
        Observable<List<Uri>> observeOn = Observable.just(CollectionKt.ensureList(list)).observeOn(Schedulers.m61350io()).map(new C11111p()).flatMap(C11114q.f54231e).doOnNext(new C11115r()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: v */
    public final List<Uri> m42777v(Intent intent) {
        IntRange until;
        List<Uri> listOf;
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("android.intent.extra.STREAM");
        if (!CollectionKt.isNullOrEmpty(parcelableArrayListExtra)) {
            return parcelableArrayListExtra;
        }
        if (intent.getData() != null) {
            Uri data = intent.getData();
            Intrinsics.checkNotNull(data);
            listOf = CollectionsKt__CollectionsJVMKt.listOf(data);
            return listOf;
        }
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return null;
        }
        until = RangesKt___RangesKt.until(0, clipData.getItemCount());
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it2 = until.iterator();
        while (it2.hasNext()) {
            Uri uri = clipData.getItemAt(((IntIterator) it2).nextInt()).getUri();
            if (uri != null) {
                arrayList.add(uri);
            }
        }
        return arrayList;
    }

    public final boolean validIntent(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        return Intrinsics.areEqual(intent.getAction(), IntentUtils.ACTION_IMPORT) && CollectionKt.isNonBlank(m42777v(intent));
    }

    /* renamed from: w */
    public final void m42778w(List<? extends Uri> uriParseList) {
        if (uriParseList.isEmpty()) {
            return;
        }
        ImportSelectedContext importSelectedContext = null;
        if (uriParseList.containsAll(CollectionKt.ensureList(this.uriList))) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.open_file_not_supported_format, false, 2, (Object) null);
            return;
        }
        ImportSelectedContext importSelectedContext2 = this.importSelectedContext;
        if (importSelectedContext2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
            importSelectedContext2 = null;
        }
        importSelectedContext2.addTaskInfo(uriParseList);
        ImportSelectedContext importSelectedContext3 = this.importSelectedContext;
        if (importSelectedContext3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
        } else {
            importSelectedContext = importSelectedContext3;
        }
        importSelectedContext.completeCount(uriParseList, 0, new Function1<ImportSelectedContext, Unit>() { // from class: com.onyx.galaxy.note.category.action.import.ParseIntentAction$handleSupportResult$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ImportSelectedContext importSelectedContext4) {
                invoke2(importSelectedContext4);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ImportSelectedContext it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Context context = ParseIntentAction.this.activityContext;
                ImportSelectedContext importSelectedContext4 = ParseIntentAction.this.importSelectedContext;
                if (importSelectedContext4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("importSelectedContext");
                    importSelectedContext4 = null;
                }
                new ImportSuccessDialog(context, importSelectedContext4).show();
            }
        });
    }

    /* renamed from: x */
    public final boolean m42779x(Uri uri) {
        boolean endsWith;
        String uri2 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
        endsWith = StringsKt__StringsJVMKt.endsWith(uri2, "note", true);
        return endsWith;
    }

    /* renamed from: y */
    public final boolean m42780y(Uri uri) {
        return m42761B(uri) || m42760A(uri) || m42781z(uri);
    }

    /* renamed from: z */
    public final boolean m42781z(Uri uri) {
        ResManager resManager = ResManager.INSTANCE;
        String type = resManager.getAppContext().getContentResolver().getType(uri);
        List<String> allDocumentExtension = DocumentType.INSTANCE.allDocumentExtension();
        FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
        boolean containsAny = CollectionUtils.containsAny(allDocumentExtension, fileExtensionUtils.extensions(type));
        if (!fileExtensionUtils.isAllType(this.intent.getType()) && !fileExtensionUtils.isApplicationType(type)) {
            return containsAny;
        }
        String extension = FilenameUtils.getExtension(UriKt.getFileName(uri, resManager.getAppContext()));
        Intrinsics.checkNotNullExpressionValue(extension, "getExtension(...)");
        String lowerCase = extension.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return CollectionKt.containIgnoreCase(allDocumentExtension, lowerCase);
    }
}

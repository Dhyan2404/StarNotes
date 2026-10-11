package com.onyx.galaxy.note.category.action.p127import;

import android.content.Context;
import android.net.Uri;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.filepicker.DocumentBean;
import com.onyx.android.sdk.neopdf.NeoPdf;
import com.onyx.android.sdk.neopdf.PdfDrmOptions;
import com.onyx.android.sdk.neopdf.PdfOpenOptions;
import com.onyx.android.sdk.neopdf.PdfOpenResult;
import com.onyx.android.sdk.neopdf.PdfPasswordBuilder;
import com.onyx.android.sdk.neopdf.UriPdfFileStream;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.reader.api.ReaderException;
import com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfJniWrapper;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.category.action.p127import.CheckPdfPasswordAction;
import com.onyx.galaxy.note.editor.view.dialog.InputPasswordDialog;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010.\u001a\u00020-\u0012\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0004¢\u0006\u0004\b0\u00101J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00022\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\n0\u00022\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0014\u001a\u00020\rH\u0002J\b\u0010\u0015\u001a\u00020\rH\u0002J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0016H\u0002R \u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\n0\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001a0\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\"\u0010#R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001a\u0010,\u001a\b\u0012\u0004\u0012\u00020\u001a0\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010 ¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "getResultList", "Landroid/net/Uri;", "uri", C4921e.f26528e, "", "password", "A", "", "u", "v", HuaweiYunQueryArgs.FILE_NAME, "", "passwordIncorrectBefore", "x", "z", "s", "", "throwable", "t", "", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", C6999h.f39688c, "Ljava/util/Map;", "passwordMap", "", "i", "Ljava/util/List;", "cancelList", "j", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "currentDocumentBean", "Lcom/onyx/android/sdk/ui/CommonDialog;", C4921e.f26537n, "Lkotlin/Lazy;", "r", "()Lcom/onyx/android/sdk/ui/CommonDialog;", "loadingDialog", "l", "documentBeans", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "documentList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCheckPdfPasswordAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckPdfPasswordAction.kt\ncom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n766#2:174\n857#2,2:175\n1549#2:177\n1620#2,3:178\n766#2:181\n857#2,2:182\n*S KotlinDebug\n*F\n+ 1 CheckPdfPasswordAction.kt\ncom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction\n*L\n51#1:174\n51#1:175,2\n75#1:177\n75#1:178,3\n86#1:181\n86#1:182,2\n*E\n"})
/* loaded from: classes9.dex */
public final class CheckPdfPasswordAction extends RxBaseAppAction<CheckPdfPasswordAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Map<DocumentBean, String> passwordMap;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<DocumentBean> cancelList;

    /* renamed from: j, reason: from kotlin metadata */
    public DocumentBean currentDocumentBean;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy loadingDialog;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final List<DocumentBean> documentBeans;

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$a */
    /* loaded from: classes9.dex */
    public static final class C11048a<T, R> implements Function {
        public C11048a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Uri> apply(@NotNull Uri it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckPdfPasswordAction.m42677w(CheckPdfPasswordAction.this, it2, null, 2, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$b */
    /* loaded from: classes9.dex */
    public static final class C11049b<T, R> implements Function {

        /* renamed from: e */
        public static final C11049b<T, R> f54126e = new C11049b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DocumentBean apply(@NotNull Iterator<DocumentBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.next();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$c */
    /* loaded from: classes9.dex */
    public static final class C11050c<T> implements Consumer {
        public C11050c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DocumentBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckPdfPasswordAction.this.currentDocumentBean = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$d */
    /* loaded from: classes9.dex */
    public static final class C11051d<T> implements Consumer {
        public C11051d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DocumentBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckPdfPasswordAction.this.m42687z();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$e */
    /* loaded from: classes9.dex */
    public static final class C11052e<T, R> implements Function {
        public C11052e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull DocumentBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckPdfPasswordAction.this.m42680o(it2.getPath());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$f */
    /* loaded from: classes9.dex */
    public static final class C11053f<T> implements Consumer {
        public C11053f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            List list = CheckPdfPasswordAction.this.cancelList;
            DocumentBean documentBean = CheckPdfPasswordAction.this.currentDocumentBean;
            if (documentBean == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentDocumentBean");
                documentBean = null;
            }
            list.add(documentBean);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$g */
    /* loaded from: classes9.dex */
    public static final class C11054g<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Iterator<DocumentBean> f54131e;

        public C11054g(Iterator<DocumentBean> it2) {
            this.f54131e = it2;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public final boolean test(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !this.f54131e.hasNext();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$h */
    /* loaded from: classes9.dex */
    public static final class C11055h<T, R> implements Function {
        public C11055h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CheckPdfPasswordAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckPdfPasswordAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$i */
    /* loaded from: classes9.dex */
    public static final class C11056i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Uri f54134f;

        /* renamed from: g */
        public final /* synthetic */ Ref.ObjectRef<String> f54135g;

        public C11056i(Uri uri, Ref.ObjectRef<String> objectRef) {
            this.f54134f = uri;
            this.f54135g = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CheckPdfPasswordAction> apply(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckPdfPasswordAction.this.m42679A(this.f54134f, this.f54135g.element);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$j */
    /* loaded from: classes9.dex */
    public static final class C11057j<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Uri f54137f;

        /* renamed from: g */
        public final /* synthetic */ Ref.ObjectRef<String> f54138g;

        /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$j$a */
        /* loaded from: classes9.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ CheckPdfPasswordAction f54139e;

            /* renamed from: f */
            public final /* synthetic */ Uri f54140f;

            /* renamed from: g */
            public final /* synthetic */ Ref.ObjectRef<String> f54141g;

            /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$j$a$a, reason: collision with other inner class name */
            /* loaded from: classes9.dex */
            public static final class C20603a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ Ref.ObjectRef<String> f54142e;

                public C20603a(Ref.ObjectRef<String> objectRef) {
                    this.f54142e = objectRef;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull String newPassword) {
                    Intrinsics.checkNotNullParameter(newPassword, "newPassword");
                    this.f54142e.element = newPassword;
                }
            }

            public a(CheckPdfPasswordAction checkPdfPasswordAction, Uri uri, Ref.ObjectRef<String> objectRef) {
                this.f54139e = checkPdfPasswordAction;
                this.f54140f = uri;
                this.f54141g = objectRef;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends String> apply(@NotNull Throwable throwable) {
                Intrinsics.checkNotNullParameter(throwable, "throwable");
                if (!this.f54139e.m42683t(throwable)) {
                    return Observable.error(throwable);
                }
                CheckPdfPasswordAction checkPdfPasswordAction = this.f54139e;
                return checkPdfPasswordAction.m42686x(UriKt.getFileName(this.f54140f, checkPdfPasswordAction.getAppContext()), this.f54141g.element.length() > 0).doOnNext(new C20603a(this.f54141g));
            }
        }

        public C11057j(Uri uri, Ref.ObjectRef<String> objectRef) {
            this.f54137f = uri;
            this.f54138g = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<?> apply(@NotNull Observable<Throwable> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.observeOn(CheckPdfPasswordAction.this.getMainUIScheduler()).flatMap(new a(CheckPdfPasswordAction.this, this.f54137f, this.f54138g));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$k */
    /* loaded from: classes9.dex */
    public static final class C11058k<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Ref.ObjectRef<String> f54144f;

        public C11058k(Ref.ObjectRef<String> objectRef) {
            this.f54144f = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Map map = CheckPdfPasswordAction.this.passwordMap;
            DocumentBean documentBean = CheckPdfPasswordAction.this.currentDocumentBean;
            if (documentBean == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentDocumentBean");
                documentBean = null;
            }
            map.put(documentBean, this.f54144f.element);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$l */
    /* loaded from: classes9.dex */
    public static final class C11059l<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Uri f54145e;

        public C11059l(Uri uri) {
            this.f54145e = uri;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Uri apply(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f54145e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$m */
    /* loaded from: classes9.dex */
    public static final class C11060m<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Uri f54147f;

        /* renamed from: g */
        public final /* synthetic */ String f54148g;

        public C11060m(Uri uri, String str) {
            this.f54147f = uri;
            this.f54148g = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckPdfPasswordAction.this.m42684u(this.f54147f, this.f54148g);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$n */
    /* loaded from: classes9.dex */
    public static final class C11061n<T, R> implements Function {
        public C11061n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CheckPdfPasswordAction apply(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckPdfPasswordAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckPdfPasswordAction(@NotNull EditorBundle editorBundle, @NotNull List<DocumentBean> documentList) {
        super(editorBundle);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(documentList, "documentList");
        this.passwordMap = new LinkedHashMap();
        this.cancelList = new ArrayList();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CommonDialog>() { // from class: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$loadingDialog$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CommonDialog invoke() {
                Context activityContext = CheckPdfPasswordAction.this.getActivityContext();
                Intrinsics.checkNotNull(activityContext);
                return new CommonDialog.Builder(activityContext).setDialogType(1).setDimAmount(0.0f).create();
            }
        });
        this.loadingDialog = lazy;
        this.documentBeans = CollectionKt.copy(documentList);
    }

    /* renamed from: p */
    public static final boolean m42675p(Iterator iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$iterator");
        return !iterator.hasNext();
    }

    /* renamed from: q */
    public static final void m42676q(CheckPdfPasswordAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m42682s();
    }

    /* renamed from: w */
    public static /* synthetic */ Observable m42677w(CheckPdfPasswordAction checkPdfPasswordAction, Uri uri, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        return checkPdfPasswordAction.m42685v(uri, str);
    }

    /* renamed from: y */
    public static final void m42678y(CheckPdfPasswordAction this$0, String fileName, boolean z, FragmentManager fragmentManager, final ObservableEmitter observer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(fileName, "$fileName");
        Intrinsics.checkNotNullParameter(fragmentManager, "$fragmentManager");
        Intrinsics.checkNotNullParameter(observer, "observer");
        this$0.m42682s();
        InputPasswordDialog inputPasswordDialog = new InputPasswordDialog(fileName, new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$openInputPasswordDialog$1$dialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                observer.onNext(it2);
                observer.onComplete();
            }
        }, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$openInputPasswordDialog$1$dialog$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                ObservableEmitter<String> observableEmitter = observer;
                OnyxException m31891of = OnyxException.INSTANCE.m31891of("");
                m31891of.setIgnorable(true);
                observableEmitter.onError(m31891of);
                observer.onComplete();
            }
        });
        inputPasswordDialog.setPasswordIncorrect(z);
        inputPasswordDialog.show(fragmentManager, Reflection.getOrCreateKotlinClass(InputPasswordDialog.class).getQualifiedName());
    }

    /* renamed from: A */
    public final Observable<CheckPdfPasswordAction> m42679A(Uri uri, String password) {
        Observable<CheckPdfPasswordAction> map = Observable.just(this).observeOn(EditorBundleKt.readerScheduler(getEditorBundle())).doOnNext(new C11060m(uri, password)).observeOn(getMainUIScheduler()).map(new C11061n());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CheckPdfPasswordAction> create() {
        List<DocumentBean> list = this.documentBeans;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (FileExtensionUtils.INSTANCE.isPdfFile(((DocumentBean) obj).getName())) {
                arrayList.add(obj);
            }
        }
        final Iterator it2 = arrayList.iterator();
        if (it2.hasNext()) {
            Observable<CheckPdfPasswordAction> map = Observable.just(it2).map(C11049b.f54126e).doOnNext(new C11050c()).doOnNext(new C11051d()).flatMap(new C11052e()).doOnError(new C11053f()).onErrorReturnItem(this).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.etd
                @Override // io.reactivex.rxjava3.functions.BooleanSupplier
                public final boolean getAsBoolean() {
                    boolean m42675p;
                    m42675p = CheckPdfPasswordAction.m42675p(it2);
                    return m42675p;
                }
            }).filter(new C11054g(it2)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.ftd
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    CheckPdfPasswordAction.m42676q(CheckPdfPasswordAction.this);
                }
            }).map(new C11055h());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable<CheckPdfPasswordAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final List<DocumentFileEntry> getResultList() {
        int collectionSizeOrDefault;
        String extension;
        List<DocumentBean> list = this.documentBeans;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (DocumentBean documentBean : list) {
            DocumentFileEntry documentFileEntry = new DocumentFileEntry(documentBean.getPath());
            String str = this.passwordMap.get(documentBean);
            if (str == null) {
                str = "";
            }
            documentFileEntry.setFilePassword(str);
            documentFileEntry.setExtensionName(documentBean.getExtension());
            documentFileEntry.setFile(documentBean.getFile());
            if (Intrinsics.areEqual(documentFileEntry.getExtensionName(), FileExtensionUtils.EXTENSION_TYPE_BIN) && (extension = FileExtensionUtils.INSTANCE.extension(documentBean.getMimeType())) != null) {
                documentFileEntry.setExtensionName(extension);
            }
            arrayList.add(documentFileEntry);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            final DocumentFileEntry documentFileEntry2 = (DocumentFileEntry) obj;
            if (!CollectionKt.contains(this.cancelList, new Function1<DocumentBean, Boolean>() { // from class: com.onyx.galaxy.note.category.action.import.CheckPdfPasswordAction$getResultList$2$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull DocumentBean item) {
                    Intrinsics.checkNotNullParameter(item, "item");
                    return Boolean.valueOf(Intrinsics.areEqual(DocumentFileEntry.this.getFileUri(), item.getPath()));
                }
            })) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    /* renamed from: o */
    public final Observable<?> m42680o(Uri uri) {
        Observable<?> observeOn = Observable.just(uri).flatMap(new C11048a()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: r */
    public final CommonDialog m42681r() {
        return (CommonDialog) this.loadingDialog.getValue();
    }

    /* renamed from: s */
    public final void m42682s() {
        CommonDialog m42681r = m42681r();
        if (m42681r != null) {
            m42681r.dismiss();
        }
    }

    /* renamed from: t */
    public final boolean m42683t(Throwable throwable) {
        return (throwable instanceof ReaderException) && ((ReaderException) throwable).getCode() == 1;
    }

    /* renamed from: u */
    public final void m42684u(Uri uri, String password) {
        NeoPdf neoPdf = new NeoPdf();
        UriPdfFileStream uriPdfFileStream = new UriPdfFileStream(getAppContext(), uri);
        try {
            PdfOpenResult pdfOpenResult = new PdfOpenResult(0, false, false, 7, null);
            PdfPasswordBuilder passwordBuilder = PdfDrmOptions.INSTANCE.passwordBuilder();
            passwordBuilder.setPassword(password);
            PdfDrmOptions build = passwordBuilder.build();
            PdfOpenOptions pdfOpenOptions = new PdfOpenOptions();
            pdfOpenOptions.setDrmOptions(build);
            if (!neoPdf.openDocument(uriPdfFileStream, pdfOpenOptions, pdfOpenResult)) {
                NeoPdfJniWrapper.INSTANCE.checkOpenAndThrow(pdfOpenResult.getOpenCode());
            }
        } finally {
            uriPdfFileStream.close();
            neoPdf.closeDocument();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: v */
    public final Observable<Uri> m42685v(Uri uri, String password) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = password;
        Observable<Uri> map = Observable.just(this).flatMap(new C11056i(uri, objectRef)).retryWhen(new C11057j(uri, objectRef)).doOnNext(new C11058k(objectRef)).map(new C11059l(uri));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: x */
    public final Observable<String> m42686x(final String fileName, final boolean passwordIncorrectBefore) {
        final FragmentManager supportFragmentManager;
        AppCompatActivity appCompatActivity = (AppCompatActivity) getActivityContext();
        if (appCompatActivity == null || (supportFragmentManager = appCompatActivity.getSupportFragmentManager()) == null) {
            Observable<String> error = Observable.error(new NullPointerException());
            Intrinsics.checkNotNullExpressionValue(error, "error(...)");
            return error;
        }
        Observable<String> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.gtd
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                CheckPdfPasswordAction.m42678y(CheckPdfPasswordAction.this, fileName, passwordIncorrectBefore, supportFragmentManager, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    /* renamed from: z */
    public final void m42687z() {
        CommonDialog m42681r = m42681r();
        if (m42681r == null || m42681r.isShowing()) {
            return;
        }
        m42681r.show();
    }
}

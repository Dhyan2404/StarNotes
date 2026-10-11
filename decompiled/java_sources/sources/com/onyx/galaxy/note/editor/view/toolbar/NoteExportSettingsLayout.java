package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.FileUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.event.StatisticsNoteOutputEvent;
import com.onyx.android.sdk.event.StatisticsPageOutputEvent;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.export.ExportPageToImageFileAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.ExportPageToImageFileArgs;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.events.note.QuitPendingHandlerEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.NoteExporter;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.AuthNoteAction;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.databinding.LayoutNoteExportSettingsBinding;
import com.onyx.galaxy.note.editor.action.export.LoadCurNoteExportArgsAction;
import com.onyx.galaxy.note.editor.view.dialog.ExportSpecifiedPagesDialog;
import com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog;
import com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*B\u001d\b\u0016\u0012\u0006\u0010(\u001a\u00020'\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010+¢\u0006\u0004\b)\u0010-B%\b\u0016\u0012\u0006\u0010(\u001a\u00020'\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010+\u0012\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b)\u00100J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\b\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0010H\u0002R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 R\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b!\u0010 \u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010&¨\u00061"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;", "Landroid/widget/FrameLayout;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "setEditorBundle", "Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", "l", "r", "Landroid/view/View;", "view", "j", C6999h.f39688c, "Lio/reactivex/rxjava3/core/Observable;", "", C6998g.f39679a, C4921e.f26528e, "q", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "exportArgs", GoogleApiAvailabilityLight.f29016b, "eventId", "m", "Lcom/onyx/galaxy/note/databinding/LayoutNoteExportSettingsBinding;", "e", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutNoteExportSettingsBinding;", "binding", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "docManagerBundle", "getDocManagerBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setDocManagerBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteExportSettingsLayout extends FrameLayout {
    public EditorBundle docManagerBundle;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: f, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public NoteExportDialog.ExportListener listener;

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$a */
    /* loaded from: classes9.dex */
    public static final class C12506a<T> implements Consumer {
        public C12506a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = NoteExportSettingsLayout.this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.postEvent(editorBundle, new QuitPendingHandlerEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$b */
    /* loaded from: classes9.dex */
    public static final class C12507b<T> implements Consumer {
        public C12507b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteExportDialog.ExportListener exportListener = NoteExportSettingsLayout.this.listener;
            if (exportListener != null) {
                exportListener.onFileExported(it2);
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$c */
    /* loaded from: classes9.dex */
    public static final class C12508c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f60807e;

        public C12508c(LoadingDialog loadingDialog) {
            this.f60807e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f60807e.show();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$d */
    /* loaded from: classes9.dex */
    public static final class C12509d<T> implements Consumer {
        public C12509d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(NoteExportSettingsLayout.this.getContext(), C10651R.string.export_fail), false, 2, (Object) null);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoteExportSettingsLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final LayoutNoteExportSettingsBinding getBinding() {
        return (LayoutNoteExportSettingsBinding) this.binding.getValue();
    }

    /* renamed from: i */
    public static final void m49985i(LoadingDialog loadingDialog) {
        Intrinsics.checkNotNullParameter(loadingDialog, "$loadingDialog");
        loadingDialog.dismiss();
    }

    /* renamed from: k */
    public static final void m49986k(NoteExportSettingsLayout this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49989h();
    }

    /* renamed from: p */
    public static final void m49987p(LoadingDialog loadingDialog) {
        Intrinsics.checkNotNullParameter(loadingDialog, "$loadingDialog");
        loadingDialog.dismiss();
    }

    /* renamed from: g */
    public final Observable<String> m49988g() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        NoteExporter noteExporter = NoteExporter.INSTANCE;
        String string = getContext().getString(C10651R.string.app_name_en);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        Observable<String> doOnNext = new ExportPageToImageFileAction(editorBundle, new ExportPageToImageFileArgs(null, noteExporter.getExportDir(string), null, false, AppConfig.INSTANCE.getRenderExcerptIndicatorInImage(), null, 45, null)).build().doOnSubscribe(new C12506a()).doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$exportPageToImageFileObservable$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull final String path) {
                Intrinsics.checkNotNullParameter(path, "path");
                FileUtils.notifySystemToScan(path);
                StatisticsBundle.INSTANCE.postEvent(new StatisticsPageOutputEvent());
                ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(NoteExportSettingsLayout.this.getContext(), C10651R.string.export_succeed), false, 2, (Object) null);
                RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
                final NoteExportSettingsLayout noteExportSettingsLayout = NoteExportSettingsLayout.this;
                rxTimerUtil.shortTimer(new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$exportPageToImageFileObservable$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                        invoke(l.longValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(long j) {
                        Context context = NoteExportSettingsLayout.this.getContext();
                        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                        ContextKt.shareFile(context, path, "image/*");
                    }
                });
            }
        }).doOnNext(new C12507b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public final EditorBundle getDocManagerBundle() {
        EditorBundle editorBundle = this.docManagerBundle;
        if (editorBundle != null) {
            return editorBundle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("docManagerBundle");
        return null;
    }

    /* renamed from: h */
    public final void m49989h() {
        List listOf;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(context);
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(EditorBundleKt.docId(editorBundle));
        RxjavaKt.flatMapIf(new AuthNoteAction(context2, listOf).build(), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$exportToPng$1
            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(z);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$exportToPng$2
            {
                super(1);
            }

            @NotNull
            public final Observable<? extends Object> invoke(boolean z) {
                Observable<? extends Object> m49988g;
                m49988g = NoteExportSettingsLayout.this.m49988g();
                return m49988g;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }).doOnSubscribe(new C12508c(createLoadingDialog)).doOnError(new C12509d()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.zvj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteExportSettingsLayout.m49985i(LoadingDialog.this);
            }
        }).subscribe();
        m49992m(OnyxStatisticConstant.ID_CLICK_EXPORTDOCS);
    }

    /* renamed from: j */
    public final void m49990j(View view) {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestStoragePermissionAction(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_EXPORT_PNG_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_EXPORT_PNG_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.awj
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                NoteExportSettingsLayout.m49986k(NoteExportSettingsLayout.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: l */
    public final void m49991l() {
        TintFrameLayout exportCurPageImage = getBinding().exportCurPageImage;
        Intrinsics.checkNotNullExpressionValue(exportCurPageImage, "exportCurPageImage");
        ViewKt.shortClick(exportCurPageImage, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cwj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteExportSettingsLayout.this.m49990j(view);
            }
        });
        TintFrameLayout exportDocument = getBinding().exportDocument;
        Intrinsics.checkNotNullExpressionValue(exportDocument, "exportDocument");
        ViewKt.shortClick(exportDocument, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dwj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteExportSettingsLayout.this.m49994o(view);
            }
        });
        TintFrameLayout exportDocumentPages = getBinding().exportDocumentPages;
        Intrinsics.checkNotNullExpressionValue(exportDocumentPages, "exportDocumentPages");
        ViewKt.shortClick(exportDocumentPages, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ewj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteExportSettingsLayout.this.m49995q(view);
            }
        });
    }

    /* renamed from: m */
    public final void m49992m(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: n */
    public final void m49993n(NoteExportArgs exportArgs) {
        List listOf;
        EditorBundle docManagerBundle = getDocManagerBundle();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(exportArgs);
        NoteExportDialog noteExportDialog = new NoteExportDialog(docManagerBundle, context, listOf);
        noteExportDialog.setListener(new NoteExportDialog.ExportListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$showExportDialog$1$1
            @Override // com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog.ExportListener
            public void onFileExported(@NotNull String filePath) {
                Intrinsics.checkNotNullParameter(filePath, "filePath");
                NoteExportDialog.ExportListener exportListener = NoteExportSettingsLayout.this.listener;
                if (exportListener != null) {
                    exportListener.onFileExported(filePath);
                }
            }
        });
        noteExportDialog.show();
    }

    /* renamed from: o */
    public final void m49994o(View view) {
        List listOf;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(context);
        createLoadingDialog.show();
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(EditorBundleKt.docId(editorBundle));
        RxjavaKt.flatMapIf(new AuthNoteAction(context2, listOf).build(), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$showExportPopup$1
            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(z);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$showExportPopup$2

            /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$showExportPopup$2$a */
            /* loaded from: classes9.dex */
            public static final class C12511a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ NoteExportSettingsLayout f60811e;

                public C12511a(NoteExportSettingsLayout noteExportSettingsLayout) {
                    this.f60811e = noteExportSettingsLayout;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Disposable it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    EditorBundle editorBundle = this.f60811e.editorBundle;
                    if (editorBundle == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                        editorBundle = null;
                    }
                    EditorBundleKt.postEvent(editorBundle, new QuitPendingHandlerEvent());
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$showExportPopup$2$b */
            /* loaded from: classes9.dex */
            public static final class C12512b<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ LoadingDialog f60812e;

                public C12512b(LoadingDialog loadingDialog) {
                    this.f60812e = loadingDialog;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Disposable it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f60812e.show();
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$showExportPopup$2$c */
            /* loaded from: classes9.dex */
            public static final class C12513c<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ NoteExportSettingsLayout f60813e;

                public C12513c(NoteExportSettingsLayout noteExportSettingsLayout) {
                    this.f60813e = noteExportSettingsLayout;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull NoteExportArgs it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f60813e.m49993n(it2);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }

            @NotNull
            public final Observable<? extends Object> invoke(boolean z) {
                EditorBundle editorBundle2 = NoteExportSettingsLayout.this.editorBundle;
                if (editorBundle2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle2 = null;
                }
                Observable<NoteExportArgs> doOnNext = new LoadCurNoteExportArgsAction(editorBundle2).build().doOnSubscribe(new C12511a(NoteExportSettingsLayout.this)).doOnSubscribe(new C12512b(createLoadingDialog)).doOnNext(new C12513c(NoteExportSettingsLayout.this));
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                return doOnNext;
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.bwj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteExportSettingsLayout.m49987p(LoadingDialog.this);
            }
        }).subscribe();
        m49992m(OnyxStatisticConstant.ID_CLICK_EXPORTDOCS_FILE);
        StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteOutputEvent());
    }

    /* renamed from: q */
    public final void m49995q(View view) {
        ExportSpecifiedPagesDialog exportSpecifiedPagesDialog = new ExportSpecifiedPagesDialog();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        ExportSpecifiedPagesDialog docManagerBundle = exportSpecifiedPagesDialog.setEditorBundle(editorBundle).setDocManagerBundle(getDocManagerBundle());
        Context context = getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        docManagerBundle.show(((FragmentActivity) context).getSupportFragmentManager(), Reflection.getOrCreateKotlinClass(ExportSpecifiedPagesDialog.class).getQualifiedName());
    }

    /* renamed from: r */
    public final void m49996r(EditorBundle editorBundle) {
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().exportCurPageImage, EditorBundleKt.getUiFeature(editorBundle).supportExportPageAsImage());
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().exportDocumentPages, EditorBundleKt.getUiFeature(editorBundle).supportMultiPage());
    }

    public final void setDocManagerBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.docManagerBundle = editorBundle;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        m49996r(editorBundle);
    }

    public final void setListener(@NotNull NoteExportDialog.ExportListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoteExportSettingsLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ NoteExportSettingsLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteExportSettingsLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutNoteExportSettingsBinding>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutNoteExportSettingsBinding invoke() {
                return LayoutNoteExportSettingsBinding.inflate(LayoutInflater.from(NoteExportSettingsLayout.this.getContext()), NoteExportSettingsLayout.this, true);
            }
        });
        this.binding = lazy;
        m49991l();
    }

    public /* synthetic */ NoteExportSettingsLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}

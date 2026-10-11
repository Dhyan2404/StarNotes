package com.onyx.galaxy.note.editor.view.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.StatFsUtils;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.exception.SpaceNotEnoughException;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.device.bean.ScreenDisplayType;
import com.onyx.android.sdk.device.bean.ScreenInfo;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.docmanager.action.name.GenerateUniqueFileAction;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction;
import com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction;
import com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction;
import com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.extension.NoteExporter;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.CommonProgressDialog;
import com.onyx.galaxy.note.databinding.DialogNoteExportBinding;
import com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import onyx.org.apache.commons.io.FilenameUtils;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001WB%\u0012\u0006\u0010C\u001a\u00020@\u0012\u0006\u0010T\u001a\u00020S\u0012\f\u0010H\u001a\b\u0012\u0004\u0012\u00020E0D¢\u0006\u0004\bU\u0010VJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\b\u0010\u0018\u001a\u00020\u0002H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002J$\u0010 \u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u00102\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002J5\u0010'\u001a\b\u0012\u0004\u0012\u00020\"0&\"\u000e\b\u0000\u0010#*\b\u0012\u0004\u0012\u00020\"0!2\u0006\u0010$\u001a\u00028\u00002\u0006\u0010%\u001a\u00020\u0010H\u0002¢\u0006\u0004\b'\u0010(J\b\u0010)\u001a\u00020\u0002H\u0002J\u0018\u0010-\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u0005H\u0002J\b\u0010.\u001a\u00020\u0002H\u0003J\u0010\u00100\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u0010H\u0002J\u0010\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u000201H\u0002J\u0010\u00105\u001a\u00020\u00102\u0006\u00104\u001a\u00020\u0010H\u0002J\b\u00106\u001a\u00020\rH\u0002J\u000e\u00107\u001a\b\u0012\u0004\u0012\u00020*0&H\u0002J\u0010\u00108\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u0005H\u0002J\u000e\u0010;\u001a\u00020\u00022\u0006\u0010:\u001a\u000209J\u000e\u0010=\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0010J\u0010\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0000H\u0007R\u0014\u0010C\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u001a\u0010H\u001a\b\u0012\u0004\u0012\u00020E0D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u001b\u0010N\u001a\u00020I8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010MR\u0018\u0010:\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010R\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010\u000f¨\u0006X"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "", "U", "M", "", "id", "h0", "R", "g0", "checkedId", "a0", "S", "", "hasFocus", Constants.HASIDCALL_INDEX_SIG, "", "name", "z", "u", "c0", "L", "F", "A", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "H", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "E", "filePath", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;", "actionMapper", "B", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "T", "action", "exportFilePath", "Lio/reactivex/rxjava3/core/Observable;", "v", "(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;", "y", "Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;", "progressDialog", "progress", "f0", "b0", "path", "Y", "", "e", "X", "extension", "J", "W", "d0", "K", "Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", "text", "setExportPageRangeText", NotificationCompat.CATEGORY_EVENT, "onNoteExportDialog", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "docManagerBundle", "", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "i", "Ljava/util/List;", "exportArgsList", "Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;", "j", "Lkotlin/Lazy;", "I", "()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;", "binding", C4921e.f26537n, "Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;", "l", "canShare", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/util/List;)V", "ExportListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteExportDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteExportDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,473:1\n256#2,2:474\n1855#3,2:476\n1747#3,3:478\n*S KotlinDebug\n*F\n+ 1 NoteExportDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog\n*L\n205#1:474,2\n286#1:476,2\n403#1:478,3\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteExportDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle docManagerBundle;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<NoteExportArgs> exportArgsList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public ExportListener listener;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean canShare;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;", "", "onFileExported", "", "filePath", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ExportListener {
        void onFileExported(@NotNull String filePath);
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$a */
    /* loaded from: classes9.dex */
    public static final class C12325a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<CommonProgressDialog> f59894e;

        public C12325a(Ref.ObjectRef<CommonProgressDialog> objectRef) {
            this.f59894e = objectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CommonProgressDialog it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f59894e.element = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$b */
    /* loaded from: classes9.dex */
    public static final class C12326b<T> implements Consumer {
        public C12326b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CommonProgressDialog it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteExportDialog.this.m48101y();
        }
    }

    /* JADX WARN: Incorrect field signature: TT; */
    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$c */
    /* loaded from: classes9.dex */
    public static final class C12327c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAction f59896e;

        /* JADX WARN: Incorrect types in method signature: (TT;)V */
        public C12327c(RxBaseAction rxBaseAction) {
            this.f59896e = rxBaseAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull CommonProgressDialog it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f59896e.build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$d */
    /* loaded from: classes9.dex */
    public static final class C12328d<T> implements Consumer {
        public C12328d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteExportDialog.this.m48089X(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$e */
    /* loaded from: classes9.dex */
    public static final class C12329e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Ref.ObjectRef<CommonProgressDialog> f59899f;

        public C12329e(Ref.ObjectRef<CommonProgressDialog> objectRef) {
            this.f59899f = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            CommonProgressDialog commonProgressDialog;
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteExportDialog noteExportDialog = NoteExportDialog.this;
            CommonProgressDialog commonProgressDialog2 = this.f59899f.element;
            if (commonProgressDialog2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
                commonProgressDialog = null;
            } else {
                commonProgressDialog = commonProgressDialog2;
            }
            noteExportDialog.m48096f0(commonProgressDialog, (int) it2.getProgress());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$f */
    /* loaded from: classes9.dex */
    public static final class C12330f<T> implements Consumer {

        /* renamed from: e */
        public static final C12330f<T> f59900e = new C12330f<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils toastUtils = ToastUtils.INSTANCE;
            String message = it2.getMessage();
            if (message == null) {
                message = "";
            }
            ToastUtils.show$default(toastUtils, (CharSequence) message, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$g */
    /* loaded from: classes9.dex */
    public static final class C12331g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Function1<String, BaseExportNoteAction> f59901e;

        /* JADX WARN: Multi-variable type inference failed */
        public C12331g(Function1<? super String, ? extends BaseExportNoteAction> function1) {
            this.f59901e = function1;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseExportNoteAction apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f59901e.invoke(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$h */
    /* loaded from: classes9.dex */
    public static final class C12332h<T> implements Consumer {
        public C12332h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BaseExportNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteExportDialog.this.dismiss();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$i */
    /* loaded from: classes9.dex */
    public static final class C12333i<T, R> implements Function {
        public C12333i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull BaseExportNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteExportDialog.this.m48100v(it2, it2.getExportFilePath());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteExportDialog(@NotNull EditorBundle docManagerBundle, @NotNull final Context context, @NotNull List<NoteExportArgs> exportArgsList) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(exportArgsList, "exportArgsList");
        this.docManagerBundle = docManagerBundle;
        this.exportArgsList = exportArgsList;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogNoteExportBinding>() { // from class: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogNoteExportBinding invoke() {
                return DialogNoteExportBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        this.canShare = true;
        View root = m48080I().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m48087U();
        m48085R();
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.tvj
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                NoteExportDialog.m48067q(NoteExportDialog.this, dialogInterface);
            }
        });
        m48080I().tvExport.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uvj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteExportDialog.m48068r(NoteExportDialog.this, view);
            }
        });
        m48080I().tvShare.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vvj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteExportDialog.m48069s(NoteExportDialog.this, view);
            }
        });
        m48080I().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wvj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteExportDialog.m48070t(NoteExportDialog.this, view);
            }
        });
    }

    /* renamed from: G */
    public static final void m48045G(NoteExportDialog this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48073A();
    }

    /* renamed from: N */
    public static final void m48046N(NoteExportDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48098h0(view.getId());
        this$0.m48092a0(view.getId());
    }

    /* renamed from: O */
    public static final void m48047O(NoteExportDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48098h0(view.getId());
        this$0.m48092a0(view.getId());
    }

    /* renamed from: P */
    public static final void m48048P(NoteExportDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48098h0(view.getId());
        this$0.m48092a0(view.getId());
    }

    /* renamed from: Q */
    public static final void m48049Q(NoteExportDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48098h0(view.getId());
        this$0.m48092a0(view.getId());
    }

    /* renamed from: T */
    public static final void m48050T(NoteExportDialog this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48091Z(z);
    }

    /* renamed from: V */
    public static final void m48051V(NoteExportDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48083L();
    }

    /* renamed from: e0 */
    public static final void m48055e0(ReplaySubject publisher, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(publisher, "$publisher");
        publisher.onComplete();
    }

    /* renamed from: q */
    public static final void m48067q(NoteExportDialog this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GlobalBundle.INSTANCE.unregister(this$0);
    }

    /* renamed from: r */
    public static final void m48068r(NoteExportDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.canShare = false;
        this$0.m48078F();
    }

    /* renamed from: s */
    public static final void m48069s(NoteExportDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.canShare = true;
        this$0.m48078F();
    }

    /* renamed from: t */
    public static final void m48070t(NoteExportDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: w */
    public static final void m48071w(NoteExportDialog this$0, String exportFilePath) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(exportFilePath, "$exportFilePath");
        this$0.m48090Y(exportFilePath);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: x */
    public static final void m48072x(Ref.ObjectRef progressDialog) {
        CommonProgressDialog commonProgressDialog;
        Intrinsics.checkNotNullParameter(progressDialog, "$progressDialog");
        T t = progressDialog.element;
        if (t == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
            commonProgressDialog = null;
        } else {
            commonProgressDialog = (CommonProgressDialog) t;
        }
        commonProgressDialog.dismiss();
    }

    /* renamed from: A */
    public final void m48073A() {
        if (String.valueOf(m48080I().tieName.getText()).length() == 0) {
            return;
        }
        Iterator<T> it2 = this.exportArgsList.iterator();
        while (it2.hasNext()) {
            ((NoteExportArgs) it2.next()).setExportTemplate(m48080I().exportWithBackground.isChecked());
        }
        if (m48080I().vectorPdf.isSelected()) {
            m48079H();
            return;
        }
        if (m48080I().bitmapPdf.isSelected()) {
            m48075C();
        } else if (m48080I().imageFile.isSelected()) {
            m48076D();
        } else {
            m48077E();
        }
    }

    /* renamed from: B */
    public final void m48074B(String filePath, Function1<? super String, ? extends BaseExportNoteAction> actionMapper) {
        new GenerateUniqueFileAction(filePath).build().doOnError(C12330f.f59900e).map(new C12331g(actionMapper)).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12332h()).flatMap(new C12333i()).subscribe();
    }

    /* renamed from: C */
    public final void m48075C() {
        m48074B(m48081J(m48088W() ? "zip" : "pdf"), new Function1<String, BaseExportNoteAction>() { // from class: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$exportBitmapPdf$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final BaseExportNoteAction invoke(@NotNull String it2) {
                EditorBundle editorBundle;
                List<NoteExportArgs> list;
                Intrinsics.checkNotNullParameter(it2, "it");
                editorBundle = NoteExportDialog.this.docManagerBundle;
                NoteExportArgs.Companion companion = NoteExportArgs.INSTANCE;
                list = NoteExportDialog.this.exportArgsList;
                return new ExportToPDFFileAction(editorBundle, companion.setExportFlattenPage(list, true), it2);
            }
        });
    }

    /* renamed from: D */
    public final void m48076D() {
        String str;
        Object first;
        Object first2;
        if (!m48088W()) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.exportArgsList);
            if (!((NoteExportArgs) first).isPageIdEmpty()) {
                first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.exportArgsList);
                if (!((NoteExportArgs) first2).isPageIdMoreThanOne()) {
                    str = "png";
                    m48074B(m48081J(str), new Function1<String, BaseExportNoteAction>() { // from class: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$exportImageFile$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final BaseExportNoteAction invoke(@NotNull String it2) {
                            EditorBundle editorBundle;
                            List list;
                            Intrinsics.checkNotNullParameter(it2, "it");
                            editorBundle = NoteExportDialog.this.docManagerBundle;
                            list = NoteExportDialog.this.exportArgsList;
                            return new ExportToImageFileAction(editorBundle, list, it2);
                        }
                    });
                }
            }
        }
        str = "zip";
        m48074B(m48081J(str), new Function1<String, BaseExportNoteAction>() { // from class: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$exportImageFile$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final BaseExportNoteAction invoke(@NotNull String it2) {
                EditorBundle editorBundle;
                List list;
                Intrinsics.checkNotNullParameter(it2, "it");
                editorBundle = NoteExportDialog.this.docManagerBundle;
                list = NoteExportDialog.this.exportArgsList;
                return new ExportToImageFileAction(editorBundle, list, it2);
            }
        });
    }

    /* renamed from: E */
    public final void m48077E() {
        m48074B(m48081J("note"), new Function1<String, BaseExportNoteAction>() { // from class: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$exportNoteFile$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final BaseExportNoteAction invoke(@NotNull String it2) {
                EditorBundle editorBundle;
                List list;
                Intrinsics.checkNotNullParameter(it2, "it");
                editorBundle = NoteExportDialog.this.docManagerBundle;
                list = NoteExportDialog.this.exportArgsList;
                return new ExportNoteToNoteFileAction(editorBundle, list, it2);
            }
        });
    }

    /* renamed from: F */
    public final void m48078F() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestStoragePermissionAction(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_EXPORT_NOTE_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_EXPORT_NOTE_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.xvj
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                NoteExportDialog.m48045G(NoteExportDialog.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: H */
    public final void m48079H() {
        m48074B(m48081J(m48088W() ? "zip" : "pdf"), new Function1<String, BaseExportNoteAction>() { // from class: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$exportVectorPdf$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final BaseExportNoteAction invoke(@NotNull String it2) {
                EditorBundle editorBundle;
                List list;
                Intrinsics.checkNotNullParameter(it2, "it");
                editorBundle = NoteExportDialog.this.docManagerBundle;
                list = NoteExportDialog.this.exportArgsList;
                return new ExportToPDFFileAction(editorBundle, list, it2);
            }
        });
    }

    /* renamed from: I */
    public final DialogNoteExportBinding m48080I() {
        return (DialogNoteExportBinding) this.binding.getValue();
    }

    /* renamed from: J */
    public final String m48081J(String extension) {
        FileUtils fileUtils = FileUtils.INSTANCE;
        String validFileName = fileUtils.getValidFileName(String.valueOf(m48080I().tieName.getText()), '.' + extension);
        NoteExporter noteExporter = NoteExporter.INSTANCE;
        String string = getContext().getString(C10651R.string.app_name_en);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return fileUtils.combinePath(noteExporter.getExportDir(string), validFileName);
    }

    /* renamed from: K */
    public final String m48082K(int progress) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.note_export_progress), Arrays.copyOf(new Object[]{Integer.valueOf(progress)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    /* renamed from: L */
    public final void m48083L() {
        m48080I().tieName.clearFocus();
        ViewKt.hideInputKeyboard(m48080I().tieName);
    }

    /* renamed from: M */
    public final void m48084M() {
        m48080I().vectorPdf.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.pvj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteExportDialog.m48046N(NoteExportDialog.this, view);
            }
        });
        m48080I().bitmapPdf.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qvj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteExportDialog.m48047O(NoteExportDialog.this, view);
            }
        });
        m48080I().imageFile.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rvj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteExportDialog.m48048P(NoteExportDialog.this, view);
            }
        });
        m48080I().noteFile.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.svj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteExportDialog.m48049Q(NoteExportDialog.this, view);
            }
        });
    }

    /* renamed from: R */
    public final void m48085R() {
        m48097g0();
        m48080I().vectorPdf.setSelected(true);
        m48080I().tvVectorPdf.setSelected(true);
    }

    /* renamed from: S */
    public final void m48086S() {
        Object first;
        m48080I().tieName.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.kvj
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                NoteExportDialog.m48050T(NoteExportDialog.this, view, z);
            }
        });
        m48080I().tieName.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$initTitleEdit$2
            @Override // android.text.TextWatcher
            public void afterTextChanged(@NotNull Editable s) {
                Intrinsics.checkNotNullParameter(s, "s");
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@NotNull CharSequence s, int start, int count, int after) {
                Intrinsics.checkNotNullParameter(s, "s");
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@NotNull CharSequence s, int start, int before, int count) {
                boolean m48102z;
                Intrinsics.checkNotNullParameter(s, "s");
                m48102z = NoteExportDialog.this.m48102z(s.toString());
                if (m48102z) {
                    return;
                }
                NoteExportDialog.this.m48094c0();
            }
        });
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.exportArgsList);
        String title = ((NoteExportArgs) first).getNoteModel().getTitle();
        if (this.exportArgsList.size() > 1) {
            title = ResManager.INSTANCE.getString(C10651R.string.export_file_multi_file_name);
        }
        m48080I().tieName.setText(title);
        m48080I().tieName.setSelection(title != null ? title.length() : 0);
    }

    /* renamed from: U */
    public final void m48087U() {
        m48080I().getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lvj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteExportDialog.m48051V(NoteExportDialog.this, view);
            }
        });
        TintTextView tintTextView = m48080I().savePath;
        Context context = getContext();
        int i = C10651R.string.export_save_path_format;
        NoteExporter noteExporter = NoteExporter.INSTANCE;
        String string = getContext().getString(C10651R.string.app_name_en);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String lowerCase = noteExporter.getExportRelativeDir(string).toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        tintTextView.setText(context.getString(i, lowerCase));
        m48086S();
        m48085R();
        m48084M();
    }

    /* renamed from: W */
    public final boolean m48088W() {
        Object first;
        if (CollectionKt.getSize(this.exportArgsList) > 1) {
            return true;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.exportArgsList);
        return ((NoteExportArgs) first).getNoteModel().isLibrary();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: X */
    public final void m48089X(Throwable e) {
        int i = 2;
        Function0 function0 = null;
        Object[] objArr = 0;
        if ((e instanceof OnyxException) && Intrinsics.areEqual(((OnyxException) e).getType(), BaseError.ACTION_ABORT)) {
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(C10651R.string.note_export_cancelled), false, 2, (Object) null);
            return;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        NoteExportResultDialog noteExportResultDialog = new NoteExportResultDialog(context, function0, i, objArr == true ? 1 : 0);
        noteExportResultDialog.onExportFail(e);
        noteExportResultDialog.show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Y */
    public final void m48090Y(String path) {
        Object[] objArr;
        List<NoteExportArgs> list = this.exportArgsList;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                if (((NoteExportArgs) it2.next()).getNoteProgressInfo().isError()) {
                    objArr = true;
                    break;
                }
            }
        }
        objArr = false;
        int i = 2;
        Function0 function0 = null;
        Object[] objArr2 = 0;
        if (objArr == true) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            NoteExportResultDialog noteExportResultDialog = new NoteExportResultDialog(context, function0, i, objArr2 == true ? 1 : 0);
            noteExportResultDialog.onExportResult(path, this.exportArgsList);
            noteExportResultDialog.show();
        } else if (this.canShare) {
            FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
            String extension = FilenameUtils.getExtension(path);
            Intrinsics.checkNotNullExpressionValue(extension, "getExtension(...)");
            String mimeType = fileExtensionUtils.mimeType(extension);
            if (mimeType == null) {
                mimeType = "application/octet-stream";
            }
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            ContextKt.shareFile(context2, path, mimeType);
        } else {
            String substring = path.substring(Environment.getExternalStorageDirectory().toString().length());
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            ToastUtils toastUtils = ToastUtils.INSTANCE;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.export_path), Arrays.copyOf(new Object[]{substring}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            ToastUtils.show$default(toastUtils, (CharSequence) format, false, 2, (Object) null);
        }
        ExportListener exportListener = this.listener;
        if (exportListener != null) {
            exportListener.onFileExported(path);
        }
    }

    /* renamed from: Z */
    public final void m48091Z(boolean hasFocus) {
        Object first;
        if (hasFocus) {
            return;
        }
        m48083L();
        if (String.valueOf(m48080I().tieName.getText()).length() == 0) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.exportArgsList);
            String title = ((NoteExportArgs) first).getNoteModel().getTitle();
            m48080I().tieName.setText(title);
            m48080I().tieName.setSelection(title != null ? title.length() : 0);
        }
    }

    /* renamed from: a0 */
    public final void m48092a0(int checkedId) {
        m48080I().formatDesc.setText(checkedId == C10651R.id.vector_pdf ? C10651R.string.vector_pdf_desc : checkedId == C10651R.id.bitmap_pdf ? C10651R.string.bitmap_pdf_desc : checkedId == C10651R.id.image_file ? C10651R.string.export_picture_desc : C10651R.string.note_file_desc);
        m48080I().formatWaringDesc.setText(C10651R.string.vector_pdf_warning_desc);
        LinearLayout formatWaringDescContainer = m48080I().formatWaringDescContainer;
        Intrinsics.checkNotNullExpressionValue(formatWaringDescContainer, "formatWaringDescContainer");
        formatWaringDescContainer.setVisibility(checkedId == C10651R.id.vector_pdf ? 0 : 8);
    }

    @RequiresApi(30)
    /* renamed from: b0 */
    public final void m48093b0() {
        Intent data = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION").setData(Uri.parse("package:" + getContext().getPackageName()));
        Intrinsics.checkNotNullExpressionValue(data, "setData(...)");
        getContext().startActivity(data);
    }

    /* renamed from: c0 */
    public final void m48094c0() {
        m48080I().tilName.setError(null);
    }

    /* renamed from: d0 */
    public final Observable<CommonProgressDialog> m48095d0() {
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        String valueOf = String.valueOf(m48080I().tieName.getText());
        ResManager resManager = ResManager.INSTANCE;
        String stringSafely = resManager.getStringSafely(C10651R.string.export_note);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(resManager.getStringSafely(C10651R.string.note_exporting), Arrays.copyOf(new Object[]{valueOf}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        CommonProgressDialog showCloseButton = new CommonProgressDialog(context).setTitleText(stringSafely).setSubText(format).showCloseButton(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog$showProgressDialog$dialog$1
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
                create.onError(OnyxException.INSTANCE.m31891of(BaseError.ACTION_ABORT));
            }
        });
        showCloseButton.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.mvj
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                NoteExportDialog.m48055e0(ReplaySubject.this, dialogInterface);
            }
        });
        showCloseButton.show();
        create.onNext(showCloseButton);
        return create;
    }

    /* renamed from: f0 */
    public final void m48096f0(CommonProgressDialog progressDialog, int progress) {
        progressDialog.updateProgress(progress);
        if (progress >= 100) {
            progressDialog.dismiss();
        }
    }

    /* renamed from: g0 */
    public final void m48097g0() {
        ScreenInfo screenInfo = DeviceFactory.INSTANCE.getScreenDevice().getScreenInfo();
        ScreenDisplayType screenDisplayType = screenInfo.getScreenDisplayType();
        ScreenDisplayType screenDisplayType2 = ScreenDisplayType.PHONE;
        float dimension = screenDisplayType == screenDisplayType2 ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_87) : ResManager.INSTANCE.getDimension(C7384R.dimen.dp_116);
        float dimension2 = screenInfo.getScreenDisplayType() == screenDisplayType2 ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_75) : ResManager.INSTANCE.getDimension(C7384R.dimen.dp_100);
        int i = (int) dimension;
        m48080I().vectorPdf.getLayoutParams().width = i;
        int i2 = (int) dimension2;
        m48080I().vectorPdf.getLayoutParams().height = i2;
        m48080I().bitmapPdf.getLayoutParams().width = i;
        m48080I().bitmapPdf.getLayoutParams().height = i2;
        m48080I().imageFile.getLayoutParams().width = i;
        m48080I().imageFile.getLayoutParams().height = i2;
        m48080I().noteFile.getLayoutParams().width = i;
        m48080I().noteFile.getLayoutParams().height = i2;
    }

    /* renamed from: h0 */
    public final void m48098h0(int id) {
        m48080I().vectorPdf.setSelected(id == C10651R.id.vector_pdf);
        m48080I().tvVectorPdf.setSelected(id == C10651R.id.vector_pdf);
        m48080I().bitmapPdf.setSelected(id == C10651R.id.bitmap_pdf);
        m48080I().tvBitmapPdf.setSelected(id == C10651R.id.bitmap_pdf);
        m48080I().imageFile.setSelected(id == C10651R.id.image_file);
        m48080I().tvImageFile.setSelected(id == C10651R.id.image_file);
        m48080I().noteFile.setSelected(id == C10651R.id.note_file);
        m48080I().tvNoteFile.setSelected(id == C10651R.id.note_file);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteExportDialog(@NotNull NoteExportDialog event) {
        Intrinsics.checkNotNullParameter(event, "event");
        GlobalBundle.INSTANCE.unregister(this);
        m48073A();
    }

    @NotNull
    public final NoteExportDialog setExportPageRangeText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        ViewKt.setViewVisibleOrGone(m48080I().llExportPages, true);
        m48080I().tvExportPages.setText(text);
        return this;
    }

    public final void setListener(@NotNull ExportListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    /* renamed from: u */
    public final void m48099u() {
        m48080I().tilName.setError(getContext().getString(C10651R.string.no_more_than_bytes_placeholder, 254));
    }

    /* renamed from: v */
    public final <T extends RxBaseAction<ProgressInfo>> Observable<ProgressInfo> m48100v(T action, final String exportFilePath) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Observable<ProgressInfo> doFinally = m48095d0().doOnNext(new C12325a(objectRef)).observeOn(Schedulers.m61350io()).doOnNext(new C12326b()).flatMap(new C12327c(action)).observeOn(AndroidSchedulers.mainThread()).doOnError(new C12328d()).doOnNext(new C12329e(objectRef)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.nvj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteExportDialog.m48071w(NoteExportDialog.this, exportFilePath);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.ovj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteExportDialog.m48072x(Ref.ObjectRef.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: y */
    public final void m48101y() {
        NoteExporter noteExporter = NoteExporter.INSTANCE;
        String string = getContext().getString(C10651R.string.app_name_en);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String exportDir = noteExporter.getExportDir(string);
        long availableSize = StatFsUtils.INSTANCE.getAvailableSize(noteExporter.getExportRootDir());
        if (availableSize <= 0) {
            return;
        }
        if (availableSize >= NoteConstant.EXPORT_LIMIT_STORAGE_SIZE) {
            return;
        }
        LogUtils.file(NoteExportDialog.class.getSimpleName(), "checkExportFreeSpace() SpaceNotEnoughException path:" + exportDir + ";freeSpace:" + availableSize + ";exportLimitStorageSize:" + NoteConstant.EXPORT_LIMIT_STORAGE_SIZE);
        throw new SpaceNotEnoughException();
    }

    /* renamed from: z */
    public final boolean m48102z(String name) {
        byte[] bytes = StringKt.safelyGetStr(name).getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        if (!(bytes.length > 254)) {
            return false;
        }
        m48099u();
        return true;
    }
}

package com.onyx.galaxy.note.editor.handler;

import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Lifecycle;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertCancelEvent;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertProgressEvent;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentState;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsCancelEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsProgressEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageProgressEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageState;
import com.onyx.android.sdk.universal.editor.events.app.ImportTaskInfo;
import com.onyx.android.sdk.universal.editor.events.app.ShowImportSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.note.ImportNoteProgressEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.view.dialog.ImportSuccessDialog;
import com.onyx.galaxy.note.common.view.ConvertProgressDialog;
import com.onyx.galaxy.note.common.view.ImportProgressDialog;
import com.onyx.galaxy.note.databinding.DialogConvertFileProgressBinding;
import com.onyx.galaxy.note.editor.data.ImportProgressArgs;
import com.onyx.galaxy.note.editor.handler.ProgressEventHandler;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010%\u001a\u00020#\u0012\u0006\u00103\u001a\u000202¢\u0006\u0004\b4\u00105J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\b\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0002J\u0014\u0010\u0018\u001a\u00020\u00022\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0002J\u001a\u0010!\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001d2\b\b\u0002\u0010 \u001a\u00020\u001fH\u0002J\b\u0010\"\u001a\u00020\u001fH\u0002R\u0014\u0010%\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010$R\u0018\u0010(\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010'R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010'R\u0018\u0010,\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010+R\u0016\u0010/\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010.R\u0016\u00101\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u00100¨\u00066"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "", "disableToast", "Lcom/onyx/android/sdk/universal/editor/events/note/ImportNoteProgressEvent;", NotificationCompat.CATEGORY_EVENT, "onImportNoteProgressEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;", "onImportDocumentsProgressEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;", "onImportImageProgressEvent", "Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;", "onDocConvertProgressEvent", C6997f.f39671c, C4921e.f26537n, "u", "r", "j", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "importSelectedContext", "p", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "action", "e", "d", C6999h.f39688c, "m", C6998g.f39679a, "", "content", "", "withLongDuration", "s", "i", "Landroidx/appcompat/app/AppCompatActivity;", "Landroidx/appcompat/app/AppCompatActivity;", ActivityChooserModel.f1429r, "Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;", "Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;", "importProgressDialog", "importImageProgressDialog", "Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;", "Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;", "docConvertDialog", "", "I", "docConvertStatus", Constants.HASIDCALL_INDEX_SIG, "enableToast", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/appcompat/app/AppCompatActivity;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nProgressEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/ProgressEventHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,302:1\n1#2:303\n1864#3,3:304\n*S KotlinDebug\n*F\n+ 1 ProgressEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/ProgressEventHandler\n*L\n205#1:304,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ProgressEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final AppCompatActivity activity;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ImportProgressDialog importProgressDialog;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public ImportProgressDialog importImageProgressDialog;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public ConvertProgressDialog docConvertDialog;

    /* renamed from: j, reason: from kotlin metadata */
    public int docConvertStatus;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean enableToast;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ImportDocumentState.values().length];
            try {
                iArr[ImportDocumentState.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ImportDocumentState.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ImportImageState.values().length];
            try {
                iArr2[ImportImageState.IMPORTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ImportImageState.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ImportImageState.COMPLETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProgressEventHandler(@NotNull AppCompatActivity activity, @NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.activity = activity;
        this.docConvertStatus = 200;
        this.enableToast = true;
    }

    /* renamed from: l */
    public static final void m46243l(ProgressEventHandler this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46247d();
    }

    /* renamed from: o */
    public static final void m46244o(ProgressEventHandler this$0, ImportDocumentsProgressEvent event, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        this$0.m46248e(event.getAction());
    }

    /* renamed from: q */
    public static final void m46245q(ImportSelectedContext importSelectedContext) {
        Intrinsics.checkNotNullParameter(importSelectedContext, "$importSelectedContext");
        DocCollectionBundle.INSTANCE.postEvent(new ShowImportSuccessEvent(importSelectedContext));
    }

    /* renamed from: t */
    public static /* synthetic */ void m46246t(ProgressEventHandler progressEventHandler, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        progressEventHandler.m46259s(str, z);
    }

    /* renamed from: d */
    public final void m46247d() {
        getEditorBundle().getUiBundle().getEventBus().post(new DocConvertCancelEvent());
        EditorBundleKt.postEvent(DocCollectionBundle.INSTANCE.docManagerBundle(), new ImportDocumentsCancelEvent());
        m46249f();
    }

    public final void disableToast() {
        this.enableToast = false;
    }

    /* renamed from: e */
    public final void m46248e(RxBaseAction<?> action) {
        action.dispose();
        m46251h();
        EditorBundleKt.postEvent(getEditorBundle(), new ImportDocumentsCancelEvent());
    }

    /* renamed from: f */
    public final void m46249f() {
        ConvertProgressDialog convertProgressDialog = this.docConvertDialog;
        if (convertProgressDialog != null) {
            convertProgressDialog.dismiss();
        }
        this.docConvertDialog = null;
    }

    /* renamed from: g */
    public final void m46250g() {
        ImportProgressDialog importProgressDialog = this.importImageProgressDialog;
        if (importProgressDialog != null) {
            importProgressDialog.dismiss();
        }
        this.importImageProgressDialog = null;
    }

    /* renamed from: h */
    public final void m46251h() {
        ImportProgressDialog importProgressDialog = this.importProgressDialog;
        if (importProgressDialog != null) {
            importProgressDialog.dismiss();
        }
        this.importProgressDialog = null;
    }

    /* renamed from: i */
    public final boolean m46252i() {
        return this.activity.getLifecycle().getState() == Lifecycle.State.RESUMED;
    }

    /* renamed from: j */
    public final void m46253j(ImportDocumentsProgressEvent event) {
        Sequence asSequence;
        Sequence filter;
        List list;
        asSequence = CollectionsKt___CollectionsKt.asSequence(event.getTaskInfoList());
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<ImportTaskInfo, Boolean>() { // from class: com.onyx.galaxy.note.editor.handler.ProgressEventHandler$onImportComplete$errorList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ImportTaskInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getState() == ImportDocumentState.ERROR);
            }
        });
        list = SequencesKt___SequencesKt.toList(filter);
        if (list.isEmpty()) {
            ImportSelectedContext importSelectedContext = event.getImportNoteArgs().getImportSelectedContext();
            if (importSelectedContext != null) {
                importSelectedContext.completeCount(event.getOriginUriList(), event.getTotalImportCount(), new Function1<ImportSelectedContext, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.ProgressEventHandler$onImportComplete$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(ImportSelectedContext importSelectedContext2) {
                        invoke2(importSelectedContext2);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull ImportSelectedContext it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        ProgressEventHandler.this.m46257p(it2);
                    }
                });
            } else {
                m46258r(event);
            }
        } else if (event.getTotalImportCount() == 1) {
            m46246t(this, ResManager.INSTANCE.getStringSafely(C10651R.string.import_file_fail), false, 2, null);
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                stringBuffer.append(((ImportTaskInfo) obj).getOriginalFileName());
                if (i != list.size() - 1) {
                    stringBuffer.append("\n");
                }
                i = i2;
            }
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "onImportComplete, error list: " + ((Object) stringBuffer), new Object[0]);
            m46259s(ResManager.INSTANCE.getString(C10651R.string.import_one_file_fail, stringBuffer.toString()), true);
        }
        m46251h();
    }

    /* renamed from: k */
    public final void m46254k(DocConvertProgressEvent event) {
        DialogConvertFileProgressBinding binding;
        TintImageView tintImageView;
        if (m46252i()) {
            if (this.docConvertDialog == null) {
                this.docConvertDialog = new ConvertProgressDialog(this.activity);
            }
            ConvertProgressDialog convertProgressDialog = this.docConvertDialog;
            if (convertProgressDialog != null) {
                convertProgressDialog.show();
            }
            ConvertProgressDialog convertProgressDialog2 = this.docConvertDialog;
            if (convertProgressDialog2 != null) {
                convertProgressDialog2.updateProgress(event);
            }
            ConvertProgressDialog convertProgressDialog3 = this.docConvertDialog;
            if (convertProgressDialog3 == null || (binding = convertProgressDialog3.getBinding()) == null || (tintImageView = binding.ivClose) == null) {
                return;
            }
            tintImageView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.l8l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ProgressEventHandler.m46243l(ProgressEventHandler.this, view);
                }
            });
        }
    }

    /* renamed from: m */
    public final void m46255m(ImportImageProgressEvent event) {
        if (m46252i()) {
            if (this.importImageProgressDialog == null) {
                ImportProgressDialog importProgressDialog = new ImportProgressDialog(this.activity);
                this.importImageProgressDialog = importProgressDialog;
                importProgressDialog.show();
            }
            ImportProgressDialog importProgressDialog2 = this.importImageProgressDialog;
            if (importProgressDialog2 != null) {
                ImportProgressArgs importProgressArgs = new ImportProgressArgs();
                importProgressArgs.setFileName(ResManager.INSTANCE.getStringSafely(C10651R.string.picture));
                importProgressArgs.setProgress(event.getProgress());
                importProgressArgs.setCurrentNumber(event.getCurrentIndex() + 1);
                importProgressArgs.setTotalCount(event.getTotalImportCount());
                importProgressDialog2.setProgressInfo(importProgressArgs);
            }
        }
    }

    /* renamed from: n */
    public final void m46256n(final ImportDocumentsProgressEvent event) {
        if (m46252i()) {
            if (this.importProgressDialog == null) {
                ImportProgressDialog importProgressDialog = new ImportProgressDialog(this.activity);
                importProgressDialog.getBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m8l
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ProgressEventHandler.m46244o(ProgressEventHandler.this, event, view);
                    }
                });
                importProgressDialog.show();
                this.importProgressDialog = importProgressDialog;
            }
            ImportProgressDialog importProgressDialog2 = this.importProgressDialog;
            if (importProgressDialog2 != null) {
                ImportProgressArgs importProgressArgs = new ImportProgressArgs();
                importProgressArgs.setFileName(event.getCurrentTaskInfo().getOriginalFileName());
                importProgressArgs.setProgress((int) event.getProgressInfo().getProgress());
                importProgressArgs.setCurrentNumber(event.getCurrentIndex() + 1);
                importProgressArgs.setTotalCount(event.getTotalImportCount());
                importProgressDialog2.setProgressInfo(importProgressArgs);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocConvertProgressEvent(@NotNull DocConvertProgressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        switch (event.getStatus()) {
            case 200:
                m46254k(event);
                break;
            case 201:
            case 202:
                m46260u(event);
                break;
            case 203:
            case 204:
                m46249f();
                break;
        }
        this.docConvertStatus = event.getStatus();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportDocumentsProgressEvent(@NotNull ImportDocumentsProgressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int i = WhenMappings.$EnumSwitchMapping$0[event.getTotalState().ordinal()];
        if (i == 1) {
            m46246t(this, ResManager.INSTANCE.getStringSafely(C10651R.string.import_file_fail), false, 2, null);
            m46251h();
        } else if (i != 2) {
            m46256n(event);
        } else {
            m46253j(event);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportImageProgressEvent(@NotNull ImportImageProgressEvent event) {
        Unit unit;
        Intrinsics.checkNotNullParameter(event, "event");
        final ImportSelectedContext importSelectedContext = event.getImportSelectedContext();
        int i = WhenMappings.$EnumSwitchMapping$1[event.getImportImageState().ordinal()];
        if (i == 1) {
            m46255m(event);
            return;
        }
        if (i == 2) {
            m46250g();
            m46246t(this, ResManager.INSTANCE.getStringSafely(C10651R.string.import_picture_fail), false, 2, null);
        } else {
            if (i != 3) {
                return;
            }
            m46250g();
            if (importSelectedContext != null) {
                importSelectedContext.completeCount(event.getUriList(), event.getTotalImportCount(), new Function1<ImportSelectedContext, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.ProgressEventHandler$onImportImageProgressEvent$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(ImportSelectedContext importSelectedContext2) {
                        invoke2(importSelectedContext2);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull ImportSelectedContext it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        ProgressEventHandler.this.m46257p(importSelectedContext);
                    }
                });
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                m46246t(this, ResManager.INSTANCE.getStringSafely(C10651R.string.import_picture_success), false, 2, null);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportNoteProgressEvent(@NotNull ImportNoteProgressEvent event) {
        NoteImportArgs importingNoteArgs;
        Intrinsics.checkNotNullParameter(event, "event");
        ImportProgressDialog importProgressDialog = this.importProgressDialog;
        if (importProgressDialog == null || (importingNoteArgs = NoteImportArgs.INSTANCE.getImportingNoteArgs(event.getList())) == null) {
            return;
        }
        String fileName = UriKt.getFileName(importingNoteArgs.getImportFileUri(), ResManager.INSTANCE.getAppContext());
        int noteProgress = (int) importingNoteArgs.getNoteProgress();
        ImportProgressArgs importProgressArgs = new ImportProgressArgs();
        importProgressArgs.setFileName(fileName);
        importProgressArgs.setProgress(noteProgress);
        importProgressDialog.setProgressInfo(importProgressArgs);
    }

    /* renamed from: p */
    public final void m46257p(final ImportSelectedContext importSelectedContext) {
        if (importSelectedContext.isOpenDocument()) {
            ViewLocator.INSTANCE.getActivityContentView(this.activity).postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.k8l
                @Override // java.lang.Runnable
                public final void run() {
                    ProgressEventHandler.m46245q(ImportSelectedContext.this);
                }
            }, 500L);
        } else {
            new ImportSuccessDialog(this.activity, importSelectedContext).show();
        }
    }

    /* renamed from: r */
    public final void m46258r(ImportDocumentsProgressEvent event) {
        String string;
        NoteImportArgs importNoteArgs = event.getImportNoteArgs();
        if (StringKt.isNotEmpty(importNoteArgs.getImportFolderName())) {
            string = ' ' + importNoteArgs.getImportFolderName() + ' ' + ResManager.INSTANCE.getString(C10651R.string.folder);
        } else {
            List<String> importTagNameList = importNoteArgs.getImportTagNameList();
            if (importTagNameList == null || importTagNameList.isEmpty()) {
                string = ResManager.INSTANCE.getString(C10651R.string.all_note);
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(' ');
                List<String> importTagNameList2 = importNoteArgs.getImportTagNameList();
                sb.append(importTagNameList2 != null ? CollectionsKt___CollectionsKt.joinToString$default(importTagNameList2, ",", null, null, 0, null, null, 62, null) : null);
                sb.append(' ');
                sb.append(ResManager.INSTANCE.getString(C10651R.string.tag));
                string = sb.toString();
            }
        }
        m46259s(ResManager.INSTANCE.getString(C10651R.string.import_success_toast_msg, Integer.valueOf(event.getAction().getCompletedFileTotalCount()), string), true);
    }

    /* renamed from: s */
    public final void m46259s(String content, boolean withLongDuration) {
        if (this.enableToast && m46252i()) {
            ToastUtils.INSTANCE.show(content, withLongDuration);
        }
    }

    /* renamed from: u */
    public final void m46260u(DocConvertProgressEvent event) {
        ConvertProgressDialog convertProgressDialog = this.docConvertDialog;
        if (convertProgressDialog != null) {
            if (convertProgressDialog != null) {
                convertProgressDialog.updateProgress(event);
            }
        } else {
            if (event.isAllTaskComplete() || this.docConvertStatus == 204) {
                return;
            }
            event.setStatus(200);
            m46254k(event);
        }
    }
}

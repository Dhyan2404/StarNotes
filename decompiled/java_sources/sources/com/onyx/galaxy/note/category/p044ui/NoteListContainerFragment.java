package com.onyx.galaxy.note.category.p044ui;

import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultLauncher;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentContainerView;
import androidx.lifecycle.Observer;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.debug.PerformanceWatcher;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.replicator.event.PullRemoveSyncNoteEvent;
import com.onyx.android.sdk.replicator.event.PullSyncNoteEvent;
import com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.docmanager.action.name.NoteNameCreateAction;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsDoneEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageArgs;
import com.onyx.android.sdk.universal.editor.events.app.UserNoteListImportedEvent;
import com.onyx.android.sdk.universal.editor.events.note.SavedDocumentEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.cover.ImportFilesAsCustomCoverAction;
import com.onyx.galaxy.note.category.action.template.ImportFilesAsCustomPaperAction;
import com.onyx.galaxy.note.category.action.template.ImportOfficialTemplateCoverToDBAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.data.TemplateFileBean;
import com.onyx.galaxy.note.category.event.CoverDocumentsEvent;
import com.onyx.galaxy.note.category.event.CoverImageContentEvent;
import com.onyx.galaxy.note.category.event.GotoUpEvent;
import com.onyx.galaxy.note.category.event.HandleCustomCoverDocumentsEvent;
import com.onyx.galaxy.note.category.event.HandleCustomPaperDocumentsEvent;
import com.onyx.galaxy.note.category.event.NCreateNoteModelResultEvent;
import com.onyx.galaxy.note.category.event.NCreateScribbleNoteEvent;
import com.onyx.galaxy.note.category.event.OnCreateFolderEvent;
import com.onyx.galaxy.note.category.event.OnDeleteNoteEvent;
import com.onyx.galaxy.note.category.event.OnDeleteTagEvent;
import com.onyx.galaxy.note.category.event.OnDragMoveFolderEvent;
import com.onyx.galaxy.note.category.event.OnEditFolderEvent;
import com.onyx.galaxy.note.category.event.OnEditListNoteEvent;
import com.onyx.galaxy.note.category.event.OnEditTagEvent;
import com.onyx.galaxy.note.category.event.OnMoveNoteEvent;
import com.onyx.galaxy.note.category.event.OnRecoverNoteEvent;
import com.onyx.galaxy.note.category.event.OnSaveNoteEvent;
import com.onyx.galaxy.note.category.event.OnSaveTagEvent;
import com.onyx.galaxy.note.category.event.PaperDocumentsEvent;
import com.onyx.galaxy.note.category.event.PaperImageContentEvent;
import com.onyx.galaxy.note.category.handler.DocManagerHandler;
import com.onyx.galaxy.note.category.p044ui.NoteListContainerFragment;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.databinding.FragmentNoteListContainerBinding;
import com.onyx.galaxy.note.databinding.LayoutBannerNotificationBinding;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.onyx.galaxy.note.message.handler.NotificationHandler;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.onyx.galaxy.note.settings.event.CloudRestoreEvent;
import com.onyx.galaxy.note.settings.event.LocalRecoveryEvent;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b|\u0010}J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u000f\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0010\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001e\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0014\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0015\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0016\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0017\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0012\u0010\u001a\u001a\u00020\u00022\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J$\u0010 \u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u001f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010#\u001a\u00020\u0002H\u0016J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$H\u0007J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010%\u001a\u00020'H\u0007J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010%\u001a\u00020)H\u0007J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010%\u001a\u00020+H\u0007J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010%\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00022\u0006\u0010%\u001a\u00020/H\u0007J\u0010\u00102\u001a\u00020\u00022\u0006\u0010%\u001a\u000201H\u0007J\u0010\u00104\u001a\u00020\u00022\u0006\u0010%\u001a\u000203H\u0007J\u0010\u00106\u001a\u00020\u00022\u0006\u0010%\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00022\u0006\u0010%\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u00022\u0006\u0010%\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00022\u0006\u0010%\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00022\u0006\u0010%\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010%\u001a\u00020?H\u0007J\u0010\u0010B\u001a\u00020\u00022\u0006\u0010%\u001a\u00020AH\u0007J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010%\u001a\u00020CH\u0007J\u0010\u0010F\u001a\u00020\u00022\u0006\u0010%\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00022\u0006\u0010%\u001a\u00020GH\u0007J\u0010\u0010J\u001a\u00020\u00022\u0006\u0010%\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00022\u0006\u0010%\u001a\u00020KH\u0007J\u0010\u0010N\u001a\u00020\u00022\u0006\u0010%\u001a\u00020MH\u0007J\u0010\u0010P\u001a\u00020\u00022\u0006\u0010%\u001a\u00020OH\u0007J\u0010\u0010R\u001a\u00020\u00022\u0006\u0010%\u001a\u00020QH\u0007J\u0010\u0010T\u001a\u00020\u00022\u0006\u0010%\u001a\u00020SH\u0007J\u0010\u0010V\u001a\u00020\u00022\u0006\u0010%\u001a\u00020UH\u0007R\u001b\u0010\\\u001a\u00020W8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bX\u0010Y\u001a\u0004\bZ\u0010[R\u001b\u0010a\u001a\u00020]8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u0010Y\u001a\u0004\b_\u0010`R\u001b\u0010f\u001a\u00020b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bc\u0010Y\u001a\u0004\bd\u0010eR\u0014\u0010j\u001a\u00020g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010iR\u0016\u0010l\u001a\u00020g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010iR\"\u0010q\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110n0m8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bo\u0010pR\u001c\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00110m8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\br\u0010pR\u001c\u0010u\u001a\b\u0012\u0004\u0012\u00020\u00110m8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bt\u0010pR\"\u0010w\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110n0m8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bv\u0010pR\u001c\u0010y\u001a\b\u0012\u0004\u0012\u00020\u00110m8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bx\u0010pR\"\u0010{\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110n0m8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bz\u0010p¨\u0006~"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "D0", "H0", "u0", "F0", "C0", "o0", "E0", "", "Landroid/net/Uri;", "uris", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "G0", "w0", "x0", "", OcrValues.LANG_ITALIAN, "B0", "y0", "v0", "z0", "A0", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroyView", "Lcom/onyx/android/sdk/replicator/event/PullSyncNoteEvent;", NotificationCompat.CATEGORY_EVENT, "onPullSyncNoteEvent", "Lcom/onyx/android/sdk/replicator/event/PullRemoveSyncNoteEvent;", "onPullRemoveSyncNoteEvent", "Lcom/onyx/galaxy/note/category/event/NCreateNoteModelResultEvent;", "onReloadDataEvent", "Lcom/onyx/galaxy/note/category/event/OnDragMoveFolderEvent;", "onDragMoveFolderEvent", "Lcom/onyx/galaxy/note/category/event/OnSaveNoteEvent;", "onSaveNoteEvent", "Lcom/onyx/galaxy/note/category/event/OnCreateFolderEvent;", "onCreateFolderEvent", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", "onAccountChangedEvent", "Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;", "onNCreateScribbleNoteEvent", "Lcom/onyx/galaxy/note/category/event/PaperImageContentEvent;", "onPaperImageContentEvent", "Lcom/onyx/galaxy/note/category/event/CoverImageContentEvent;", "onCoverCreateImageContentEvent", "Lcom/onyx/galaxy/note/category/event/CoverDocumentsEvent;", "onCoverDocumentsEvent", "Lcom/onyx/galaxy/note/category/event/PaperDocumentsEvent;", "onPaperDocumentsEvent", "Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;", "onDeleteNoteEvent", "Lcom/onyx/galaxy/note/category/event/OnRecoverNoteEvent;", "onRecoverNoteEvent", "Lcom/onyx/galaxy/note/category/event/OnMoveNoteEvent;", "onMoveNoteEvent", "Lcom/onyx/galaxy/note/category/event/OnEditFolderEvent;", "onEditFolderEvent", "Lcom/onyx/galaxy/note/category/event/OnEditListNoteEvent;", "onEditListNoteEvent", "Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;", "onDeleteTagEvent", "Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;", "onSaveTagEvent", "Lcom/onyx/galaxy/note/category/event/OnEditTagEvent;", "onEditTagEvent", "Lcom/onyx/galaxy/note/settings/event/LocalRecoveryEvent;", "onLocalRecoveryEvent", "Lcom/onyx/galaxy/note/settings/event/CloudRestoreEvent;", "onDriveRecoveryEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SavedDocumentEvent;", "onSavedDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;", "onUserNoteListImportedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsDoneEvent;", "onImportDocumentsDoneEvent", "Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;", "d1", "Lkotlin/Lazy;", "r0", "()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;", "binding", "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "e1", "t0", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "viewModel", "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "f1", "s0", "()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "notificationViewModel", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "g1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "h1", "viewScopeDisposables", "Landroidx/activity/result/ActivityResultLauncher;", "", "i1", "Landroidx/activity/result/ActivityResultLauncher;", "getBookContentLauncher", "j1", "getImageContentLauncher", "k1", "getPaperImageContentLauncher", "l1", "getPaperDocumentsLauncher", "m1", "getCoverImageContentLauncher", "n1", "getCoverDocumentsLauncher", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteListContainerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListContainerFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListContainerFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,472:1\n288#2,2:473\n1549#2:475\n1620#2,3:476\n1549#2:479\n1620#2,3:480\n277#3,2:483\n277#3,2:485\n*S KotlinDebug\n*F\n+ 1 NoteListContainerFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListContainerFragment\n*L\n242#1:473,2\n466#1:475\n466#1:476,3\n470#1:479\n470#1:480,3\n355#1:483,2\n356#1:485,2\n*E\n"})
/* loaded from: classes17.dex */
public final class NoteListContainerFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy notificationViewModel;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public CompositeDisposable viewScopeDisposables;

    /* renamed from: i1, reason: from kotlin metadata */
    public ActivityResultLauncher<String[]> getBookContentLauncher;

    /* renamed from: j1, reason: from kotlin metadata */
    public ActivityResultLauncher<String> getImageContentLauncher;

    /* renamed from: k1, reason: from kotlin metadata */
    public ActivityResultLauncher<String> getPaperImageContentLauncher;

    /* renamed from: l1, reason: from kotlin metadata */
    public ActivityResultLauncher<String[]> getPaperDocumentsLauncher;

    /* renamed from: m1, reason: from kotlin metadata */
    public ActivityResultLauncher<String> getCoverImageContentLauncher;

    /* renamed from: n1, reason: from kotlin metadata */
    public ActivityResultLauncher<String[]> getCoverDocumentsLauncher;

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$a */
    /* loaded from: classes9.dex */
    public static final class C11265a<T> implements Consumer {

        /* renamed from: e */
        public static final C11265a<T> f54671e = new C11265a<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$b */
    /* loaded from: classes9.dex */
    public static final class C11266b<T> implements Consumer {

        /* renamed from: e */
        public static final C11266b<T> f54672e = new C11266b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CoverModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$c */
    /* loaded from: classes9.dex */
    public static final class C11267c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<Uri> f54674f;

        /* JADX WARN: Multi-variable type inference failed */
        public C11267c(List<? extends Uri> list) {
            this.f54674f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListContainerFragment.this.m43214B0(it2, this.f54674f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$d */
    /* loaded from: classes9.dex */
    public static final class C11268d<T> implements Consumer {

        /* renamed from: e */
        public static final C11268d<T> f54675e = new C11268d<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$e */
    /* loaded from: classes9.dex */
    public static final class C11269e<T> implements Consumer {

        /* renamed from: e */
        public static final C11269e<T> f54676e = new C11269e<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$f */
    /* loaded from: classes9.dex */
    public static final class C11270f<T> implements Consumer {
        public C11270f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(List<NotificationModel> list) {
            ViewKt.setViewVisibleOrGone(NoteListContainerFragment.this.m43222r0().bannerLayout.getRoot(), false);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$g */
    /* loaded from: classes9.dex */
    public static final class C11271g<T, R> implements Function {
        public C11271g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotificationModel> apply(List<NotificationModel> list) {
            NotificationViewModel m43223s0 = NoteListContainerFragment.this.m43223s0();
            Intrinsics.checkNotNull(list);
            return m43223s0.filterBannerNotification(list);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$h */
    /* loaded from: classes9.dex */
    public static final class C11272h<T> implements Consumer {
        public C11272h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NotificationModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NotificationHandler notificationHandler = NotificationHandler.INSTANCE;
            LayoutBannerNotificationBinding bannerLayout = NoteListContainerFragment.this.m43222r0().bannerLayout;
            Intrinsics.checkNotNullExpressionValue(bannerLayout, "bannerLayout");
            notificationHandler.handleBannerNotification(it2, bannerLayout);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$i */
    /* loaded from: classes9.dex */
    public static final class C11273i implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f54680a;

        public C11273i(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f54680a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final kotlin.Function<?> getFunctionDelegate() {
            return this.f54680a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f54680a.invoke(obj);
        }
    }

    public NoteListContainerFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentNoteListContainerBinding>() { // from class: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentNoteListContainerBinding invoke() {
                return FragmentNoteListContainerBinding.inflate(NoteListContainerFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteListViewModel invoke() {
                FragmentActivity requireActivity = NoteListContainerFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NoteListViewModel) FragmentActivityKt.getViewModel(requireActivity, NoteListViewModel.class);
            }
        });
        this.viewModel = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<NotificationViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$notificationViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NotificationViewModel invoke() {
                FragmentActivity requireActivity = NoteListContainerFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NotificationViewModel) FragmentActivityKt.getViewModel(requireActivity, NotificationViewModel.class);
            }
        });
        this.notificationViewModel = lazy3;
        this.compositeDisposable = new CompositeDisposable();
        this.viewScopeDisposables = new CompositeDisposable();
    }

    /* renamed from: I0 */
    public static final void m43207I0(NoteListContainerFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean z = NoteTreeBundle.INSTANCE.activeFilterType() == 4;
        FragmentContainerView fcFolderRoot = this$0.m43222r0().fcFolderRoot;
        Intrinsics.checkNotNullExpressionValue(fcFolderRoot, "fcFolderRoot");
        fcFolderRoot.setVisibility(z ^ true ? 4 : 0);
        FragmentContainerView fcViewPage = this$0.m43222r0().fcViewPage;
        Intrinsics.checkNotNullExpressionValue(fcViewPage, "fcViewPage");
        fcViewPage.setVisibility(z ? 4 : 0);
    }

    /* renamed from: p0 */
    public static final void m43211p0(NoteListContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object tag = this$0.m43222r0().bannerLayout.getRoot().getTag(C10651R.id.tag_key_data);
        NotificationModel notificationModel = tag instanceof NotificationModel ? (NotificationModel) tag : null;
        if (notificationModel == null) {
            return;
        }
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onPrimaryButtonClick(notificationModel);
        notificationDisplayHandler.navigateWithStrategy(notificationModel.getComponents().getContent().getNavType(), notificationModel.getComponents().getContent().getArgs());
    }

    /* renamed from: q0 */
    public static final void m43212q0(NoteListContainerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object tag = this$0.m43222r0().bannerLayout.getRoot().getTag(C10651R.id.tag_key_data);
        NotificationModel notificationModel = tag instanceof NotificationModel ? (NotificationModel) tag : null;
        if (notificationModel == null) {
            return;
        }
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onSecondaryButtonClick(notificationModel);
        notificationDisplayHandler.navigateWithStrategy(notificationModel.getComponents().getButton2().getNavType(), notificationModel.getComponents().getButton2().getArgs());
        ViewKt.setViewVisibleOrGone(this$0.m43222r0().bannerLayout.getRoot(), false);
        this$0.m43223s0().setBannerNotificationClosed(true);
    }

    /* renamed from: A0 */
    public final void m43213A0(List<? extends Uri> uris) {
        int collectionSizeOrDefault;
        DocCollectionBundle docCollectionBundle = DocCollectionBundle.INSTANCE;
        List<? extends Uri> list = uris;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new DocumentFileEntry((Uri) it2.next()));
        }
        docCollectionBundle.postEvent(new HandleCustomPaperDocumentsEvent(arrayList, null, 2, null));
    }

    /* renamed from: B0 */
    public final void m43214B0(String it2, List<? extends Uri> uris) {
        List listOfNotNull;
        String normalizedFolderId = m43224t0().getNormalizedFolderId();
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(m43224t0().getNormalizedTagId());
        DocCollectionBundle.importImage$default(DocCollectionBundle.INSTANCE, new ImportImageArgs(it2, uris, normalizedFolderId, listOfNotNull, null, 16, null), null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: C0 */
    public final void m43215C0() {
        m43218F0();
        m43217E0();
        RxBaseAction.execute$default(new ImportOfficialTemplateCoverToDBAction(null, 1, 0 == true ? 1 : 0), null, null, null, 7, null);
    }

    /* renamed from: D0 */
    public final void m43216D0() {
        m43224t0().getFilterInfo().observe(requireActivity(), new C11273i(new Function1<FilterInfo, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$initViewModel$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(FilterInfo filterInfo) {
                invoke2(filterInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(FilterInfo filterInfo) {
                NoteListContainerFragment.this.m43220H0();
            }
        }));
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnNext = m43223s0().getNotifications().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11270f()).flatMap(new C11271g()).doOnNext(new C11272h());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        this.viewScopeDisposables.add(OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null));
    }

    /* renamed from: E0 */
    public final void m43217E0() {
        m43224t0().initList();
    }

    /* renamed from: F0 */
    public final void m43218F0() {
        NoteCloudSyncCheckArgs noteCloudSyncCheckArgs = new NoteCloudSyncCheckArgs();
        noteCloudSyncCheckArgs.setCheckConfig(false);
        StartReplicatorBean startReplicatorBean = new StartReplicatorBean(0, false, false, false, null, null, false, 127, null);
        startReplicatorBean.setSyncAll(true);
        OnyxErrorHandler.subscribeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, new StartNoteDocSyncAction(startReplicatorBean, noteCloudSyncCheckArgs).build(), null, null, 3, null);
    }

    /* renamed from: G0 */
    public final List<NoteImportArgs> m43219G0(List<? extends Uri> uris) {
        List<String> listOfNotNull;
        NoteImportArgs.Companion companion = NoteImportArgs.INSTANCE;
        String normalizedFolderId = m43224t0().getNormalizedFolderId();
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(m43224t0().getNormalizedTagId());
        return companion.create(uris, normalizedFolderId, listOfNotNull);
    }

    /* renamed from: H0 */
    public final void m43220H0() {
        m43222r0().getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.twj
            @Override // java.lang.Runnable
            public final void run() {
                NoteListContainerFragment.m43207I0(NoteListContainerFragment.this);
            }
        });
    }

    /* renamed from: o0 */
    public final void m43221o0() {
        TintTextView contentText = m43222r0().bannerLayout.contentText;
        Intrinsics.checkNotNullExpressionValue(contentText, "contentText");
        com.onyx.android.sdk.extension.ViewKt.click$default(contentText, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rwj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListContainerFragment.m43211p0(NoteListContainerFragment.this, view);
            }
        }, 1, null);
        TintImageView closeButton = m43222r0().bannerLayout.closeButton;
        Intrinsics.checkNotNullExpressionValue(closeButton, "closeButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(closeButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.swj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListContainerFragment.m43212q0(NoteListContainerFragment.this, view);
            }
        }, 1, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAccountChangedEvent(@NotNull LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43224t0().resetFolderRootListData();
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCoverCreateImageContentEvent(@NotNull CoverImageContentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ActivityResultLauncher<String> activityResultLauncher = this.getCoverImageContentLauncher;
        if (activityResultLauncher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("getCoverImageContentLauncher");
            activityResultLauncher = null;
        }
        activityResultLauncher.launch("image/*");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCoverDocumentsEvent(@NotNull CoverDocumentsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ActivityResultLauncher<String[]> activityResultLauncher = this.getCoverDocumentsLauncher;
        if (activityResultLauncher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("getCoverDocumentsLauncher");
            activityResultLauncher = null;
        }
        activityResultLauncher.launch(DocManagerHandler.INSTANCE.getDocumentMimeTypes());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063321, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateFolderEvent(@NotNull OnCreateFolderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m43222r0().setLifecycleOwner(getViewLifecycleOwner());
        m43222r0().setViewModel(m43224t0());
        View root = m43222r0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteNoteEvent(@NotNull OnDeleteNoteEvent event) {
        Object obj;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43224t0().isFilterFolder()) {
            Iterator<T> it2 = event.getNodes().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                } else {
                    obj = it2.next();
                    if (Intrinsics.areEqual(((SyncNoteModel) obj).getUniqueId(), NoteTreeBundle.INSTANCE.activeFilterInfo().getUniqueId())) {
                        break;
                    }
                }
            }
            if (((SyncNoteModel) obj) != null) {
                if (Intrinsics.areEqual(m43224t0().isTopLevel().getValue(), Boolean.TRUE)) {
                    m43224t0().gotoNoteSet();
                } else {
                    m43225u0();
                }
            }
        }
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteTagEvent(@NotNull OnDeleteTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FilterInfo activeFilterInfo = NoteTreeBundle.INSTANCE.activeFilterInfo();
        if (activeFilterInfo.getType() == 7 && Intrinsics.areEqual(activeFilterInfo.getUniqueId(), event.getNode().getUniqueId())) {
            if (Intrinsics.areEqual(m43224t0().isTopLevel().getValue(), Boolean.TRUE)) {
                m43224t0().gotoNoteSet();
            } else {
                m43225u0();
            }
        }
        m43217E0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.viewScopeDisposables.dispose();
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDragMoveFolderEvent(@NotNull OnDragMoveFolderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDriveRecoveryEvent(@NotNull CloudRestoreEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditFolderEvent(@NotNull OnEditFolderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
        SyncNoteModel node = event.getNode();
        if (Intrinsics.areEqual(node.getUniqueId(), m43224t0().getNormalizedFolderId())) {
            StringOption currTitleOp = m43224t0().getCurrTitleOp();
            String title = node.getTitle();
            Intrinsics.checkNotNull(title);
            currTitleOp.put(title);
            m43224t0().getCurrTitle().setValue(node.getTitle());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditListNoteEvent(@NotNull OnEditListNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditTagEvent(@NotNull OnEditTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
        SyncTagModel node = event.getNode();
        if (Intrinsics.areEqual(node.getUniqueId(), m43224t0().getNormalizedTagId())) {
            m43224t0().getCurrTitleOp().put(node.getContent());
            m43224t0().getCurrTitle().setValue(node.getContent());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportDocumentsDoneEvent(@NotNull ImportDocumentsDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLocalRecoveryEvent(@NotNull LocalRecoveryEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMoveNoteEvent(@NotNull OnMoveNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNCreateScribbleNoteEvent(@NotNull NCreateScribbleNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        DocCollectionBundle.INSTANCE.createNoteByTemplate(event.getNoteCreateInfo(), event.getNoteCreateFrom());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPaperDocumentsEvent(@NotNull PaperDocumentsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ActivityResultLauncher<String[]> activityResultLauncher = this.getPaperDocumentsLauncher;
        if (activityResultLauncher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("getPaperDocumentsLauncher");
            activityResultLauncher = null;
        }
        activityResultLauncher.launch(DocManagerHandler.INSTANCE.getDocumentMimeTypes());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPaperImageContentEvent(@NotNull PaperImageContentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ActivityResultLauncher<String> activityResultLauncher = this.getPaperImageContentLauncher;
        if (activityResultLauncher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("getPaperImageContentLauncher");
            activityResultLauncher = null;
        }
        activityResultLauncher.launch("image/*");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPullRemoveSyncNoteEvent(@NotNull PullRemoveSyncNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FilterInfo value = m43224t0().getFilterInfo().getValue();
        if (value != null && value.getType() == 5 && event.getList().contains(value.getUniqueId())) {
            m43224t0().gotoFolderRoot();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPullSyncNoteEvent(@NotNull PullSyncNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        KSyncLogUtils.INSTANCE.m35864d(NoteListContainerFragment.class, "onPullSyncNoteEvent");
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRecoverNoteEvent(@NotNull OnRecoverNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onReloadDataEvent(@NotNull NCreateNoteModelResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveNoteEvent(@NotNull OnSaveNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveTagEvent(@NotNull OnSaveTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSavedDocumentEvent(@NotNull SavedDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUserNoteListImportedEvent(@NotNull UserNoteListImportedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43217E0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewScopeDisposables = new CompositeDisposable();
        m43220H0();
        m43216D0();
        m43215C0();
        m43221o0();
        PerformanceWatcher.INSTANCE.endAppCreate();
    }

    /* renamed from: r0 */
    public final FragmentNoteListContainerBinding m43222r0() {
        return (FragmentNoteListContainerBinding) this.binding.getValue();
    }

    /* renamed from: s0 */
    public final NotificationViewModel m43223s0() {
        return (NotificationViewModel) this.notificationViewModel.getValue();
    }

    /* renamed from: t0 */
    public final NoteListViewModel m43224t0() {
        return (NoteListViewModel) this.viewModel.getValue();
    }

    /* renamed from: u0 */
    public final void m43225u0() {
        m43224t0().gotoUp();
        DocCollectionBundle.INSTANCE.postEvent(new GotoUpEvent());
    }

    /* renamed from: v0 */
    public final void m43226v0(List<? extends Uri> uris) {
        new ImportFilesAsCustomCoverAction(DocCollectionBundle.INSTANCE.docManagerBundle(), TemplateFileBean.INSTANCE.createTemplateFileBeanList(uris)).build().doOnError(C11265a.f54671e).doOnNext(C11266b.f54672e).subscribe();
    }

    /* renamed from: w0 */
    public final void m43227w0(List<? extends Uri> uris) {
        DocCollectionBundle.importDocuments$default(DocCollectionBundle.INSTANCE, m43219G0(uris), null, 2, null);
    }

    /* renamed from: x0 */
    public final void m43228x0(List<? extends Uri> uris) {
        Observable<String> doOnNext = new NoteNameCreateAction(1, ResManager.INSTANCE.getStringSafely(C10651R.string.unnamed_note), 0, null, 12, null).build().doOnNext(new C11267c(uris));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    /* renamed from: y0 */
    public final void m43229y0(List<? extends Uri> uris) {
        new ImportFilesAsCustomPaperAction(DocCollectionBundle.INSTANCE.docManagerBundle(), TemplateFileBean.INSTANCE.createTemplateFileBeanList(uris)).build().doOnError(C11268d.f54675e).doOnNext(C11269e.f54676e).subscribe();
    }

    /* renamed from: z0 */
    public final void m43230z0(List<? extends Uri> uris) {
        int collectionSizeOrDefault;
        DocCollectionBundle docCollectionBundle = DocCollectionBundle.INSTANCE;
        List<? extends Uri> list = uris;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new DocumentFileEntry((Uri) it2.next()));
        }
        docCollectionBundle.postEvent(new HandleCustomCoverDocumentsEvent(arrayList, null, 2, null));
    }
}

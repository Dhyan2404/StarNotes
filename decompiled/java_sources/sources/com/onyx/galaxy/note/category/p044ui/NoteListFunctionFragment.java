package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.data.FolderCreateFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.TagCreateFrom;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.account.event.UpdateAvatarEvent;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.replicator.event.LoginOnyxAccountEvent;
import com.onyx.android.sdk.replicator.event.LogoutOnyxAccountEvent;
import com.onyx.android.sdk.replicator.event.PullSyncNoteEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.events.app.UserNoteListImportedEvent;
import com.onyx.android.sdk.universal.editor.events.note.CloudRestoreCompleteEvent;
import com.onyx.android.sdk.universal.editor.events.note.LocalRestoreCompleteEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.event.ExpandParentFolderEvent;
import com.onyx.galaxy.note.category.event.ExpandParentTagEvent;
import com.onyx.galaxy.note.category.event.GotoUpEvent;
import com.onyx.galaxy.note.category.event.NCreateNoteModelResultEvent;
import com.onyx.galaxy.note.category.event.OnCreateFolderEvent;
import com.onyx.galaxy.note.category.event.OnCreateMultipleSubTagEvent;
import com.onyx.galaxy.note.category.event.OnCreateTagEvent;
import com.onyx.galaxy.note.category.event.OnDeleteNoteEvent;
import com.onyx.galaxy.note.category.event.OnDeleteTagEvent;
import com.onyx.galaxy.note.category.event.OnDragMoveFolderEvent;
import com.onyx.galaxy.note.category.event.OnDragMoveTagEvent;
import com.onyx.galaxy.note.category.event.OnEditFolderEvent;
import com.onyx.galaxy.note.category.event.OnEditTagEvent;
import com.onyx.galaxy.note.category.event.OnMoveNoteEvent;
import com.onyx.galaxy.note.category.event.OnMoveTagEvent;
import com.onyx.galaxy.note.category.event.OnRecoverNoteEvent;
import com.onyx.galaxy.note.category.event.OnSaveNoteEvent;
import com.onyx.galaxy.note.category.event.OnSaveTagEvent;
import com.onyx.galaxy.note.category.p044ui.NoteListFunctionFragment;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter;
import com.onyx.galaxy.note.category.view.dialog.CreateFolderDialog;
import com.onyx.galaxy.note.category.view.dialog.CreateTagDialog;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.FragmentNoteListFunctionBinding;
import com.onyx.galaxy.note.databinding.ItemNoteShadowViewLayoutBinding;
import com.onyx.galaxy.note.databinding.ItemTagShadowViewLayoutBinding;
import com.onyx.galaxy.note.databinding.LayoutSidebarNotificationBinding;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.onyx.galaxy.note.message.handler.NotificationHandler;
import com.onyx.galaxy.note.message.viewmodel.MessageViewModel;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.onyx.galaxy.note.p048ui.view.RatioImageView;
import com.onyx.galaxy.note.settings.event.CloudRestoreEvent;
import com.onyx.galaxy.note.settings.event.LocalRecoveryEvent;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
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

@Metadata(m61527d1 = {"\u0000º\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b*\u0002\u0084\u0001\u0018\u00002\u00020\u0001B\t¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0016\u0010\u0018\u001a\u00020\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002J\u0012\u0010\u001e\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J$\u0010$\u001a\u00020#2\u0006\u0010 \u001a\u00020\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020#2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010'\u001a\u00020\u0002H\u0016J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(H\u0016J\u0010\u0010-\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+H\u0007J\u0010\u0010/\u001a\u00020\u00022\u0006\u0010,\u001a\u00020.H\u0007J\u0010\u00101\u001a\u00020\u00022\u0006\u0010,\u001a\u000200H\u0007J\u0010\u00103\u001a\u00020\u00022\u0006\u0010,\u001a\u000202H\u0007J\u0010\u00105\u001a\u00020\u00022\u0006\u0010,\u001a\u000204H\u0007J\u0010\u00107\u001a\u00020\u00022\u0006\u0010,\u001a\u000206H\u0007J\u0010\u00109\u001a\u00020\u00022\u0006\u0010,\u001a\u000208H\u0007J\u0010\u0010;\u001a\u00020\u00022\u0006\u0010,\u001a\u00020:H\u0007J\u0010\u0010=\u001a\u00020\u00022\u0006\u0010,\u001a\u00020<H\u0007J\u0010\u0010?\u001a\u00020\u00022\u0006\u0010,\u001a\u00020>H\u0007J\u0010\u0010A\u001a\u00020\u00022\u0006\u0010,\u001a\u00020@H\u0007J\u0010\u0010C\u001a\u00020\u00022\u0006\u0010,\u001a\u00020BH\u0007J\u0010\u0010E\u001a\u00020\u00022\u0006\u0010,\u001a\u00020DH\u0007J\u0010\u0010G\u001a\u00020\u00022\u0006\u0010,\u001a\u00020FH\u0007J\u0010\u0010I\u001a\u00020\u00022\u0006\u0010,\u001a\u00020HH\u0007J\u0010\u0010K\u001a\u00020\u00022\u0006\u0010,\u001a\u00020JH\u0007J\u0010\u0010M\u001a\u00020\u00022\u0006\u0010,\u001a\u00020LH\u0007J\u0010\u0010O\u001a\u00020\u00022\u0006\u0010,\u001a\u00020NH\u0007J\u0010\u0010Q\u001a\u00020\u00022\u0006\u0010,\u001a\u00020PH\u0007J\u0010\u0010S\u001a\u00020\u00022\u0006\u0010,\u001a\u00020RH\u0007J\u0010\u0010U\u001a\u00020\u00022\u0006\u0010,\u001a\u00020TH\u0007J\u0010\u0010W\u001a\u00020\u00022\u0006\u0010,\u001a\u00020VH\u0007J\u0010\u0010Y\u001a\u00020\u00022\u0006\u0010,\u001a\u00020XH\u0007J\u0010\u0010[\u001a\u00020\u00022\u0006\u0010,\u001a\u00020ZH\u0007J\u0010\u0010]\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\\H\u0007J\u0010\u0010_\u001a\u00020\u00022\u0006\u0010,\u001a\u00020^H\u0007J\u0010\u0010a\u001a\u00020\u00022\u0006\u0010,\u001a\u00020`H\u0007J\u0010\u0010c\u001a\u00020\u00022\u0006\u0010,\u001a\u00020bH\u0007R\u001b\u0010i\u001a\u00020d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\be\u0010f\u001a\u0004\bg\u0010hR\u001b\u0010n\u001a\u00020j8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bk\u0010f\u001a\u0004\bl\u0010mR\u001b\u0010s\u001a\u00020o8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bp\u0010f\u001a\u0004\bq\u0010rR\u001b\u0010x\u001a\u00020t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bu\u0010f\u001a\u0004\bv\u0010wR\u001b\u0010}\u001a\u00020y8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bz\u0010f\u001a\u0004\b{\u0010|R\u0016\u0010\u0081\u0001\u001a\u00020~8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u0019\u0010\u0083\u0001\u001a\u00020~8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0080\u0001R\u0018\u0010\u0087\u0001\u001a\u00030\u0084\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001a\u0010\u008b\u0001\u001a\u00030\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001a\u0010\u008d\u0001\u001a\u00030\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008a\u0001¨\u0006\u0090\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "G0", "I0", "J0", "A0", "N0", "H0", "q0", "r0", "K0", "L0", "M0", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "filter", "z0", "O0", "", "deleteId", "t0", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "nodes", "s0", "Q0", "P0", "R0", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroyView", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;", NotificationCompat.CATEGORY_EVENT, "onDeleteNoteEvent", "Lcom/onyx/galaxy/note/category/event/OnRecoverNoteEvent;", "onRecoverNoteEvent", "Lcom/onyx/galaxy/note/category/event/OnCreateFolderEvent;", "onCreateFolderEvent", "Lcom/onyx/galaxy/note/category/event/OnEditFolderEvent;", "onEditFolderEvent", "Lcom/onyx/galaxy/note/category/event/OnDragMoveFolderEvent;", "onDragMoveFolderEvent", "Lcom/onyx/galaxy/note/category/event/OnSaveNoteEvent;", "onSaveNoteEvent", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", "onAccountChangedEvent", "Lcom/onyx/android/sdk/replicator/event/PullSyncNoteEvent;", "onPullSyncNoteEvent", "Lcom/onyx/galaxy/note/category/event/OnMoveNoteEvent;", "onMoveNoteEvent", "Lcom/onyx/galaxy/note/category/event/OnMoveTagEvent;", "onMoveTagEvent", "Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;", "onCreateTagEvent", "Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;", "onCreateMultipleSubTagEvent", "Lcom/onyx/galaxy/note/category/event/OnEditTagEvent;", "onEditTagEvent", "Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;", "onDeleteTagEvent", "Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;", "onSaveTagEvent", "Lcom/onyx/galaxy/note/category/event/OnDragMoveTagEvent;", "onDragMoveTagEventEvent", "Lcom/onyx/galaxy/note/category/event/GotoUpEvent;", "onGotoUpEvent", "Lcom/onyx/galaxy/note/category/event/ExpandParentFolderEvent;", "onExpandParentFolderEvent", "Lcom/onyx/galaxy/note/category/event/ExpandParentTagEvent;", "onExpandParentTagEvent", "Lcom/onyx/galaxy/note/category/event/NCreateNoteModelResultEvent;", "onReloadDataEvent", "Lcom/onyx/galaxy/note/settings/event/LocalRecoveryEvent;", "onLocalRecoveryEvent", "Lcom/onyx/galaxy/note/settings/event/CloudRestoreEvent;", "onDriveRecoveryEvent", "Lcom/onyx/android/sdk/data/account/event/UpdateAvatarEvent;", "onUpdateAvatarEvent", "Lcom/onyx/android/sdk/replicator/event/LoginOnyxAccountEvent;", "onLoginOnyxAccountEvent", "Lcom/onyx/android/sdk/replicator/event/LogoutOnyxAccountEvent;", "onLogoutOnyxAccountEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;", "onUserNoteListImportedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;", "onCloudRestoreCompleteEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;", "onLocalRestoreCompleteEvent", "Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;", "d1", "Lkotlin/Lazy;", "u0", "()Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;", "binding", "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "e1", "y0", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "viewModel", "Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;", "f1", "w0", "()Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;", "messageViewModel", "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "g1", "x0", "()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "notificationViewModel", "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;", "h1", "v0", "()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;", "filterAdapter", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "i1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "j1", "viewScopeDisposables", "com/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1", "k1", "Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;", "onDragListener", "", "l1", Constants.HASIDCALL_INDEX_SIG, "scrollTop", "m1", "scrollBottom", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteListFunctionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFunctionFragment\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,598:1\n637#2:599\n1549#3:600\n1620#3,3:601\n350#3,7:604\n766#3:611\n857#3,2:612\n1549#3:614\n1620#3,3:615\n350#3,7:618\n*S KotlinDebug\n*F\n+ 1 NoteListFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFunctionFragment\n*L\n504#1:599\n523#1:600\n523#1:601,3\n525#1:604,7\n542#1:611\n542#1:612,2\n546#1:614\n546#1:615,3\n549#1:618,7\n*E\n"})
/* loaded from: classes17.dex */
public final class NoteListFunctionFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy messageViewModel;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final Lazy notificationViewModel;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public final Lazy filterAdapter;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: j1, reason: from kotlin metadata */
    @NotNull
    public CompositeDisposable viewScopeDisposables;

    /* renamed from: k1, reason: from kotlin metadata */
    @NotNull
    public final NoteListFunctionFragment$onDragListener$1 onDragListener;

    /* renamed from: l1, reason: from kotlin metadata */
    public boolean scrollTop;

    /* renamed from: m1, reason: from kotlin metadata */
    public boolean scrollBottom;

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$a */
    /* loaded from: classes9.dex */
    public static final class C11310a<T> implements Consumer {
        public C11310a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(List<NotificationModel> list) {
            ViewKt.setViewVisibleOrGone(NoteListFunctionFragment.this.m43425u0().sidebarNotificationBinding.getRoot(), false);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$b */
    /* loaded from: classes9.dex */
    public static final class C11311b<T, R> implements Function {
        public C11311b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotificationModel> apply(List<NotificationModel> list) {
            NotificationViewModel m43428x0 = NoteListFunctionFragment.this.m43428x0();
            Intrinsics.checkNotNull(list);
            return m43428x0.filterSidebarNotification(list, NotificationDisplayHandler.GROUP_SIDEBAR_HOME);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$c */
    /* loaded from: classes9.dex */
    public static final class C11312c implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f54791a;

        public C11312c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f54791a = function;
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
            return this.f54791a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f54791a.invoke(obj);
        }
    }

    public NoteListFunctionFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentNoteListFunctionBinding>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentNoteListFunctionBinding invoke() {
                return FragmentNoteListFunctionBinding.inflate(NoteListFunctionFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteListViewModel invoke() {
                FragmentActivity requireActivity = NoteListFunctionFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NoteListViewModel) FragmentActivityKt.getViewModel(requireActivity, NoteListViewModel.class);
            }
        });
        this.viewModel = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<MessageViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$messageViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MessageViewModel invoke() {
                FragmentActivity requireActivity = NoteListFunctionFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (MessageViewModel) FragmentActivityKt.getViewModel(requireActivity, MessageViewModel.class);
            }
        });
        this.messageViewModel = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<NotificationViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$notificationViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NotificationViewModel invoke() {
                FragmentActivity requireActivity = NoteListFunctionFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NotificationViewModel) FragmentActivityKt.getViewModel(requireActivity, NotificationViewModel.class);
            }
        });
        this.notificationViewModel = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<FilterAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$filterAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FilterAdapter invoke() {
                NoteListViewModel m43429y0;
                m43429y0 = NoteListFunctionFragment.this.m43429y0();
                ItemNoteShadowViewLayoutBinding noteShadowView = NoteListFunctionFragment.this.m43425u0().noteShadowView;
                Intrinsics.checkNotNullExpressionValue(noteShadowView, "noteShadowView");
                ItemTagShadowViewLayoutBinding tagShadowView = NoteListFunctionFragment.this.m43425u0().tagShadowView;
                Intrinsics.checkNotNullExpressionValue(tagShadowView, "tagShadowView");
                return new FilterAdapter(m43429y0, noteShadowView, tagShadowView);
            }
        });
        this.filterAdapter = lazy5;
        this.compositeDisposable = new CompositeDisposable();
        this.viewScopeDisposables = new CompositeDisposable();
        this.onDragListener = new NoteListFunctionFragment$onDragListener$1(this);
        this.scrollTop = true;
    }

    /* renamed from: B0 */
    public static final void m43398B0(NoteListFunctionFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        StatisticsBundle.reportEvent$default(StatisticsBundle.INSTANCE, OnyxStatisticConstant.ID_HOME_PAGE_FILTER_NOTE_FOLDER_ROOT_CREATE_CLICK, null, 2, null);
        this$0.m43421q0();
    }

    /* renamed from: C0 */
    public static final void m43399C0(NoteListFunctionFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        StatisticsBundle.reportEvent$default(StatisticsBundle.INSTANCE, OnyxStatisticConstant.ID_FILTER_TAG_ROOT_CREATE_CLICK, null, 2, null);
        this$0.m43422r0();
    }

    /* renamed from: D0 */
    public static final void m43400D0(NoteListFunctionFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m43429y0().toggleNoteSetExpand();
        this$0.m43419Q0();
        this$0.m43413K0();
    }

    /* renamed from: E0 */
    public static final void m43401E0(NoteListFunctionFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m43429y0().toggleFolderExpand();
        this$0.m43418P0();
        this$0.m43413K0();
    }

    /* renamed from: F0 */
    public static final void m43402F0(NoteListFunctionFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m43429y0().toggleTagExpand();
        this$0.m43420R0();
        this$0.m43413K0();
    }

    /* renamed from: A0 */
    public final void m43408A0() {
        FilterAdapter m43426v0 = m43426v0();
        m43426v0.addOnItemChildClickListener(C10651R.id.iv_create_folder, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.mxj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteListFunctionFragment.m43398B0(NoteListFunctionFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43426v0.addOnItemChildClickListener(C10651R.id.iv_create_tag, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.nxj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteListFunctionFragment.m43399C0(NoteListFunctionFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43426v0.addOnItemChildClickListener(C10651R.id.iv_note_series_expand, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.oxj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteListFunctionFragment.m43400D0(NoteListFunctionFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43426v0.addOnItemChildClickListener(C10651R.id.iv_note_folder_expand, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.pxj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteListFunctionFragment.m43401E0(NoteListFunctionFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43426v0.addOnItemChildClickListener(C10651R.id.iv_note_tag_expand, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.qxj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteListFunctionFragment.m43402F0(NoteListFunctionFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43425u0().rvFilter.setAdapter(m43426v0());
    }

    /* renamed from: G0 */
    public final void m43409G0() {
        m43414L0();
        m43415M0();
        m43413K0();
    }

    /* renamed from: H0 */
    public final void m43410H0() {
        m43425u0().vScrollDown.setOnDragListener(this.onDragListener);
        m43425u0().vScrollUp.setOnDragListener(this.onDragListener);
        m43425u0().rvFilter.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$initDragScroll$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NotNull RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                NoteListFunctionFragment.this.scrollTop = !r2.m43425u0().rvFilter.canScrollVertically(-1);
                NoteListFunctionFragment.this.scrollBottom = !r1.m43425u0().rvFilter.canScrollVertically(1);
            }
        });
    }

    /* renamed from: I0 */
    public final void m43411I0() {
        m43408A0();
        m43410H0();
        m43416N0();
    }

    /* renamed from: J0 */
    public final void m43412J0() {
        m43429y0().getFilterInfo().observe(requireActivity(), new C11312c(new Function1<FilterInfo, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$initViewModel$1
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
                NoteListFunctionFragment noteListFunctionFragment = NoteListFunctionFragment.this;
                Intrinsics.checkNotNull(filterInfo);
                noteListFunctionFragment.m43430z0(filterInfo);
            }
        }));
        m43429y0().getFilterList().observe(requireActivity(), new C11312c(new Function1<List<? extends FilterInfo>, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$initViewModel$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends FilterInfo> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends FilterInfo> list) {
                FilterAdapter m43426v0;
                ArrayList arrayList = new ArrayList();
                Intrinsics.checkNotNull(list);
                arrayList.addAll(list);
                m43426v0 = NoteListFunctionFragment.this.m43426v0();
                m43426v0.submitList(arrayList);
            }
        }));
        m43427w0().getUnreadCount().observe(getViewLifecycleOwner(), new C11312c(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$initViewModel$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke2(num);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Integer num) {
                FilterAdapter m43426v0;
                m43426v0 = NoteListFunctionFragment.this.m43426v0();
                Intrinsics.checkNotNull(num);
                m43426v0.updateUnreadCount(num.intValue());
            }
        }));
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnNext = m43428x0().getNotifications().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11310a()).flatMap(new C11311b()).doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$initViewModel$disposable$3
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull final NotificationModel notification) {
                Intrinsics.checkNotNullParameter(notification, "notification");
                ViewKt.setViewVisibleOrInvisible(NoteListFunctionFragment.this.m43425u0().sidebarNotificationBinding.container, false);
                RatioImageView image = NoteListFunctionFragment.this.m43425u0().sidebarNotificationBinding.image;
                Intrinsics.checkNotNullExpressionValue(image, "image");
                final NoteListFunctionFragment noteListFunctionFragment = NoteListFunctionFragment.this;
                if (!image.isLaidOut() || image.isLayoutRequested()) {
                    image.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$initViewModel$disposable$3$accept$$inlined$doOnLayout$1
                        @Override // android.view.View.OnLayoutChangeListener
                        public void onLayoutChange(@NotNull View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                            view.removeOnLayoutChangeListener(this);
                            NotificationHandler notificationHandler = NotificationHandler.INSTANCE;
                            NotificationModel notificationModel = NotificationModel.this;
                            LayoutSidebarNotificationBinding sidebarNotificationBinding = noteListFunctionFragment.m43425u0().sidebarNotificationBinding;
                            Intrinsics.checkNotNullExpressionValue(sidebarNotificationBinding, "sidebarNotificationBinding");
                            notificationHandler.handleSidebarNotification(notificationModel, sidebarNotificationBinding, noteListFunctionFragment.m43428x0());
                        }
                    });
                    return;
                }
                NotificationHandler notificationHandler = NotificationHandler.INSTANCE;
                LayoutSidebarNotificationBinding sidebarNotificationBinding = noteListFunctionFragment.m43425u0().sidebarNotificationBinding;
                Intrinsics.checkNotNullExpressionValue(sidebarNotificationBinding, "sidebarNotificationBinding");
                notificationHandler.handleSidebarNotification(notification, sidebarNotificationBinding, noteListFunctionFragment.m43428x0());
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        this.viewScopeDisposables.add(OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null));
    }

    /* renamed from: K0 */
    public final void m43413K0() {
        m43429y0().loadFilterList();
    }

    /* renamed from: L0 */
    public final void m43414L0() {
        Disposable subscribe = m43429y0().loadNoteFoldTree().subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: M0 */
    public final void m43415M0() {
        Disposable subscribe = m43429y0().loadTagTree().subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: N0 */
    public final void m43416N0() {
        m43426v0().notifyItemChanged(0);
    }

    /* renamed from: O0 */
    public final void m43417O0() {
        List listOf;
        m43416N0();
        FilterInfo value = m43429y0().getFilterInfo().getValue();
        Integer valueOf = value != null ? Integer.valueOf(value.getType()) : null;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{1, 0});
        if (!listOf.contains(valueOf)) {
            m43429y0().gotoNoteSet();
        }
        m43409G0();
    }

    /* renamed from: P0 */
    public final void m43418P0() {
        StatisticsBundle.reportEvent$default(StatisticsBundle.INSTANCE, m43429y0().isFolderExpand() ? OnyxStatisticConstant.ID_HOME_PAGE_FILTER_NOTE_FOLDER_ROOT_EXPAND_CLICK : OnyxStatisticConstant.ID_HOME_PAGE_FILTER_NOTE_FOLDER_ROOT_COLLAPSE_CLICK, null, 2, null);
    }

    /* renamed from: Q0 */
    public final void m43419Q0() {
        StatisticsBundle.reportEvent$default(StatisticsBundle.INSTANCE, m43429y0().isNoteSetExpand() ? OnyxStatisticConstant.ID_HOME_PAGE_FILTER_NOTE_ALL_EXPAND_CLICK : OnyxStatisticConstant.ID_HOME_PAGE_FILTER_NOTE_ALL_COLLAPSE_CLICK, null, 2, null);
    }

    /* renamed from: R0 */
    public final void m43420R0() {
        StatisticsBundle.reportEvent$default(StatisticsBundle.INSTANCE, m43429y0().isTagExpand() ? OnyxStatisticConstant.ID_FILTER_TAG_ROOT_EXPAND_CLICK : OnyxStatisticConstant.ID_FILTER_TAG_ROOT_COLLAPSE_CLICK, null, 2, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAccountChangedEvent(@NotNull LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43414L0();
        m43415M0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCloudRestoreCompleteEvent(@NotNull CloudRestoreCompleteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43414L0();
        m43415M0();
        m43413K0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        m43425u0().rvFilter.setAdapter(m43426v0());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063318, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateFolderEvent(@NotNull OnCreateFolderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43414L0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateMultipleSubTagEvent(@NotNull OnCreateMultipleSubTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43415M0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateTagEvent(@NotNull OnCreateTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43415M0();
        m43413K0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m43425u0().setLifecycleOwner(getViewLifecycleOwner());
        m43425u0().setViewModel(m43429y0());
        View root = m43425u0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteNoteEvent(@NotNull OnDeleteNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43423s0(event.getNodes());
        m43414L0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteTagEvent(@NotNull OnDeleteTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43424t0(event.getNode().getUniqueId());
        m43415M0();
        m43413K0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.viewScopeDisposables.dispose();
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDragMoveFolderEvent(@NotNull OnDragMoveFolderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43414L0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDragMoveTagEventEvent(@NotNull OnDragMoveTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43415M0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDriveRecoveryEvent(@NotNull CloudRestoreEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditFolderEvent(@NotNull OnEditFolderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43414L0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditTagEvent(@NotNull OnEditTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43415M0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onExpandParentFolderEvent(@NotNull ExpandParentFolderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43414L0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onExpandParentTagEvent(@NotNull ExpandParentTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGotoUpEvent(@NotNull GotoUpEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLocalRecoveryEvent(@NotNull LocalRecoveryEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLocalRestoreCompleteEvent(@NotNull LocalRestoreCompleteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43414L0();
        m43415M0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLoginOnyxAccountEvent(@NotNull LoginOnyxAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43417O0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLogoutOnyxAccountEvent(@NotNull LogoutOnyxAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43417O0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMoveNoteEvent(@NotNull OnMoveNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43414L0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMoveTagEvent(@NotNull OnMoveTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43415M0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPullSyncNoteEvent(@NotNull PullSyncNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43414L0();
        m43415M0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRecoverNoteEvent(@NotNull OnRecoverNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43414L0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onReloadDataEvent(@NotNull NCreateNoteModelResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveNoteEvent(@NotNull OnSaveNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43414L0();
        m43413K0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveTagEvent(@NotNull OnSaveTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43413K0();
        m43415M0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateAvatarEvent(@NotNull UpdateAvatarEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43416N0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUserNoteListImportedEvent(@NotNull UserNoteListImportedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43414L0();
        m43415M0();
        m43413K0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewScopeDisposables = new CompositeDisposable();
        m43409G0();
        m43411I0();
        m43412J0();
    }

    /* renamed from: q0 */
    public final void m43421q0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new CreateFolderDialog(requireContext, NoteTreeBundle.INSTANCE.getFolderRootNote(), FolderCreateFrom.HOME_FUNC_ROOT_FOLDER_CREATE).show();
    }

    /* renamed from: r0 */
    public final void m43422r0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new CreateTagDialog(requireContext, NoteTreeBundle.INSTANCE.getTagRootNote(), TagCreateFrom.HOME_FUNC_ROOT_TAG_CREATE).show();
    }

    /* renamed from: s0 */
    public final void m43423s0(List<SyncNoteModel> nodes) {
        int collectionSizeOrDefault;
        FilterInfo value = m43429y0().getFilterInfo().getValue();
        Intrinsics.checkNotNull(value);
        if (value.getType() != 5) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : nodes) {
            if (((SyncNoteModel) obj).isLibrary()) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            TreeNode<NoteModelBean> findNode = NoteTreeBundle.INSTANCE.getFolderRootNote().findNode(((SyncNoteModel) it2.next()).getUniqueId());
            if (findNode != null) {
                List flatten$default = TreeNode.flatten$default(findNode, null, 1, null);
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(flatten$default, 10);
                ArrayList<String> arrayList2 = new ArrayList(collectionSizeOrDefault);
                Iterator it3 = flatten$default.iterator();
                while (it3.hasNext()) {
                    arrayList2.add(((NoteModelBean) ((TreeNode) it3.next()).getData()).getUniqueId());
                }
                for (String str : arrayList2) {
                    Iterator<FilterInfo> it4 = m43426v0().getItems().iterator();
                    int i = 0;
                    while (true) {
                        if (!it4.hasNext()) {
                            i = -1;
                            break;
                        } else if (Intrinsics.areEqual(it4.next().getUniqueId(), str)) {
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (i != -1) {
                        m43426v0().removeAt(i);
                    }
                }
            }
        }
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            final String uniqueId = ((SyncNoteModel) it5.next()).getUniqueId();
            FilterInfo value2 = m43429y0().getFilterInfo().getValue();
            Intrinsics.checkNotNull(value2);
            final String uniqueId2 = value2.getUniqueId();
            TreeNode<NoteModelBean> findNode2 = NoteTreeBundle.INSTANCE.getFolderRootNote().findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$deleteFolderFromTree$deleteNode$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it6) {
                    Intrinsics.checkNotNullParameter(it6, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it6.getData().getUniqueId(), uniqueId));
                }
            });
            if ((findNode2 != null ? findNode2.findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$deleteFolderFromTree$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it6) {
                    Intrinsics.checkNotNullParameter(it6, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it6.getData().getUniqueId(), uniqueId2));
                }
            }) : null) != null) {
                m43429y0().gotoNoteSet();
                return;
            }
        }
    }

    /* renamed from: t0 */
    public final void m43424t0(final String deleteId) {
        int collectionSizeOrDefault;
        FilterInfo value = m43429y0().getFilterInfo().getValue();
        Intrinsics.checkNotNull(value);
        if (value.getType() != 7) {
            return;
        }
        FilterInfo value2 = m43429y0().getFilterInfo().getValue();
        Intrinsics.checkNotNull(value2);
        final String uniqueId = value2.getUniqueId();
        TreeNode<NoteTagBean> findNode = NoteTreeBundle.INSTANCE.getTagRootNote().findNode(new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$deleteTagFromTree$deleteTag$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getData().getUniqueId(), deleteId));
            }
        });
        if (findNode == null) {
            return;
        }
        List flatten$default = TreeNode.flatten$default(findNode, null, 1, null);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(flatten$default, 10);
        ArrayList<String> arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = flatten$default.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteTagBean) ((TreeNode) it2.next()).getData()).getUniqueId());
        }
        for (String str : arrayList) {
            Iterator<FilterInfo> it3 = m43426v0().getItems().iterator();
            int i = 0;
            while (true) {
                if (!it3.hasNext()) {
                    i = -1;
                    break;
                } else if (Intrinsics.areEqual(it3.next().getUniqueId(), str)) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != -1) {
                m43426v0().removeAt(i);
            }
        }
        if (findNode.findNode(new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFunctionFragment$deleteTagFromTree$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it4) {
                Intrinsics.checkNotNullParameter(it4, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it4.getData().getUniqueId(), uniqueId));
            }
        }) != null) {
            m43429y0().gotoNoteSet();
        }
    }

    /* renamed from: u0 */
    public final FragmentNoteListFunctionBinding m43425u0() {
        return (FragmentNoteListFunctionBinding) this.binding.getValue();
    }

    /* renamed from: v0 */
    public final FilterAdapter m43426v0() {
        return (FilterAdapter) this.filterAdapter.getValue();
    }

    /* renamed from: w0 */
    public final MessageViewModel m43427w0() {
        return (MessageViewModel) this.messageViewModel.getValue();
    }

    /* renamed from: x0 */
    public final NotificationViewModel m43428x0() {
        return (NotificationViewModel) this.notificationViewModel.getValue();
    }

    /* renamed from: y0 */
    public final NoteListViewModel m43429y0() {
        return (NoteListViewModel) this.viewModel.getValue();
    }

    /* renamed from: z0 */
    public final void m43430z0(FilterInfo filter) {
        m43426v0().updateSelectId(filter.getUniqueId());
    }
}

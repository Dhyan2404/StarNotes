package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultLauncher;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.TransitionManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.QuickAdapterHelper;
import com.google.android.material.transition.MaterialFade;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.FolderCreateFrom;
import com.onyx.android.sdk.data.NoteCreateFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.AccountConfigurationChanged;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.extension.ActivityKt;
import com.onyx.android.sdk.filepicker.DocumentBean;
import com.onyx.android.sdk.filepicker.FilePickerBuilder;
import com.onyx.android.sdk.matisse.Matisse;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.bean.DocProgressBean;
import com.onyx.android.sdk.replicator.bean.KSyncStatus;
import com.onyx.android.sdk.replicator.event.SyncNoteProgressChangedEvent;
import com.onyx.android.sdk.replicator.event.SyncProgressUpdateEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.bean.PageModelBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTagNodes;
import com.onyx.android.sdk.replicator.progress.p037db.model.SyncProgressModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentUrisEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageUrisEvent;
import com.onyx.android.sdk.universal.editor.events.app.RequestPermissionEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.AuthNoteAction;
import com.onyx.galaxy.note.category.action.ChangeNoteTemplateAction;
import com.onyx.galaxy.note.category.action.CopyNoteListAction;
import com.onyx.galaxy.note.category.action.CreateQuicklyNoteAction;
import com.onyx.galaxy.note.category.action.DeleteFolderAction;
import com.onyx.galaxy.note.category.action.DeleteListNoteAction;
import com.onyx.galaxy.note.category.action.EditListNoteAction;
import com.onyx.galaxy.note.category.action.EditTagForNoteAction;
import com.onyx.galaxy.note.category.action.GetNoteCoverTemplateArgsAction;
import com.onyx.galaxy.note.category.action.MoveToSelectFolderAction;
import com.onyx.galaxy.note.category.action.OpenNoteAction;
import com.onyx.galaxy.note.category.action.OpenNotePageAction;
import com.onyx.galaxy.note.category.action.ToggleNoteLockAction;
import com.onyx.galaxy.note.category.action.UpdateNoteExpandStatusAction;
import com.onyx.galaxy.note.category.action.p127import.CheckPdfPasswordAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.data.NotePageBean;
import com.onyx.galaxy.note.category.data.NoteSelectType;
import com.onyx.galaxy.note.category.data.TemplateFragmentArgs;
import com.onyx.galaxy.note.category.event.ActiveNoteListAnimateFinishedEvent;
import com.onyx.galaxy.note.category.event.ChangeNoteTemplateEvent;
import com.onyx.galaxy.note.category.event.DragNotePageEvent;
import com.onyx.galaxy.note.category.event.ExpandParentFolderEvent;
import com.onyx.galaxy.note.category.event.MultiCopyEvent;
import com.onyx.galaxy.note.category.event.MultiDeleteEvent;
import com.onyx.galaxy.note.category.event.MultiDustBinDeleteEvent;
import com.onyx.galaxy.note.category.event.MultiDustBinRestoreEvent;
import com.onyx.galaxy.note.category.event.MultiExportEvent;
import com.onyx.galaxy.note.category.event.MultiModifyNoteLockEvent;
import com.onyx.galaxy.note.category.event.MultiMoveEvent;
import com.onyx.galaxy.note.category.event.NCreateCameraEvent;
import com.onyx.galaxy.note.category.event.NCreateFileImportEvent;
import com.onyx.galaxy.note.category.event.NCreateNoteFolderEvent;
import com.onyx.galaxy.note.category.event.NCreatePictureImportEvent;
import com.onyx.galaxy.note.category.event.NCreateScannerEvent;
import com.onyx.galaxy.note.category.event.NCreateScribbleNoteEvent;
import com.onyx.galaxy.note.category.event.NoteListDragEndEvent;
import com.onyx.galaxy.note.category.event.NoteTitleUpdatedEvent;
import com.onyx.galaxy.note.category.event.ResetMultiOptionMenuEvent;
import com.onyx.galaxy.note.category.event.ToggleSelectAllEvent;
import com.onyx.galaxy.note.category.p044ui.NoteListFragment;
import com.onyx.galaxy.note.category.p044ui.NoteListOpPopup;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.GridDividerItemDecoration;
import com.onyx.galaxy.note.category.view.adapter.NoteListFooterAdapter;
import com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter;
import com.onyx.galaxy.note.category.view.dialog.CreateSubFolderDialog;
import com.onyx.galaxy.note.category.view.dialog.EditFolderDialog;
import com.onyx.galaxy.note.category.view.drag.NoteListDragListener;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.category.viewmodel.NoteQuotaViewModel;
import com.onyx.galaxy.note.common.action.TakePhotoAction;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.data.EditTagForNoteContext;
import com.onyx.galaxy.note.common.data.JavascriptEvents;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.extension.MatisseKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.databinding.FragmentNoteListBinding;
import com.onyx.galaxy.note.editor.action.importfiles.ObtainDocumentListAction;
import com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.message.handler.NotificationHandler;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;
import com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction;
import com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction;
import com.onyx.galaxy.note.utils.FilePickerExtKt;
import com.onyx.galaxy.note.utils.NoteLockUtils;
import com.permissionx.guolindev.PermissionMediator;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.RequestCallback;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.v6l;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.math3.dfp.Dfp;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ä\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0002à\u0001\u0018\u0000 õ\u00012\u00020\u0001:\u0002õ\u0001B\t¢\u0006\u0006\bó\u0001\u0010ô\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0003J6\u0010\u000e\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0016\u0010\u0015\u001a\u00020\u00022\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\tH\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0003J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0003J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u0010\u001f\u001a\u00020\u0002H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\fH\u0002J\b\u0010\"\u001a\u00020\u0002H\u0002J\u0014\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0$0#H\u0002J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010'\u001a\u00020&H\u0002J\b\u0010)\u001a\u00020\u0002H\u0002J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010/\u001a\u00020\u00022\u0006\u0010.\u001a\u00020-H\u0002J\b\u00100\u001a\u00020\fH\u0002J\u0018\u00103\u001a\u00020\u00022\u0006\u00101\u001a\u00020&2\u0006\u00102\u001a\u00020\u0016H\u0002J\u0018\u00104\u001a\u00020\u00022\u0006\u00101\u001a\u00020&2\u0006\u00102\u001a\u00020\u0016H\u0002J\u0010\u00106\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J\u0010\u00107\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J\u0010\u00108\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J\u0010\u00109\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J\u0010\u0010:\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J\u0010\u0010;\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J\u0016\u0010=\u001a\u00020\u00022\f\u0010<\u001a\b\u0012\u0004\u0012\u00020*0\tH\u0002J\u0010\u0010>\u001a\u00020\u00022\u0006\u0010+\u001a\u00020\u0016H\u0002J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u0016H\u0002J\u0010\u0010A\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J6\u0010F\u001a\u00020\u00022\f\u0010B\u001a\b\u0012\u0004\u0012\u00020*0\t2\u0006\u0010C\u001a\u00020\f2\u0016\b\u0002\u0010E\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0002\u0018\u00010DH\u0002J\u0010\u0010I\u001a\u00020\u00022\u0006\u0010H\u001a\u00020GH\u0002J*\u0010P\u001a\u00020\u00022\f\u0010K\u001a\b\u0012\u0004\u0012\u00020J0\t2\u0006\u0010M\u001a\u00020L2\n\b\u0002\u0010O\u001a\u0004\u0018\u00010NH\u0002J\u0016\u0010S\u001a\u00020\u00022\f\u0010R\u001a\b\u0012\u0004\u0012\u00020Q0\tH\u0002J\b\u0010T\u001a\u00020\u0002H\u0002J\b\u0010U\u001a\u00020\u0002H\u0002J\b\u0010V\u001a\u00020\u0002H\u0002J\b\u0010W\u001a\u00020\u0002H\u0002J\b\u0010X\u001a\u00020\u0002H\u0002J\b\u0010Y\u001a\u00020\u0002H\u0002J\b\u0010Z\u001a\u00020\u0002H\u0002J\u0010\u0010\\\u001a\u00020\u00022\u0006\u0010[\u001a\u00020\fH\u0002J\b\u0010^\u001a\u00020]H\u0002J\u0012\u0010`\u001a\u00020\u00022\b\b\u0002\u0010_\u001a\u00020\fH\u0003J\u0010\u0010b\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u0007H\u0002J\b\u0010c\u001a\u00020\u0002H\u0002J\b\u0010d\u001a\u00020\u0002H\u0002J\b\u0010e\u001a\u00020\u0002H\u0002J\b\u0010f\u001a\u00020\u0002H\u0002J\u001e\u0010h\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\f\u0010g\u001a\b\u0012\u0004\u0012\u00020Q0\tH\u0002J\u0016\u0010i\u001a\u00020\u00022\f\u0010g\u001a\b\u0012\u0004\u0012\u00020J0$H\u0002J\u0012\u0010l\u001a\u00020\u00022\b\u0010k\u001a\u0004\u0018\u00010jH\u0016J$\u0010q\u001a\u00020&2\u0006\u0010n\u001a\u00020m2\b\u0010p\u001a\u0004\u0018\u00010o2\b\u0010k\u001a\u0004\u0018\u00010jH\u0016J\u001a\u0010r\u001a\u00020\u00022\u0006\u0010'\u001a\u00020&2\b\u0010k\u001a\u0004\u0018\u00010jH\u0016J\b\u0010s\u001a\u00020\u0002H\u0016J\"\u0010w\u001a\u00020\u00022\u0006\u0010t\u001a\u00020\u00072\u0006\u0010u\u001a\u00020\u00072\b\u0010v\u001a\u0004\u0018\u00010GH\u0016J\u0010\u0010z\u001a\u00020\u00022\u0006\u0010y\u001a\u00020xH\u0016J\u0010\u0010|\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020{H\u0007J\u0010\u0010~\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020}H\u0007J\u0011\u0010\u0080\u0001\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u007fH\u0007J\u0012\u0010\u0082\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0081\u0001H\u0007J\u0012\u0010\u0084\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0083\u0001H\u0007J\u0012\u0010\u0086\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0085\u0001H\u0007J\u0012\u0010\u0088\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0087\u0001H\u0007J\u0012\u0010\u008a\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0089\u0001H\u0007J\u0012\u0010\u008c\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u008b\u0001H\u0007J\u0012\u0010\u008e\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u008d\u0001H\u0007J\u0012\u0010\u0090\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u008f\u0001H\u0007J\u0012\u0010\u0092\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0091\u0001H\u0007J\u0012\u0010\u0094\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0093\u0001H\u0007J\u0012\u0010\u0096\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0095\u0001H\u0007J\u0012\u0010\u0098\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0097\u0001H\u0007J\u0012\u0010\u009a\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0099\u0001H\u0007J\u0012\u0010\u009c\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u009b\u0001H\u0007J\u0012\u0010\u009e\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u009d\u0001H\u0007J\u0012\u0010 \u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u009f\u0001H\u0007J\u0012\u0010¢\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030¡\u0001H\u0007J\u0012\u0010¤\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030£\u0001H\u0007J\u0012\u0010¦\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030¥\u0001H\u0007J\u0012\u0010¨\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030§\u0001H\u0007J\u0012\u0010ª\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030©\u0001H\u0007R \u0010¯\u0001\u001a\u00030«\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b6\u0010¬\u0001\u001a\u0006\b\u00ad\u0001\u0010®\u0001R \u0010³\u0001\u001a\u00030°\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b>\u0010¬\u0001\u001a\u0006\b±\u0001\u0010²\u0001R \u0010·\u0001\u001a\u00030´\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b9\u0010¬\u0001\u001a\u0006\bµ\u0001\u0010¶\u0001R \u0010»\u0001\u001a\u00030¸\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u000e\u0010¬\u0001\u001a\u0006\b¹\u0001\u0010º\u0001R!\u0010À\u0001\u001a\u00030¼\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b½\u0001\u0010¬\u0001\u001a\u0006\b¾\u0001\u0010¿\u0001R \u0010Ä\u0001\u001a\u00030Á\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bS\u0010¬\u0001\u001a\u0006\bÂ\u0001\u0010Ã\u0001R\u0017\u0010Ç\u0001\u001a\u00030Å\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bP\u0010Æ\u0001R\u0018\u0010Ë\u0001\u001a\u00030È\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÉ\u0001\u0010Ê\u0001R\u0019\u0010Ì\u0001\u001a\u00030È\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bI\u0010Ê\u0001R \u0010Ð\u0001\u001a\u00030Í\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bF\u0010¬\u0001\u001a\u0006\bÎ\u0001\u0010Ï\u0001R!\u0010Õ\u0001\u001a\u00030Ñ\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÒ\u0001\u0010¬\u0001\u001a\u0006\bÓ\u0001\u0010Ô\u0001R \u0010×\u0001\u001a\u00030Ñ\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b@\u0010¬\u0001\u001a\u0006\bÖ\u0001\u0010Ô\u0001R \u0010Ù\u0001\u001a\u00030Ñ\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u001e\u0010¬\u0001\u001a\u0006\bØ\u0001\u0010Ô\u0001R \u0010Û\u0001\u001a\u00030Ñ\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b/\u0010¬\u0001\u001a\u0006\bÚ\u0001\u0010Ô\u0001R\u0018\u0010Ý\u0001\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0018\u0010Ü\u0001R\u0018\u0010Þ\u0001\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b,\u0010Ü\u0001R\u0018\u0010ß\u0001\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b8\u0010Ü\u0001R\u0017\u0010â\u0001\u001a\u00030à\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0015\u0010á\u0001R\u001f\u0010å\u0001\u001a\t\u0012\u0005\u0012\u00030ã\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001f\u0010ä\u0001R\u001a\u0010é\u0001\u001a\u00030æ\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bç\u0001\u0010è\u0001R\u001f\u0010ì\u0001\u001a\t\u0012\u0004\u0012\u00020J0ê\u00018\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b!\u0010ë\u0001R\u0018\u0010î\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0003\u0010í\u0001R\u001c\u0010ò\u0001\u001a\u0005\u0018\u00010ï\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bð\u0001\u0010ñ\u0001¨\u0006ö\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "y1", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "activityReference", "", "triggerFrom", "", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "files", "", "needFinish", "g1", "Lcom/onyx/galaxy/note/category/data/NotePageBean;", "notePageBean", "X0", "pos", "W0", "positionList", "u1", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "noteListModelBean", "r1", "C1", "M1", "E1", "", NotificationCompat.CATEGORY_EVENT, "p1", FirebaseInstallationServiceClient.f35986m, "isMulSelect", "x1", "G1", "Landroidx/lifecycle/MutableLiveData;", "", "P0", "Landroid/view/View;", "view", "J1", "L1", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "s1", "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;", "pageTagModel", "q1", "F1", "v", "model", "U1", "Q1", "syncNoteModel", "d1", "Y0", "t1", "f1", "b1", "c1", "list", "S1", "e1", "noteModelBean", "o1", "a1", "syncNoteModels", "hasEncryption", "Lkotlin/Function1;", "callback", "m1", "Landroid/content/Intent;", v6l.f87196g, "l1", "Landroid/net/Uri;", "uris", "Lcom/onyx/android/sdk/data/NoteCreateFrom;", "noteCreateFrom", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "importSelectedContext", "j1", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "fileEntries", "i1", "E0", "I1", "H0", "H1", "C0", "F0", "G0", "isShowEmptyView", "R1", "Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;", "J0", "notifyAllDataChanged", "w0", "totalWidth", "R0", "P1", "A0", "V1", "z0", "resultList", "N1", "O1", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "onCreateView", "onViewCreated", "onDestroyView", "requestCode", "resultCode", "data", "onActivityResult", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;", "onSyncNoteProgressChangedEvent", "Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;", "onDocSyncProgressUpdate", "Lcom/onyx/galaxy/note/category/event/NCreateNoteFolderEvent;", "onCreateQuicklyFolderEvent", "Lcom/onyx/galaxy/note/category/event/NCreateFileImportEvent;", "onNCreateFileImportEvent", "Lcom/onyx/galaxy/note/category/event/NCreatePictureImportEvent;", "onNCreatePictureImportEvent", "Lcom/onyx/galaxy/note/category/event/NCreateCameraEvent;", "onNCreateCameraEvent", "Lcom/onyx/galaxy/note/category/event/NCreateScannerEvent;", "onNCreateScannerEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;", "onImportDocumentUrisEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;", "onImportImageUrisEvent", "Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;", "onNoteTitleUpdatedEvent", "Lcom/onyx/galaxy/note/category/event/NoteListDragEndEvent;", "onNoteListDragEndEvent", "Lcom/onyx/galaxy/note/category/event/MultiDeleteEvent;", "onMultiDeleteEvent", "Lcom/onyx/galaxy/note/category/event/MultiMoveEvent;", "onMultiMoveEvent", "Lcom/onyx/galaxy/note/category/event/MultiExportEvent;", "onMultiExportEvent", "Lcom/onyx/galaxy/note/category/event/MultiModifyNoteLockEvent;", "onMultiModifyNoteLockEvent", "Lcom/onyx/galaxy/note/category/event/MultiCopyEvent;", "onMultiCopyEvent", "Lcom/onyx/galaxy/note/category/event/MultiDustBinDeleteEvent;", "onMultiDustBinDeleteEvent", "Lcom/onyx/galaxy/note/category/event/MultiDustBinRestoreEvent;", "onMultiDustBinRestoreEvent", "Lcom/onyx/galaxy/note/category/event/ToggleSelectAllEvent;", "onToggleSelectAllEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;", "onRequestPermissionEvent", "Lcom/onyx/galaxy/note/category/event/ActiveNoteListAnimateFinishedEvent;", "onActiveNoteListAnimateFinishedEvent", "Lcom/onyx/galaxy/note/category/event/ChangeNoteTemplateEvent;", "onChangeNoteTemplateEvent", "Lcom/onyx/galaxy/note/category/event/DragNotePageEvent;", "onDragNotePageEvent", "Lcom/onyx/android/sdk/data/account/event/AccountConfigurationChanged;", JavascriptEvents.ON_ACCOUNT_CONFIG_CHANGED, "Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;", "Lkotlin/Lazy;", "I0", "()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;", "binding", "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "V0", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "viewModel", "Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;", "N0", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;", "noteQuotaViewModel", "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "O0", "()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "notificationViewModel", "Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;", "h1", "K0", "()Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;", "footerAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;", "Q0", "()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;", "pageListAdapter", "Lcom/chad/library/adapter4/QuickAdapterHelper;", "Lcom/chad/library/adapter4/QuickAdapterHelper;", "adapterHelper", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "k1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "viewScopeDisposables", "Landroidx/recyclerview/widget/GridLayoutManager;", "L0", "()Landroidx/recyclerview/widget/GridLayoutManager;", "gridLayoutManager", "Ljava/lang/Runnable;", "n1", "S0", "()Ljava/lang/Runnable;", "toggleDisplayRunnable", "T0", "toggleMulSelectRunnable", "M0", "hideGoTopRunnable", "U0", "updateNoteListViewRunnable", Constants.HASIDCALL_INDEX_SIG, "scrollTop", "scrollBottom", "isRvScrolling", "com/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1", "Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1;", "onDragListener", "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;", "Ljava/util/List;", "noteSyncProgessModelList", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "w1", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "noteSelectType", "Landroidx/activity/result/ActivityResultLauncher;", "Landroidx/activity/result/ActivityResultLauncher;", "takePictureLauncher", "I", "showGoTopRowCount", "Lcom/onyx/android/sdk/ui/CommonDialog;", "z1", "Lcom/onyx/android/sdk/ui/CommonDialog;", "noteEncryptionLoginDialog", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1546:1\n766#2:1547\n857#2,2:1548\n1549#2:1550\n1620#2,3:1551\n766#2:1554\n857#2,2:1555\n1549#2:1557\n1620#2,3:1558\n1855#2,2:1561\n1549#2:1563\n1620#2,3:1564\n1549#2:1567\n1620#2,3:1568\n1549#2:1571\n1620#2,3:1572\n1549#2:1575\n1620#2,3:1576\n766#2:1579\n857#2,2:1580\n1549#2:1582\n1620#2,3:1583\n766#2:1586\n857#2,2:1587\n1549#2:1589\n1620#2,3:1590\n1855#2:1593\n1603#2,9:1594\n1855#2:1603\n1856#2:1605\n1612#2:1606\n1856#2:1607\n1549#2:1608\n1620#2,3:1609\n1549#2:1612\n1620#2,3:1613\n1549#2:1616\n1620#2,3:1617\n1747#2,3:1620\n1549#2:1623\n1620#2,3:1624\n1549#2:1627\n1620#2,3:1628\n1549#2:1631\n1620#2,3:1632\n1#3:1604\n277#4,2:1635\n256#4,2:1637\n254#4:1639\n256#4,2:1640\n254#4:1642\n256#4,2:1643\n326#4,4:1645\n310#4:1649\n326#4,4:1650\n311#4:1654\n*S KotlinDebug\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment\n*L\n411#1:1547\n411#1:1548,2\n412#1:1550\n412#1:1551,3\n566#1:1554\n566#1:1555,2\n566#1:1557\n566#1:1558,3\n752#1:1561,2\n1118#1:1563\n1118#1:1564,3\n1174#1:1567\n1174#1:1568,3\n1196#1:1571\n1196#1:1572,3\n1219#1:1575\n1219#1:1576,3\n1222#1:1579\n1222#1:1580,2\n1223#1:1582\n1223#1:1583,3\n1227#1:1586\n1227#1:1587,2\n1228#1:1589\n1228#1:1590,3\n1231#1:1593\n1232#1:1594,9\n1232#1:1603\n1232#1:1605\n1232#1:1606\n1231#1:1607\n1251#1:1608\n1251#1:1609,3\n1265#1:1612\n1265#1:1613,3\n1274#1:1616\n1274#1:1617,3\n1275#1:1620,3\n1285#1:1623\n1285#1:1624,3\n1320#1:1627\n1320#1:1628,3\n1340#1:1631\n1340#1:1632,3\n1232#1:1604\n1360#1:1635,2\n1500#1:1637,2\n1509#1:1639\n1514#1:1640,2\n1517#1:1642\n1522#1:1643,2\n1527#1:1645,4\n1407#1:1649\n1407#1:1650,4\n1407#1:1654\n*E\n"})
/* loaded from: classes17.dex */
public final class NoteListFragment extends BaseFragment {

    /* renamed from: A1 */
    public static final long f54709A1 = 1000;

    @NotNull
    public static final String ARG_PARAM_TYPE = "arg_param_type";

    /* renamed from: B1 */
    public static final long f54710B1 = 750;

    /* renamed from: C1 */
    public static final long f54711C1 = 50;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: D1 */
    public static final int f54712D1 = 3;

    @NotNull
    public static final String TAG = "NoteListFragment";

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteQuotaViewModel;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final Lazy notificationViewModel;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public final Lazy footerAdapter;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public final Lazy pageListAdapter;

    /* renamed from: j1, reason: from kotlin metadata */
    @NotNull
    public final QuickAdapterHelper adapterHelper;

    /* renamed from: k1, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: l1, reason: from kotlin metadata */
    @NotNull
    public CompositeDisposable viewScopeDisposables;

    /* renamed from: m1, reason: from kotlin metadata */
    @NotNull
    public final Lazy gridLayoutManager;

    /* renamed from: n1, reason: from kotlin metadata */
    @NotNull
    public final Lazy toggleDisplayRunnable;

    /* renamed from: o1, reason: from kotlin metadata */
    @NotNull
    public final Lazy toggleMulSelectRunnable;

    /* renamed from: p1, reason: from kotlin metadata */
    @NotNull
    public final Lazy hideGoTopRunnable;

    /* renamed from: q1, reason: from kotlin metadata */
    @NotNull
    public final Lazy updateNoteListViewRunnable;

    /* renamed from: r1, reason: from kotlin metadata */
    public boolean scrollTop;

    /* renamed from: s1, reason: from kotlin metadata */
    public boolean scrollBottom;

    /* renamed from: t1, reason: from kotlin metadata */
    public boolean isRvScrolling;

    /* renamed from: u1, reason: from kotlin metadata */
    @NotNull
    public final NoteListFragment$onDragListener$1 onDragListener;

    /* renamed from: v1, reason: from kotlin metadata */
    @NotNull
    public List<SyncProgressModel> noteSyncProgessModelList;

    /* renamed from: w1, reason: from kotlin metadata */
    public NoteSelectType noteSelectType;

    /* renamed from: x1, reason: from kotlin metadata */
    public ActivityResultLauncher<Uri> takePictureLauncher;

    /* renamed from: y1, reason: from kotlin metadata */
    public int showGoTopRowCount;

    /* renamed from: z1, reason: from kotlin metadata */
    @Nullable
    public CommonDialog noteEncryptionLoginDialog;

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListFragment$Companion;", "", "()V", "ANIMATE_DELAY_TIME", "", "ARG_PARAM_TYPE", "", "DELAY_SHORT_TIME", "DELAY_TIME", "NEED_SCROLL_TO_NEAR_THE_TOP_FACTOR", "", "TAG", Dfp.f108018r, "Lcom/onyx/galaxy/note/category/ui/NoteListFragment;", "noteSelectType", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final NoteListFragment newInstance(@NotNull NoteSelectType noteSelectType) {
            Intrinsics.checkNotNullParameter(noteSelectType, "noteSelectType");
            Bundle bundle = new Bundle();
            NoteListFragment noteListFragment = new NoteListFragment();
            bundle.putSerializable(NoteListFragment.ARG_PARAM_TYPE, noteSelectType);
            noteListFragment.setArguments(bundle);
            return noteListFragment;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NoteSelectType.values().length];
            try {
                iArr[NoteSelectType.TAB_NOTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NoteSelectType.TAB_PDF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$a */
    /* loaded from: classes9.dex */
    public static final class C11281a<T, R> implements Function {
        public C11281a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull SyncNoteModel it2) {
            List mutableListOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            Context requireContext = NoteListFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            String parentUniqueId = it2.getParentUniqueId();
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(it2);
            return new CopyNoteListAction(requireContext, parentUniqueId, mutableListOf).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$a0 */
    /* loaded from: classes9.dex */
    public static final class C11282a0 implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f54737a;

        public C11282a0(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f54737a = function;
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
            return this.f54737a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f54737a.invoke(obj);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$b */
    /* loaded from: classes9.dex */
    public static final class C11283b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f54738e;

        public C11283b(LoadingDialog loadingDialog) {
            this.f54738e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f54738e.show();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$c */
    /* loaded from: classes9.dex */
    public static final class C11284c<T> implements Consumer {
        public C11284c() {
        }

        /* renamed from: a */
        public final void m43367a(boolean z) {
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
            if (!z) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_failed, false, 2, (Object) null);
            } else {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_success, false, 2, (Object) null);
                NoteListFragment.this.m43310G1();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43367a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$d */
    /* loaded from: classes9.dex */
    public static final class C11285d<T> implements Consumer {

        /* renamed from: e */
        public static final C11285d<T> f54740e = new C11285d<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$e */
    /* loaded from: classes9.dex */
    public static final class C11286e<T> implements Consumer {
        public C11286e() {
        }

        /* renamed from: a */
        public final void m43368a(boolean z) {
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
            NoteListFragment.this.m43310G1();
            NoteListFragment.this.m43337V0().loadFilterList();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43368a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$f */
    /* loaded from: classes9.dex */
    public static final class C11287f<T> implements Consumer {
        public C11287f() {
        }

        /* renamed from: a */
        public final void m43369a(boolean z) {
            NoteListFragment.this.m43310G1();
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.note_recovery_successful, false, 2, (Object) null);
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43369a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$g */
    /* loaded from: classes9.dex */
    public static final class C11288g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f54743e;

        public C11288g(LoadingDialog loadingDialog) {
            this.f54743e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f54743e.show();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$h */
    /* loaded from: classes9.dex */
    public static final class C11289h<T> implements Consumer {
        public C11289h() {
        }

        /* renamed from: a */
        public final void m43371a(boolean z) {
            if (!z) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_failed, false, 2, (Object) null);
            } else {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_success, false, 2, (Object) null);
                NoteListFragment.this.m43310G1();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43371a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$i */
    /* loaded from: classes9.dex */
    public static final class C11290i<T> implements Consumer {
        public C11290i() {
        }

        /* renamed from: a */
        public final void m43373a(boolean z) {
            NoteListFragment.this.m43310G1();
            NoteListFragment.this.m43337V0().loadFilterList();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43373a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$j */
    /* loaded from: classes9.dex */
    public static final class C11291j<T> implements Consumer {
        public C11291j() {
        }

        /* renamed from: a */
        public final void m43374a(boolean z) {
            NoteListFragment.this.m43310G1();
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.note_recovery_successful, false, 2, (Object) null);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43374a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$k */
    /* loaded from: classes9.dex */
    public static final class C11292k<T> implements Consumer {

        /* renamed from: e */
        public static final C11292k<T> f54749e = new C11292k<>();

        /* renamed from: a */
        public final void m43375a(boolean z) {
            if (z) {
                return;
            }
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.edit_folder_conflicted, false, 2, (Object) null);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43375a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$l */
    /* loaded from: classes9.dex */
    public static final class C11293l<T> implements Predicate {

        /* renamed from: e */
        public static final C11293l<T> f54750e = new C11293l<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.getResultList().isEmpty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$m */
    /* loaded from: classes9.dex */
    public static final class C11294m<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ int f54752f;

        public C11294m(int i) {
            this.f54752f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListFragment.this.m43323N1(this.f54752f, it2.getResultList());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$n */
    /* loaded from: classes9.dex */
    public static final class C11295n<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ boolean f54753e;

        /* renamed from: f */
        public final /* synthetic */ WeakReference<Activity> f54754f;

        public C11295n(boolean z, WeakReference<Activity> weakReference) {
            this.f54753e = z;
            this.f54754f = weakReference;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckPdfPasswordAction it2) {
            Activity activity;
            Intrinsics.checkNotNullParameter(it2, "it");
            if (!this.f54753e || (activity = this.f54754f.get()) == null) {
                return;
            }
            activity.finish();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$o */
    /* loaded from: classes9.dex */
    public static final class C11296o<T> implements Consumer {
        public C11296o() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListFragment.this.m43349i1(it2.getResultList());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$p */
    /* loaded from: classes9.dex */
    public static final class C11298p<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Function1<Boolean, Unit> f54765e;

        /* JADX WARN: Multi-variable type inference failed */
        public C11298p(Function1<? super Boolean, Unit> function1) {
            this.f54765e = function1;
        }

        /* renamed from: a */
        public final void m43382a(boolean z) {
            Function1<Boolean, Unit> function1 = this.f54765e;
            if (function1 != null) {
                function1.invoke(Boolean.valueOf(z));
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43382a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$q */
    /* loaded from: classes9.dex */
    public static final class C11299q<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ NoteModelBean f54766e;

        public C11299q(NoteModelBean noteModelBean) {
            this.f54766e = noteModelBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateNoteExpandStatusAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocCollectionBundle.INSTANCE.postEvent(new ExpandParentFolderEvent(this.f54766e.getUniqueId()));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$r */
    /* loaded from: classes9.dex */
    public static final class C11300r<T> implements Consumer {
        public C11300r() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TemplateFragmentArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateFragment.INSTANCE.newInstance(it2).show(NoteListFragment.this.getParentFragmentManager(), Reflection.getOrCreateKotlinClass(NoteTemplateFragment.class).getSimpleName());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$s */
    /* loaded from: classes9.dex */
    public static final class C11301s<T> implements Predicate {
        public C11301s() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteSelectType noteSelectType = NoteListFragment.this.noteSelectType;
            if (noteSelectType == null) {
                Intrinsics.throwUninitializedPropertyAccessException("noteSelectType");
                noteSelectType = null;
            }
            return noteSelectType == NoteSelectType.TAB_ALL;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$t */
    /* loaded from: classes9.dex */
    public static final class C11302t<T, R> implements Function {
        public C11302t() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NotificationModel>> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteListFragment.this.m43324O0().getNotifications();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$u */
    /* loaded from: classes9.dex */
    public static final class C11303u<T, R> implements Function {
        public C11303u() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotificationModel> apply(List<NotificationModel> list) {
            NotificationViewModel m43324O0 = NoteListFragment.this.m43324O0();
            Intrinsics.checkNotNull(list);
            return m43324O0.filterCenterNotification(list);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$v */
    /* loaded from: classes9.dex */
    public static final class C11304v<T> implements Consumer {
        public C11304v() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NotificationModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NotificationHandler notificationHandler = NotificationHandler.INSTANCE;
            View root = NoteListFragment.this.m43313I0().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            notificationHandler.onNotification(it2, root, NoteListFragment.this.m43324O0());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$w */
    /* loaded from: classes9.dex */
    public static final class C11305w<T> implements Consumer {

        /* renamed from: e */
        public static final C11305w<T> f54773e = new C11305w<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull MoveToSelectFolderAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$x */
    /* loaded from: classes9.dex */
    public static final class C11306x<T> implements Consumer {
        public C11306x() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<DocumentBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListFragment.this.m43348g1(new WeakReference(NoteListFragment.this.requireActivity()), 3001, it2, false);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$y */
    /* loaded from: classes9.dex */
    public static final class C11307y<T> implements Consumer {

        /* renamed from: e */
        public static final C11307y<T> f54775e = new C11307y<>();

        /* renamed from: a */
        public final void m43396a(boolean z) {
            if (z) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.change_cover_succeed, false, 2, (Object) null);
            } else {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.change_cover_failed, false, 2, (Object) null);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43396a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$z */
    /* loaded from: classes9.dex */
    public static final class C11308z<T> implements Consumer {

        /* renamed from: e */
        public static final C11308z<T> f54776e = new C11308z<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteCreateInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocCollectionBundle.INSTANCE.postEvent(new NCreateScribbleNoteEvent(it2, NoteCreateFrom.DOUBLE_CLICK_QUICK_CREATE));
        }
    }

    public NoteListFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        Lazy lazy9;
        Lazy lazy10;
        Lazy lazy11;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentNoteListBinding>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentNoteListBinding invoke() {
                return FragmentNoteListBinding.inflate(NoteListFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteListViewModel invoke() {
                FragmentActivity requireActivity = NoteListFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NoteListViewModel) FragmentActivityKt.getViewModel(requireActivity, NoteListViewModel.class);
            }
        });
        this.viewModel = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<NoteQuotaViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$noteQuotaViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteQuotaViewModel invoke() {
                FragmentActivity requireActivity = NoteListFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NoteQuotaViewModel) FragmentActivityKt.getViewModel(requireActivity, NoteQuotaViewModel.class);
            }
        });
        this.noteQuotaViewModel = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<NotificationViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$notificationViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NotificationViewModel invoke() {
                FragmentActivity requireActivity = NoteListFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NotificationViewModel) FragmentActivityKt.getViewModel(requireActivity, NotificationViewModel.class);
            }
        });
        this.notificationViewModel = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListFooterAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$footerAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteListFooterAdapter invoke() {
                return new NoteListFooterAdapter();
            }
        });
        this.footerAdapter = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<NotePageListAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$pageListAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NotePageListAdapter invoke() {
                return new NotePageListAdapter();
            }
        });
        this.pageListAdapter = lazy6;
        this.adapterHelper = new QuickAdapterHelper.Builder(m43328Q0()).build();
        this.compositeDisposable = new CompositeDisposable();
        this.viewScopeDisposables = new CompositeDisposable();
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<GridLayoutManager>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$gridLayoutManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GridLayoutManager invoke() {
                return new GridLayoutManager(NoteListFragment.this.requireContext(), 1);
            }
        });
        this.gridLayoutManager = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new NoteListFragment$toggleDisplayRunnable$2(this));
        this.toggleDisplayRunnable = lazy8;
        lazy9 = LazyKt__LazyJVMKt.lazy(new NoteListFragment$toggleMulSelectRunnable$2(this));
        this.toggleMulSelectRunnable = lazy9;
        lazy10 = LazyKt__LazyJVMKt.lazy(new NoteListFragment$hideGoTopRunnable$2(this));
        this.hideGoTopRunnable = lazy10;
        lazy11 = LazyKt__LazyJVMKt.lazy(new NoteListFragment$updateNoteListViewRunnable$2(this));
        this.updateNoteListViewRunnable = lazy11;
        this.scrollTop = true;
        this.onDragListener = new NoteListFragment$onDragListener$1(this);
        this.noteSyncProgessModelList = new ArrayList();
    }

    /* renamed from: A1 */
    public static final void m43276A1(NoteListFragment this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        NotePageBean item = ((NotePageListAdapter) adapter).getItem(i);
        Intrinsics.checkNotNull(item);
        NotePageBean notePageBean = item;
        if (notePageBean.isNoteType()) {
            this$0.m43339W0(notePageBean, i);
        }
        if (notePageBean.isPageType()) {
            this$0.m43340X0(notePageBean);
        }
    }

    /* renamed from: B0 */
    public static final void m43277B0(NoteListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerView rv = this$0.m43313I0().f56750rv;
        Intrinsics.checkNotNullExpressionValue(rv, "rv");
        int measuredHeight = rv.getMeasuredHeight() - (rv.getPaddingTop() + rv.getPaddingBottom());
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C10651R.dimen.note_page_gird_item_height);
        if (this$0.m43337V0().getDisplayType().getValue() != NoteDisplayType.DISPLAY_GRID) {
            dimens = resManager.getDimens(C10651R.dimen.note_page_linear_item_height);
        }
        int i = (measuredHeight / dimens) * 2;
        this$0.showGoTopRowCount = i;
        if (measuredHeight % dimens != 0) {
            this$0.showGoTopRowCount = i + 1;
        }
    }

    /* renamed from: B1 */
    public static final boolean m43278B1(BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        NotePageBean item = ((NotePageListAdapter) adapter).getItem(i);
        Intrinsics.checkNotNull(item);
        NotePageBean notePageBean = item;
        if (notePageBean.isNoteType()) {
            return false;
        }
        if (notePageBean.isPageType()) {
            ToastUtils.INSTANCE.show(C10651R.string.note_page_drag_hint, true);
        }
        return true;
    }

    /* renamed from: D0 */
    public static final void m43279D0(LoadingDialog dialog) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        dialog.dismiss();
    }

    /* renamed from: D1 */
    public static final void m43280D1(NoteListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43327P1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: K1 */
    public static final void m43281K1(NoteListFragment this$0, RequestPermissionEvent event, boolean z, List list, List deniedList) {
        Object first;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        Intrinsics.checkNotNullParameter(list, "<anonymous parameter 1>");
        Intrinsics.checkNotNullParameter(deniedList, "deniedList");
        if (z) {
            DocCollectionBundle.INSTANCE.postEvent(event.getNextEvent());
            return;
        }
        Debug.INSTANCE.m32037d("These permissions are denied: " + deniedList);
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) deniedList);
        Intrinsics.checkNotNullExpressionValue(first, "first(...)");
        ActivityKt.shouldShowGuideToPermissionSettings(requireActivity, first);
    }

    /* renamed from: T1 */
    public static final void m43282T1(NoteListFragment this$0, List list, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new NoteExportDialog(docManagerBundle, requireContext, NoteExportArgs.INSTANCE.toNoteExportArgsList(list)).show();
    }

    /* renamed from: Z0 */
    public static final void m43283Z0(LoadingDialog dialog) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        dialog.dismiss();
    }

    /* renamed from: h1 */
    public static /* synthetic */ void m43284h1(NoteListFragment noteListFragment, WeakReference weakReference, int i, List list, boolean z, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            z = true;
        }
        noteListFragment.m43348g1(weakReference, i, list, z);
    }

    /* renamed from: k1 */
    public static /* synthetic */ void m43285k1(NoteListFragment noteListFragment, List list, NoteCreateFrom noteCreateFrom, ImportSelectedContext importSelectedContext, int i, Object obj) {
        if ((i & 4) != 0) {
            importSelectedContext = null;
        }
        noteListFragment.m43350j1(list, noteCreateFrom, importSelectedContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n1 */
    public static /* synthetic */ void m43289n1(NoteListFragment noteListFragment, List list, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = null;
        }
        noteListFragment.m43352m1(list, z, function1);
    }

    /* renamed from: w1 */
    public static final void m43298w1(NoteListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        long j = this$0.m43308F1() ? 0L : 50L;
        View root = this$0.m43313I0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ViewKt.repostDelayed(root, this$0.m43332S0(), j);
    }

    /* renamed from: x0 */
    public static /* synthetic */ void m43299x0(NoteListFragment noteListFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        noteListFragment.m43361w0(z);
    }

    /* renamed from: y0 */
    public static final void m43300y0(NoteListFragment this$0, boolean z) {
        Map mapOf;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ResManager resManager = ResManager.INSTANCE;
        float screenWidth = resManager.getScreenWidth() - (resManager.getDimension(C10651R.dimen.note_list_horizontal_margin) * 2);
        float dimension = resManager.getDimension(C10651R.dimen.note_list_left_container_width);
        int measuredWidth = this$0.m43313I0().f56750rv.getMeasuredWidth();
        if (Intrinsics.areEqual(this$0.m43337V0().isShowSlideMenu().getValue(), Boolean.TRUE)) {
            screenWidth -= dimension;
        }
        int i = (int) screenWidth;
        if (i <= 0) {
            return;
        }
        int spanCount = this$0.m43318L0().getSpanCount();
        if (measuredWidth != i) {
            RecyclerView rv = this$0.m43313I0().f56750rv;
            Intrinsics.checkNotNullExpressionValue(rv, "rv");
            ViewGroup.LayoutParams layoutParams = rv.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams.width = i;
            rv.setLayoutParams(layoutParams);
        }
        if (this$0.m43337V0().getDisplayType().getValue() == NoteDisplayType.DISPLAY_GRID) {
            int m43330R0 = this$0.m43330R0(i);
            if (this$0.m43318L0().getSpanCount() != m43330R0) {
                this$0.m43318L0().setSpanCount(m43330R0);
            }
        } else if (this$0.m43318L0().getSpanCount() != 1) {
            this$0.m43318L0().setSpanCount(1);
        }
        if (spanCount == this$0.m43318L0().getSpanCount() && measuredWidth == i) {
            return;
        }
        if (z) {
            this$0.m43328Q0().notifyDataSetChanged();
            return;
        }
        if (this$0.m43308F1()) {
            RecyclerView rv2 = this$0.m43313I0().f56750rv;
            Intrinsics.checkNotNullExpressionValue(rv2, "rv");
            ViewKt.repostDelayed(rv2, this$0.m43335U0(), 50L);
        }
        NotePageListAdapter m43328Q0 = this$0.m43328Q0();
        int itemCount = this$0.m43328Q0().getItemCount();
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to("pay_load_key_refresh_view", TAG));
        m43328Q0.notifyItemRangeChanged(0, itemCount, mapOf);
    }

    /* renamed from: z1 */
    public static final void m43301z1(NoteListFragment this$0, BaseQuickAdapter adapter, View v, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(v, "v");
        NotePageListAdapter notePageListAdapter = (NotePageListAdapter) adapter;
        NotePageBean item = notePageListAdapter.getItem(i);
        Intrinsics.checkNotNull(item);
        NotePageBean notePageBean = item;
        boolean areEqual = Intrinsics.areEqual(this$0.m43337V0().isMulSelect().getValue(), Boolean.TRUE);
        if (notePageBean.isNoteType()) {
            FilterInfo value = this$0.m43337V0().getFilterInfo().getValue();
            boolean z = false;
            if (value != null && value.getType() == 8) {
                z = true;
            }
            if (z) {
                if (areEqual) {
                    this$0.m43339W0(notePageBean, i);
                    return;
                }
                NoteModelBean noteModelBean = notePageBean.getNoteModelBean();
                Intrinsics.checkNotNull(noteModelBean);
                this$0.m43329Q1(v, noteModelBean);
                return;
            }
            if (Intrinsics.areEqual(this$0.m43337V0().isMulSelect().getValue(), Boolean.FALSE)) {
                NoteModelBean noteModelBean2 = notePageBean.getNoteModelBean();
                Intrinsics.checkNotNull(noteModelBean2);
                this$0.m43336U1(v, noteModelBean2);
            } else {
                NoteListViewModel m43337V0 = this$0.m43337V0();
                NoteModelBean noteModelBean3 = notePageBean.getNoteModelBean();
                Intrinsics.checkNotNull(noteModelBean3);
                notePageListAdapter.updateSelect(m43337V0.toggleSelectList(noteModelBean3), i);
            }
        }
    }

    /* renamed from: A0 */
    public final void m43302A0() {
        m43313I0().f56750rv.post(new Runnable() { // from class: com.sunia.HTREnginev2.exj
            @Override // java.lang.Runnable
            public final void run() {
                NoteListFragment.m43277B0(NoteListFragment.this);
            }
        });
    }

    /* renamed from: C0 */
    public final void m43303C0() {
        int collectionSizeOrDefault;
        List mutableList;
        NoteModelBeanList value = m43337V0().getSelectList().getValue();
        Intrinsics.checkNotNull(value);
        NoteModelBeanList noteModelBeanList = value;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModelBeanList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        if (mutableList.isEmpty()) {
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
            return;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(requireContext);
        createLoadingDialog.updateTitle(C10651R.string.option_copying);
        Disposable subscribe = Observable.fromIterable(mutableList).concatMap(new C11281a()).takeLast(1).doOnSubscribe(new C11283b(createLoadingDialog)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.gxj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteListFragment.m43279D0(LoadingDialog.this);
            }
        }).subscribe(new C11284c());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: C1 */
    public final void m43304C1() {
        m43299x0(this, false, 1, null);
        m43302A0();
        m43313I0().f56750rv.setLayoutManager(m43318L0());
        m43313I0().f56750rv.setAdapter(this.adapterHelper.getMAdapter());
        m43313I0().f56750rv.addItemDecoration(new GridDividerItemDecoration(0, 0, false, false, 0, 31, null));
        m43313I0().getRoot().setOnDragListener(new NoteListDragListener());
        ShadowLayout slGoTop = m43313I0().slGoTop;
        Intrinsics.checkNotNullExpressionValue(slGoTop, "slGoTop");
        com.onyx.android.sdk.extension.ViewKt.click$default(slGoTop, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fxj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteListFragment.m43280D1(NoteListFragment.this, view);
            }
        }, 1, null);
        m43313I0().f56750rv.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initView$2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NotNull RecyclerView recyclerView, int newState) {
                Runnable m43320M0;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                long integer = ResManager.INSTANCE.getInteger(C10651R.integer.hide_list_go_top_delay);
                RecyclerView rv = NoteListFragment.this.m43313I0().f56750rv;
                Intrinsics.checkNotNullExpressionValue(rv, "rv");
                m43320M0 = NoteListFragment.this.m43320M0();
                ViewKt.repostDelayed(rv, m43320M0, integer);
                NoteListFragment.this.scrollTop = !r4.m43313I0().f56750rv.canScrollVertically(-1);
                NoteListFragment.this.scrollBottom = !r4.m43313I0().f56750rv.canScrollVertically(1);
                boolean z = newState == 0;
                if (z) {
                    NoteListFragment.this.m43321M1();
                }
                NoteListFragment.this.isRvScrolling = !z;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NotNull RecyclerView recyclerView, int dx, int dy) {
                int i;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                if (dy > 0) {
                    i = NoteListFragment.this.showGoTopRowCount;
                    if (i > 0) {
                        NoteListFragment.this.m43338V1();
                        return;
                    }
                }
                ShadowLayout slGoTop2 = NoteListFragment.this.m43313I0().slGoTop;
                Intrinsics.checkNotNullExpressionValue(slGoTop2, "slGoTop");
                slGoTop2.setVisibility(8);
            }
        });
        m43313I0().vScrollDown.setOnDragListener(this.onDragListener);
        m43313I0().vScrollUp.setOnDragListener(this.onDragListener);
        m43313I0().f56750rv.addOnItemTouchListener(new RecyclerViewSwipeListener() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initView$3
            @Override // com.onyx.galaxy.note.category.p044ui.RecyclerViewSwipeListener
            public boolean isEnableSwipe() {
                return !Intrinsics.areEqual(NoteListFragment.this.m43337V0().isMulSelect().getValue(), Boolean.TRUE);
            }

            @Override // com.onyx.galaxy.note.category.p044ui.RecyclerViewSwipeListener
            public void updateChangeItems(@NotNull List<Integer> positionList) {
                Intrinsics.checkNotNullParameter(positionList, "positionList");
                NoteListFragment.this.m43359u1(positionList);
            }
        });
    }

    /* renamed from: E0 */
    public final void m43305E0() {
        int collectionSizeOrDefault;
        final List mutableList;
        int collectionSizeOrDefault2;
        List<String> mutableList2;
        int collectionSizeOrDefault3;
        List mutableList3;
        NoteModelBeanList value = m43337V0().getSelectList().getValue();
        Intrinsics.checkNotNull(value);
        NoteModelBeanList noteModelBeanList = value;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModelBeanList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        ArrayList arrayList2 = new ArrayList();
        List list = mutableList;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : list) {
            if (((NoteModelBean) obj).isLibrary()) {
                arrayList3.add(obj);
            }
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault2);
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            arrayList4.add(((NoteModelBean) it3.next()).getUniqueId());
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList4);
        ArrayList arrayList5 = new ArrayList();
        for (Object obj2 : list) {
            if (((NoteModelBean) obj2).isDocument()) {
                arrayList5.add(obj2);
            }
        }
        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList5, 10);
        ArrayList arrayList6 = new ArrayList(collectionSizeOrDefault3);
        Iterator it4 = arrayList5.iterator();
        while (it4.hasNext()) {
            arrayList6.add(((NoteModelBean) it4.next()).getUniqueId());
        }
        mutableList3 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList6);
        arrayList2.addAll(mutableList2);
        Iterator<T> it5 = m43337V0().findFolders(mutableList2).iterator();
        while (it5.hasNext()) {
            List findChildrenNodes = ((TreeNode) it5.next()).findChildrenNodes();
            ArrayList arrayList7 = new ArrayList();
            Iterator it6 = findChildrenNodes.iterator();
            while (it6.hasNext()) {
                String id = ((TreeNode) it6.next()).getId();
                if (id != null) {
                    arrayList7.add(id);
                }
            }
            arrayList2.addAll(arrayList7);
        }
        final ArrayList arrayList8 = new ArrayList();
        arrayList8.addAll(mutableList3);
        arrayList8.addAll(arrayList2);
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        Disposable subscribe = RxjavaKt.flatMapIf(new AuthNoteAction(requireActivity, arrayList8).build(), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$deleteNote$disposable$1
            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(z);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$deleteNote$disposable$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            public final Observable<? extends Object> invoke(boolean z) {
                int collectionSizeOrDefault4;
                Context requireContext = NoteListFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                List<String> list2 = arrayList8;
                List<NoteModelBean> list3 = mutableList;
                collectionSizeOrDefault4 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
                ArrayList arrayList9 = new ArrayList(collectionSizeOrDefault4);
                Iterator<T> it7 = list3.iterator();
                while (it7.hasNext()) {
                    arrayList9.add(((NoteModelBean) it7.next()).getUniqueId());
                }
                return new DeleteListNoteAction(requireContext, list2, arrayList9).build();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }).subscribe(C11285d.f54740e);
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: E1 */
    public final void m43306E1() {
        m43337V0().getFilterInfo().observe(requireActivity(), new C11282a0(new Function1<FilterInfo, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initViewModel$1
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
                NotePageListAdapter m43328Q0;
                m43328Q0 = NoteListFragment.this.m43328Q0();
                m43328Q0.setEnableDrag(filterInfo.getType() != 8);
            }
        }));
        m43326P0().observe(requireActivity(), new C11282a0(new Function1<List<NotePageBean>, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initViewModel$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<NotePageBean> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<NotePageBean> list) {
                NotePageListAdapter m43328Q0;
                NotePageListAdapter m43328Q02;
                m43328Q0 = NoteListFragment.this.m43328Q0();
                m43328Q0.setSelectedTagId(NoteListFragment.this.m43337V0().getTagIdOp().get());
                m43328Q02 = NoteListFragment.this.m43328Q0();
                m43328Q02.submitList(list);
            }
        }));
        m43337V0().getDisplayType().observe(requireActivity(), new C11282a0(new Function1<NoteDisplayType, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initViewModel$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteDisplayType noteDisplayType) {
                invoke2(noteDisplayType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(NoteDisplayType noteDisplayType) {
                NoteListFragment.this.showGoTopRowCount = 0;
                NoteListFragment.this.m43360v1();
            }
        }));
        m43337V0().isMulSelect().observe(requireActivity(), new C11282a0(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initViewModel$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                NoteListFragment noteListFragment = NoteListFragment.this;
                Intrinsics.checkNotNull(bool);
                noteListFragment.m43362x1(bool.booleanValue());
            }
        }));
        m43337V0().isLoadingList().observe(requireActivity(), new C11282a0(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initViewModel$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                MutableLiveData m43326P0;
                boolean z;
                Object first;
                m43326P0 = NoteListFragment.this.m43326P0();
                T value = m43326P0.getValue();
                Intrinsics.checkNotNull(value);
                List list = (List) value;
                boolean z2 = false;
                if (!list.isEmpty()) {
                    first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
                    if (!((NotePageBean) first).isHeaderType() || list.size() != 1) {
                        z = false;
                        NoteListFragment noteListFragment = NoteListFragment.this;
                        if (z && !bool.booleanValue()) {
                            z2 = true;
                        }
                        noteListFragment.m43331R1(z2);
                    }
                }
                z = true;
                NoteListFragment noteListFragment2 = NoteListFragment.this;
                if (z) {
                    z2 = true;
                }
                noteListFragment2.m43331R1(z2);
            }
        }));
        m43337V0().getTagRootNode().observe(requireActivity(), new C11282a0(new Function1<TreeNode<NoteTagBean>, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initViewModel$6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TreeNode<NoteTagBean> treeNode) {
                invoke2(treeNode);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(TreeNode<NoteTagBean> treeNode) {
                NotePageListAdapter m43328Q0;
                NoteTagNodes noteTagNodes = NoteTagNodes.INSTANCE;
                Intrinsics.checkNotNull(treeNode);
                Map<String, SyncTagModel> flattenToMap = noteTagNodes.flattenToMap(treeNode);
                m43328Q0 = NoteListFragment.this.m43328Q0();
                m43328Q0.setTagByIdMap(flattenToMap);
            }
        }));
        m43337V0().getSortType().observe(requireActivity(), new C11282a0(new Function1<SortBy, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initViewModel$7
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SortBy sortBy) {
                invoke2(sortBy);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SortBy sortBy) {
                NotePageListAdapter m43328Q0;
                NotePageListAdapter m43328Q02;
                m43328Q0 = NoteListFragment.this.m43328Q0();
                m43328Q0.setShowUpdateAt(sortBy != SortBy.CreationTime);
                m43328Q02 = NoteListFragment.this.m43328Q0();
                Intrinsics.checkNotNull(sortBy);
                m43328Q02.setSortBy(sortBy);
            }
        }));
        m43337V0().getSelectType().observe(requireActivity(), new C11282a0(new Function1<NoteSelectType, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initViewModel$8
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteSelectType noteSelectType) {
                invoke2(noteSelectType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(NoteSelectType noteSelectType) {
                NotePageListAdapter m43328Q0;
                m43328Q0 = NoteListFragment.this.m43328Q0();
                Intrinsics.checkNotNull(noteSelectType);
                m43328Q0.setSelectType(noteSelectType);
            }
        }));
        m43337V0().getSelectList().observe(requireActivity(), new C11282a0(new Function1<NoteModelBeanList, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initViewModel$9
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteModelBeanList noteModelBeanList) {
                invoke2(noteModelBeanList);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(NoteModelBeanList noteModelBeanList) {
                NotePageListAdapter m43328Q0;
                boolean m43308F1;
                NotePageListAdapter m43328Q02;
                m43328Q0 = NoteListFragment.this.m43328Q0();
                Intrinsics.checkNotNull(noteModelBeanList);
                m43328Q0.setSelectionList(noteModelBeanList);
                m43308F1 = NoteListFragment.this.m43308F1();
                if (m43308F1) {
                    return;
                }
                m43328Q02 = NoteListFragment.this.m43328Q0();
                m43328Q02.notifyDataSetChanged();
            }
        }));
        m43337V0().isShowSlideMenu().observe(requireActivity(), new C11282a0(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initViewModel$10
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                NoteListFragment.m43299x0(NoteListFragment.this, false, 1, null);
                NoteListFragment.this.m43302A0();
            }
        }));
        MutableLiveData<String> event = m43322N0().getEvent();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        DataBindingKt.observeOnce(event, viewLifecycleOwner, new NoteListFragment$initViewModel$11(this));
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnNext = Observable.just(Unit.INSTANCE).filter(new C11301s()).flatMap(new C11302t()).flatMap(new C11303u()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11304v());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        this.viewScopeDisposables.add(OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null));
    }

    /* renamed from: F0 */
    public final void m43307F0() {
        int collectionSizeOrDefault;
        NoteModelBeanList value = m43337V0().getSelectList().getValue();
        Intrinsics.checkNotNull(value);
        NoteModelBeanList noteModelBeanList = value;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModelBeanList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getUniqueId());
        }
        if (arrayList.isEmpty()) {
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
            return;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        Disposable subscribe = new DeleteDustbinNoteAction(requireContext, arrayList).build().subscribe(new C11286e());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: F1 */
    public final boolean m43308F1() {
        NoteSelectType value = m43337V0().getSelectType().getValue();
        NoteSelectType noteSelectType = this.noteSelectType;
        if (noteSelectType == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteSelectType");
            noteSelectType = null;
        }
        return value == noteSelectType && !m43337V0().isFilterRootFolder();
    }

    /* renamed from: G0 */
    public final void m43309G0() {
        int collectionSizeOrDefault;
        NoteModelBeanList value = m43337V0().getSelectList().getValue();
        Intrinsics.checkNotNull(value);
        NoteModelBeanList noteModelBeanList = value;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModelBeanList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getUniqueId());
        }
        if (arrayList.isEmpty()) {
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
            return;
        }
        Disposable subscribe = new RestoreDustbinNoteAction(arrayList).build().subscribe(new C11287f());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: G1 */
    public final void m43310G1() {
        m43337V0().initList();
    }

    /* renamed from: H0 */
    public final void m43311H0() {
        int collectionSizeOrDefault;
        NoteModelBeanList value = m43337V0().getSelectList().getValue();
        Intrinsics.checkNotNull(value);
        NoteModelBeanList noteModelBeanList = value;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModelBeanList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        if (arrayList.isEmpty()) {
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
        } else {
            m43333S1(arrayList);
        }
    }

    /* renamed from: H1 */
    public final void m43312H1() {
        int collectionSizeOrDefault;
        NoteModelBeanList value = m43337V0().getSelectList().getValue();
        Intrinsics.checkNotNull(value);
        NoteModelBeanList noteModelBeanList = value;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModelBeanList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        boolean z = false;
        if (!arrayList.isEmpty()) {
            Iterator it3 = arrayList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                } else if (((NoteModelBean) it3.next()).hasEncryption()) {
                    z = true;
                    break;
                }
            }
        }
        m43352m1(arrayList, z, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$modifySelectedNotesLock$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z2) {
                if (z2) {
                    DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
                }
            }
        });
    }

    /* renamed from: I0 */
    public final FragmentNoteListBinding m43313I0() {
        return (FragmentNoteListBinding) this.binding.getValue();
    }

    /* renamed from: I1 */
    public final void m43314I1() {
        int collectionSizeOrDefault;
        NoteModelBeanList value = m43337V0().getSelectList().getValue();
        Intrinsics.checkNotNull(value);
        NoteModelBeanList noteModelBeanList = value;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModelBeanList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getUniqueId());
        }
        ManageFolderContext manageFolderContext = new ManageFolderContext();
        manageFolderContext.setOldParentId(m43337V0().getNormalizedFolderId());
        manageFolderContext.setOpNoteIds(arrayList);
        NoteModelBeanList value2 = m43337V0().getSelectList().getValue();
        Intrinsics.checkNotNull(value2);
        manageFolderContext.setMoveNoteList(value2);
        CompositeDisposable compositeDisposable = this.compositeDisposable;
        MoveToSelectFolderAction moveToSelectFolderAction = new MoveToSelectFolderAction(manageFolderContext, TAG);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        compositeDisposable.add(moveToSelectFolderAction.setActivityContext(requireContext).build().doOnNext(C11305w.f54773e).subscribe());
    }

    /* renamed from: J0 */
    public final CommonEmptyView.EmptyBean m43315J0() {
        FilterInfo value = m43337V0().getFilterInfo().getValue();
        Intrinsics.checkNotNull(value);
        int type = value.getType();
        return type != 5 ? type != 6 ? type != 7 ? type != 8 ? CommonEmptyView.INSTANCE.getNOTE_DEFAULT_EMPTY_BEAN() : CommonEmptyView.INSTANCE.getDUSTBIN_EMPTY_BEAN() : CommonEmptyView.INSTANCE.getTAG_EMPTY_BEAN() : CommonEmptyView.INSTANCE.getTAG_ROOT_EMPTY_BEAN() : CommonEmptyView.INSTANCE.getFOLDER_EMPTY_BEAN();
    }

    /* renamed from: J1 */
    public final void m43316J1(final View view) {
        ViewKt.postSelf(view, new Function1<View, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$normalCreate$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view2) {
                invoke2(view2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull View it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                boolean z = (NoteListFragment.this.m43337V0().isFilterRootFolder() || NoteListFragment.this.m43337V0().isFilterFolder()) && Intrinsics.areEqual(NoteListFragment.this.m43337V0().isBottomLevel().getValue(), Boolean.FALSE);
                EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
                Context requireContext = NoteListFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                String currentFolderId = NoteListFragment.this.m43337V0().getCurrentFolderId();
                String currentTagId = NoteListFragment.this.m43337V0().getCurrentTagId();
                DockType dockType = DockType.RIGHT;
                FragmentManager parentFragmentManager = NoteListFragment.this.getParentFragmentManager();
                Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "getParentFragmentManager(...)");
                new CreateNotePopup(docManagerBundle, requireContext, currentFolderId, currentTagId, z, dockType, parentFragmentManager).show(view);
            }
        });
    }

    /* renamed from: K0 */
    public final NoteListFooterAdapter m43317K0() {
        return (NoteListFooterAdapter) this.footerAdapter.getValue();
    }

    /* renamed from: L0 */
    public final GridLayoutManager m43318L0() {
        return (GridLayoutManager) this.gridLayoutManager.getValue();
    }

    /* renamed from: L1 */
    public final void m43319L1() {
        NoteQuotaViewModel m43322N0 = m43322N0();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        if (m43322N0.checkGuideRegister(requireContext)) {
            return;
        }
        new CreateQuicklyNoteAction(m43337V0().getCurrentFolderId(), m43337V0().getCurrentTagId()).build().doOnNext(C11308z.f54776e).subscribe();
    }

    /* renamed from: M0 */
    public final Runnable m43320M0() {
        return (Runnable) this.hideGoTopRunnable.getValue();
    }

    /* renamed from: M1 */
    public final void m43321M1() {
        List<SyncProgressModel> list = this.noteSyncProgessModelList;
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        m43328Q0().handleSyncNoteProgressChangedEvent(list);
        list.clear();
    }

    /* renamed from: N0 */
    public final NoteQuotaViewModel m43322N0() {
        return (NoteQuotaViewModel) this.noteQuotaViewModel.getValue();
    }

    /* renamed from: N1 */
    public final void m43323N1(int triggerFrom, List<DocumentFileEntry> resultList) {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(triggerFrom)));
        mutableMapOf.put(OnyxStatisticConstant.KEY_DOCUMENT_AMOUNT, Integer.valueOf(resultList.size()));
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_PICK_FILE_FINISHED, mutableMapOf);
    }

    /* renamed from: O0 */
    public final NotificationViewModel m43324O0() {
        return (NotificationViewModel) this.notificationViewModel.getValue();
    }

    /* renamed from: O1 */
    public final void m43325O1(List<Uri> resultList) {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, 3001));
        mutableMapOf.put(OnyxStatisticConstant.KEY_IMAGE_AMOUNT, Integer.valueOf(resultList.size()));
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_PICK_PIC_FINISHED, mutableMapOf);
    }

    /* renamed from: P0 */
    public final MutableLiveData<List<NotePageBean>> m43326P0() {
        NoteSelectType noteSelectType = this.noteSelectType;
        if (noteSelectType == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteSelectType");
            noteSelectType = null;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[noteSelectType.ordinal()];
        return i != 1 ? i != 2 ? m43337V0().getTabAllListData() : m43337V0().getTabPdfListData() : m43337V0().getTabNoteListData();
    }

    /* renamed from: P1 */
    public final void m43327P1() {
        int findLastVisibleItemPosition = m43318L0().findLastVisibleItemPosition();
        int spanCount = m43318L0().getSpanCount();
        int i = findLastVisibleItemPosition / spanCount;
        int i2 = this.showGoTopRowCount;
        if (!(i >= i2 * 3)) {
            m43313I0().f56750rv.smoothScrollBy(0, -m43313I0().f56750rv.computeVerticalScrollRange(), null, ResManager.INSTANCE.getInteger(C10651R.integer.list_go_top_animate_duration));
        } else {
            m43313I0().f56750rv.scrollToPosition(Math.min(i2 * spanCount, this.adapterHelper.getMAdapter().getItemCount() - 1));
            m43313I0().f56750rv.fling(0, -m43313I0().f56750rv.computeVerticalScrollRange());
        }
    }

    /* renamed from: Q0 */
    public final NotePageListAdapter m43328Q0() {
        return (NotePageListAdapter) this.pageListAdapter.getValue();
    }

    /* renamed from: Q1 */
    public final void m43329Q1(View v, NoteModelBean model) {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        NoteListDustBinOpPopup noteListDustBinOpPopup = new NoteListDustBinOpPopup(requireContext, model, new NoteListFragment$showDustBinOpPopup$1(this), new NoteListFragment$showDustBinOpPopup$2(this));
        View root = m43313I0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        Rect windowVisibleRect = ViewKt.windowVisibleRect(root);
        NoteDisplayType value = m43337V0().getDisplayType().getValue();
        noteListDustBinOpPopup.showCenterPositionPopView(v, windowVisibleRect, value != null ? Boolean.valueOf(value.isGrid()) : null);
    }

    /* renamed from: R0 */
    public final int m43330R0(int totalWidth) {
        int coerceAtLeast;
        ResManager resManager = ResManager.INSTANCE;
        float dimension = resManager.getDimension(C10651R.dimen.note_page_gird_item_max_width);
        float dimension2 = resManager.getDimension(C10651R.dimen.note_grid_divider_min_width);
        float f = totalWidth;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast((int) (f / dimension), 1);
        while ((f - (coerceAtLeast * dimension)) - ((coerceAtLeast - 1) * dimension2) < 0.0f && coerceAtLeast > 1) {
            coerceAtLeast--;
        }
        return coerceAtLeast;
    }

    /* renamed from: R1 */
    public final void m43331R1(boolean isShowEmptyView) {
        m43313I0().includeEmptyView.setEmptyBean(m43315J0());
        CommonEmptyView includeEmptyView = m43313I0().includeEmptyView;
        Intrinsics.checkNotNullExpressionValue(includeEmptyView, "includeEmptyView");
        includeEmptyView.setVisibility(isShowEmptyView ^ true ? 4 : 0);
    }

    /* renamed from: S0 */
    public final Runnable m43332S0() {
        return (Runnable) this.toggleDisplayRunnable.getValue();
    }

    /* renamed from: S1 */
    public final void m43333S1(final List<? extends SyncNoteModel> list) {
        int collectionSizeOrDefault;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        List<? extends SyncNoteModel> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncNoteModel) it2.next()).getUniqueId());
        }
        RxjavaKt.doOnNextIfTrue(new AuthNoteAction(requireActivity, arrayList).build(), new Consumer() { // from class: com.sunia.HTREnginev2.lxj
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                NoteListFragment.m43282T1(NoteListFragment.this, list, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: T0 */
    public final Runnable m43334T0() {
        return (Runnable) this.toggleMulSelectRunnable.getValue();
    }

    /* renamed from: U0 */
    public final Runnable m43335U0() {
        return (Runnable) this.updateNoteListViewRunnable.getValue();
    }

    /* renamed from: U1 */
    public final void m43336U1(View v, NoteModelBean model) {
        NoteListOpPopup.NoteOperateListener noteOperateListener = new NoteListOpPopup.NoteOperateListener() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$showNoteOpPopup$noteOperateListener$1
            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void addTagsToNote(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                NoteListFragment.this.m43346e1(noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void changeNoteTemplate(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                NoteListFragment.this.m43358t1(noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void copyNote(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                NoteListFragment.this.m43341Y0(noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void deleteNote(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                NoteListFragment.this.m43342a1(noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void editNote(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                NoteListFragment.this.m43345d1(noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void exportNote(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                NoteListFragment.this.m43347f1(noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void modifyNoteLock(@NotNull NoteModelBean noteModelBean) {
                List listOf;
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                NoteListFragment noteListFragment = NoteListFragment.this;
                listOf = CollectionsKt__CollectionsJVMKt.listOf(noteModelBean);
                NoteListFragment.m43289n1(noteListFragment, listOf, noteModelBean.hasEncryption(), null, 4, null);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void moveNote(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                NoteListFragment.this.m43353o1(noteModelBean);
            }
        };
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        NoteListOpPopup noteListOpPopup = new NoteListOpPopup(requireContext, model, noteOperateListener);
        View root = m43313I0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        Rect windowVisibleRect = ViewKt.windowVisibleRect(root);
        NoteDisplayType value = m43337V0().getDisplayType().getValue();
        noteListOpPopup.showCenterPositionPopView(v, windowVisibleRect, value != null ? Boolean.valueOf(value.isGrid()) : null);
    }

    /* renamed from: V0 */
    public final NoteListViewModel m43337V0() {
        return (NoteListViewModel) this.viewModel.getValue();
    }

    /* renamed from: V1 */
    public final void m43338V1() {
        if (this.showGoTopRowCount <= 0) {
            ShadowLayout slGoTop = m43313I0().slGoTop;
            Intrinsics.checkNotNullExpressionValue(slGoTop, "slGoTop");
            slGoTop.setVisibility(8);
            return;
        }
        boolean z = m43318L0().findLastVisibleItemPosition() / m43318L0().getSpanCount() >= this.showGoTopRowCount;
        if (z) {
            ShadowLayout slGoTop2 = m43313I0().slGoTop;
            Intrinsics.checkNotNullExpressionValue(slGoTop2, "slGoTop");
            if (!(slGoTop2.getVisibility() == 0)) {
                View root = m43313I0().getRoot();
                Intrinsics.checkNotNull(root, "null cannot be cast to non-null type android.view.ViewGroup");
                TransitionManager.beginDelayedTransition((ViewGroup) root, new MaterialFade());
                ShadowLayout slGoTop3 = m43313I0().slGoTop;
                Intrinsics.checkNotNullExpressionValue(slGoTop3, "slGoTop");
                slGoTop3.setVisibility(0);
            }
        }
        if (z) {
            return;
        }
        ShadowLayout slGoTop4 = m43313I0().slGoTop;
        Intrinsics.checkNotNullExpressionValue(slGoTop4, "slGoTop");
        if (slGoTop4.getVisibility() == 0) {
            View root2 = m43313I0().getRoot();
            Intrinsics.checkNotNull(root2, "null cannot be cast to non-null type android.view.ViewGroup");
            TransitionManager.beginDelayedTransition((ViewGroup) root2, new MaterialFade());
            ShadowLayout slGoTop5 = m43313I0().slGoTop;
            Intrinsics.checkNotNullExpressionValue(slGoTop5, "slGoTop");
            slGoTop5.setVisibility(8);
        }
    }

    /* renamed from: W0 */
    public final void m43339W0(NotePageBean notePageBean, int pos) {
        NoteModelBean noteModelBean = notePageBean.getNoteModelBean();
        Intrinsics.checkNotNull(noteModelBean);
        boolean areEqual = Intrinsics.areEqual(m43337V0().isMulSelect().getValue(), Boolean.TRUE);
        FilterInfo value = m43337V0().getFilterInfo().getValue();
        boolean z = false;
        if (value != null && value.getType() == 8) {
            z = true;
        }
        if (areEqual || z) {
            if (areEqual) {
                m43328Q0().updateSelect(m43337V0().toggleSelectList(noteModelBean), pos);
                return;
            }
            return;
        }
        if (noteModelBean.isLibrary()) {
            m43356r1(noteModelBean);
        } else {
            m43357s1(noteModelBean);
        }
    }

    /* renamed from: X0 */
    public final void m43340X0(NotePageBean notePageBean) {
        if (Intrinsics.areEqual(m43337V0().isMulSelect().getValue(), Boolean.TRUE)) {
            return;
        }
        PageModelBean pageModelBean = notePageBean.getPageModelBean();
        Intrinsics.checkNotNull(pageModelBean);
        m43355q1(pageModelBean);
    }

    /* renamed from: Y0 */
    public final void m43341Y0(SyncNoteModel syncNoteModel) {
        List mutableListOf;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(requireContext);
        createLoadingDialog.updateTitle(C10651R.string.option_copying);
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
        String parentUniqueId = syncNoteModel.getParentUniqueId();
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(syncNoteModel);
        Disposable subscribe = new CopyNoteListAction(requireContext2, parentUniqueId, mutableListOf).build().doOnSubscribe(new C11288g(createLoadingDialog)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.bxj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteListFragment.m43283Z0(LoadingDialog.this);
            }
        }).subscribe(new C11289h());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: a1 */
    public final void m43342a1(SyncNoteModel syncNoteModel) {
        List mutableListOf;
        int collectionSizeOrDefault;
        final List mutableListOf2;
        List listOf;
        if (syncNoteModel.isDocument()) {
            mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(syncNoteModel.getUniqueId());
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            listOf = CollectionsKt__CollectionsJVMKt.listOf(syncNoteModel.getUniqueId());
            Disposable subscribe = RxjavaKt.flatMapIf(new AuthNoteAction(requireActivity, listOf).build(), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$handleDeleteNote$disposable$1
                @NotNull
                public final Boolean invoke(boolean z) {
                    return Boolean.valueOf(z);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                    return invoke(bool.booleanValue());
                }
            }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$handleDeleteNote$disposable$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @NotNull
                public final Observable<? extends Object> invoke(boolean z) {
                    Context requireContext = NoteListFragment.this.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                    List<String> list = mutableListOf2;
                    return new DeleteListNoteAction(requireContext, list, list).build();
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Boolean bool) {
                    return invoke(bool.booleanValue());
                }
            }).subscribe();
            Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
            this.compositeDisposable.add(subscribe);
            return;
        }
        String title = syncNoteModel.getTitle();
        Intrinsics.checkNotNull(title);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(syncNoteModel.getUniqueId());
        TreeNode<NoteModelBean> value = m43337V0().getFolderRootNode().getValue();
        TreeNode<NoteModelBean> findNode = value != null ? value.findNode(syncNoteModel.getUniqueId()) : null;
        if (findNode != null) {
            List<TreeNode<NoteModelBean>> findChildrenNodes = findNode.findChildrenNodes();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findChildrenNodes, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = findChildrenNodes.iterator();
            while (it2.hasNext()) {
                arrayList.add(((NoteModelBean) ((TreeNode) it2.next()).getData()).getUniqueId());
            }
            mutableListOf.addAll(arrayList);
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        Disposable subscribe2 = new DeleteFolderAction(requireContext, title, mutableListOf).build().subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe2, "subscribe(...)");
        this.compositeDisposable.add(subscribe2);
    }

    /* renamed from: b1 */
    public final void m43343b1(SyncNoteModel syncNoteModel) {
        List listOf;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(syncNoteModel.getUniqueId());
        Disposable subscribe = new DeleteDustbinNoteAction(requireContext, listOf).build().subscribe(new C11290i());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: c1 */
    public final void m43344c1(SyncNoteModel syncNoteModel) {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(syncNoteModel.getUniqueId());
        Disposable subscribe = new RestoreDustbinNoteAction(listOf).build().subscribe(new C11291j());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: d1 */
    public final void m43345d1(SyncNoteModel syncNoteModel) {
        if (syncNoteModel.isDocument()) {
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            Disposable subscribe = new EditListNoteAction(requireContext, syncNoteModel).create().subscribe(C11292k.f54749e);
            Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
            this.compositeDisposable.add(subscribe);
            return;
        }
        TreeNode<NoteModelBean> value = m43337V0().getFolderRootNode().getValue();
        Intrinsics.checkNotNull(value);
        TreeNode<NoteModelBean> findNode = value.findNode(syncNoteModel.getUniqueId());
        Intrinsics.checkNotNull(findNode);
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
        new EditFolderDialog(requireContext2, findNode, TAG).show();
    }

    /* renamed from: e1 */
    public final void m43346e1(NoteModelBean noteModel) {
        EditTagForNoteContext editTagForNoteContext = new EditTagForNoteContext();
        editTagForNoteContext.getSelectTagIds().addAll(noteModel.getTagIdList());
        editTagForNoteContext.setNoteModelBean(noteModel);
        EditTagForNoteAction editTagForNoteAction = new EditTagForNoteAction(editTagForNoteContext, TAG);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        editTagForNoteAction.setActivityContext(requireContext).build().subscribe();
    }

    /* renamed from: f1 */
    public final void m43347f1(SyncNoteModel syncNoteModel) {
        List<? extends SyncNoteModel> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(syncNoteModel);
        m43333S1(listOf);
    }

    /* renamed from: g1 */
    public final void m43348g1(WeakReference<Activity> activityReference, int triggerFrom, List<DocumentBean> files, boolean needFinish) {
        Activity activity = activityReference.get();
        if (activity == null) {
            return;
        }
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<CheckPdfPasswordAction> doOnNext = new CheckPdfPasswordAction(DocCollectionBundle.INSTANCE.docManagerBundle(), files).setActivityContext(activity).build().filter(C11293l.f54750e).doOnNext(new C11294m(triggerFrom)).doOnNext(new C11295n(needFinish, activityReference)).doOnNext(new C11296o());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    /* renamed from: i1 */
    public final void m43349i1(List<DocumentFileEntry> fileEntries) {
        NoteListViewModel.convertDocumentsOnline$default(m43337V0(), fileEntries, null, 2, null);
    }

    /* renamed from: j1 */
    public final void m43350j1(List<? extends Uri> uris, NoteCreateFrom noteCreateFrom, ImportSelectedContext importSelectedContext) {
        m43337V0().importImages(uris, noteCreateFrom, importSelectedContext);
    }

    /* renamed from: l1 */
    public final void m43351l1(Intent intent) {
        List listOf;
        Uri data = intent.getData();
        if (data == null) {
            return;
        }
        Debug.INSTANCE.m32035d(NoteListFragment.class, "take picture uri:" + data, new Object[0]);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(data);
        m43285k1(this, listOf, NoteCreateFrom.IMPORT_CAMERA, null, 4, null);
    }

    /* renamed from: m1 */
    public final void m43352m1(List<? extends SyncNoteModel> syncNoteModels, boolean hasEncryption, Function1<? super Boolean, Unit> callback) {
        int collectionSizeOrDefault;
        if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            NoteLockUtils noteLockUtils = NoteLockUtils.INSTANCE;
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            CommonDialog createNoteEncryptionLoginDialog = noteLockUtils.createNoteEncryptionLoginDialog(requireActivity);
            this.noteEncryptionLoginDialog = createNoteEncryptionLoginDialog;
            if (createNoteEncryptionLoginDialog != null) {
                createNoteEncryptionLoginDialog.show();
            }
            if (callback != null) {
                callback.invoke(Boolean.TRUE);
                return;
            }
            return;
        }
        List<? extends SyncNoteModel> list = syncNoteModels;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncNoteModel) it2.next()).getUniqueId());
        }
        FragmentActivity requireActivity2 = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity2, "requireActivity(...)");
        Disposable subscribe = new ToggleNoteLockAction(requireActivity2, arrayList, hasEncryption).build().doOnNext(new C11298p(callback)).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: o1 */
    public final void m43353o1(NoteModelBean noteModelBean) {
        List<String> listOf;
        NoteModelBeanList noteModelBeanList = new NoteModelBeanList();
        noteModelBeanList.add(noteModelBean);
        ManageFolderContext manageFolderContext = new ManageFolderContext();
        manageFolderContext.setOldParentId(noteModelBean.getParentUniqueId());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(noteModelBean.getUniqueId());
        manageFolderContext.setOpNoteIds(listOf);
        manageFolderContext.setMoveNoteList(noteModelBeanList);
        CompositeDisposable compositeDisposable = this.compositeDisposable;
        MoveToSelectFolderAction moveToSelectFolderAction = new MoveToSelectFolderAction(manageFolderContext, TAG);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        compositeDisposable.add(moveToSelectFolderAction.setActivityContext(requireContext).build().subscribe());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAccountConfigurationChanged(@NotNull AccountConfigurationChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            m43328Q0().notifyItemChanged(0);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    @SuppressLint({"NotifyDataSetChanged"})
    public final void onActiveNoteListAnimateFinishedEvent(@NotNull ActiveNoteListAnimateFinishedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            return;
        }
        m43299x0(this, false, 1, null);
        m43302A0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1) {
            if (requestCode == 1004) {
                List<Uri> obtainResult = Matisse.obtainResult(data);
                Intrinsics.checkNotNull(obtainResult);
                m43325O1(obtainResult);
                m43285k1(this, obtainResult, NoteCreateFrom.IMPORT_PICTURE, null, 4, null);
                return;
            }
            if (requestCode != 2004) {
                return;
            }
            OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
            Observable<List<? extends DocumentBean>> doOnNext = new ObtainDocumentListAction(data).build().doOnNext(new C11306x());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeNoteTemplateEvent(@NotNull ChangeNoteTemplateEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m43308F1() || event.getApplyTemplateInfo().getCoverTemplateJsonBean() == null) {
            return;
        }
        Disposable subscribe = new ChangeNoteTemplateAction(event.getNoteId(), event.getApplyTemplateInfo()).build().subscribe(C11307y.f54775e);
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        ViewKt.postSelfDelayed(m43313I0().getRoot(), new Function1<View, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$onConfigurationChanged$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull View it2) {
                QuickAdapterHelper quickAdapterHelper;
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteListFragment.this.m43364z0();
                NoteListFragment.m43299x0(NoteListFragment.this, false, 1, null);
                NoteListFragment.this.m43302A0();
                RecyclerView recyclerView = NoteListFragment.this.m43313I0().f56750rv;
                quickAdapterHelper = NoteListFragment.this.adapterHelper;
                recyclerView.setAdapter(quickAdapterHelper.getMAdapter());
            }
        }, 100L);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063319, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateQuicklyFolderEvent(@NotNull NCreateNoteFolderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new CreateSubFolderDialog(requireContext, m43337V0().findFolder(m43337V0().getNormalizedFolderId()), FolderCreateFrom.HOME_LIST_ITEM_HEADER_CREATE).show();
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m43313I0().setLifecycleOwner(getViewLifecycleOwner());
        m43313I0().setViewModel(m43337V0());
        View root = m43313I0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.viewScopeDisposables.dispose();
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocSyncProgressUpdate(@NotNull SyncProgressUpdateEvent event) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(event, "event");
        List<DocProgressBean> list = event.getList().getList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            KSyncStatus kSyncStatus = ((DocProgressBean) obj).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_SYNC_STATUS java.lang.String();
            boolean z = false;
            if (kSyncStatus != null && kSyncStatus.getStatus() == 2) {
                z = true;
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((DocProgressBean) it2.next()).getDocumentId());
        }
        m43328Q0().onDocSyncSuccess(arrayList2);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDragNotePageEvent(@NotNull DragNotePageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            NoteListViewModel m43337V0 = m43337V0();
            String originId = event.getOriginId();
            String targetId = event.getTargetId();
            int dragState = event.getDragState();
            NoteSelectType noteSelectType = this.noteSelectType;
            if (noteSelectType == null) {
                Intrinsics.throwUninitializedPropertyAccessException("noteSelectType");
                noteSelectType = null;
            }
            m43337V0.customSortNoteList(originId, targetId, dragState, noteSelectType);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportDocumentUrisEvent(@NotNull ImportDocumentUrisEvent event) {
        FragmentActivity activity;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1() && (activity = getActivity()) != null) {
            m43337V0().importDocuments(activity, event.getUriList(), event.getImportSelectedContext());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportImageUrisEvent(@NotNull ImportImageUrisEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            m43350j1(event.getUriList(), NoteCreateFrom.IMPORT_FILE, event.getImportSelectedContext());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMultiCopyEvent(@NotNull MultiCopyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            m43303C0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMultiDeleteEvent(@NotNull MultiDeleteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            m43305E0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMultiDustBinDeleteEvent(@NotNull MultiDustBinDeleteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            m43307F0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMultiDustBinRestoreEvent(@NotNull MultiDustBinRestoreEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            m43309G0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMultiExportEvent(@NotNull MultiExportEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            m43311H0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMultiModifyNoteLockEvent(@NotNull MultiModifyNoteLockEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            m43312H1();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMultiMoveEvent(@NotNull MultiMoveEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            m43314I1();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNCreateCameraEvent(@NotNull NCreateCameraEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            ActivityResultLauncher<Uri> activityResultLauncher = this.takePictureLauncher;
            if (activityResultLauncher == null) {
                Intrinsics.throwUninitializedPropertyAccessException("takePictureLauncher");
                activityResultLauncher = null;
            }
            RxBaseAction.execute$default(new TakePhotoAction(this, activityResultLauncher, null, 4, null), null, null, null, 7, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNCreateFileImportEvent(@NotNull final NCreateFileImportEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            FilePickerExtKt.setCommonConfig(FilePickerBuilder.INSTANCE.getInstance()).setTitle(C10651R.string.import_file).ofDoc().multiEnable(true).setMaxSelectCount(ResManager.INSTANCE.getInteger(C10651R.integer.file_picker_max_count)).pickFile((Fragment) this, false, 2004, (Function2<? super ArrayList<DocumentBean>, ? super WeakReference<Activity>, Unit>) new Function2<ArrayList<DocumentBean>, WeakReference<Activity>, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$onNCreateFileImportEvent$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ArrayList<DocumentBean> arrayList, WeakReference<Activity> weakReference) {
                    invoke2(arrayList, weakReference);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ArrayList<DocumentBean> files, @NotNull WeakReference<Activity> activityReference) {
                    Intrinsics.checkNotNullParameter(files, "files");
                    Intrinsics.checkNotNullParameter(activityReference, "activityReference");
                    NoteListFragment.m43284h1(NoteListFragment.this, activityReference, event.getTriggerFrom(), files, false, 8, null);
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNCreatePictureImportEvent(@NotNull NCreatePictureImportEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            Matisse from = Matisse.from(this);
            Intrinsics.checkNotNullExpressionValue(from, "from(...)");
            MatisseKt.buildSelectionCreator(from).forResult(1004);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNCreateScannerEvent(@NotNull NCreateScannerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43308F1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteListDragEndEvent(@NotNull NoteListDragEndEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            m43328Q0().resetDragView();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteTitleUpdatedEvent(@NotNull NoteTitleUpdatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43328Q0().handleTitleUpdated(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRequestPermissionEvent(@NotNull final RequestPermissionEvent event) {
        List<String> list;
        Intrinsics.checkNotNullParameter(event, "event");
        PermissionMediator init = PermissionX.init(this);
        list = CollectionsKt___CollectionsKt.toList(event.getPermissionList());
        init.permissions(list).request(new RequestCallback() { // from class: com.sunia.HTREnginev2.cxj
            @Override // com.permissionx.guolindev.callback.RequestCallback
            public final void onResult(boolean z, List list2, List list3) {
                NoteListFragment.m43281K1(NoteListFragment.this, event, z, list2, list3);
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSyncNoteProgressChangedEvent(@NotNull SyncNoteProgressChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.isRvScrolling) {
            this.noteSyncProgessModelList.addAll(event.getList());
        } else {
            m43328Q0().handleSyncNoteProgressChangedEvent(event.getList());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onToggleSelectAllEvent(@NotNull ToggleSelectAllEvent event) {
        boolean z;
        Map mutableMapOf;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43308F1()) {
            if (CollectionKt.isNullOrEmpty(m43337V0().getSelectList().getValue())) {
                NoteModelBeanList noteModelBeanList = new NoteModelBeanList();
                List<NotePageBean> value = m43326P0().getValue();
                Intrinsics.checkNotNull(value);
                ArrayList arrayList = new ArrayList();
                for (Object obj : value) {
                    if (((NotePageBean) obj).isNoteDoc()) {
                        arrayList.add(obj);
                    }
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    NoteModelBean noteModelBean = ((NotePageBean) it2.next()).getNoteModelBean();
                    Intrinsics.checkNotNull(noteModelBean);
                    arrayList2.add(noteModelBean);
                }
                noteModelBeanList.addAll(arrayList2);
                m43337V0().getSelectList().setValue(noteModelBeanList);
                z = true;
            } else {
                m43337V0().getSelectList().setValue(new NoteModelBeanList());
                z = false;
            }
            mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("pay_load_key_selected", Boolean.valueOf(z)));
            m43328Q0().notifyItemRangeChanged(0, m43328Q0().getItemCount(), mutableMapOf);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewScopeDisposables = new CompositeDisposable();
        m43363y1();
        m43304C1();
        m43306E1();
    }

    /* renamed from: p1 */
    public final void m43354p1(Object event) {
        if (Intrinsics.areEqual(event, NoteQuotaViewModel.EVENT_QUOTA_CHANGED)) {
            m43328Q0().setNoteQuotaViewModel(m43322N0());
            m43328Q0().updateHeaderLockView();
        } else if (Intrinsics.areEqual(event, NoteQuotaViewModel.EVENT_SHOW_LEFT_QUOTA)) {
            m43328Q0().updateHeaderLockView();
        }
    }

    /* renamed from: q1 */
    public final void m43355q1(PageModelBean pageTagModel) {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        RxBaseAction.execute$default(new OpenNotePageAction(requireActivity, pageTagModel), null, null, null, 7, null);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: r1 */
    public final void m43356r1(NoteModelBean noteListModelBean) {
        List listOf;
        m43337V0().gotoFolder(noteListModelBean.getUniqueId());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(noteListModelBean.getUniqueId());
        new UpdateNoteExpandStatusAction(listOf, 1).build().subscribe(new C11299q(noteListModelBean));
    }

    /* renamed from: s1 */
    public final void m43357s1(SyncNoteModel noteModel) {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        RxBaseAction.execute$default(new OpenNoteAction(requireActivity, noteModel, OpenDocArgs.INSTANCE.createFrom(noteModel)), null, null, null, 7, null);
    }

    /* renamed from: t1 */
    public final void m43358t1(SyncNoteModel syncNoteModel) {
        Disposable subscribe = new GetNoteCoverTemplateArgsAction(syncNoteModel.getUniqueId()).build().doOnNext(new C11300r()).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: u1 */
    public final void m43359u1(List<Integer> positionList) {
        NoteModelBean noteModelBean;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = positionList.iterator();
        while (it2.hasNext()) {
            NotePageBean item = m43328Q0().getItem(((Number) it2.next()).intValue());
            if (item != null && (noteModelBean = item.getNoteModelBean()) != null) {
                CollectionKt.safeAdd(arrayList, noteModelBean);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        m43328Q0().updateSwipeSelectItems(m43337V0().swipeSelectItems(arrayList));
    }

    /* renamed from: v1 */
    public final void m43360v1() {
        RecyclerView.ItemAnimator itemAnimator = m43313I0().f56750rv.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.isRunning(new RecyclerView.ItemAnimator.ItemAnimatorFinishedListener() { // from class: com.sunia.HTREnginev2.dxj
                @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.ItemAnimatorFinishedListener
                public final void onAnimationsFinished() {
                    NoteListFragment.m43298w1(NoteListFragment.this);
                }
            });
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: w0 */
    public final void m43361w0(final boolean notifyAllDataChanged) {
        if (isAdded()) {
            m43313I0().f56750rv.post(new Runnable() { // from class: com.sunia.HTREnginev2.hxj
                @Override // java.lang.Runnable
                public final void run() {
                    NoteListFragment.m43300y0(NoteListFragment.this, notifyAllDataChanged);
                }
            });
        }
    }

    /* renamed from: x1 */
    public final void m43362x1(boolean isMulSelect) {
        if (!isMulSelect) {
            m43328Q0().getSelectionList().clear();
            m43337V0().getSelectList().setValue(new NoteModelBeanList());
        }
        long j = m43308F1() ? 0L : 1000L;
        View root = m43313I0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ViewKt.repostDelayed(root, m43334T0(), j);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: y1 */
    public final void m43363y1() {
        Function2<Boolean, View, Unit> function2 = new Function2<Boolean, View, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListFragment$initAdapter$clickCallback$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool, View view) {
                invoke(bool.booleanValue(), view);
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z, @NotNull View view) {
                Intrinsics.checkNotNullParameter(view, "view");
                if (z) {
                    NoteListFragment.this.m43316J1(view);
                } else {
                    NoteListFragment.this.m43319L1();
                }
            }
        };
        BaseQuickAdapter.OnItemChildClickListener onItemChildClickListener = new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.ixj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteListFragment.m43301z1(NoteListFragment.this, baseQuickAdapter, view, i);
            }
        };
        BaseQuickAdapter.OnItemChildClickListener onItemChildClickListener2 = new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.jxj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteListFragment.m43276A1(NoteListFragment.this, baseQuickAdapter, view, i);
            }
        };
        BaseQuickAdapter.OnItemChildLongClickListener onItemChildLongClickListener = new BaseQuickAdapter.OnItemChildLongClickListener() { // from class: com.sunia.HTREnginev2.kxj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildLongClickListener
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m43278B1;
                m43278B1 = NoteListFragment.m43278B1(baseQuickAdapter, view, i);
                return m43278B1;
            }
        };
        m43328Q0().setClickCallback(function2);
        m43328Q0().addOnItemChildClickListener(C10651R.id.v_click_option, onItemChildClickListener);
        m43328Q0().addOnItemChildClickListener(C10651R.id.v_click_open, onItemChildClickListener2);
        m43328Q0().addOnItemChildLongClickListener(C10651R.id.v_click_open, onItemChildLongClickListener);
        if (this.adapterHelper.getAfterAdapterList().isEmpty()) {
            this.adapterHelper.addAfterAdapter(m43317K0());
        }
    }

    /* renamed from: z0 */
    public final void m43364z0() {
        RecyclerView rv = m43313I0().f56750rv;
        Intrinsics.checkNotNullExpressionValue(rv, "rv");
        ViewGroup.LayoutParams layoutParams = rv.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int dimension = (int) ResManager.INSTANCE.getDimension(C10651R.dimen.note_list_horizontal_margin);
        marginLayoutParams.leftMargin = dimension;
        marginLayoutParams.rightMargin = dimension;
        rv.setLayoutParams(marginLayoutParams);
    }
}

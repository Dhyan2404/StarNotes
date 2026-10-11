package com.onyx.galaxy.note.editor.p046ui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewGroupKt;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ScreenUtils;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.google.common.base.Strings;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.onyx.android.sdk.base.data.SearchHighlightRegion;
import com.onyx.android.sdk.base.data.SearchHighlightRegionData;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.NoteOutlineAddFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.PageCollectAddFrom;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.ActivationStateChangedEvent;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.event.StatisticsNoteOutlineAddEvent;
import com.onyx.android.sdk.event.StatisticsPageCollectAddEvent;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.theme.widgets.DynamicImageView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.ConfigurationChangedEvent;
import com.onyx.android.sdk.universal.common.events.EditDoneEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.MovePageAction;
import com.onyx.android.sdk.universal.editor.action.bookmark.LoadBookmarkListAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.page.LoadVirtualPageModelListAction;
import com.onyx.android.sdk.universal.editor.action.page.LocateRectInPageAction;
import com.onyx.android.sdk.universal.editor.action.search.SearchTextAction;
import com.onyx.android.sdk.universal.editor.bean.CloneState;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.bean.PasteState;
import com.onyx.android.sdk.universal.editor.data.ClonePageInfo;
import com.onyx.android.sdk.universal.editor.data.CopyPageArgs;
import com.onyx.android.sdk.universal.editor.data.MovePageArgs;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.android.sdk.universal.editor.data.PastePagedArgs;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.app.ClonePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.CopyPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.DeleteBookmarkEvent;
import com.onyx.android.sdk.universal.editor.events.app.InsertPageAfterSpecifiedPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.PastePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.RotatePageProgressEvent;
import com.onyx.android.sdk.universal.editor.events.app.SelectPastedPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.StartActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.TocEntryInsertedEvent;
import com.onyx.android.sdk.universal.editor.events.app.UpdateBookmarkEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.AllDataSelectedEvent;
import com.onyx.android.sdk.universal.editor.events.note.EnterSelectionModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.PageThumbnailSizeChangedEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitSelectionModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectAllDataEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateSearchProgressEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.p044ui.RecyclerViewSwipeListener;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.databinding.FragmentDocOverviewBinding;
import com.onyx.galaxy.note.databinding.LayoutDocSearchBinding;
import com.onyx.galaxy.note.editor.action.export.LoadCurNoteExportArgsAction;
import com.onyx.galaxy.note.editor.data.ThumbnailSizeType;
import com.onyx.galaxy.note.editor.event.KeyboardCloseEvent;
import com.onyx.galaxy.note.editor.event.OverviewSearchEvent;
import com.onyx.galaxy.note.editor.event.SidebarVisibleLevelChangedEvent;
import com.onyx.galaxy.note.editor.p046ui.DocOverviewFragment;
import com.onyx.galaxy.note.editor.view.HideTextView;
import com.onyx.galaxy.note.editor.view.SelectionActionLayout;
import com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter;
import com.onyx.galaxy.note.editor.view.dialog.AddToDocTocDialog;
import com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog;
import com.onyx.galaxy.note.editor.view.popup.DocOverviewActionPopup;
import com.onyx.galaxy.note.editor.viewmodel.DocOverviewViewModel;
import com.onyx.galaxy.note.utils.DocOutlineSearchUtils;
import com.onyx.galaxy.note.utils.SearchActions;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u009c\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 º\u00012\u00020\u0001:\u0002º\u0001B\t¢\u0006\u0006\b¸\u0001\u0010¹\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\u0012\u0010\u0010\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0004H\u0002J\b\u0010\u0018\u001a\u00020\u0002H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0002J\b\u0010\u001d\u001a\u00020\u0002H\u0002J\b\u0010\u001e\u001a\u00020\u0002H\u0002J\b\u0010\u001f\u001a\u00020\u0002H\u0002J\u001e\u0010%\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"H\u0002J\b\u0010&\u001a\u00020\u0002H\u0002J\b\u0010'\u001a\u00020\u0002H\u0002J\b\u0010(\u001a\u00020\u0002H\u0002J\b\u0010)\u001a\u00020\u0002H\u0002J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0002J\b\u0010-\u001a\u00020\u0002H\u0002J\b\u0010.\u001a\u00020\u0002H\u0002J\u000e\u00100\u001a\b\u0012\u0004\u0012\u00020/0\"H\u0002J\u0010\u00101\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0002J\b\u00102\u001a\u00020\u0002H\u0002J\b\u00103\u001a\u00020\u0002H\u0002J\u0012\u00105\u001a\u00020\u00022\b\b\u0002\u00104\u001a\u00020\u0004H\u0002J\u0010\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u00020#H\u0002J\u0018\u0010:\u001a\u00020\u00022\u0006\u00109\u001a\u0002082\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010<\u001a\u00020\u00022\u0006\u0010;\u001a\u00020\u0004H\u0002J\b\u0010=\u001a\u00020\u0002H\u0002J\b\u0010>\u001a\u00020\u0004H\u0002J\b\u0010?\u001a\u00020\u0002H\u0002J\u0010\u0010A\u001a\u00020\u00022\u0006\u0010@\u001a\u00020*H\u0002J\u0010\u0010B\u001a\u00020\u00022\u0006\u0010@\u001a\u00020*H\u0002J\b\u0010C\u001a\u00020\u0004H\u0002J\b\u0010D\u001a\u00020\u0002H\u0002J\b\u0010E\u001a\u00020\u0002H\u0002J\u0010\u0010G\u001a\u00020\u00022\u0006\u0010F\u001a\u00020#H\u0002J\b\u0010H\u001a\u00020\u0002H\u0002J\u0010\u0010J\u001a\u00020*2\u0006\u0010I\u001a\u00020*H\u0002J\b\u0010K\u001a\u00020\u0002H\u0002J\b\u0010L\u001a\u00020\u0002H\u0002J\b\u0010M\u001a\u00020\u0002H\u0002J\u0010\u0010P\u001a\u00020\u00022\u0006\u0010O\u001a\u00020NH\u0002J\u000e\u0010Q\u001a\u00020\u00022\u0006\u0010I\u001a\u00020*J\u000e\u0010T\u001a\u00020\u00022\u0006\u0010S\u001a\u00020RJ\u000e\u0010V\u001a\u00020\u00022\u0006\u0010U\u001a\u00020RJ\u000e\u0010X\u001a\u00020\u00022\u0006\u0010W\u001a\u00020\u0004J\u000e\u0010[\u001a\u00020\u00022\u0006\u0010Z\u001a\u00020YJ\u0014\u0010^\u001a\u00020\u00022\f\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00020\\J\u000e\u0010`\u001a\u00020\u00022\u0006\u0010_\u001a\u00020\u0004J$\u0010g\u001a\u0002082\u0006\u0010b\u001a\u00020a2\b\u0010d\u001a\u0004\u0018\u00010c2\b\u0010f\u001a\u0004\u0018\u00010eH\u0016J\u001a\u0010h\u001a\u00020\u00022\u0006\u00109\u001a\u0002082\b\u0010f\u001a\u0004\u0018\u00010eH\u0016J\b\u0010i\u001a\u00020\u0002H\u0016J\b\u0010j\u001a\u00020\u0002H\u0016J\b\u0010k\u001a\u00020\u0002H\u0016J\f\u0010m\u001a\b\u0012\u0004\u0012\u00020l0\"J\u0010\u0010p\u001a\u00020\u00022\u0006\u0010o\u001a\u00020nH\u0007J\u0010\u0010r\u001a\u00020\u00022\u0006\u0010o\u001a\u00020qH\u0007J\u0010\u0010t\u001a\u00020\u00022\u0006\u0010o\u001a\u00020sH\u0007J\u0010\u0010v\u001a\u00020\u00022\u0006\u0010o\u001a\u00020uH\u0007J\u0010\u0010x\u001a\u00020\u00022\u0006\u0010o\u001a\u00020wH\u0007J\u0010\u0010z\u001a\u00020\u00022\u0006\u0010o\u001a\u00020yH\u0007J\u0010\u0010|\u001a\u00020\u00022\u0006\u0010o\u001a\u00020{H\u0007J\u0010\u0010~\u001a\u00020\u00022\u0006\u0010o\u001a\u00020}H\u0007J\u0011\u0010\u0080\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u007fH\u0007J\u0012\u0010\u0082\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u0081\u0001H\u0007J\u0012\u0010\u0084\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u0083\u0001H\u0007J\u0012\u0010\u0086\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u0085\u0001H\u0007J\u0012\u0010\u0088\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u0087\u0001H\u0007J\u0012\u0010\u008a\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u0089\u0001H\u0007J\u0012\u0010\u008c\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u008b\u0001H\u0007J\u0012\u0010\u008e\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u008d\u0001H\u0007R!\u0010\u0094\u0001\u001a\u00030\u008f\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0090\u0001\u0010\u0091\u0001\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001R\u0018\u0010\u0098\u0001\u001a\u00030\u0095\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R\u0017\u0010S\u001a\u00020R8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\r\u0010\u0099\u0001R\u0018\u0010U\u001a\u00020R8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u0099\u0001R\u001c\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u009b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u0017\u0010W\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0018\u0010\u009f\u0001R\u0019\u0010¡\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010\u009f\u0001R\u001e\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00020\\8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u0019\u0010¦\u0001\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R\u001a\u0010ª\u0001\u001a\u00030§\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R\u001a\u0010®\u0001\u001a\u00030«\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u00ad\u0001R\u0019\u0010°\u0001\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010¥\u0001R\u001a\u0010´\u0001\u001a\u00030±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u0019\u0010·\u0001\u001a\u00020Y8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010¶\u0001¨\u0006»\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "X1", "", "w1", "W1", "", "V0", "C1", "s1", "Y0", "a1", "f1", "Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;", "searchHighlightRegion", "X0", "Z0", "b1", "M1", "fullscreen", "V1", "attach", "J0", "i1", "G0", "u1", "I0", "N0", "L1", "O0", "Q0", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "", "", "pageIdList", "Z1", "R1", "P0", "M0", "d2", "", "pos", "D1", "Q1", "c2", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "U0", "b2", "z1", "y1", "dispose", "A1", "text", "F1", "Landroid/view/View;", "view", "Y1", "enable", "K1", "U1", FirebaseInstallationServiceClient.f35986m, "T1", "pageIndex", "S1", "W0", "x1", "K0", "P1", "eventId", "O1", "a2", "level", "e2", "I1", "J1", "L0", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "type", "S0", "setCurrentVisibleLevel", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditBundle", "docManagerBundle", "setDocManagerBundle", "selectable", "setSelectable", "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;", "sizeType", "setThumbnailSizeType", "Lkotlin/Function0;", "closeOnSelect", "setCloseOnSelect", "showOperationMenu", "setShowActionMenu", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "onCreateView", "onViewCreated", "onResume", "onPause", "onDestroyView", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "getSelectedItems", "Lcom/onyx/android/sdk/universal/editor/events/app/SelectPastedPageEvent;", NotificationCompat.CATEGORY_EVENT, "onSelectPastedPageEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;", "onEnterSelectionModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;", "onQuitSelectionModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectAllDataEvent;", "onSelectAllDataEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", "onVirtualDocViewInfoEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;", "onTocEntryInsertedEvent", "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;", "onConfigurationChangedEvent", "Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;", "onSidebarVisibleLevelChangedEvent", "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;", "onEditDoneEvent", "Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;", "onOverviewSearchEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;", "onStartActivateDocumentEvent", "Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;", "onKeyboardClose", "Lcom/onyx/android/sdk/universal/editor/events/note/PageThumbnailSizeChangedEvent;", "onPageThumbnailSizeChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;", "onUpdateSearchProgressEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageProgressEvent;", "onRotatePageProgressEvent", "Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;", "onActivationStateChangedEvent", "Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;", "d1", "Lkotlin/Lazy;", "T0", "()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;", "binding", "Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;", "e1", "Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;", "viewModel", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "g1", "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;", "h1", "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;", "itemAnimatorBackup", Constants.HASIDCALL_INDEX_SIG, "j1", "showActionMenu", "k1", "Lkotlin/jvm/functions/Function0;", "l1", "I", "currentVisibleLevel", "Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;", "m1", "Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;", "adapter", "Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;", "n1", "Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;", "searchHighlightRegionData", "o1", "selectionWidth", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "p1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "q1", "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;", "thumbnailSizeType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocOverviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocOverviewFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1068:1\n310#2:1069\n326#2,4:1070\n311#2:1074\n256#2,2:1115\n256#2,2:1119\n256#2,2:1121\n256#2,2:1123\n256#2,2:1125\n256#2,2:1127\n1549#3:1075\n1620#3,3:1076\n766#3:1079\n857#3,2:1080\n1002#3,2:1082\n1864#3,3:1084\n1864#3,3:1087\n1002#3,2:1090\n1864#3,3:1092\n1002#3,2:1095\n1549#3:1097\n1620#3,3:1098\n1549#3:1101\n1620#3,3:1102\n1549#3:1105\n1620#3,3:1106\n1011#3,2:1109\n1549#3:1111\n1620#3,3:1112\n1855#3,2:1117\n*S KotlinDebug\n*F\n+ 1 DocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocOverviewFragment\n*L\n291#1:1069\n291#1:1070,4\n291#1:1074\n722#1:1115,2\n1041#1:1119,2\n1043#1:1121,2\n1044#1:1123,2\n1056#1:1125,2\n1058#1:1127,2\n459#1:1075\n459#1:1076,3\n462#1:1079\n462#1:1080,2\n499#1:1082,2\n501#1:1084,3\n522#1:1087,3\n539#1:1090,2\n541#1:1092,3\n563#1:1095,2\n564#1:1097\n564#1:1098,3\n588#1:1101\n588#1:1102,3\n594#1:1105\n594#1:1106,3\n603#1:1109,2\n672#1:1111\n672#1:1112,3\n921#1:1117,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DocOverviewFragment extends BaseFragment {

    @NotNull
    public static final String TAG = "DocOverviewFragment";

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final DocOverviewViewModel viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: g1, reason: from kotlin metadata */
    public EditorBundle docManagerBundle;

    /* renamed from: h1, reason: from kotlin metadata */
    @Nullable
    public RecyclerView.ItemAnimator itemAnimatorBackup;

    /* renamed from: i1, reason: from kotlin metadata */
    public boolean selectable;

    /* renamed from: j1, reason: from kotlin metadata */
    public boolean showActionMenu;

    /* renamed from: k1, reason: from kotlin metadata */
    public Function0<Unit> closeOnSelect;

    /* renamed from: l1, reason: from kotlin metadata */
    public int currentVisibleLevel;

    /* renamed from: m1, reason: from kotlin metadata */
    public DocOverviewPageListAdapter adapter;

    /* renamed from: n1, reason: from kotlin metadata */
    @NotNull
    public SearchHighlightRegionData searchHighlightRegionData;

    /* renamed from: o1, reason: from kotlin metadata */
    public int selectionWidth;

    /* renamed from: p1, reason: from kotlin metadata */
    @NotNull
    public CompositeDisposable compositeDisposable;

    /* renamed from: q1, reason: from kotlin metadata */
    @NotNull
    public ThumbnailSizeType thumbnailSizeType;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ThumbnailSizeType.values().length];
            try {
                iArr[ThumbnailSizeType.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ThumbnailSizeType.LARGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12152a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f59021e;

        public C12152a(LoadingDialog loadingDialog) {
            this.f59021e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DocOverviewFragment it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadingDialog loadingDialog = this.f59021e;
            if (loadingDialog != null) {
                loadingDialog.show();
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12153b<T, R> implements Function {
        public C12153b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteExportArgs> apply(@NotNull DocOverviewFragment it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = DocOverviewFragment.this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            return new LoadCurNoteExportArgsAction(editorBundle).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$c */
    /* loaded from: classes9.dex */
    public static final class C12154c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f59023e;

        public C12154c(LoadingDialog loadingDialog) {
            this.f59023e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteExportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadingDialog loadingDialog = this.f59023e;
            if (loadingDialog != null) {
                loadingDialog.dismiss();
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$d */
    /* loaded from: classes9.dex */
    public static final class C12155d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<String> f59025f;

        public C12155d(List<String> list) {
            this.f59025f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteExportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOverviewFragment.this.m46637Z1(it2.getNoteModel(), this.f59025f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$e */
    /* loaded from: classes9.dex */
    public static final class C12156e<T> implements Consumer {
        public C12156e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LocateRectInPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOverviewFragment.this.m46642c2();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$f */
    /* loaded from: classes9.dex */
    public static final class C12157f<T> implements Consumer {
        public C12157f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOverviewFragment.this.compositeDisposable.add(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$g */
    /* loaded from: classes9.dex */
    public static final class C12158g<T> implements Consumer {
        public C12158g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<VirtualBookmarkModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOverviewPageListAdapter docOverviewPageListAdapter = DocOverviewFragment.this.adapter;
            if (docOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter = null;
            }
            docOverviewPageListAdapter.setBookmarkList(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$h */
    /* loaded from: classes9.dex */
    public static final class C12159h<T> implements Consumer {
        public C12159h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOverviewFragment.this.compositeDisposable.add(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$i */
    /* loaded from: classes9.dex */
    public static final class C12160i<T> implements Consumer {
        public C12160i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<VirtualPageModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOverviewPageListAdapter docOverviewPageListAdapter = DocOverviewFragment.this.adapter;
            EditorBundle editorBundle = null;
            if (docOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter = null;
            }
            EditorBundle editorBundle2 = DocOverviewFragment.this.editorBundle;
            if (editorBundle2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            } else {
                editorBundle = editorBundle2;
            }
            docOverviewPageListAdapter.setPageData(it2, EditorBundleKt.currentPageIndex(editorBundle));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$j */
    /* loaded from: classes9.dex */
    public static final class C12162j<T> implements Consumer {
        public C12162j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOverviewFragment.this.compositeDisposable.add(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$k */
    /* loaded from: classes9.dex */
    public static final class C12163k<T> implements Consumer {
        public C12163k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOverviewFragment.this.m46605I1();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$l */
    /* loaded from: classes9.dex */
    public static final class C12164l<T> implements Consumer {
        public C12164l() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchTextAction.Companion companion = SearchTextAction.INSTANCE;
            EditorBundle editorBundle = DocOverviewFragment.this.editorBundle;
            EditorBundle editorBundle2 = null;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundle editorBundle3 = DocOverviewFragment.this.editorBundle;
            if (editorBundle3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            } else {
                editorBundle2 = editorBundle3;
            }
            companion.postSearchProgressEvent(editorBundle, Float.valueOf(EditorBundleKt.pageCount(editorBundle2)), Float.valueOf(0.0f));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$m */
    /* loaded from: classes9.dex */
    public static final class C12165m<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<TextSearchType> f59038f;

        /* JADX WARN: Multi-variable type inference failed */
        public C12165m(List<? extends TextSearchType> list) {
            this.f59038f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchActions searchActions = SearchActions.INSTANCE;
            EditorBundle editorBundle = DocOverviewFragment.this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            return searchActions.activateSearchEngine(editorBundle, this.f59038f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$n */
    /* loaded from: classes9.dex */
    public static final class C12166n<T> implements Consumer {
        public C12166n() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            List emptyList;
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOverviewPageListAdapter docOverviewPageListAdapter = DocOverviewFragment.this.adapter;
            if (docOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter = null;
            }
            docOverviewPageListAdapter.resetCurrentPageIndex();
            DocOverviewPageListAdapter docOverviewPageListAdapter2 = DocOverviewFragment.this.adapter;
            if (docOverviewPageListAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter2 = null;
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            DocOverviewPageListAdapter.submitInObservable$default(docOverviewPageListAdapter2, emptyList, null, 2, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$o */
    /* loaded from: classes9.dex */
    public static final class C12167o<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteSearchArgs f59041f;

        public C12167o(NoteSearchArgs noteSearchArgs) {
            this.f59041f = noteSearchArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<List<NoteSearchBean>>> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = DocOverviewFragment.this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            return new SearchTextAction(editorBundle, it2, this.f59041f).build().buffer(1L, TimeUnit.SECONDS);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$p */
    /* loaded from: classes9.dex */
    public static final class C12169p<T, R> implements Function {

        /* renamed from: e */
        public static final C12169p<T, R> f59043e = new C12169p<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteSearchBean> apply(@NotNull List<List<NoteSearchBean>> it2) {
            List<NoteSearchBean> flatten;
            Intrinsics.checkNotNullParameter(it2, "it");
            flatten = CollectionsKt__IterablesKt.flatten(it2);
            return flatten;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$q */
    /* loaded from: classes9.dex */
    public static final class C12170q<T> implements Consumer {
        public C12170q() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NoteSearchBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = DocOverviewFragment.this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.renderManager(editorBundle).addNoteSearchBeanList(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$r */
    /* loaded from: classes9.dex */
    public static final class C12171r<T> implements Consumer {
        public C12171r() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocOverviewFragment.this.viewModel.setSearching(false);
            DocOverviewPageListAdapter docOverviewPageListAdapter = DocOverviewFragment.this.adapter;
            DocOverviewPageListAdapter docOverviewPageListAdapter2 = null;
            if (docOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter = null;
            }
            EditorBundle editorBundle = DocOverviewFragment.this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            docOverviewPageListAdapter.setCurrentPageIndex(EditorBundleKt.currentPageIndex(editorBundle));
            DocOverviewFragment.this.m46620Q1();
            DocOverviewFragment docOverviewFragment = DocOverviewFragment.this;
            DocOverviewPageListAdapter docOverviewPageListAdapter3 = docOverviewFragment.adapter;
            if (docOverviewPageListAdapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter3 = null;
            }
            docOverviewFragment.m46630W0(docOverviewPageListAdapter3.getCurrentPageIndex());
            DocOverviewFragment.this.viewModel.getCachedSearchResults().clear();
            if (DocOverviewFragment.this.viewModel.getSearchType() == TextSearchType.ALL) {
                DocOverviewFragment.this.viewModel.setUseCachedResult(true);
                DocOverviewViewModel docOverviewViewModel = DocOverviewFragment.this.viewModel;
                DocOverviewPageListAdapter docOverviewPageListAdapter4 = DocOverviewFragment.this.adapter;
                if (docOverviewPageListAdapter4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docOverviewPageListAdapter2 = docOverviewPageListAdapter4;
                }
                docOverviewViewModel.setCachedSearchResults(CollectionKt.copy(docOverviewPageListAdapter2.getItems()));
            }
            DocOverviewFragment.this.m46610L0();
        }
    }

    public DocOverviewFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentDocOverviewBinding>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentDocOverviewBinding invoke() {
                FragmentDocOverviewBinding inflate = FragmentDocOverviewBinding.inflate(LayoutInflater.from(DocOverviewFragment.this.getContext()));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        this.viewModel = new DocOverviewViewModel();
        this.showActionMenu = true;
        this.currentVisibleLevel = 1;
        this.searchHighlightRegionData = new SearchHighlightRegionData();
        this.selectionWidth = -1;
        this.compositeDisposable = new CompositeDisposable();
        this.thumbnailSizeType = ThumbnailSizeType.SMALL;
    }

    /* renamed from: B1 */
    public static /* synthetic */ void m46558B1(DocOverviewFragment docOverviewFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        docOverviewFragment.m46599A1(z);
    }

    /* renamed from: E1 */
    public static final void m46562E1(DocOverviewFragment this$0, OverviewSearchEvent event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        this$0.viewModel.setSearchType(event.getSearchType());
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = this$0.m46624T0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.initInputData(layoutSearch, event.getKeyword(), event.getSearchType());
        this$0.m46602F1(event.getKeyword());
    }

    /* renamed from: G1 */
    public static final void m46564G1(DocOverviewFragment this$0, List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        DocOverviewPageListAdapter docOverviewPageListAdapter = this$0.adapter;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        docOverviewPageListAdapter.addPageSearchData(it2);
    }

    /* renamed from: H0 */
    public static final void m46565H0(DocOverviewFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.selectable) {
            this$0.m46612M0();
        }
    }

    /* renamed from: H1 */
    public static final void m46566H1(DocOverviewFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46605I1();
    }

    /* renamed from: N1 */
    public static final void m46567N1(DocOverviewFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46613M1();
    }

    /* renamed from: R0 */
    public static final void m46568R0(LoadingDialog loadingDialog) {
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
    }

    /* renamed from: c1 */
    public static final void m46569c1(DocOverviewFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m46601D1(i);
    }

    /* renamed from: d1 */
    public static final void m46570d1(DocOverviewFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m46641b2(i);
    }

    /* renamed from: e1 */
    public static final void m46571e1(DocOverviewFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.m46635Y1(view, i);
    }

    /* renamed from: g1 */
    public static final void m46572g1(DocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SearchHighlightRegion findPrevRegion = this$0.searchHighlightRegionData.findPrevRegion();
        if (findPrevRegion == null) {
            return;
        }
        DocOverviewPageListAdapter docOverviewPageListAdapter = this$0.adapter;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        docOverviewPageListAdapter.setCurrentPageIndex(findPrevRegion.getPageIndex());
        this$0.m46632X0(findPrevRegion);
    }

    /* renamed from: h1 */
    public static final void m46573h1(DocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SearchHighlightRegion findNextRegion = this$0.searchHighlightRegionData.findNextRegion();
        if (findNextRegion == null) {
            return;
        }
        DocOverviewPageListAdapter docOverviewPageListAdapter = this$0.adapter;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        docOverviewPageListAdapter.setCurrentPageIndex(findNextRegion.getPageIndex());
        this$0.m46632X0(findNextRegion);
    }

    /* renamed from: j1 */
    public static final void m46574j1(DocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46615O0();
    }

    /* renamed from: k1 */
    public static final void m46575k1(DocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46614N0();
    }

    /* renamed from: l1 */
    public static final void m46577l1(DocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46611L1();
    }

    /* renamed from: m1 */
    public static final void m46579m1(DocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46619Q0();
    }

    /* renamed from: n1 */
    public static final void m46581n1(DocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46617P0();
    }

    /* renamed from: o1 */
    public static final void m46583o1(DocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46621R1();
    }

    /* renamed from: p1 */
    public static final void m46585p1(DocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46603G0();
    }

    /* renamed from: q1 */
    public static final void m46587q1(DocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46648u1();
    }

    /* renamed from: r1 */
    public static final void m46589r1(DocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46604I0();
    }

    /* renamed from: t1 */
    public static final void m46592t1(DocOverviewFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectionWidth = this$0.m46624T0().selectionActionLayout.getWidth();
        this$0.m46608K0();
    }

    /* renamed from: A1 */
    public final void m46599A1(boolean dispose) {
        if (dispose) {
            this.compositeDisposable.clear();
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        new LoadVirtualPageModelListAction(editorBundle).build().doOnSubscribe(new C12159h()).doOnNext(new C12160i()).subscribe();
    }

    /* renamed from: C1 */
    public final void m46600C1() {
        m46647s1();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.register(editorBundle, this);
    }

    /* renamed from: D1 */
    public final void m46601D1(int pos) {
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        Function0<Unit> function0 = null;
        DocOverviewPageListAdapter docOverviewPageListAdapter2 = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        PageDataModel item = docOverviewPageListAdapter.getItem(pos);
        if (item == null) {
            return;
        }
        DocOverviewPageListAdapter docOverviewPageListAdapter3 = this.adapter;
        if (docOverviewPageListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter3 = null;
        }
        if (docOverviewPageListAdapter3.getSelectionMode()) {
            DocOverviewPageListAdapter docOverviewPageListAdapter4 = this.adapter;
            if (docOverviewPageListAdapter4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter4 = null;
            }
            docOverviewPageListAdapter4.onItemClick(item);
            m46643d2();
            EditorBundle editorBundle = this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            DocOverviewPageListAdapter docOverviewPageListAdapter5 = this.adapter;
            if (docOverviewPageListAdapter5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                docOverviewPageListAdapter2 = docOverviewPageListAdapter5;
            }
            EditorBundleKt.postEvent(editorBundle, new AllDataSelectedEvent(docOverviewPageListAdapter2.isAllItemSelected()));
            return;
        }
        DocOverviewPageListAdapter docOverviewPageListAdapter6 = this.adapter;
        if (docOverviewPageListAdapter6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter6 = null;
        }
        docOverviewPageListAdapter6.setCurrentPageIndex(item.getPageIndex());
        if (m46651x1()) {
            m46630W0(item.getPageIndex());
        } else {
            OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
            EditorBundle editorBundle2 = this.editorBundle;
            if (editorBundle2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle2 = null;
            }
            String pageId = item.getPageId();
            NoteSearchBean noteSearchBean = item.getNoteSearchBean();
            OnyxErrorHandler.executeWithErrorHandler$default(onyxErrorHandler, new LocateRectInPageAction(editorBundle2, pageId, noteSearchBean != null ? NoteSearchBean.INSTANCE.findFirstHighlightRect(noteSearchBean) : null), null, null, 3, null);
        }
        if (this.selectable) {
            Function0<Unit> function02 = this.closeOnSelect;
            if (function02 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("closeOnSelect");
            } else {
                function0 = function02;
            }
            function0.invoke();
        }
    }

    /* renamed from: F1 */
    public final void m46602F1(String text) {
        CharSequence trim;
        this.compositeDisposable.clear();
        CommonEmptyView searchEmptyView = m46624T0().searchEmptyView;
        Intrinsics.checkNotNullExpressionValue(searchEmptyView, "searchEmptyView");
        searchEmptyView.setVisibility(8);
        trim = StringsKt__StringsKt.trim((CharSequence) text);
        String nullToEmpty = Strings.nullToEmpty(trim.toString());
        boolean z = nullToEmpty == null || nullToEmpty.length() == 0;
        m46606J0(z);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.renderManager(editorBundle).clearNoteSearchBeanList();
        if (z) {
            this.viewModel.setSearching(false);
            m46653z1();
            this.viewModel.setSearchType(TextSearchType.ALL);
            return;
        }
        m46607J1();
        this.viewModel.setSearchProgress(0.0f);
        List<TextSearchType> correspondingSearchTypes = SearchActions.INSTANCE.getCorrespondingSearchTypes(this.viewModel.getSearchType());
        SearchNoteViewModel.Companion companion = SearchNoteViewModel.INSTANCE;
        Intrinsics.checkNotNull(nullToEmpty);
        Observable map = Observable.just(Unit.INSTANCE).doOnNext(new C12164l()).flatMap(new C12165m(correspondingSearchTypes)).flatMap(new Function() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$onSearch$searchDisposable$3
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends SyncNoteModel> apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundle editorBundle2 = DocOverviewFragment.this.editorBundle;
                if (editorBundle2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle2 = null;
                }
                return DocCommonActionsKt.createNoteObservable(editorBundle2, new Function1<NoteBundle, SyncNoteModel>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$onSearch$searchDisposable$3.1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final SyncNoteModel invoke(@NotNull NoteBundle it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return it3.getNoteDoc().getNoteModel();
                    }
                });
            }
        }).doOnNext(new C12166n()).flatMap(new C12167o(companion.createSearchArgs(correspondingSearchTypes, nullToEmpty))).observeOn(AndroidSchedulers.mainThread()).map(C12169p.f59043e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Disposable subscribe = RxjavaKt.doOnNextIf(map, new Function1<List<? extends NoteSearchBean>, Boolean>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$onSearch$searchDisposable$7
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<NoteSearchBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends NoteSearchBean> list) {
                return invoke2((List<NoteSearchBean>) list);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.u8f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DocOverviewFragment.m46564G1(DocOverviewFragment.this, (List) obj);
            }
        }).doOnNext(new C12170q()).doOnSubscribe(new C12162j()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.v8f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocOverviewFragment.m46566H1(DocOverviewFragment.this);
            }
        }).doOnError(new C12163k()).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: G0 */
    public final void m46603G0() {
        List mutableList;
        int collectionSizeOrDefault;
        List sorted;
        List<Integer> list;
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        EditorBundle editorBundle = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) docOverviewPageListAdapter.getSelectedItems());
        List<PageDataModel> list2 = mutableList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (PageDataModel pageDataModel : list2) {
            DocOverviewPageListAdapter docOverviewPageListAdapter2 = this.adapter;
            if (docOverviewPageListAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter2 = null;
            }
            arrayList.add(Integer.valueOf(docOverviewPageListAdapter2.itemIndexOfFirst(pageDataModel)));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((Number) obj).intValue() >= 0) {
                arrayList2.add(obj);
            }
        }
        sorted = CollectionsKt___CollectionsKt.sorted(arrayList2);
        list = CollectionsKt___CollectionsKt.toList(sorted);
        DocOverviewActionPopup.Companion companion = DocOverviewActionPopup.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle2;
        }
        companion.addToCustomPaper(requireContext, editorBundle, list, new Action() { // from class: com.sunia.HTREnginev2.y8f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocOverviewFragment.m46565H0(DocOverviewFragment.this);
            }
        });
        m46616O1(OnyxStatisticConstant.ID_CLICK_CUSTOM_TEMPLATE_BATCH_FULL);
    }

    /* renamed from: I0 */
    public final void m46604I0() {
        Object firstOrNull;
        EditorBundle editorBundle;
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) docOverviewPageListAdapter.getSelectedItems());
        PageDataModel pageDataModel = (PageDataModel) firstOrNull;
        if (pageDataModel == null) {
            return;
        }
        VirtualTocModel virtualTocModel = new VirtualTocModel("", pageDataModel.getPageIndex());
        virtualTocModel.setPageId(pageDataModel.getPageId());
        virtualTocModel.ensureUniqueIdExist();
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle2;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new AddToDocTocDialog(editorBundle, requireContext, virtualTocModel, null, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$addToToc$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteOutlineAddEvent(NoteOutlineAddFrom.FULL_DOC_OVERVIEW_MULTI_SELECTION));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }, 8, null).show();
        m46616O1(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_BATCH_FULL);
    }

    /* renamed from: I1 */
    public final void m46605I1() {
        Disposable subscribe = Observable.just(Unit.INSTANCE).delay(100L, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12171r()).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: J0 */
    public final void m46606J0(boolean attach) {
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        docOverviewPageListAdapter.attachItemTouchHelper(attach);
    }

    /* renamed from: J1 */
    public final void m46607J1() {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46624T0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.updateFilterStatus(layoutSearch, true);
        CommonEmptyView searchEmptyView = m46624T0().searchEmptyView;
        Intrinsics.checkNotNullExpressionValue(searchEmptyView, "searchEmptyView");
        searchEmptyView.setVisibility(8);
        m46624T0().layoutSearch.searchResult.setText("");
        TintLinearLayout searchStatusLayout = m46624T0().layoutSearch.searchStatusLayout;
        Intrinsics.checkNotNullExpressionValue(searchStatusLayout, "searchStatusLayout");
        searchStatusLayout.setVisibility(0);
        TintLinearLayout highlightNavLayout = m46624T0().layoutSearch.highlightNavLayout;
        Intrinsics.checkNotNullExpressionValue(highlightNavLayout, "highlightNavLayout");
        highlightNavLayout.setVisibility(8);
        this.viewModel.setSearching(true);
        this.viewModel.setUseCachedResult(false);
        this.viewModel.getCachedSearchResults().clear();
        this.searchHighlightRegionData = new SearchHighlightRegionData();
    }

    /* renamed from: K0 */
    public final void m46608K0() {
        int i = this.selectionWidth;
        if (i < 0) {
            return;
        }
        boolean z = i >= ScreenUtils.getAppScreenWidth();
        SelectionActionLayout selectionActionLayout = m46624T0().selectionActionLayout;
        Intrinsics.checkNotNullExpressionValue(selectionActionLayout, "selectionActionLayout");
        for (View view : ViewGroupKt.getChildren(selectionActionLayout)) {
            if (view instanceof HideTextView) {
                ((HideTextView) view).hideText(z);
            }
        }
    }

    /* renamed from: K1 */
    public final void m46609K1(boolean enable) {
        if (isResumed()) {
            m46606J0(!enable);
            DocOverviewPageListAdapter docOverviewPageListAdapter = null;
            if (enable) {
                DocOverviewPageListAdapter docOverviewPageListAdapter2 = this.adapter;
                if (docOverviewPageListAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docOverviewPageListAdapter = docOverviewPageListAdapter2;
                }
                docOverviewPageListAdapter.enterSelectionMode();
            } else {
                DocOverviewPageListAdapter docOverviewPageListAdapter3 = this.adapter;
                if (docOverviewPageListAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docOverviewPageListAdapter = docOverviewPageListAdapter3;
                }
                docOverviewPageListAdapter.quitSelectionMode();
            }
            ViewKt.setViewVisibleOrGone(m46624T0().selectionActionLayout, this.showActionMenu && enable);
            m46643d2();
        }
    }

    /* renamed from: L0 */
    public final void m46610L0() {
        if (this.viewModel.getSearching()) {
            return;
        }
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        DocOverviewPageListAdapter docOverviewPageListAdapter2 = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        boolean isEmpty = docOverviewPageListAdapter.getItems().isEmpty();
        CommonEmptyView searchEmptyView = m46624T0().searchEmptyView;
        Intrinsics.checkNotNullExpressionValue(searchEmptyView, "searchEmptyView");
        searchEmptyView.setVisibility(isEmpty && m46651x1() ? 0 : 8);
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        TintTextView searchResult = m46624T0().layoutSearch.searchResult;
        Intrinsics.checkNotNullExpressionValue(searchResult, "searchResult");
        docOutlineSearchUtils.setSearchMatchingData(searchResult, this.searchHighlightRegionData.size(), m46651x1());
        TintLinearLayout highlightNavLayout = m46624T0().layoutSearch.highlightNavLayout;
        Intrinsics.checkNotNullExpressionValue(highlightNavLayout, "highlightNavLayout");
        DocOverviewPageListAdapter docOverviewPageListAdapter3 = this.adapter;
        if (docOverviewPageListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docOverviewPageListAdapter2 = docOverviewPageListAdapter3;
        }
        highlightNavLayout.setVisibility(docOverviewPageListAdapter2.getItemCount() > 0 ? 0 : 8);
    }

    /* renamed from: L1 */
    public final void m46611L1() {
        List mutableList;
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        EditorBundle editorBundle = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) docOverviewPageListAdapter.getSelectedItems());
        if (mutableList.isEmpty()) {
            return;
        }
        m46612M0();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : mutableList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            arrayList.add(new PastePagedArgs.PastePageInfo(((PageDataModel) obj).getPageIndex() + 1));
            i = i2;
        }
        PastePagedArgs pastePagedArgs = new PastePagedArgs(arrayList);
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle2;
        }
        EditorBundleKt.postEvent(editorBundle, new PastePageEvent(new PasteState.Create(pastePagedArgs)));
    }

    /* renamed from: M0 */
    public final void m46612M0() {
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        EditorBundle editorBundle = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        docOverviewPageListAdapter.clearSelectedItems();
        m46643d2();
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle2;
        }
        EditorBundleKt.postEvent(editorBundle, new AllDataSelectedEvent(false));
    }

    /* renamed from: M1 */
    public final void m46613M1() {
        if (m46624T0().swipeContainer.getRecycleView().isComputingLayout()) {
            m46624T0().swipeContainer.getRecycleView().post(new Runnable() { // from class: com.sunia.HTREnginev2.z8f
                @Override // java.lang.Runnable
                public final void run() {
                    DocOverviewFragment.m46567N1(DocOverviewFragment.this);
                }
            });
        } else {
            m46606J0(false);
            m46606J0(true);
        }
    }

    /* renamed from: N0 */
    public final void m46614N0() {
        List mutableList;
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        EditorBundle editorBundle = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) docOverviewPageListAdapter.getSelectedItems());
        if (mutableList.isEmpty()) {
            return;
        }
        m46612M0();
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$clonePage$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((PageDataModel) t).getPageIndex()), Integer.valueOf(((PageDataModel) t2).getPageIndex()));
                    return compareValues;
                }
            });
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : mutableList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            PageDataModel pageDataModel = (PageDataModel) obj;
            arrayList.add(new CopyPageArgs(pageDataModel.getPageIndex(), pageDataModel.getPageIndex() + i + 1, true));
            i = i2;
        }
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle2 = null;
        }
        EditorBundleKt.postEvent(editorBundle2, new ClonePageEvent(new CloneState.Create(arrayList)));
        ClonePageInfo clonePageInfo = GlobalBundle.INSTANCE.getClonePageInfo();
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle3;
        }
        clonePageInfo.setDocId(EditorBundleKt.docId(editorBundle));
    }

    /* renamed from: O0 */
    public final void m46615O0() {
        List mutableList;
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        EditorBundle editorBundle = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) docOverviewPageListAdapter.getSelectedItems());
        if (mutableList.isEmpty()) {
            return;
        }
        m46612M0();
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$copy$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((PageDataModel) t).getPageIndex()), Integer.valueOf(((PageDataModel) t2).getPageIndex()));
                    return compareValues;
                }
            });
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : mutableList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            PageDataModel pageDataModel = (PageDataModel) obj;
            arrayList.add(new CopyPageArgs(pageDataModel.getPageIndex() + i, pageDataModel.getPageIndex() + i + 1, true));
            i = i2;
        }
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle2;
        }
        EditorBundleKt.postEvent(editorBundle, new CopyPageEvent(arrayList));
        m46616O1(OnyxStatisticConstant.ID_CLICK_PAGE_COPY_BATCH_FULL);
    }

    /* renamed from: O1 */
    public final void m46616O1(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: P0 */
    public final void m46617P0() {
        int collectionSizeOrDefault;
        List<String> mutableList;
        EditorBundle editorBundle;
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        List<PageDataModel> selectedItems = docOverviewPageListAdapter.getSelectedItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(selectedItems, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = selectedItems.iterator();
        while (it2.hasNext()) {
            arrayList.add(((PageDataModel) it2.next()).getPageId());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        if (mutableList.isEmpty()) {
            return;
        }
        int size = CollectionKt.getSize(mutableList);
        DocOverviewPageListAdapter docOverviewPageListAdapter2 = this.adapter;
        if (docOverviewPageListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter2 = null;
        }
        if (size == docOverviewPageListAdapter2.getItemCount()) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.prohibit_delete_all_page_warning, false, 2, (Object) null);
            return;
        }
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$delete$$inlined$sortByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues((String) t2, (String) t);
                    return compareValues;
                }
            });
        }
        DocOverviewActionPopup.Companion companion = DocOverviewActionPopup.INSTANCE;
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle2;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        companion.deletePages(editorBundle, requireContext, mutableList, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$delete$2
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
                DocOverviewFragment.this.m46612M0();
                DocOverviewFragment.this.m46616O1(OnyxStatisticConstant.ID_CLICK_DOCSOVERVIEW_DELETE_CONFIRM_BATCH_FULL);
            }
        }, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$delete$3
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
                DocOverviewFragment.this.m46616O1(OnyxStatisticConstant.ID_CLICK_DOCSOVERVIEW_DELETE_CANCEL_BATCH_FULL);
            }
        });
        m46616O1(OnyxStatisticConstant.ID_VIEW_DOCSOVERVIEW_DELETE_BATCH_FULL);
        m46616O1(OnyxStatisticConstant.ID_CLICK_DOCSOVERVIEW_DELETE_BATCH_FULL);
    }

    /* renamed from: P1 */
    public final void m46618P1() {
        m46616O1(this.selectable ? OnyxStatisticConstant.ID_VIEW_DOCSOVERVIEW_FULL : OnyxStatisticConstant.ID_VIEW_DOCSOVERVIEW);
    }

    /* renamed from: Q0 */
    public final void m46619Q0() {
        List mutableList;
        int collectionSizeOrDefault;
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) docOverviewPageListAdapter.getSelectedItems());
        if (mutableList.isEmpty()) {
            return;
        }
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$export$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((PageDataModel) t).getPageIndex()), Integer.valueOf(((PageDataModel) t2).getPageIndex()));
                    return compareValues;
                }
            });
        }
        List list = mutableList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((PageDataModel) it2.next()).getPageId());
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Activity activity = editorBundle.getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String();
        final LoadingDialog createLoadingDialog = activity != null ? ContextExtKt.createLoadingDialog(activity) : null;
        Observable.just(this).doOnNext(new C12152a(createLoadingDialog)).flatMap(new C12153b()).doOnNext(new C12154c(createLoadingDialog)).doOnNext(new C12155d(arrayList)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.h8f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocOverviewFragment.m46568R0(LoadingDialog.this);
            }
        }).subscribe();
        m46616O1(OnyxStatisticConstant.ID_CLICK_EXPORTDOCS_BATCH_FULL);
    }

    /* renamed from: Q1 */
    public final void m46620Q1() {
        this.searchHighlightRegionData = NoteSearchBean.INSTANCE.createSearchHighlightRegionData(m46626U0());
    }

    /* renamed from: R1 */
    public final void m46621R1() {
        int collectionSizeOrDefault;
        EditorBundle editorBundle;
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        List<PageDataModel> selectedItems = docOverviewPageListAdapter.getSelectedItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(selectedItems, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = selectedItems.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((PageDataModel) it2.next()).getPageIndex()));
        }
        DocOverviewActionPopup.Companion companion = DocOverviewActionPopup.INSTANCE;
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle2;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        DocOverviewActionPopup.Companion.rotatePages$default(companion, editorBundle, requireContext, arrayList, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$rotate$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }, null, 16, null);
    }

    /* renamed from: S0 */
    public final void m46622S0(TextSearchType type) {
        this.viewModel.setSearchType(type);
        List<PageDataModel> filterCachedResult = this.viewModel.filterCachedResult(type);
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        DocOverviewPageListAdapter docOverviewPageListAdapter2 = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        docOverviewPageListAdapter.submitInObservable(filterCachedResult, new DocOverviewFragment$filterSearchResult$1(this));
        m46620Q1();
        DocOverviewPageListAdapter docOverviewPageListAdapter3 = this.adapter;
        if (docOverviewPageListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docOverviewPageListAdapter2 = docOverviewPageListAdapter3;
        }
        m46630W0(docOverviewPageListAdapter2.getCurrentPageIndex());
    }

    /* renamed from: S1 */
    public final void m46623S1(int pageIndex) {
        this.searchHighlightRegionData.updateSelectedRegion(this.searchHighlightRegionData.getNearestRegion(pageIndex));
    }

    /* renamed from: T0 */
    public final FragmentDocOverviewBinding m46624T0() {
        return (FragmentDocOverviewBinding) this.binding.getValue();
    }

    /* renamed from: T1 */
    public final void m46625T1() {
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        this.searchHighlightRegionData.updateSelectedRegion(this.searchHighlightRegionData.getPageFirstRegion(docOverviewPageListAdapter.getCurrentPageIndex()));
    }

    /* renamed from: U0 */
    public final List<NoteSearchBean> m46626U0() {
        List<PageDataModel> items;
        int collectionSizeOrDefault;
        List<NoteSearchBean> filterNotNull;
        if (this.viewModel.getUseCachedResult()) {
            DocOverviewViewModel docOverviewViewModel = this.viewModel;
            items = docOverviewViewModel.filterCachedResult(docOverviewViewModel.getSearchType());
        } else {
            DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
            if (docOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter = null;
            }
            items = docOverviewPageListAdapter.getItems();
        }
        List<PageDataModel> list = items;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((PageDataModel) it2.next()).getNoteSearchBean());
        }
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(arrayList);
        return filterNotNull;
    }

    /* renamed from: U1 */
    public final void m46627U1() {
        ViewKt.postSelf(m46624T0().swipeContainer.getRecycleView(), new Function1<AutoFitRecycleView, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$setAdapterCurrentIndex$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AutoFitRecycleView autoFitRecycleView) {
                invoke2(autoFitRecycleView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull AutoFitRecycleView it2) {
                boolean m46649v1;
                RecyclerView.ItemAnimator itemAnimator;
                Intrinsics.checkNotNullParameter(it2, "it");
                m46649v1 = DocOverviewFragment.this.m46649v1();
                if (m46649v1) {
                    EditorBundle editorBundle = null;
                    it2.setItemAnimator(null);
                    it2.stopScroll();
                    DocOverviewFragment docOverviewFragment = DocOverviewFragment.this;
                    EditorBundle editorBundle2 = docOverviewFragment.editorBundle;
                    if (editorBundle2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                        editorBundle2 = null;
                    }
                    docOverviewFragment.m46623S1(EditorBundleKt.currentPageIndex(editorBundle2));
                    DocOverviewPageListAdapter docOverviewPageListAdapter = DocOverviewFragment.this.adapter;
                    if (docOverviewPageListAdapter == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        docOverviewPageListAdapter = null;
                    }
                    EditorBundle editorBundle3 = DocOverviewFragment.this.editorBundle;
                    if (editorBundle3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    } else {
                        editorBundle = editorBundle3;
                    }
                    docOverviewPageListAdapter.setCurrentPageIndex(EditorBundleKt.currentPageIndex(editorBundle));
                    DocOverviewFragment.this.m46642c2();
                    itemAnimator = DocOverviewFragment.this.itemAnimatorBackup;
                    it2.setItemAnimator(itemAnimator);
                }
            }
        });
    }

    /* renamed from: V0 */
    public final float m46628V0() {
        if (!this.selectable) {
            return ResManager.INSTANCE.getDimension(C7384R.dimen.dp_126);
        }
        int i = WhenMappings.$EnumSwitchMapping$0[this.thumbnailSizeType.ordinal()];
        if (i == 1) {
            return ResManager.INSTANCE.getDimension(C7384R.dimen.dp_150);
        }
        if (i == 2) {
            return ResManager.INSTANCE.getDimension(C7384R.dimen.dp_280);
        }
        throw new NoWhenBranchMatchedException();
    }

    /* renamed from: V1 */
    public final void m46629V1(boolean fullscreen) {
        m46624T0().swipeContainer.getRecycleView().setDisplayType(NoteDisplayType.DISPLAY_GRID);
        if (fullscreen) {
            return;
        }
        m46624T0().swipeContainer.getRecycleView().setSpanCount(m46644e2(this.currentVisibleLevel));
    }

    /* renamed from: W0 */
    public final void m46630W0(int pageIndex) {
        m46632X0(this.searchHighlightRegionData.getNearestRegion(pageIndex));
    }

    /* renamed from: W1 */
    public final void m46631W1() {
        m46624T0().swipeContainer.getRecycleView().setItemWidthLarge(m46628V0());
    }

    /* renamed from: X0 */
    public final void m46632X0(SearchHighlightRegion searchHighlightRegion) {
        if (searchHighlightRegion == null) {
            return;
        }
        this.searchHighlightRegionData.updateSelectedRegion(searchHighlightRegion);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Observable<LocateRectInPageAction> doOnNext = new LocateRectInPageAction(editorBundle, searchHighlightRegion.getPageId(), searchHighlightRegion.transformedRect()).build().doOnNext(new C12156e());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        onyxErrorHandler.subscribeSilently(doOnNext);
    }

    /* renamed from: X1 */
    public final void m46633X1() {
        m46631W1();
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        DocOverviewPageListAdapter docOverviewPageListAdapter2 = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        docOverviewPageListAdapter.setThumbnailSizeType(this.thumbnailSizeType);
        AutoFitRecycleView recycleView = m46624T0().swipeContainer.getRecycleView();
        DocOverviewPageListAdapter docOverviewPageListAdapter3 = this.adapter;
        if (docOverviewPageListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docOverviewPageListAdapter2 = docOverviewPageListAdapter3;
        }
        recycleView.setAdapter(docOverviewPageListAdapter2);
        m46629V1(this.selectable);
    }

    /* renamed from: Y0 */
    public final void m46634Y0() {
        if (this.selectable) {
            return;
        }
        DynamicImageView imageView = m46624T0().searchEmptyView.getImageView();
        Intrinsics.checkNotNullExpressionValue(imageView, "<get-imageView>(...)");
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        ResManager resManager = ResManager.INSTANCE;
        layoutParams.width = resManager.getDimens(C7384R.dimen.dp_148);
        layoutParams.height = resManager.getDimens(C7384R.dimen.dp_148);
        imageView.setLayoutParams(layoutParams);
    }

    /* renamed from: Y1 */
    public final void m46635Y1(View view, int pos) {
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        EditorBundle editorBundle = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        if (docOverviewPageListAdapter.getSelectionMode()) {
            return;
        }
        DocOverviewPageListAdapter docOverviewPageListAdapter2 = this.adapter;
        if (docOverviewPageListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter2 = null;
        }
        PageDataModel item = docOverviewPageListAdapter2.getItem(pos);
        if (item == null) {
            return;
        }
        int pageIndex = item.getPageIndex();
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle2;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        DocOverviewActionPopup docOverviewActionPopup = new DocOverviewActionPopup(editorBundle, requireContext, pageIndex, this.selectable);
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_12);
        View root = m46624T0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        PopupExtKt.showActionPopup$default(docOverviewActionPopup, view, ViewKt.globalVisibleRect(root), 0, dimens, 4, null);
    }

    /* renamed from: Z0 */
    public final void m46636Z0() {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        List<TextSearchType> filterSearchType = docOutlineSearchUtils.filterSearchType();
        LayoutDocSearchBinding layoutSearch = m46624T0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.initFilterLayout(layoutSearch, filterSearchType, new Function1<TextSearchType, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$initFilterLayout$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextSearchType textSearchType) {
                invoke2(textSearchType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TextSearchType it2) {
                FragmentDocOverviewBinding m46624T0;
                FragmentDocOverviewBinding m46624T02;
                Intrinsics.checkNotNullParameter(it2, "it");
                if (it2 == DocOverviewFragment.this.viewModel.getSearchType()) {
                    return;
                }
                if (DocOverviewFragment.this.viewModel.getUseCachedResult()) {
                    DocOverviewFragment.this.m46622S0(it2);
                    return;
                }
                DocOverviewFragment.this.viewModel.setSearchType(it2);
                DocOutlineSearchUtils docOutlineSearchUtils2 = DocOutlineSearchUtils.INSTANCE;
                m46624T0 = DocOverviewFragment.this.m46624T0();
                LayoutDocSearchBinding layoutSearch2 = m46624T0.layoutSearch;
                Intrinsics.checkNotNullExpressionValue(layoutSearch2, "layoutSearch");
                docOutlineSearchUtils2.clearSearchStatus(layoutSearch2);
                DocOverviewFragment docOverviewFragment = DocOverviewFragment.this;
                m46624T02 = docOverviewFragment.m46624T0();
                LayoutDocSearchBinding layoutSearch3 = m46624T02.layoutSearch;
                Intrinsics.checkNotNullExpressionValue(layoutSearch3, "layoutSearch");
                docOverviewFragment.m46602F1(docOutlineSearchUtils2.getInputText(layoutSearch3));
            }
        });
    }

    /* renamed from: Z1 */
    public final void m46637Z1(SyncNoteModel noteModel, List<String> pageIdList) {
        List listOf;
        NoteExportArgs noteExportArgs = new NoteExportArgs(noteModel, pageIdList, null, false, 12, null);
        EditorBundle editorBundle = this.docManagerBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("docManagerBundle");
            editorBundle = null;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(noteExportArgs);
        NoteExportDialog noteExportDialog = new NoteExportDialog(editorBundle, requireContext, listOf);
        noteExportDialog.setListener(new NoteExportDialog.ExportListener() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$showExportDialog$1$1
            @Override // com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog.ExportListener
            public void onFileExported(@NotNull String filePath) {
                Intrinsics.checkNotNullParameter(filePath, "filePath");
                DocOverviewFragment.this.m46612M0();
            }
        });
        noteExportDialog.show();
    }

    /* renamed from: a1 */
    public final void m46638a1() {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46624T0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.initLayout(layoutSearch, this.selectable, true, new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$initInputLayout$1
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
                DocOverviewFragment.this.m46602F1(it2);
            }
        });
        m46636Z0();
        LayoutDocSearchBinding layoutSearch2 = m46624T0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch2, "layoutSearch");
        docOutlineSearchUtils.initAiSearch(layoutSearch2, new DocOverviewFragment$initInputLayout$2(this));
    }

    /* renamed from: a2 */
    public final void m46639a2() {
        StatisticsBundle.INSTANCE.postEvent(new StatisticsPageCollectAddEvent(this.selectable ? PageCollectAddFrom.FULL_SIDE_DOC_OVERVIEW : PageCollectAddFrom.SIDE_DOC_OVERVIEW));
    }

    /* renamed from: b1 */
    public final void m46640b1() {
        DocOverviewPageListAdapter docOverviewPageListAdapter;
        DocOverviewPageListAdapter docOverviewPageListAdapter2;
        final EditorBundle editorBundle = this.editorBundle;
        DocOverviewPageListAdapter docOverviewPageListAdapter3 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        final boolean z = this.selectable;
        final ThumbnailSizeType thumbnailSizeType = this.thumbnailSizeType;
        DocOverviewPageListAdapter docOverviewPageListAdapter4 = new DocOverviewPageListAdapter(editorBundle, z, thumbnailSizeType) { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$initListView$1

            /* renamed from: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$initListView$1$a */
            /* loaded from: classes9.dex */
            public static final class C12161a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ DocOverviewFragment f59032e;

                public C12161a(DocOverviewFragment docOverviewFragment) {
                    this.f59032e = docOverviewFragment;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull MovePageAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    DocOverviewFragment.m46558B1(this.f59032e, false, 1, null);
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter
            public void onItemMoved(int fromPos, int toPos) {
                super.onItemMoved(fromPos, toPos);
                MovePageArgs movePageArgs = new MovePageArgs(fromPos, toPos, toPos < fromPos, false);
                if (!Debug.INSTANCE.getDebug()) {
                    LogUtils.file(EditorBundleKt.docId(getEditorBundle()) + " docOverview onItemMoved, fromPos:" + fromPos + ", toPos:" + toPos);
                }
                DocOverviewFragment.this.m46613M1();
                MovePageAction movePageAction = new MovePageAction(getEditorBundle());
                movePageAction.setMovePageArgs(movePageArgs);
                Observable<MovePageAction> doOnNext = movePageAction.build().doOnNext(new C12161a(DocOverviewFragment.this));
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
            }

            @Override // com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter
            public void onSelectedChanged() {
            }
        };
        this.adapter = docOverviewPageListAdapter4;
        ItemClickUtilsKt.setOnDebouncedItemClick$default(docOverviewPageListAdapter4, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.f8f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DocOverviewFragment.m46569c1(DocOverviewFragment.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        DocOverviewPageListAdapter docOverviewPageListAdapter5 = this.adapter;
        if (docOverviewPageListAdapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        } else {
            docOverviewPageListAdapter = docOverviewPageListAdapter5;
        }
        ItemClickUtilsKt.addOnDebouncedChildClick$default(docOverviewPageListAdapter, C10651R.id.bookmark, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.q8f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DocOverviewFragment.m46570d1(DocOverviewFragment.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        DocOverviewPageListAdapter docOverviewPageListAdapter6 = this.adapter;
        if (docOverviewPageListAdapter6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter2 = null;
        } else {
            docOverviewPageListAdapter2 = docOverviewPageListAdapter6;
        }
        ItemClickUtilsKt.addOnDebouncedChildClick$default(docOverviewPageListAdapter2, C10651R.id.more_settings, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.s8f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DocOverviewFragment.m46571e1(DocOverviewFragment.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        AutoFitRecycleView recycleView = m46624T0().swipeContainer.getRecycleView();
        DocOverviewPageListAdapter docOverviewPageListAdapter7 = this.adapter;
        if (docOverviewPageListAdapter7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter7 = null;
        }
        recycleView.setAdapter(docOverviewPageListAdapter7);
        this.itemAnimatorBackup = m46624T0().swipeContainer.getRecycleView().getItemAnimator();
        m46606J0(true);
        m46629V1(this.selectable);
        int dimens = this.selectable ? ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16) : 0;
        m46624T0().swipeContainer.getRecycleView().setPadding(dimens, 0, dimens, 0);
        m46624T0().swipeContainer.setEnableSwipeDetector(false);
        m46624T0().swipeContainer.getRecycleView().addOnItemTouchListener(new RecyclerViewSwipeListener() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$initListView$5
            @Override // com.onyx.galaxy.note.category.p044ui.RecyclerViewSwipeListener
            public boolean isEnableSwipe() {
                boolean z2;
                z2 = DocOverviewFragment.this.selectable;
                return !z2;
            }

            @Override // com.onyx.galaxy.note.category.p044ui.RecyclerViewSwipeListener
            public void updateChangeItems(@NotNull List<Integer> positionList) {
                Intrinsics.checkNotNullParameter(positionList, "positionList");
                DocOverviewPageListAdapter docOverviewPageListAdapter8 = DocOverviewFragment.this.adapter;
                DocOverviewPageListAdapter docOverviewPageListAdapter9 = null;
                if (docOverviewPageListAdapter8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docOverviewPageListAdapter8 = null;
                }
                docOverviewPageListAdapter8.toggleItemsSelectedState(positionList);
                DocOverviewFragment.this.m46643d2();
                EditorBundle editorBundle2 = DocOverviewFragment.this.editorBundle;
                if (editorBundle2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle2 = null;
                }
                DocOverviewPageListAdapter docOverviewPageListAdapter10 = DocOverviewFragment.this.adapter;
                if (docOverviewPageListAdapter10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docOverviewPageListAdapter9 = docOverviewPageListAdapter10;
                }
                EditorBundleKt.postEvent(editorBundle2, new AllDataSelectedEvent(docOverviewPageListAdapter9.isAllItemSelected()));
            }
        });
        if (this.selectable) {
            m46624T0().swipeContainer.getRecycleView().addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$initListView$6
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                    Intrinsics.checkNotNullParameter(outRect, "outRect");
                    Intrinsics.checkNotNullParameter(view, "view");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    Intrinsics.checkNotNullParameter(state, "state");
                    super.getItemOffsets(outRect, view, parent, state);
                    RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
                    GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
                    if (gridLayoutManager == null) {
                        return;
                    }
                    int spanCount = gridLayoutManager.getSpanCount();
                    int childAdapterPosition = parent.getChildAdapterPosition(view);
                    boolean z2 = false;
                    if (childAdapterPosition >= 0 && childAdapterPosition < spanCount) {
                        z2 = true;
                    }
                    if (z2) {
                        outRect.top += ResManager.INSTANCE.getDimens(C7384R.dimen.dp_8);
                    }
                }
            });
        }
        DocOverviewPageListAdapter docOverviewPageListAdapter8 = this.adapter;
        if (docOverviewPageListAdapter8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docOverviewPageListAdapter3 = docOverviewPageListAdapter8;
        }
        docOverviewPageListAdapter3.setSelectItemChangeCallback(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$initListView$7
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z2) {
                DocOverviewFragment.this.m46643d2();
                EditorBundle editorBundle2 = DocOverviewFragment.this.editorBundle;
                DocOverviewPageListAdapter docOverviewPageListAdapter9 = null;
                if (editorBundle2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle2 = null;
                }
                DocOverviewPageListAdapter docOverviewPageListAdapter10 = DocOverviewFragment.this.adapter;
                if (docOverviewPageListAdapter10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docOverviewPageListAdapter9 = docOverviewPageListAdapter10;
                }
                EditorBundleKt.postEvent(editorBundle2, new AllDataSelectedEvent(docOverviewPageListAdapter9.isAllItemSelected()));
            }
        });
    }

    /* renamed from: b2 */
    public final void m46641b2(int pos) {
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        EditorBundle editorBundle = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        PageDataModel item = docOverviewPageListAdapter.getItem(pos);
        if (item == null) {
            return;
        }
        int pageIndex = item.getPageIndex();
        DocOverviewPageListAdapter docOverviewPageListAdapter2 = this.adapter;
        if (docOverviewPageListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter2 = null;
        }
        VirtualBookmarkModel virtualBookmarkModel = docOverviewPageListAdapter2.toggleBookmark(item, pageIndex);
        if (!(virtualBookmarkModel.getUniqueId().length() == 0)) {
            EditorBundle editorBundle2 = this.editorBundle;
            if (editorBundle2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            } else {
                editorBundle = editorBundle2;
            }
            EditorBundleKt.postEvent(editorBundle, new DeleteBookmarkEvent(virtualBookmarkModel));
            return;
        }
        virtualBookmarkModel.ensureUniqueIdExist();
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle3;
        }
        EditorBundleKt.postEvent(editorBundle, new UpdateBookmarkEvent(virtualBookmarkModel));
        m46616O1(this.selectable ? OnyxStatisticConstant.ID_CLICK_BOOKMARK_ADD_FULL : OnyxStatisticConstant.ID_CLICK_BOOKMARK_ADD);
        m46639a2();
    }

    /* renamed from: c2 */
    public final void m46642c2() {
        m46624T0().layoutSearch.currentHighlightIndex.setText(this.searchHighlightRegionData.getIndicatorText());
        DocOverviewViewModel docOverviewViewModel = this.viewModel;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        docOverviewViewModel.updatePageSearchHighlightRender(editorBundle, this.searchHighlightRegionData.getSelectedRegion());
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0081  */
    /* renamed from: d2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m46643d2() {
        /*
            r8 = this;
            com.onyx.galaxy.note.editor.view.adapter.DocOverviewPageListAdapter r0 = r8.adapter
            r1 = 0
            if (r0 != 0) goto Lb
            java.lang.String r0 = "adapter"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            r0 = r1
        Lb:
            java.util.List r0 = r0.getSelectedItems()
            java.util.Collection r0 = (java.util.Collection) r0
            int r0 = com.onyx.android.sdk.base.extension.CollectionKt.getSize(r0)
            r2 = 0
            r3 = 1
            if (r0 <= 0) goto L1b
            r4 = r3
            goto L1c
        L1b:
            r4 = r2
        L1c:
            com.onyx.galaxy.note.databinding.FragmentDocOverviewBinding r5 = r8.m46624T0()
            com.onyx.galaxy.note.editor.view.HideTextView r5 = r5.delete
            r5.setEnabled(r4)
            com.onyx.galaxy.note.databinding.FragmentDocOverviewBinding r5 = r8.m46624T0()
            com.onyx.galaxy.note.editor.view.HideTextView r5 = r5.copy
            r5.setEnabled(r4)
            com.onyx.galaxy.note.databinding.FragmentDocOverviewBinding r5 = r8.m46624T0()
            com.onyx.galaxy.note.editor.view.HideTextView r5 = r5.clone
            r5.setEnabled(r4)
            com.onyx.galaxy.note.databinding.FragmentDocOverviewBinding r5 = r8.m46624T0()
            com.onyx.galaxy.note.editor.view.HideTextView r5 = r5.paste
            if (r4 == 0) goto L58
            com.onyx.android.sdk.universal.editor.GlobalBundle r6 = com.onyx.android.sdk.universal.editor.GlobalBundle.INSTANCE
            com.onyx.android.sdk.universal.editor.EditorBundle r7 = r8.editorBundle
            if (r7 != 0) goto L4b
            java.lang.String r7 = "editorBundle"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r7)
            goto L4c
        L4b:
            r1 = r7
        L4c:
            java.lang.String r1 = com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.docId(r1)
            boolean r1 = r6.isCanPastePage(r1)
            if (r1 == 0) goto L58
            r1 = r3
            goto L59
        L58:
            r1 = r2
        L59:
            r5.setEnabled(r1)
            com.onyx.galaxy.note.databinding.FragmentDocOverviewBinding r1 = r8.m46624T0()
            com.onyx.galaxy.note.editor.view.HideTextView r1 = r1.export
            r1.setEnabled(r4)
            com.onyx.galaxy.note.databinding.FragmentDocOverviewBinding r1 = r8.m46624T0()
            com.onyx.galaxy.note.editor.view.HideTextView r1 = r1.rotate
            r1.setEnabled(r4)
            com.onyx.galaxy.note.databinding.FragmentDocOverviewBinding r1 = r8.m46624T0()
            com.onyx.galaxy.note.editor.view.HideTextView r1 = r1.addToCustomPaper
            r1.setEnabled(r4)
            com.onyx.galaxy.note.databinding.FragmentDocOverviewBinding r1 = r8.m46624T0()
            com.onyx.galaxy.note.editor.view.HideTextView r1 = r1.addPageAfterCurrentPage
            if (r0 != r3) goto L81
            r4 = r3
            goto L82
        L81:
            r4 = r2
        L82:
            r1.setEnabled(r4)
            com.onyx.galaxy.note.databinding.FragmentDocOverviewBinding r8 = r8.m46624T0()
            com.onyx.galaxy.note.editor.view.HideTextView r8 = r8.addToToc
            if (r0 != r3) goto L8e
            r2 = r3
        L8e:
            r8.setEnabled(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.p046ui.DocOverviewFragment.m46643d2():void");
    }

    /* renamed from: e2 */
    public final int m46644e2(int level) {
        return level + 1;
    }

    /* renamed from: f1 */
    public final void m46645f1() {
        TintImageView gotoPrevHighlight = m46624T0().layoutSearch.gotoPrevHighlight;
        Intrinsics.checkNotNullExpressionValue(gotoPrevHighlight, "gotoPrevHighlight");
        com.onyx.android.sdk.extension.ViewKt.click(gotoPrevHighlight, 100L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewFragment.m46572g1(DocOverviewFragment.this, view);
            }
        });
        TintImageView gotoNextHighlight = m46624T0().layoutSearch.gotoNextHighlight;
        Intrinsics.checkNotNullExpressionValue(gotoNextHighlight, "gotoNextHighlight");
        com.onyx.android.sdk.extension.ViewKt.click(gotoNextHighlight, 100L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewFragment.m46573h1(DocOverviewFragment.this, view);
            }
        });
    }

    @NotNull
    public final List<PageDataModel> getSelectedItems() {
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        if (docOverviewPageListAdapter == null) {
            return new ArrayList();
        }
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        return docOverviewPageListAdapter.getSelectedItems();
    }

    /* renamed from: i1 */
    public final void m46646i1() {
        m46624T0().addPageAfterCurrentPage.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.i8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewFragment.m46587q1(DocOverviewFragment.this, view);
            }
        });
        m46624T0().addToToc.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewFragment.m46589r1(DocOverviewFragment.this, view);
            }
        });
        m46624T0().copy.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.k8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewFragment.m46574j1(DocOverviewFragment.this, view);
            }
        });
        m46624T0().clone.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.l8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewFragment.m46575k1(DocOverviewFragment.this, view);
            }
        });
        m46624T0().paste.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewFragment.m46577l1(DocOverviewFragment.this, view);
            }
        });
        m46624T0().export.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewFragment.m46579m1(DocOverviewFragment.this, view);
            }
        });
        m46624T0().delete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewFragment.m46581n1(DocOverviewFragment.this, view);
            }
        });
        HideTextView rotate = m46624T0().rotate;
        Intrinsics.checkNotNullExpressionValue(rotate, "rotate");
        com.onyx.android.sdk.extension.ViewKt.click$default(rotate, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.p8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewFragment.m46583o1(DocOverviewFragment.this, view);
            }
        }, 1, null);
        m46624T0().addToCustomPaper.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewFragment.m46585p1(DocOverviewFragment.this, view);
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivationStateChangedEvent(@NotNull ActivationStateChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46624T0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.updateAiSearchState(layoutSearch);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onConfigurationChangedEvent(@NotNull ConfigurationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46629V1(this.selectable);
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        docOverviewPageListAdapter.resetCurrentPageIndex();
        ViewKt.postSelf(m46624T0().swipeContainer.getRecycleView(), new Function1<AutoFitRecycleView, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$onConfigurationChangedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AutoFitRecycleView autoFitRecycleView) {
                invoke2(autoFitRecycleView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull AutoFitRecycleView it2) {
                FragmentDocOverviewBinding m46624T0;
                Intrinsics.checkNotNullParameter(it2, "it");
                m46624T0 = DocOverviewFragment.this.m46624T0();
                AutoFitRecycleView recycleView = m46624T0.swipeContainer.getRecycleView();
                DocOverviewPageListAdapter docOverviewPageListAdapter2 = DocOverviewFragment.this.adapter;
                EditorBundle editorBundle = null;
                if (docOverviewPageListAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docOverviewPageListAdapter2 = null;
                }
                recycleView.setAdapter(docOverviewPageListAdapter2);
                DocOverviewPageListAdapter docOverviewPageListAdapter3 = DocOverviewFragment.this.adapter;
                if (docOverviewPageListAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docOverviewPageListAdapter3 = null;
                }
                EditorBundle editorBundle2 = DocOverviewFragment.this.editorBundle;
                if (editorBundle2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                } else {
                    editorBundle = editorBundle2;
                }
                docOverviewPageListAdapter3.setCurrentPageIndex(EditorBundleKt.currentPageIndex(editorBundle));
            }
        });
        m46608K0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m46631W1();
        View root = m46624T0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EditorBundle editorBundle = null;
        m46624T0().swipeContainer.getRecycleView().setAdapter(null);
        this.compositeDisposable.dispose();
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 != null) {
            if (editorBundle2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle2 = null;
            }
            EditorBundleKt.unregister(editorBundle2, this);
            EditorBundle editorBundle3 = this.editorBundle;
            if (editorBundle3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            } else {
                editorBundle = editorBundle3;
            }
            EditorBundleKt.renderManager(editorBundle).clearNoteSearchBeanList();
        }
        GlobalBundle.INSTANCE.unregister(this);
        AccountDataBundle.INSTANCE.unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditDoneEvent(@NotNull EditDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46624T0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.clearInputFocus(layoutSearch);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnterSelectionModeEvent(@NotNull EnterSelectionModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.selectable) {
            m46609K1(true);
            m46616O1(OnyxStatisticConstant.ID_CLICK_DOCSOVERVIEW_SELECT_FULL);
            m46616O1(OnyxStatisticConstant.ID_VIEW_DOCSOVERVIEW_BATCH_FULL);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onKeyboardClose(@NotNull KeyboardCloseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46624T0().layoutSearch.inputEditTextView.clearFocus();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onOverviewSearchEvent(@NotNull final OverviewSearchEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isVisible() && isResumed()) {
            m46624T0().getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.t8f
                @Override // java.lang.Runnable
                public final void run() {
                    DocOverviewFragment.m46562E1(DocOverviewFragment.this, event);
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPageThumbnailSizeChangedEvent(@NotNull PageThumbnailSizeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Object thumbnailSizeType = event.getThumbnailSizeType();
        if (thumbnailSizeType instanceof ThumbnailSizeType) {
            this.thumbnailSizeType = this.selectable ? (ThumbnailSizeType) thumbnailSizeType : ThumbnailSizeType.SMALL;
            m46633X1();
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46624T0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.clearInput(layoutSearch);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitSelectionModeEvent(@NotNull QuitSelectionModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.selectable) {
            m46609K1(false);
            m46616O1(OnyxStatisticConstant.ID_CLICK_DOCSOVERVIEW_BATCH_COMPLETE_FULL);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (m46650w1()) {
            m46653z1();
            m46618P1();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRotatePageProgressEvent(@NotNull RotatePageProgressEvent event) {
        VirtualPage virtualPage;
        Object first;
        Intrinsics.checkNotNullParameter(event, "event");
        Map map = CollectionKt.toMap(event.getVirtualPages(), new Function1<VirtualPage, String>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$onRotatePageProgressEvent$pageMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getBox().getId();
            }
        });
        Iterator<T> it2 = event.getRotatePageArgs().getPageIndexList().iterator();
        while (it2.hasNext()) {
            int intValue = ((Number) it2.next()).intValue();
            DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
            DocOverviewPageListAdapter docOverviewPageListAdapter2 = null;
            if (docOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter = null;
            }
            PageDataModel item = docOverviewPageListAdapter.getItem(intValue);
            if (item != null && (virtualPage = (VirtualPage) map.get(item.getPageId())) != null) {
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) VirtualPage.INSTANCE.toVirtualPageModelList(CollectionKt.asList(virtualPage)));
                PageDataModel.INSTANCE.updateByVirtualPage(item, (VirtualPageModel) first);
                DocOverviewPageListAdapter docOverviewPageListAdapter3 = this.adapter;
                if (docOverviewPageListAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docOverviewPageListAdapter3 = null;
                }
                docOverviewPageListAdapter3.scalePageDisplayRectF(CollectionKt.asList(item));
                DocOverviewPageListAdapter docOverviewPageListAdapter4 = this.adapter;
                if (docOverviewPageListAdapter4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docOverviewPageListAdapter2 = docOverviewPageListAdapter4;
                }
                docOverviewPageListAdapter2.notifyItemChanged(intValue);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectAllDataEvent(@NotNull SelectAllDataEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isResumed() && this.selectable) {
            DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
            if (docOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter = null;
            }
            docOverviewPageListAdapter.selectAll(event.getSelect());
            m46643d2();
            m46616O1(OnyxStatisticConstant.ID_CLICK_DOCSOVERVIEW_BATCH_ALLSELECT_FULL);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectPastedPageEvent(@NotNull SelectPastedPageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.selectable) {
            DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
            if (docOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter = null;
            }
            docOverviewPageListAdapter.selectStateByPageIds(event.getPastedPageIds());
            m46643d2();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSidebarVisibleLevelChangedEvent(@NotNull SidebarVisibleLevelChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        setCurrentVisibleLevel(event.getLevel());
        m46624T0().swipeContainer.getRecycleView().setSpanCount(m46644e2(event.getLevel()));
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        docOverviewPageListAdapter.requireRecyclerViewSafety(new Function1<RecyclerView, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$onSidebarVisibleLevelChangedEvent$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RecyclerView recyclerView) {
                invoke2(recyclerView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull RecyclerView rv) {
                Intrinsics.checkNotNullParameter(rv, "rv");
                DocOverviewPageListAdapter docOverviewPageListAdapter2 = DocOverviewFragment.this.adapter;
                if (docOverviewPageListAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    docOverviewPageListAdapter2 = null;
                }
                rv.scrollToPosition(docOverviewPageListAdapter2.getCurrentPageIndex());
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartActivateDocumentEvent(@NotNull StartActivateDocumentEvent event) {
        List emptyList;
        Intrinsics.checkNotNullParameter(event, "event");
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        if (docOverviewPageListAdapter != null) {
            if (docOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docOverviewPageListAdapter = null;
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            DocOverviewPageListAdapter.submitInObservable$default(docOverviewPageListAdapter, emptyList, null, 2, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTocEntryInsertedEvent(@NotNull TocEntryInsertedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isResumed()) {
            m46612M0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateSearchProgressEvent(@NotNull UpdateSearchProgressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.viewModel.updateSearchProgress(event.getTotalProgress(), event.getDeltaProgress());
        m46624T0().layoutSearch.searchResult.setText(this.viewModel.getFormattedSearchProgress());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (m46650w1()) {
            m46600C1();
        }
        GlobalBundle.INSTANCE.register(this);
        AccountDataBundle.INSTANCE.register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        DocOverviewPageListAdapter docOverviewPageListAdapter2 = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        if (docOverviewPageListAdapter.getItemTouchActionState() == 2) {
            return;
        }
        DocOverviewPageListAdapter docOverviewPageListAdapter3 = this.adapter;
        if (docOverviewPageListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter3 = null;
        }
        final int itemCount = docOverviewPageListAdapter3.getItemCount();
        DocOverviewPageListAdapter docOverviewPageListAdapter4 = this.adapter;
        if (docOverviewPageListAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docOverviewPageListAdapter2 = docOverviewPageListAdapter4;
        }
        final int currentPageIndex = docOverviewPageListAdapter2.getCurrentPageIndex();
        ViewKt.postSelf(m46624T0().swipeContainer.getRecycleView(), new Function1<AutoFitRecycleView, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocOverviewFragment$onVirtualDocViewInfoEvent$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AutoFitRecycleView autoFitRecycleView) {
                invoke2(autoFitRecycleView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull AutoFitRecycleView it2) {
                boolean m46651x1;
                Intrinsics.checkNotNullParameter(it2, "it");
                m46651x1 = DocOverviewFragment.this.m46651x1();
                if (m46651x1) {
                    DocOverviewFragment.this.m46627U1();
                    return;
                }
                int i = itemCount;
                EditorBundle editorBundle = DocOverviewFragment.this.editorBundle;
                if (editorBundle == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle = null;
                }
                if (i == EditorBundleKt.pageCount(editorBundle)) {
                    EditorBundle editorBundle2 = DocOverviewFragment.this.editorBundle;
                    if (editorBundle2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                        editorBundle2 = null;
                    }
                    if (EditorBundleKt.currentPageIndex(editorBundle2) == currentPageIndex) {
                        return;
                    }
                }
                int i2 = itemCount;
                EditorBundle editorBundle3 = DocOverviewFragment.this.editorBundle;
                if (editorBundle3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle3 = null;
                }
                if (i2 != EditorBundleKt.pageCount(editorBundle3)) {
                    DocOverviewFragment.m46558B1(DocOverviewFragment.this, false, 1, null);
                } else {
                    DocOverviewFragment.this.m46627U1();
                }
            }
        });
    }

    /* renamed from: s1 */
    public final void m46647s1() {
        m46646i1();
        m46640b1();
        m46624T0().selectionActionLayout.post(new Runnable() { // from class: com.sunia.HTREnginev2.g8f
            @Override // java.lang.Runnable
            public final void run() {
                DocOverviewFragment.m46592t1(DocOverviewFragment.this);
            }
        });
        m46634Y0();
        m46638a1();
        m46645f1();
    }

    public final void setCloseOnSelect(@NotNull Function0<Unit> closeOnSelect) {
        Intrinsics.checkNotNullParameter(closeOnSelect, "closeOnSelect");
        this.closeOnSelect = closeOnSelect;
    }

    public final void setCurrentVisibleLevel(int level) {
        this.currentVisibleLevel = level;
    }

    public final void setDocManagerBundle(@NotNull EditorBundle docManagerBundle) {
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        this.docManagerBundle = docManagerBundle;
    }

    public final void setEditBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setSelectable(boolean selectable) {
        this.selectable = selectable;
    }

    public final void setShowActionMenu(boolean showOperationMenu) {
        this.showActionMenu = showOperationMenu;
    }

    public final void setThumbnailSizeType(@NotNull ThumbnailSizeType sizeType) {
        Intrinsics.checkNotNullParameter(sizeType, "sizeType");
        if (!this.selectable) {
            sizeType = ThumbnailSizeType.SMALL;
        }
        this.thumbnailSizeType = sizeType;
    }

    /* renamed from: u1 */
    public final void m46648u1() {
        Object firstOrNull;
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        EditorBundle editorBundle = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) docOverviewPageListAdapter.getSelectedItems());
        PageDataModel pageDataModel = (PageDataModel) firstOrNull;
        if (pageDataModel == null) {
            return;
        }
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle2;
        }
        EditorBundleKt.postEvent(editorBundle, new InsertPageAfterSpecifiedPageEvent(pageDataModel.getPageIndex()));
        m46612M0();
        m46616O1(OnyxStatisticConstant.ID_CLICK_PAGE_ADD_BATCH_FULL);
    }

    /* renamed from: v1 */
    public final boolean m46649v1() {
        DocOverviewPageListAdapter docOverviewPageListAdapter = this.adapter;
        EditorBundle editorBundle = null;
        if (docOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docOverviewPageListAdapter = null;
        }
        int currentPageIndex = docOverviewPageListAdapter.getCurrentPageIndex();
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle2;
        }
        return currentPageIndex != EditorBundleKt.currentPageIndex(editorBundle);
    }

    /* renamed from: w1 */
    public final boolean m46650w1() {
        return (this.editorBundle == null || this.docManagerBundle == null || this.closeOnSelect == null) ? false : true;
    }

    /* renamed from: x1 */
    public final boolean m46651x1() {
        CharSequence trim;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(m46624T0().layoutSearch.inputEditTextView.getText()));
        return StringKt.isNotBlank(Strings.nullToEmpty(trim.toString()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: y1 */
    public final void m46652y1() {
        EditorBundle editorBundle = this.editorBundle;
        String str = null;
        Object[] objArr = 0;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        new LoadBookmarkListAction(editorBundle, str, 2, objArr == true ? 1 : 0).build().doOnSubscribe(new C12157f()).doOnNext(new C12158g()).subscribe();
    }

    /* renamed from: z1 */
    public final void m46653z1() {
        m46558B1(this, false, 1, null);
        m46652y1();
    }
}

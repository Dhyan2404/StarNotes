package com.onyx.galaxy.note.editor.p046ui;

import android.content.ClipData;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.core.provider.DocumentsContractCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupKt;
import androidx.fragment.app.C1126e;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.common.base.Strings;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.NoteOutlineAddFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.event.StatisticsNoteOutlineAddEvent;
import com.onyx.android.sdk.extension.RecyclerViewKt;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.replicator.note.utils.TocListUtils;
import com.onyx.android.sdk.theme.widgets.DynamicImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.common.drag.DragAndDropUtils;
import com.onyx.android.sdk.universal.common.events.ConfigurationChangedEvent;
import com.onyx.android.sdk.universal.common.events.EditDoneEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.page.LoadVirtualPageModelListAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.LoadPageThumbnailAction;
import com.onyx.android.sdk.universal.editor.action.toc.SaveTocEntryExpandStateAction;
import com.onyx.android.sdk.universal.editor.action.toc.UpdateTocEntryAction;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.android.sdk.universal.editor.events.app.BeginDeleteTocEntryEvent;
import com.onyx.android.sdk.universal.editor.events.app.DeleteTocEntryFormPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.EndDeleteTocEntryEvent;
import com.onyx.android.sdk.universal.editor.events.app.GotoPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.TocEntryDeletedEvent;
import com.onyx.android.sdk.universal.editor.events.app.TocEntryInsertedEvent;
import com.onyx.android.sdk.universal.editor.events.app.TocEntryUpdatedEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.AddEvent;
import com.onyx.android.sdk.universal.editor.events.note.AllDataSelectedEvent;
import com.onyx.android.sdk.universal.editor.events.note.EnterSelectionModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitSelectionModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectAllDataEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.data.NoteOutlineType;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BaseNodeAdapter;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.common.view.TreeNodeDragListener;
import com.onyx.galaxy.note.databinding.FragmentDocTocBinding;
import com.onyx.galaxy.note.databinding.LayoutDocSearchBinding;
import com.onyx.galaxy.note.editor.p046ui.DocTocFragment;
import com.onyx.galaxy.note.editor.view.adapter.DocTocAdapter;
import com.onyx.galaxy.note.editor.view.dialog.AddDocTocEntryDialog;
import com.onyx.galaxy.note.editor.view.dialog.UpdateDocTocEntryTitleDialog;
import com.onyx.galaxy.note.editor.view.dialog.ViewImageDialog;
import com.onyx.galaxy.note.editor.view.popup.DocTocActionPopup;
import com.onyx.galaxy.note.editor.viewmodel.DocTocViewModel;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.onyx.galaxy.note.utils.DocOutlineSearchUtils;
import com.scwang.smart.refresh.header.ClassicsHeader;
import com.scwang.smart.refresh.layout.api.RefreshLayout;
import com.scwang.smart.refresh.layout.listener.OnRefreshListener;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000þ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\b*\u0002\u009c\u0001\u0018\u0000 ¢\u00012\u00020\u0001:\u0002¢\u0001B\t¢\u0006\u0006\b \u0001\u0010¡\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u0016\u0010\f\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\u0016\u0010\u0017\u001a\u00020\u00042\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0016\u0010\u0019\u001a\u00020\u00042\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0002J\u0016\u0010\u001e\u001a\u00020\u00042\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0016\u0010\u001f\u001a\u00020\u00042\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0016\u0010!\u001a\u00020\u00042\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\b\u0010\"\u001a\u00020\u0004H\u0002J\u0018\u0010$\u001a\u00020\u00022\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\u0016\u0010%\u001a\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\u000e\u0010&\u001a\b\u0012\u0004\u0012\u00020\n0\u0014H\u0002J\u0018\u0010(\u001a\u00020\u00042\u000e\u0010'\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\b\u0010)\u001a\u00020\u0004H\u0002J \u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*2\u000e\u0010'\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\u0018\u0010-\u001a\u00020\u00042\u000e\u0010'\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u0002H\u0002J\u0010\u00101\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0002H\u0002J\b\u00102\u001a\u00020\u0004H\u0002J\u0010\u00105\u001a\u00020\u00042\u0006\u00104\u001a\u000203H\u0002J\u0010\u00106\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u000203H\u0002J\u0010\u00109\u001a\u00020\u00042\u0006\u00108\u001a\u000207H\u0002J\u001a\u0010;\u001a\u00020\u00042\u0010\b\u0002\u0010:\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\b\u0010<\u001a\u00020\u0004H\u0002J\u001c\u0010=\u001a\u00020\u00042\u0012\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u0014H\u0002J\u0018\u0010?\u001a\u00020\u00042\u000e\u0010>\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\b\u0010@\u001a\u00020\u0004H\u0002J\b\u0010A\u001a\u00020\u0002H\u0002J\b\u0010B\u001a\u00020\u0004H\u0002J\u000e\u0010E\u001a\u00020\u00042\u0006\u0010D\u001a\u00020CJ\u000e\u0010G\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u0002J\u0014\u0010J\u001a\u00020\u00042\f\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00040HJ$\u0010Q\u001a\u00020*2\u0006\u0010L\u001a\u00020K2\b\u0010N\u001a\u0004\u0018\u00010M2\b\u0010P\u001a\u0004\u0018\u00010OH\u0016J\u001a\u0010S\u001a\u00020\u00042\u0006\u0010R\u001a\u00020*2\b\u0010P\u001a\u0004\u0018\u00010OH\u0016J\b\u0010T\u001a\u00020\u0004H\u0016J\b\u0010U\u001a\u00020\u0004H\u0016J\b\u0010V\u001a\u00020\u0004H\u0016J\b\u0010W\u001a\u00020\u0004H\u0016J\u0010\u0010Z\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020XH\u0016J\u0010\u0010]\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020[H\u0007J\u0010\u0010_\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020^H\u0007J\u0010\u0010a\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020`H\u0007J\u0010\u0010c\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020bH\u0007J\u0010\u0010e\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020dH\u0007J\u0010\u0010g\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020fH\u0007J\u0010\u0010i\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020hH\u0007J\u0010\u0010k\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020jH\u0007J\u0010\u0010m\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020lH\u0007J\u0010\u0010o\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020nH\u0007J\u0010\u0010q\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020pH\u0007J\u0010\u0010s\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020rH\u0007J\u0010\u0010u\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020tH\u0007R\u001b\u0010z\u001a\u00020v8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010w\u001a\u0004\bx\u0010yR\u001b\u0010~\u001a\u00020{8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010w\u001a\u0004\b|\u0010}R\u001d\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u007fR\u001f\u0010\u0083\u0001\u001a\t\u0012\u0004\u0012\u0002030\u0081\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b@\u0010\u0082\u0001R'\u0010\u0088\u0001\u001a\u0010\u0012\u0004\u0012\u000203\u0012\u0005\u0012\u00030\u0085\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u001f\u0010\u0089\u0001\u001a\t\u0012\u0004\u0012\u0002030\u0081\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b(\u0010\u0082\u0001R\u0017\u0010D\u001a\u00020C8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u0017\u0010\u008a\u0001R\u0017\u0010F\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b6\u0010\u008b\u0001R\u001d\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00040H8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b/\u0010\u008c\u0001R\u001a\u0010\u008e\u0001\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\f\u0010\u008d\u0001R\u0019\u0010\u0091\u0001\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R \u0010\u0096\u0001\u001a\u00030\u0092\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0093\u0001\u0010w\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001R\u0019\u0010\u0098\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u008b\u0001R\u001b\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0099\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b;\u0010\u009a\u0001R\u0018\u0010\u009f\u0001\u001a\u00030\u009c\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001¨\u0006£\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "b1", "", "V0", "N0", "U0", "S0", "Lcom/onyx/android/sdk/base/data/Tree;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "data", "m1", "T0", "C0", "y0", "B0", "d1", "e1", "f1", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "list", "j1", SyncConstant.LOCAL_TOC_DIR_NAME, "D1", "z1", "w1", "H0", DocumentsContractCompat.f5557a, "F0", "G0", "node", "E1", "C1", "treeNode", "c1", "z0", "K0", "tocEntry", "i1", "A0", "Landroid/view/View;", "itemView", "A1", "M0", "enable", "l1", "selectAll", "x1", "u1", "", "eventId", "t1", "k1", "", "count", "B1", "item", "q1", FirebaseInstallationServiceClient.f35986m, "D0", "value", "E0", "g1", "y1", "s1", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditBundle", "selectable", "setSelectable", "Lkotlin/Function0;", "closeOnSelect", "setCloseOnSelect", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "onCreateView", "view", "onViewCreated", "onResume", "onPause", "onDestroyView", "onDestroy", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Lcom/onyx/android/sdk/universal/editor/events/note/AddEvent;", NotificationCompat.CATEGORY_EVENT, "onAddEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;", "onEnterSelectionModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;", "onQuitSelectionModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectAllDataEvent;", "onSelectAllDataEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryDeletedEvent;", "onTocEntryDeletedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryUpdatedEvent;", "onTocEntryUpdatedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;", "onTocEntryInsertedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DeleteTocEntryFormPageEvent;", "onDeleteTocEntryFormPageEvent", "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;", "onConfigurationChangedEvent", "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;", "onEditDoneEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", "onVirtualDocViewInfoEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/BeginDeleteTocEntryEvent;", "onTocEntryDeletedBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EndDeleteTocEntryEvent;", "onTocEntryDeletedEndEvent", "Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;", "Lkotlin/Lazy;", "J0", "()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;", "binding", "Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;", "L0", "()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;", "viewmodel", "Lcom/onyx/android/sdk/base/data/Tree;", "docToc", "", "Ljava/util/Set;", MessageConst.KEY_TITLE_LIST, "", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "h1", "Ljava/util/Map;", "pageDataMap", "updateExpandStateIdList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", Constants.HASIDCALL_INDEX_SIG, "Lkotlin/jvm/functions/Function0;", Constants.STRING_SIG, "lastRecordTocId", "n1", "I", "lastRecordOffset", "Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;", "o1", "I0", "()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;", "adapter", "p1", "locateCurrentToc", "Lcom/onyx/galaxy/note/common/view/LoadingDialog;", "Lcom/onyx/galaxy/note/common/view/LoadingDialog;", "deleteDialog", "com/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1", "r1", "Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;", "onDragListener", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocTocFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocTocFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocTocFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,873:1\n310#2:874\n326#2,4:875\n311#2:879\n310#2:880\n326#2,4:881\n311#2:885\n256#2,2:888\n256#2,2:890\n1855#3,2:886\n1855#3,2:892\n1855#3,2:894\n1603#3,9:896\n1855#3:905\n1856#3:907\n1612#3:908\n1855#3,2:910\n1855#3:912\n350#3,7:913\n1856#3:920\n350#3,7:921\n1#4:906\n1#4:909\n*S KotlinDebug\n*F\n+ 1 DocTocFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocTocFragment\n*L\n407#1:874\n407#1:875,4\n407#1:879\n411#1:880\n411#1:881,4\n411#1:885\n483#1:888,2\n484#1:890,2\n469#1:886,2\n503#1:892,2\n550#1:894,2\n560#1:896,9\n560#1:905\n560#1:907\n560#1:908\n664#1:910,2\n678#1:912\n679#1:913,7\n678#1:920\n823#1:921,7\n560#1:906\n*E\n"})
/* loaded from: classes9.dex */
public final class DocTocFragment extends BaseFragment {

    @NotNull
    public static final String TAG = "DocTocFragment";

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewmodel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public Tree<VirtualTocModel> docToc;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public Set<String> titleList;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public Map<String, PageDataModel> pageDataMap;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public Set<String> updateExpandStateIdList;

    /* renamed from: j1, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: k1, reason: from kotlin metadata */
    public boolean selectable;

    /* renamed from: l1, reason: from kotlin metadata */
    public Function0<Unit> closeOnSelect;

    /* renamed from: m1, reason: from kotlin metadata */
    @Nullable
    public String lastRecordTocId;

    /* renamed from: n1, reason: from kotlin metadata */
    public int lastRecordOffset;

    /* renamed from: o1, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* renamed from: p1, reason: from kotlin metadata */
    public boolean locateCurrentToc;

    /* renamed from: q1, reason: from kotlin metadata */
    @Nullable
    public LoadingDialog deleteDialog;

    /* renamed from: r1, reason: from kotlin metadata */
    @NotNull
    public final DocTocFragment$onDragListener$1 onDragListener;

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocTocFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12172a<T> implements Consumer {
        public C12172a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<VirtualPageModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocTocFragment.this.m46731j1(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocTocFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12173b<T> implements Consumer {
        public C12173b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Tree<VirtualTocModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocTocFragment.this.m46714I0().setKeyword(DocTocFragment.this.m46717L0().m72422getSearchKey());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocTocFragment$c */
    /* loaded from: classes9.dex */
    public static final class C12174c<T> implements Consumer {
        public C12174c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Tree<VirtualTocModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocTocFragment.this.m46708D1(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocTocFragment$d */
    /* loaded from: classes9.dex */
    public static final class C12175d<T> implements Consumer {
        public C12175d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Tree<VirtualTocModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocTocFragment.this.m46745z1();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocTocFragment$e */
    /* loaded from: classes9.dex */
    public static final class C12176e<T> implements Consumer {
        public C12176e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Tree<VirtualTocModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocTocFragment.this.m46739v1();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocTocFragment$f */
    /* loaded from: classes9.dex */
    public static final class C12177f<T> implements Consumer {
        public C12177f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Tree<VirtualTocModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocTocFragment.this.m46729g1();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocTocFragment$g */
    /* loaded from: classes9.dex */
    public static final class C12178g implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f59068a;

        public C12178g(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f59068a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f59068a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f59068a.invoke(obj);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocTocFragment$h */
    /* loaded from: classes9.dex */
    public static final class C12179h<T> implements Consumer {
        public C12179h() {
        }

        /* renamed from: a */
        public final void m46752a(boolean z) {
            DocTocFragment.this.updateExpandStateIdList.clear();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m46752a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DocTocFragment$i */
    /* loaded from: classes9.dex */
    public static final class C12180i<T> implements Consumer {
        public C12180i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Bitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Context requireContext = DocTocFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new ViewImageDialog(requireContext, it2).show();
        }
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [com.onyx.galaxy.note.editor.ui.DocTocFragment$onDragListener$1] */
    public DocTocFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentDocTocBinding>() { // from class: com.onyx.galaxy.note.editor.ui.DocTocFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentDocTocBinding invoke() {
                FragmentDocTocBinding inflate = FragmentDocTocBinding.inflate(LayoutInflater.from(DocTocFragment.this.getContext()));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<DocTocViewModel>() { // from class: com.onyx.galaxy.note.editor.ui.DocTocFragment$viewmodel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DocTocViewModel invoke() {
                return (DocTocViewModel) new ViewModelProvider(DocTocFragment.this).get(DocTocViewModel.class);
            }
        });
        this.viewmodel = lazy2;
        this.docToc = new Tree<>();
        this.titleList = new LinkedHashSet();
        this.pageDataMap = new LinkedHashMap();
        this.updateExpandStateIdList = new LinkedHashSet();
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<DocTocAdapter>() { // from class: com.onyx.galaxy.note.editor.ui.DocTocFragment$adapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DocTocAdapter invoke() {
                EditorBundle editorBundle;
                Map map;
                DocTocFragment$onDragListener$1 docTocFragment$onDragListener$1;
                Set set;
                editorBundle = DocTocFragment.this.editorBundle;
                if (editorBundle == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle = null;
                }
                map = DocTocFragment.this.pageDataMap;
                docTocFragment$onDragListener$1 = DocTocFragment.this.onDragListener;
                set = DocTocFragment.this.titleList;
                return new DocTocAdapter(editorBundle, map, docTocFragment$onDragListener$1, set);
            }
        });
        this.adapter = lazy3;
        this.locateCurrentToc = true;
        this.onDragListener = new TreeNodeDragListener<VirtualTocModel>() { // from class: com.onyx.galaxy.note.editor.ui.DocTocFragment$onDragListener$1
            @Override // com.onyx.galaxy.note.common.view.TreeNodeDragListener
            public boolean canDragIn(int dragState, @NotNull Tree<VirtualTocModel> originTreeNode, @NotNull Tree<VirtualTocModel> targetTreeNode) {
                Intrinsics.checkNotNullParameter(originTreeNode, "originTreeNode");
                Intrinsics.checkNotNullParameter(targetTreeNode, "targetTreeNode");
                VirtualTocModel item = originTreeNode.getItem();
                VirtualTocModel item2 = targetTreeNode.getItem();
                if (item != null && item2 != null) {
                    if (dragState != 1) {
                        if (dragState == 2) {
                            return originTreeNode.getMaxDepth() + targetTreeNode.getLevel() <= 20;
                        }
                        if (dragState != 3) {
                            if (originTreeNode.getLevel() != targetTreeNode.getLevel()) {
                                return true;
                            }
                        } else if (item.getPageIndex() >= item2.getPageIndex()) {
                            return true;
                        }
                    } else if (item2.getPageIndex() >= item.getPageIndex()) {
                        return true;
                    }
                }
                return false;
            }

            @Override // com.onyx.galaxy.note.common.view.TreeNodeDragListener
            public void dragItemView(@NotNull View itemView, int dragState) {
                Intrinsics.checkNotNullParameter(itemView, "itemView");
                super.dragItemView(itemView, dragState);
                if (dragState == 1) {
                    m46754i(itemView, itemView.getMeasuredHeight());
                } else {
                    if (dragState != 3) {
                        return;
                    }
                    m46754i(itemView, -itemView.getMeasuredHeight());
                }
            }

            /* renamed from: i */
            public final void m46754i(View itemView, int offset) {
                FragmentDocTocBinding m46715J0;
                View findContainingItemView;
                FragmentDocTocBinding m46715J02;
                m46715J0 = DocTocFragment.this.m46715J0();
                RecyclerView.LayoutManager layoutManager = m46715J0.rvTocContainer.getAutoFitRecycleView().getLayoutManager();
                if (layoutManager == null || (findContainingItemView = layoutManager.findContainingItemView(itemView)) == null) {
                    return;
                }
                m46715J02 = DocTocFragment.this.m46715J0();
                m46715J02.rvTocContainer.getAutoFitRecycleView().requestChildFocus(findContainingItemView, findContainingItemView);
            }

            @Override // com.onyx.galaxy.note.common.view.TreeNodeDragListener
            public boolean onDragLocation(@NotNull DragEvent event, @NotNull View itemView, boolean canDragIn, float beforeThreshold, float afterThreshold) {
                FragmentDocTocBinding m46715J0;
                View findContainingItemView;
                int position;
                Intrinsics.checkNotNullParameter(event, "event");
                Intrinsics.checkNotNullParameter(itemView, "itemView");
                m46715J0 = DocTocFragment.this.m46715J0();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) m46715J0.rvTocContainer.getAutoFitRecycleView().getLayoutManager();
                if (gridLayoutManager != null && (findContainingItemView = gridLayoutManager.findContainingItemView(itemView)) != null && (position = gridLayoutManager.getPosition(findContainingItemView)) >= 0) {
                    int findFirstCompletelyVisibleItemPosition = gridLayoutManager.findFirstCompletelyVisibleItemPosition();
                    int findLastCompletelyVisibleItemPosition = gridLayoutManager.findLastCompletelyVisibleItemPosition();
                    if (findFirstCompletelyVisibleItemPosition == position) {
                        gridLayoutManager.scrollToPosition(position - 1);
                    } else if (findLastCompletelyVisibleItemPosition == position) {
                        gridLayoutManager.scrollToPosition(position + 1);
                    }
                }
                return super.onDragLocation(event, itemView, canDragIn, beforeThreshold, afterThreshold);
            }

            @Override // com.onyx.galaxy.note.common.view.TreeNodeDragListener
            public void onItemUpdated(@NotNull Tree<VirtualTocModel> originTreeNode, @NotNull Tree<VirtualTocModel> targetTreeNode, int targetPos, int dragState, @NotNull List<? extends VirtualTocModel> list) {
                EditorBundle editorBundle;
                boolean z;
                Intrinsics.checkNotNullParameter(originTreeNode, "originTreeNode");
                Intrinsics.checkNotNullParameter(targetTreeNode, "targetTreeNode");
                Intrinsics.checkNotNullParameter(list, "list");
                if (canDragIn(dragState, originTreeNode, targetTreeNode)) {
                    editorBundle = DocTocFragment.this.editorBundle;
                    if (editorBundle == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                        editorBundle = null;
                    }
                    new UpdateTocEntryAction(editorBundle, list, true).build().subscribe();
                    DocTocFragment docTocFragment = DocTocFragment.this;
                    z = docTocFragment.selectable;
                    docTocFragment.m46737t1(z ? OnyxStatisticConstant.ID_DRAG_OUTLINE_FULL : OnyxStatisticConstant.ID_DRAG_OUTLINE_SORT);
                }
            }

            @Override // com.onyx.galaxy.note.common.view.TreeNodeDragListener
            @Nullable
            public Object getItemUniqueKey(@NotNull VirtualTocModel item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return item.getUniqueId();
            }

            @Override // com.onyx.galaxy.note.common.view.TreeNodeDragListener
            public float getOrderIndex(@NotNull VirtualTocModel item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return item.getOrderIndex();
            }

            @Override // com.onyx.galaxy.note.common.view.TreeNodeDragListener
            public void setOrderIndex(@NotNull VirtualTocModel item, float index) {
                Intrinsics.checkNotNullParameter(item, "item");
                item.setOrderIndex(index);
            }

            @Override // com.onyx.galaxy.note.common.view.TreeNodeDragListener
            public void updateParentIdByTargetParentId(@NotNull VirtualTocModel originItem, @NotNull VirtualTocModel targetItem) {
                Intrinsics.checkNotNullParameter(originItem, "originItem");
                Intrinsics.checkNotNullParameter(targetItem, "targetItem");
                originItem.setParentId(targetItem.getParentId());
            }

            @Override // com.onyx.galaxy.note.common.view.TreeNodeDragListener
            public void updateParentIdByTargetUniqueKey(@NotNull VirtualTocModel originItem, @NotNull VirtualTocModel targetItem) {
                Intrinsics.checkNotNullParameter(originItem, "originItem");
                Intrinsics.checkNotNullParameter(targetItem, "targetItem");
                originItem.setParentId(targetItem.getUniqueId());
            }
        };
    }

    /* renamed from: O0 */
    public static final boolean m46674O0(DocTocFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.m46702A1(view, (Tree) this$0.m46714I0().getItem(i));
        return true;
    }

    /* renamed from: P0 */
    public static final void m46675P0(DocTocFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        BaseNodeAdapter.expandOrCollapse$default(this$0.m46714I0(), i, false, false, null, 14, null);
        Tree item = this$0.m46714I0().getItem(i);
        if (item == null) {
            return;
        }
        Set<String> set = this$0.updateExpandStateIdList;
        VirtualTocModel virtualTocModel = (VirtualTocModel) item.getItem();
        String uniqueId = virtualTocModel != null ? virtualTocModel.getUniqueId() : null;
        if (uniqueId == null) {
            uniqueId = "";
        }
        set.add(uniqueId);
        this$0.m46740w1();
        if (this$0.m46714I0().isSelectionMode()) {
            this$0.m46706C1();
        }
    }

    /* renamed from: Q0 */
    public static final void m46676Q0(DocTocFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        Tree<VirtualTocModel> tree = (Tree) this$0.m46714I0().getItem(i);
        if (tree != null) {
            this$0.m46710E1(tree);
        }
    }

    /* renamed from: R0 */
    public static final void m46677R0(DocTocFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m46730i1((Tree) this$0.m46714I0().getItem(i));
    }

    /* renamed from: W0 */
    public static final void m46678W0(DocTocFragment this$0, RefreshLayout it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m46726d1();
    }

    /* renamed from: X0 */
    public static final void m46679X0(DocTocFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundle editorBundle = this$0.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new AddDocTocEntryDialog(editorBundle, requireContext, null, this$0.titleList, OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_FULL, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocTocFragment$initView$2$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteOutlineAddEvent(NoteOutlineAddFrom.FULL_DOC_TOC));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }).show();
        this$0.m46737t1(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_FULL);
    }

    /* renamed from: Y0 */
    public static final void m46680Y0(DocTocFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46742y0();
    }

    /* renamed from: Z0 */
    public static final void m46681Z0(DocTocFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46703B0();
    }

    /* renamed from: a1 */
    public static final void m46682a1(DocTocFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46705C0();
    }

    /* renamed from: h1 */
    public static final void m46683h1(DocTocFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerViewKt.scrollToPositionWithOffset(this$0.m46715J0().rvTocContainer.getAutoFitRecycleView(), i, 0);
    }

    /* renamed from: n1 */
    public static final void m46687n1(DocTocFragment this$0, Tree it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m46707D0(it2.childrenToList());
    }

    /* renamed from: o1 */
    public static final void m46689o1(DocTocFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.locateCurrentToc = false;
    }

    /* renamed from: p1 */
    public static final void m46691p1(DocTocFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46713H0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r1 */
    public static /* synthetic */ void m46694r1(DocTocFragment docTocFragment, Tree tree, int i, Object obj) {
        if ((i & 1) != 0) {
            tree = null;
        }
        docTocFragment.m46735q1(tree);
    }

    /* renamed from: A0 */
    public final void m46701A0() {
        boolean isAllSelected = m46714I0().isAllSelected();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, new AllDataSelectedEvent(isAllSelected));
    }

    /* renamed from: A1 */
    public final boolean m46702A1(View itemView, Tree<VirtualTocModel> tocEntry) {
        if (m46714I0().isSelectionMode()) {
            return false;
        }
        return ViewCompat.startDragAndDrop(itemView, ClipData.newIntent(NoteOutlineType.TOC.name(), DragAndDropUtils.INSTANCE.buildCustomDragDropIntent(DragAndDropUtils.DRAG_DROP_TYPE_TOC)), new View.DragShadowBuilder(itemView.findViewById(C10651R.id.content_layout)), tocEntry, 0);
    }

    /* renamed from: B0 */
    public final void m46703B0() {
        List<VirtualTocModel> m46716K0 = m46716K0();
        if (m46716K0.isEmpty()) {
            return;
        }
        DocTocActionPopup.Companion companion = DocTocActionPopup.INSTANCE;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        companion.showDeleteTocWarningDialog(editorBundle, requireContext, m46716K0, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocTocFragment$deleteTocEntries$1
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
                DocTocFragment.this.m46737t1(OnyxStatisticConstant.ID_CLICK_OUTLINE_DELETE_CONFIRM_BATCH_FULL);
            }
        }, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocTocFragment$deleteTocEntries$2
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
                DocTocFragment.this.m46737t1(OnyxStatisticConstant.ID_CLICK_OUTLINE_DELETE_CANCEL_BATCH_FULL);
            }
        });
        m46737t1(OnyxStatisticConstant.ID_CLICK_OUTLINE_DELETE_BATCH_FULL);
        m46737t1(OnyxStatisticConstant.ID_VIEW_OUTLINE_DELETE_BATCH_FULL);
    }

    /* renamed from: B1 */
    public final void m46704B1(int count) {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        TintTextView searchResult = m46715J0().layoutSearch.searchResult;
        Intrinsics.checkNotNullExpressionValue(searchResult, "searchResult");
        docOutlineSearchUtils.setSearchMatchingData(searchResult, count, m46717L0().isSearchMode());
    }

    /* renamed from: C0 */
    public final void m46705C0() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) m46716K0());
        VirtualTocModel virtualTocModel = (VirtualTocModel) firstOrNull;
        if (virtualTocModel == null) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new UpdateDocTocEntryTitleDialog(editorBundle, requireContext, virtualTocModel, OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_BATCH_FULL).show();
        m46737t1(OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_BATCH_FULL);
    }

    /* renamed from: C1 */
    public final void m46706C1() {
        int selectedCount = m46714I0().getSelectedCount();
        m46715J0().deleteChildToc.setEnabled(selectedCount > 0);
        m46715J0().editChildToc.setEnabled(selectedCount == 1);
        m46715J0().addChildToc.setEnabled(selectedCount == 1);
    }

    /* renamed from: D0 */
    public final void m46707D0(List<Tree<VirtualTocModel>> list) {
        Object orNull;
        if (list.isEmpty()) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(list, TocListUtils.INSTANCE.findCurrentTocIndex(list, EditorBundleKt.currentPageIndex(editorBundle)));
        Tree<VirtualTocModel> tree = (Tree) orNull;
        if (tree == null) {
            return;
        }
        m46709E0(tree);
    }

    /* renamed from: D1 */
    public final void m46708D1(Tree<VirtualTocModel> toc) {
        this.titleList.clear();
        this.docToc = toc;
        m46712G0(toc);
        m46740w1();
    }

    /* renamed from: E0 */
    public final void m46709E0(Tree<VirtualTocModel> value) {
        if (value == null) {
            return;
        }
        m46709E0(value.getParent());
        Tree<VirtualTocModel> parent = value.getParent();
        VirtualTocModel item = parent != null ? parent.getItem() : null;
        if (item == null) {
            return;
        }
        item.setExpandState(Boolean.TRUE);
    }

    /* renamed from: E1 */
    public final void m46710E1(Tree<VirtualTocModel> node) {
        VirtualTocModel item = node.getItem();
        if (item == null) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Integer valueOf = Integer.valueOf(item.getPageIndex());
        String pageId = item.getPageId();
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle2 = editorBundle3;
        }
        new LoadPageThumbnailAction(editorBundle, valueOf, pageId, EditorBundleKt.viewSize(editorBundle2)).build().doOnNext(new C12180i()).subscribe();
    }

    /* renamed from: F0 */
    public final void m46711F0(Tree<VirtualTocModel> tree) {
        for (Tree<VirtualTocModel> tree2 : tree.getChildren()) {
            Set<String> set = this.titleList;
            VirtualTocModel item = tree2.getItem();
            String title = item != null ? item.getTitle() : null;
            if (title == null) {
                title = "";
            }
            set.add(title);
            if (CollectionKt.isNonBlank(tree2.getChildren())) {
                m46711F0(tree2);
            }
        }
    }

    /* renamed from: G0 */
    public final void m46712G0(Tree<VirtualTocModel> toc) {
        m46711F0(toc);
        m46714I0().submitList(toc.childrenToList());
    }

    /* renamed from: H0 */
    public final void m46713H0() {
        m46715J0().refreshLayout.finishRefresh();
        m46715J0().refreshLayout.setEnableRefresh(false);
    }

    /* renamed from: I0 */
    public final DocTocAdapter m46714I0() {
        return (DocTocAdapter) this.adapter.getValue();
    }

    /* renamed from: J0 */
    public final FragmentDocTocBinding m46715J0() {
        return (FragmentDocTocBinding) this.binding.getValue();
    }

    /* renamed from: K0 */
    public final List<VirtualTocModel> m46716K0() {
        Collection<Tree<VirtualTocModel>> selectedItems = m46714I0().getSelectedItems();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = selectedItems.iterator();
        while (it2.hasNext()) {
            VirtualTocModel virtualTocModel = (VirtualTocModel) ((Tree) it2.next()).getItem();
            if (virtualTocModel != null) {
                arrayList.add(virtualTocModel);
            }
        }
        return arrayList;
    }

    /* renamed from: L0 */
    public final DocTocViewModel m46717L0() {
        return (DocTocViewModel) this.viewmodel.getValue();
    }

    /* renamed from: M0 */
    public final void m46718M0(Tree<VirtualTocModel> tocEntry) {
        VirtualTocModel item;
        if (tocEntry == null || (item = tocEntry.getItem()) == null) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        Function0<Unit> function0 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, new GotoPageEvent(item.getPageIndex()));
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

    /* renamed from: N0 */
    public final void m46719N0() {
        m46715J0().rvTocContainer.getAutoFitRecycleView().setDisplayType(NoteDisplayType.DISPLAY_LIST);
        m46714I0().setSelectable(this.selectable);
        m46714I0().setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() { // from class: com.sunia.HTREnginev2.q9f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemLongClickListener
            public final boolean onLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m46674O0;
                m46674O0 = DocTocFragment.m46674O0(DocTocFragment.this, baseQuickAdapter, view, i);
                return m46674O0;
            }
        });
        m46714I0().addOnItemChildClickListener(C10651R.id.iv_indicator, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.r9f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DocTocFragment.m46675P0(DocTocFragment.this, baseQuickAdapter, view, i);
            }
        });
        m46714I0().addOnItemChildClickListener(C10651R.id.iv_image, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.s9f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DocTocFragment.m46676Q0(DocTocFragment.this, baseQuickAdapter, view, i);
            }
        });
        m46714I0().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.t9f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DocTocFragment.m46677R0(DocTocFragment.this, baseQuickAdapter, view, i);
            }
        });
        m46715J0().rvTocContainer.getAutoFitRecycleView().setAdapter(m46714I0());
    }

    /* renamed from: S0 */
    public final void m46720S0() {
        DocTocViewModel m46717L0 = m46717L0();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        m46717L0.setEditorBundle(editorBundle);
        m46717L0().getTocData().observe(getViewLifecycleOwner(), new C12178g(new DocTocFragment$initData$1(this)));
        m46717L0().getMatchingData().observe(getViewLifecycleOwner(), new C12178g(new DocTocFragment$initData$2(this)));
    }

    /* renamed from: T0 */
    public final void m46721T0() {
        List<Integer> listOf;
        List<String> listOf2;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(C10651R.drawable.icon_note_empty_view_top_sub_title));
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C10651R.string.note_empty_view_top_sub_title_prefix);
        Intrinsics.checkNotNull(string);
        String string2 = resManager.getString(C10651R.string.note_empty_view_top_sub_title_suffix);
        Intrinsics.checkNotNull(string2);
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{string, string2});
        if (!this.selectable) {
            DynamicImageView imageView = m46715J0().emptyView.getImageView();
            Intrinsics.checkNotNullExpressionValue(imageView, "<get-imageView>(...)");
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams.width = resManager.getDimens(C7384R.dimen.dp_148);
            layoutParams.height = resManager.getDimens(C7384R.dimen.dp_148);
            imageView.setLayoutParams(layoutParams);
            DynamicImageView imageView2 = m46715J0().searchView.getImageView();
            Intrinsics.checkNotNullExpressionValue(imageView2, "<get-imageView>(...)");
            ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams2.width = resManager.getDimens(C7384R.dimen.dp_148);
            layoutParams2.height = resManager.getDimens(C7384R.dimen.dp_148);
            imageView2.setLayoutParams(layoutParams2);
        }
        m46715J0().emptyView.updateSubDrawableTitle(listOf2, listOf);
    }

    /* renamed from: U0 */
    public final void m46722U0() {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46715J0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        DocOutlineSearchUtils.initLayout$default(docOutlineSearchUtils, layoutSearch, this.selectable, false, new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocTocFragment$initInputLayout$1
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
                DocTocFragment.this.m46732k1(it2);
            }
        }, 2, null);
    }

    /* renamed from: V0 */
    public final void m46723V0() {
        m46721T0();
        m46715J0().refreshLayout.setEnableLoadMore(false);
        m46715J0().refreshLayout.setRefreshHeader(new ClassicsHeader(requireContext()));
        m46715J0().refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.sunia.HTREnginev2.l9f
            @Override // com.scwang.smart.refresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                DocTocFragment.m46678W0(DocTocFragment.this, refreshLayout);
            }
        });
        ViewKt.setViewVisibleOrGone(m46715J0().buttonLayout, this.selectable);
        ViewKt.setViewVisibleOrGone(m46715J0().addToc, this.selectable);
        m46715J0().addToc.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m9f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocTocFragment.m46679X0(DocTocFragment.this, view);
            }
        });
        m46715J0().addChildToc.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n9f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocTocFragment.m46680Y0(DocTocFragment.this, view);
            }
        });
        m46715J0().deleteChildToc.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o9f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocTocFragment.m46681Z0(DocTocFragment.this, view);
            }
        });
        m46715J0().editChildToc.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.p9f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocTocFragment.m46682a1(DocTocFragment.this, view);
            }
        });
        m46719N0();
        m46722U0();
    }

    /* renamed from: b1 */
    public final boolean m46724b1() {
        return (this.editorBundle == null || this.closeOnSelect == null) ? false : true;
    }

    /* renamed from: c1 */
    public final boolean m46725c1(Tree<VirtualTocModel> treeNode) {
        Tree<VirtualTocModel> parent;
        if (treeNode == null || (parent = treeNode.getParent()) == null) {
            return false;
        }
        if (m46714I0().isItemSelected(parent)) {
            return true;
        }
        return m46725c1(parent);
    }

    /* renamed from: d1 */
    public final void m46726d1() {
        m46727e1();
        m46728f1();
    }

    /* renamed from: e1 */
    public final void m46727e1() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        new LoadVirtualPageModelListAction(editorBundle).build().doOnNext(new C12172a()).subscribe();
    }

    /* renamed from: f1 */
    public final void m46728f1() {
        m46717L0().loadData();
    }

    /* renamed from: g1 */
    public final void m46729g1() {
        if (m46743y1()) {
            List<Tree<T>> items = m46714I0().getItems();
            if (items.isEmpty()) {
                return;
            }
            EditorBundle editorBundle = this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            final int findCurrentTocIndex = TocListUtils.INSTANCE.findCurrentTocIndex(items, EditorBundleKt.currentPageIndex(editorBundle));
            m46715J0().rvTocContainer.getAutoFitRecycleView().post(new Runnable() { // from class: com.sunia.HTREnginev2.h9f
                @Override // java.lang.Runnable
                public final void run() {
                    DocTocFragment.m46683h1(DocTocFragment.this, findCurrentTocIndex);
                }
            });
        }
    }

    /* renamed from: i1 */
    public final void m46730i1(Tree<VirtualTocModel> tocEntry) {
        Tree<VirtualTocModel> parent;
        if (tocEntry == null) {
            return;
        }
        if (!m46714I0().isSelectionMode()) {
            m46718M0(tocEntry);
            m46735q1(tocEntry);
            return;
        }
        boolean isItemSelected = m46714I0().isItemSelected(tocEntry);
        m46714I0().selectItem(tocEntry, !isItemSelected);
        if (!isItemSelected && m46744z0(tocEntry) && (parent = tocEntry.getParent()) != null) {
            m46714I0().selectItem(parent, true);
        }
        m46706C1();
        m46701A0();
    }

    /* renamed from: j1 */
    public final void m46731j1(List<VirtualPageModel> list) {
        PageDataModel.Companion companion = PageDataModel.INSTANCE;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        for (PageDataModel pageDataModel : companion.fromVirtualPageList(editorBundle, list)) {
            this.pageDataMap.put(pageDataModel.getPageId(), pageDataModel);
        }
    }

    /* renamed from: k1 */
    public final void m46732k1(String data) {
        CharSequence trim;
        this.locateCurrentToc = true;
        if (!m46717L0().isSearchMode() && StringKt.isNotBlank(data)) {
            m46694r1(this, null, 1, null);
        }
        m46715J0().layoutSearch.searchResult.setText("");
        trim = StringsKt__StringsKt.trim((CharSequence) data);
        String nullToEmpty = Strings.nullToEmpty(trim.toString());
        DocTocViewModel m46717L0 = m46717L0();
        Intrinsics.checkNotNull(nullToEmpty);
        m46717L0.onSearch(nullToEmpty);
        RecyclerViewKt.scrollToPositionWithOffset(m46715J0().rvTocContainer.getAutoFitRecycleView(), 0, 0);
    }

    /* renamed from: l1 */
    public final void m46733l1(boolean enable) {
        if (isResumed()) {
            ViewKt.setViewVisibleOrGone(m46715J0().addToc, !enable);
            ViewKt.setViewVisibleOrGone(m46715J0().selectionActionLayout, enable);
            m46714I0().enableSelectionMode(this.selectable && enable);
            m46706C1();
        }
    }

    /* renamed from: m1 */
    public final void m46734m1(Tree<VirtualTocModel> data) {
        Observable doOnNext = Observable.just(data).doOnNext(new C12173b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.doOnNextIf(doOnNext, new Function1<Tree<VirtualTocModel>, Boolean>() { // from class: com.onyx.galaxy.note.editor.ui.DocTocFragment$onTocDataLoaded$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Tree<VirtualTocModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!DocTocFragment.this.m46717L0().isSearchMode());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.i9f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DocTocFragment.m46687n1(DocTocFragment.this, (Tree) obj);
            }
        }).doOnNext(new C12174c()).doOnNext(new C12175d()).doOnNext(new C12176e()).doOnNext(new C12177f()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.j9f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocTocFragment.m46689o1(DocTocFragment.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.k9f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocTocFragment.m46691p1(DocTocFragment.this);
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAddEvent(@NotNull AddEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new AddDocTocEntryDialog(editorBundle, requireContext, null, this.titleList, OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocTocFragment$onAddEvent$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteOutlineAddEvent(NoteOutlineAddFrom.SLIDE_DOC_TOC));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }).show();
        m46737t1(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        m46736s1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onConfigurationChangedEvent(@NotNull ConfigurationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ViewKt.postSelf(m46715J0().rvTocContainer.getAutoFitRecycleView(), new Function1<AutoFitRecycleView, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DocTocFragment$onConfigurationChangedEvent$1
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
                FragmentDocTocBinding m46715J0;
                Intrinsics.checkNotNullParameter(it2, "it");
                m46715J0 = DocTocFragment.this.m46715J0();
                m46715J0.rvTocContainer.getAutoFitRecycleView().setAdapter(DocTocFragment.this.m46714I0());
            }
        });
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m46715J0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteTocEntryFormPageEvent(@NotNull DeleteTocEntryFormPageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46728f1();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.unregister(editorBundle, this);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        GlobalBundle.INSTANCE.unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditDoneEvent(@NotNull EditDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46715J0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.clearInputFocus(layoutSearch);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnterSelectionModeEvent(@NotNull EnterSelectionModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46733l1(true);
        m46737t1(OnyxStatisticConstant.ID_CLICK_OUTLINE_SELECT_FULL);
        m46737t1(OnyxStatisticConstant.ID_VIEW_OUTLINE_BATCH_FULL);
        m46737t1(OnyxStatisticConstant.ID_VIEW_OUTLINE_SELECT_ADD_CHILD_BATCH_FULL);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46715J0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.clearInput(layoutSearch);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitSelectionModeEvent(@NotNull QuitSelectionModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46733l1(false);
        m46737t1(OnyxStatisticConstant.ID_CLICK_OUTLINE_BATCH_COMPLETE_FULL);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (m46724b1()) {
            m46726d1();
            m46738u1();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectAllDataEvent(@NotNull SelectAllDataEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isResumed()) {
            m46741x1(event.getSelect());
            m46706C1();
            m46737t1(OnyxStatisticConstant.ID_CLICK_OUTLINE_BATCH_ALLSELECT_FULL);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTocEntryDeletedBeginEvent(@NotNull BeginDeleteTocEntryEvent event) {
        LoadingDialog createLoadingDialog;
        Intrinsics.checkNotNullParameter(event, "event");
        LoadingDialog loadingDialog = this.deleteDialog;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        Context context = getContext();
        if (context == null || (createLoadingDialog = ContextExtKt.createLoadingDialog(context)) == null) {
            return;
        }
        createLoadingDialog.updateTitle(C8045R.string.removing);
        createLoadingDialog.show();
        this.deleteDialog = createLoadingDialog;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTocEntryDeletedEndEvent(@NotNull EndDeleteTocEntryEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LoadingDialog loadingDialog = this.deleteDialog;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        this.deleteDialog = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTocEntryDeletedEvent(@NotNull TocEntryDeletedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Iterator<T> it2 = event.getEntries().iterator();
        while (it2.hasNext()) {
            this.titleList.remove(((VirtualTocModel) it2.next()).getTitle());
        }
        List<Tree<VirtualTocModel>> deleteTocEntries = m46717L0().deleteTocEntries(m46714I0().getItems(), event.getEntries());
        m46714I0().clearSelected();
        m46714I0().submitList(deleteTocEntries);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, new EndDeleteTocEntryEvent(event.getEntries()));
        m46706C1();
        m46745z1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTocEntryInsertedEvent(@NotNull final TocEntryInsertedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Tree<VirtualTocModel> find = this.docToc.find(new Function1<VirtualTocModel, Boolean>() { // from class: com.onyx.galaxy.note.editor.ui.DocTocFragment$onTocEntryInsertedEvent$parent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull VirtualTocModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getUniqueId(), TocEntryInsertedEvent.this.getEntry().getParentId()));
            }
        });
        if (find == null) {
            String parentId = event.getEntry().getParentId();
            if (parentId == null || parentId.length() == 0) {
                find = this.docToc;
            }
        }
        if (find != null) {
            Tree<VirtualTocModel> tree = new Tree<>();
            tree.setItem(event.getEntry());
            tree.setParent(find);
            tree.setLevel(find.getLevel() + 1);
            this.titleList.add(event.getEntry().getTitle());
            m46714I0().nodeAddData(find, event.getIndex(), tree);
            if (m46714I0().isSelectionMode() && m46714I0().isItemSelected(find)) {
                m46714I0().selectItem(tree, true);
                m46706C1();
            }
            if (!m46714I0().isTreeItemExpanded(find)) {
                BaseNodeAdapter.expand$default(m46714I0(), m46714I0().getItems().indexOf(find), false, false, null, 14, null);
            }
        }
        m46745z1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTocEntryUpdatedEvent(@NotNull TocEntryUpdatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getPageIndexChanged()) {
            m46728f1();
            return;
        }
        for (VirtualTocModel virtualTocModel : event.getEntryList()) {
            Iterator it2 = m46714I0().getItems().iterator();
            int i = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i = -1;
                    break;
                }
                Tree tree = (Tree) it2.next();
                String uniqueId = virtualTocModel.getUniqueId();
                VirtualTocModel virtualTocModel2 = (VirtualTocModel) tree.getItem();
                if (Intrinsics.areEqual(uniqueId, virtualTocModel2 != null ? virtualTocModel2.getUniqueId() : null)) {
                    break;
                } else {
                    i++;
                }
            }
            if (i >= 0) {
                BaseQuickAdapterKt.notifyItemChangedSafety(m46714I0(), i);
            }
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (m46724b1()) {
            m46723V0();
            m46720S0();
            EditorBundle editorBundle = this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.register(editorBundle, this);
        }
        GlobalBundle.INSTANCE.register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.isScrolling()) {
            return;
        }
        int lastPageCount = m46717L0().getLastPageCount();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        if (lastPageCount != EditorBundleKt.pageCount(editorBundle)) {
            m46728f1();
        }
    }

    /* renamed from: q1 */
    public final void m46735q1(Tree<VirtualTocModel> item) {
        int indexOf;
        RecyclerView.LayoutManager layoutManager;
        View findViewByPosition;
        VirtualTocModel item2;
        Object orNull;
        VirtualTocModel virtualTocModel;
        if (m46715J0().rvTocContainer.getAutoFitRecycleView().getChildCount() <= 0) {
            return;
        }
        if (item != null) {
            if (!m46717L0().isSearchMode() || (indexOf = m46714I0().getItems().indexOf(item)) < 0 || (layoutManager = m46715J0().rvTocContainer.getAutoFitRecycleView().getLayoutManager()) == null || (findViewByPosition = layoutManager.findViewByPosition(indexOf)) == null || (item2 = item.getItem()) == null) {
                return;
            }
            this.lastRecordTocId = item2.getUniqueId();
            this.lastRecordOffset = findViewByPosition.getTop();
            return;
        }
        int childCount = m46715J0().rvTocContainer.getAutoFitRecycleView().getChildCount();
        for (int i = 0; i < childCount; i++) {
            View view = ViewGroupKt.get(m46715J0().rvTocContainer.getAutoFitRecycleView(), i);
            if (view.getTop() >= 0) {
                orNull = CollectionsKt___CollectionsKt.getOrNull(m46714I0().getItems(), m46715J0().rvTocContainer.getAutoFitRecycleView().getChildViewHolder(view).getBindingAdapterPosition());
                Tree tree = (Tree) orNull;
                if (tree == null || (virtualTocModel = (VirtualTocModel) tree.getItem()) == null) {
                    return;
                }
                this.lastRecordTocId = virtualTocModel.getUniqueId();
                this.lastRecordOffset = view.getTop();
                return;
            }
        }
    }

    /* renamed from: s1 */
    public final void m46736s1() {
        this.locateCurrentToc = true;
        m46729g1();
    }

    public final void setCloseOnSelect(@NotNull Function0<Unit> closeOnSelect) {
        Intrinsics.checkNotNullParameter(closeOnSelect, "closeOnSelect");
        this.closeOnSelect = closeOnSelect;
    }

    public final void setEditBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setSelectable(boolean selectable) {
        this.selectable = selectable;
    }

    /* renamed from: t1 */
    public final void m46737t1(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: u1 */
    public final void m46738u1() {
        m46737t1(this.selectable ? OnyxStatisticConstant.ID_VIEW_OUTLINE_FULL : OnyxStatisticConstant.ID_VIEW_OUTLINE);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0055 A[LOOP:0: B:10:0x002a->B:18:0x0055, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0059 A[EDGE_INSN: B:19:0x0059->B:20:0x0059 BREAK  A[LOOP:0: B:10:0x002a->B:18:0x0055], SYNTHETIC] */
    /* renamed from: v1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m46739v1() {
        /*
            r7 = this;
            java.lang.String r0 = r7.lastRecordTocId
            com.onyx.galaxy.note.editor.viewmodel.DocTocViewModel r1 = r7.m46717L0()
            boolean r1 = r1.isSearchMode()
            if (r1 != 0) goto L6d
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L19
            int r3 = r0.length()
            if (r3 != 0) goto L17
            goto L19
        L17:
            r3 = r2
            goto L1a
        L19:
            r3 = r1
        L1a:
            if (r3 == 0) goto L1d
            goto L6d
        L1d:
            com.onyx.galaxy.note.editor.view.adapter.DocTocAdapter r3 = r7.m46714I0()
            java.util.List r3 = r3.getItems()
            java.util.Iterator r3 = r3.iterator()
            r4 = r2
        L2a:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto L58
            java.lang.Object r5 = r3.next()
            com.onyx.android.sdk.base.data.Tree r5 = (com.onyx.android.sdk.base.data.Tree) r5
            java.lang.Object r6 = r5.getItem()
            if (r6 == 0) goto L51
            java.lang.Object r5 = r5.getItem()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            com.onyx.android.sdk.replicator.note.db.model.VirtualTocModel r5 = (com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel) r5
            java.lang.String r5 = r5.getUniqueId()
            boolean r5 = com.blankj.utilcode.util.StringUtils.equals(r5, r0)
            if (r5 == 0) goto L51
            r5 = r1
            goto L52
        L51:
            r5 = r2
        L52:
            if (r5 == 0) goto L55
            goto L59
        L55:
            int r4 = r4 + 1
            goto L2a
        L58:
            r4 = -1
        L59:
            com.onyx.galaxy.note.databinding.FragmentDocTocBinding r0 = r7.m46715J0()
            com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView r0 = r0.rvTocContainer
            com.onyx.galaxy.note.category.view.AutoFitRecycleView r0 = r0.getAutoFitRecycleView()
            int r1 = r7.lastRecordOffset
            com.onyx.android.sdk.extension.RecyclerViewKt.scrollToPositionWithOffset(r0, r4, r1)
            r0 = 0
            r7.lastRecordTocId = r0
            r7.lastRecordOffset = r2
        L6d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.p046ui.DocTocFragment.m46739v1():void");
    }

    /* renamed from: w1 */
    public final void m46740w1() {
        if (this.updateExpandStateIdList.isEmpty()) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        new SaveTocEntryExpandStateAction(editorBundle, this.docToc, this.updateExpandStateIdList).build().doOnNext(new C12179h()).subscribe();
    }

    /* renamed from: x1 */
    public final void m46741x1(boolean selectAll) {
        m46714I0().selectAll(selectAll);
    }

    /* renamed from: y0 */
    public final void m46742y0() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) m46716K0());
        VirtualTocModel virtualTocModel = (VirtualTocModel) firstOrNull;
        if (virtualTocModel == null) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new AddDocTocEntryDialog(editorBundle, requireContext, virtualTocModel, this.titleList, OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_BATCH_FULL, null, 32, null).show();
        m46737t1(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_BATCH_FULL);
    }

    /* renamed from: y1 */
    public final boolean m46743y1() {
        return !m46717L0().isSearchMode() && this.locateCurrentToc;
    }

    /* renamed from: z0 */
    public final boolean m46744z0(Tree<VirtualTocModel> tree) {
        if (!m46714I0().isItemSelected(tree)) {
            return false;
        }
        Tree<VirtualTocModel> parent = tree.getParent();
        List<Tree<VirtualTocModel>> children = parent != null ? parent.getChildren() : null;
        if (CollectionKt.isNullOrEmpty(children)) {
            return false;
        }
        Iterator<T> it2 = children.iterator();
        while (it2.hasNext()) {
            if (!m46714I0().isItemSelected((Tree) it2.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: z1 */
    public final void m46745z1() {
        boolean isEmpty = this.docToc.childrenToList().isEmpty();
        CommonEmptyView emptyView = m46715J0().emptyView;
        Intrinsics.checkNotNullExpressionValue(emptyView, "emptyView");
        emptyView.setVisibility(isEmpty && !m46717L0().isSearchMode() ? 0 : 8);
        CommonEmptyView searchView = m46715J0().searchView;
        Intrinsics.checkNotNullExpressionValue(searchView, "searchView");
        searchView.setVisibility(isEmpty && m46717L0().isSearchMode() ? 0 : 8);
    }
}

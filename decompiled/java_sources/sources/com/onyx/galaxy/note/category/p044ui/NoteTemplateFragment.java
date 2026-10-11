package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.ColorUtils;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.QuickAdapterHelper;
import com.google.android.material.divider.MaterialDividerItemDecoration;
import com.google.android.material.tabs.TabLayout;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.extension.WindowKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.InsertPageFrom;
import com.onyx.android.sdk.data.NoteCreateFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.data.template.SourceType;
import com.onyx.android.sdk.data.common.data.template.SpaceArgs;
import com.onyx.android.sdk.data.common.data.template.TemplateArgs;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.event.StatisticsNoteTemplateChangeEvent;
import com.onyx.android.sdk.event.StatisticsNoteTempleEvent;
import com.onyx.android.sdk.event.StatisticsStoolbarPageAdd;
import com.onyx.android.sdk.extension.EditTextKt;
import com.onyx.android.sdk.extension.RecyclerViewKt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.filepicker.DocumentBean;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.matisse.Matisse;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.p039ui.DispatchClickCallbackConstraintLayout;
import com.onyx.android.sdk.p039ui.EllipsizingTextView;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthEditText;
import com.onyx.android.sdk.replicator.C7594R;
import com.onyx.android.sdk.replicator.note.bean.ApplyTemplateInfo;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.bean.PaperBean;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.bean.TemplateCategory;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.docmanager.action.name.NoteNameCreateAction;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.android.sdk.universal.editor.events.app.GlobalDocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.EditTagForNoteAction;
import com.onyx.galaxy.note.category.action.SaveQuicklyNoteConfigAction;
import com.onyx.galaxy.note.category.action.cover.DeleteCustomCoverAction;
import com.onyx.galaxy.note.category.action.cover.FetchCoverPaperAction;
import com.onyx.galaxy.note.category.action.cover.ImportFilesAsCustomCoverAction;
import com.onyx.galaxy.note.category.action.cover.LoadAllOfficialCoverListAction;
import com.onyx.galaxy.note.category.action.cover.ModifyCustomCoverAction;
import com.onyx.galaxy.note.category.action.template.AddRecentUseTemplateAction;
import com.onyx.galaxy.note.category.action.template.DeleteCustomTemplateAction;
import com.onyx.galaxy.note.category.action.template.ImportFilesAsCustomPaperAction;
import com.onyx.galaxy.note.category.action.template.LoadAllOfficialPaperListAction;
import com.onyx.galaxy.note.category.action.template.ModifyCustomPaperAction;
import com.onyx.galaxy.note.category.action.template.UpdateCoverResourceAction;
import com.onyx.galaxy.note.category.action.template.UpdateTemplateResourceAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.TemplateDisplayType;
import com.onyx.galaxy.note.category.data.TemplateFileBean;
import com.onyx.galaxy.note.category.data.TemplateFragmentArgs;
import com.onyx.galaxy.note.category.data.TemplateSourceType;
import com.onyx.galaxy.note.category.event.ApplyTemplateEvent;
import com.onyx.galaxy.note.category.event.ChangeNoteTemplateEvent;
import com.onyx.galaxy.note.category.event.HandleCustomCoverDocumentsEvent;
import com.onyx.galaxy.note.category.event.HandleCustomPaperDocumentsEvent;
import com.onyx.galaxy.note.category.event.ImportCustomCoverEvent;
import com.onyx.galaxy.note.category.event.ImportCustomPaperEvent;
import com.onyx.galaxy.note.category.event.InsertPageWithTemplateEvent;
import com.onyx.galaxy.note.category.event.NCreateScribbleNoteEvent;
import com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment;
import com.onyx.galaxy.note.category.p044ui.NoteTemplateFragmentKt;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;
import com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter;
import com.onyx.galaxy.note.category.view.adapter.TagsListAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.CoverCategoryAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.CoverTitleCategoryAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.CustomCoverAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.CustomPaperAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.CustomTemplateAddAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.PaperCategoryAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.PaperTitleCategoryAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.ScrollPositionListener;
import com.onyx.galaxy.note.category.view.popup.CustomTemplatePopupWindow;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.onyx.galaxy.note.common.data.EditTagForNoteContext;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.extension.TabLayoutKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.DialogNoteTemplateBinding;
import com.onyx.galaxy.note.editor.action.importfiles.ImportCustomCoverAction;
import com.onyx.galaxy.note.editor.action.importfiles.ImportCustomPaperAction;
import com.onyx.galaxy.note.editor.action.importfiles.ObtainDocumentListAction;
import com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView;
import com.onyx.galaxy.note.editor.view.popup.SelectFilePagesAsCoverTemplatePopup;
import com.onyx.galaxy.note.editor.view.popup.SelectFilePagesAsPaperTemplatePopup;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.Navigator;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.math3.dfp.Dfp;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000´\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 í\u00012\u00020\u0001:\u0002í\u0001B\t¢\u0006\u0006\bë\u0001\u0010ì\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\u0012\u0010\u0012\u001a\u00020\u00022\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J\u0012\u0010\u0014\u001a\u00020\u00022\b\u0010\u0011\u001a\u0004\u0018\u00010\u0013H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\u0002H\u0002J\b\u0010\u001f\u001a\u00020\u0002H\u0002J\b\u0010 \u001a\u00020\u0002H\u0002J\b\u0010!\u001a\u00020\u0002H\u0002J\b\u0010\"\u001a\u00020\u0002H\u0002J\b\u0010#\u001a\u00020\u0002H\u0002J\b\u0010$\u001a\u00020\u0002H\u0002J\b\u0010%\u001a\u00020\u0002H\u0002J\b\u0010&\u001a\u00020\u0002H\u0003J\b\u0010'\u001a\u00020\u0002H\u0002J\b\u0010(\u001a\u00020\u0002H\u0002J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)H\u0002J\b\u0010,\u001a\u00020\u0002H\u0002J\b\u0010-\u001a\u00020\u0002H\u0002J\b\u0010.\u001a\u00020\u0002H\u0002J\b\u0010/\u001a\u00020\u0002H\u0002J\b\u00100\u001a\u00020\u0002H\u0002J\b\u00101\u001a\u00020\u0002H\u0002J\b\u00102\u001a\u00020\u001bH\u0002J\b\u00104\u001a\u000203H\u0002J\b\u00105\u001a\u00020\u0002H\u0002J\b\u00106\u001a\u00020\u0002H\u0002J\n\u00108\u001a\u0004\u0018\u000107H\u0002J\b\u00109\u001a\u00020\u0002H\u0002J\b\u0010:\u001a\u00020\u0002H\u0002J\u0012\u0010<\u001a\u00020\u00022\b\u0010;\u001a\u0004\u0018\u000107H\u0002J\u0012\u0010=\u001a\u00020\u00022\b\u0010;\u001a\u0004\u0018\u000107H\u0002J\u0012\u0010?\u001a\u00020\u00022\b\u0010>\u001a\u0004\u0018\u000107H\u0002J\b\u0010@\u001a\u00020\u0002H\u0002J\u0019\u0010B\u001a\u00020\u00022\b\u0010A\u001a\u0004\u0018\u000103H\u0002¢\u0006\u0004\bB\u0010CJ\b\u0010D\u001a\u00020\u0002H\u0002J\b\u0010E\u001a\u00020\u0002H\u0002J\b\u0010F\u001a\u00020\u0002H\u0002J\b\u0010G\u001a\u00020\u0002H\u0002J\b\u0010H\u001a\u00020\u0002H\u0002J\u0010\u0010J\u001a\u00020\u00022\u0006\u0010I\u001a\u00020\u0013H\u0002J\b\u0010K\u001a\u00020\u0002H\u0002J\b\u0010L\u001a\u00020\u0002H\u0002J\b\u0010M\u001a\u00020\u0002H\u0002J\u0019\u0010O\u001a\u00020\u00022\b\u0010N\u001a\u0004\u0018\u000103H\u0003¢\u0006\u0004\bO\u0010CJ\u0019\u0010P\u001a\u00020\u00022\b\u0010N\u001a\u0004\u0018\u000103H\u0003¢\u0006\u0004\bP\u0010CJ\b\u0010Q\u001a\u00020\u0002H\u0002J\b\u0010R\u001a\u00020\u0002H\u0002J\b\u0010S\u001a\u00020\u0002H\u0002J\b\u0010T\u001a\u00020\u001bH\u0002J\b\u0010U\u001a\u00020\u001bH\u0002J\u0012\u0010X\u001a\u00020\u00022\b\u0010W\u001a\u0004\u0018\u00010VH\u0002J(\u0010]\u001a\u00020\u00022\u000e\u0010Z\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010Y2\u0006\u0010[\u001a\u0002032\u0006\u0010\\\u001a\u00020\u001bH\u0002J\u0010\u0010`\u001a\u00020\u00022\u0006\u0010_\u001a\u00020^H\u0002J\b\u0010a\u001a\u00020\u0002H\u0002J\u0010\u0010d\u001a\u00020\u00022\u0006\u0010c\u001a\u00020bH\u0002J\u0010\u0010f\u001a\u00020\u00022\u0006\u0010e\u001a\u00020\u001bH\u0002J\b\u0010g\u001a\u00020\u0002H\u0002J\b\u0010h\u001a\u00020\u0002H\u0002J\b\u0010i\u001a\u00020\u0002H\u0002J\b\u0010j\u001a\u00020\u0002H\u0002J\u0010\u0010l\u001a\u00020\u00022\u0006\u0010k\u001a\u000203H\u0002J\u0016\u0010p\u001a\u00020\u00022\f\u0010o\u001a\b\u0012\u0004\u0012\u00020n0mH\u0002J\u0016\u0010r\u001a\u00020\u00022\f\u0010q\u001a\b\u0012\u0004\u0012\u00020n0YH\u0002J\u0016\u0010s\u001a\u00020\u00022\f\u0010q\u001a\b\u0012\u0004\u0012\u00020n0YH\u0002J#\u0010v\u001a\u00020\u00022\u0006\u0010t\u001a\u00020)2\n\b\u0002\u0010u\u001a\u0004\u0018\u000103H\u0002¢\u0006\u0004\bv\u0010wJ\u0010\u0010x\u001a\u00020\u00022\u0006\u0010t\u001a\u00020)H\u0002J\u0010\u0010y\u001a\u00020\u00022\u0006\u0010t\u001a\u00020)H\u0002J\b\u0010z\u001a\u00020\u0002H\u0002J\b\u0010{\u001a\u00020\u001bH\u0002J\u0014\u0010~\u001a\u000e\u0012\u0004\u0012\u00020^\u0012\u0004\u0012\u00020}0|H\u0002J\u0011\u0010\u0080\u0001\u001a\u00020\u00022\u0006\u0010\u007f\u001a\u00020^H\u0002J\u0011\u0010\u0081\u0001\u001a\u00020\u00022\u0006\u0010\u007f\u001a\u00020^H\u0002J\t\u0010\u0082\u0001\u001a\u00020\u0002H\u0002J\u0012\u0010\u0084\u0001\u001a\u00020\u00022\u0007\u0010\u0083\u0001\u001a\u000203H\u0002J\n\u0010\u0086\u0001\u001a\u00030\u0085\u0001H\u0002J\u0015\u0010\u0089\u0001\u001a\u00020\u00022\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u0001H\u0016J\t\u0010\u008a\u0001\u001a\u00020\u0002H\u0016J+\u0010\u008f\u0001\u001a\u00020\u00172\b\u0010\u008c\u0001\u001a\u00030\u008b\u00012\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008d\u00012\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u0001H\u0016J\t\u0010\u0090\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u0091\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u0092\u0001\u001a\u00020\u0002H\u0016J\u0013\u0010\u0095\u0001\u001a\u00020\u00022\b\u0010\u0094\u0001\u001a\u00030\u0093\u0001H\u0016J\u001e\u0010\u0097\u0001\u001a\u00020\u00022\u0007\u0010\u0096\u0001\u001a\u00020\u00172\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u0001H\u0016J\u0013\u0010\u009a\u0001\u001a\u00020\u00022\b\u0010\u0099\u0001\u001a\u00030\u0098\u0001H\u0007J\u0013\u0010\u009c\u0001\u001a\u00020\u00022\b\u0010\u0099\u0001\u001a\u00030\u009b\u0001H\u0007J\u0013\u0010\u009e\u0001\u001a\u00020\u00022\b\u0010\u0099\u0001\u001a\u00030\u009d\u0001H\u0007J\u0013\u0010 \u0001\u001a\u00020\u00022\b\u0010\u0099\u0001\u001a\u00030\u009f\u0001H\u0007J\u0013\u0010¢\u0001\u001a\u00020\u00022\b\u0010\u0099\u0001\u001a\u00030¡\u0001H\u0007J'\u0010§\u0001\u001a\u00020\u00022\u0007\u0010£\u0001\u001a\u0002032\u0007\u0010¤\u0001\u001a\u0002032\n\u0010¦\u0001\u001a\u0005\u0018\u00010¥\u0001H\u0016R\u001a\u0010«\u0001\u001a\u00030¨\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b©\u0001\u0010ª\u0001R\u0018\u0010\u00ad\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b.\u0010¬\u0001R+\u0010±\u0001\u001a\u000e\u0012\u0004\u0012\u00020^\u0012\u0004\u0012\u00020}0|8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b0\u0010®\u0001\u001a\u0006\b¯\u0001\u0010°\u0001R \u0010µ\u0001\u001a\u00030²\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b`\u0010®\u0001\u001a\u0006\b³\u0001\u0010´\u0001R \u0010¹\u0001\u001a\u00030¶\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b/\u0010®\u0001\u001a\u0006\b·\u0001\u0010¸\u0001R \u0010½\u0001\u001a\u00030º\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bd\u0010®\u0001\u001a\u0006\b»\u0001\u0010¼\u0001R!\u0010¿\u0001\u001a\u00030²\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0081\u0001\u0010®\u0001\u001a\u0006\b¾\u0001\u0010´\u0001R \u0010Ã\u0001\u001a\u00030À\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bs\u0010®\u0001\u001a\u0006\bÁ\u0001\u0010Â\u0001R \u0010Å\u0001\u001a\u00030º\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\br\u0010®\u0001\u001a\u0006\bÄ\u0001\u0010¼\u0001R \u0010É\u0001\u001a\u00030Æ\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bj\u0010®\u0001\u001a\u0006\bÇ\u0001\u0010È\u0001R \u0010Í\u0001\u001a\u00030Ê\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0015\u0010®\u0001\u001a\u0006\bË\u0001\u0010Ì\u0001R!\u0010Ò\u0001\u001a\u00030Î\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÏ\u0001\u0010®\u0001\u001a\u0006\bÐ\u0001\u0010Ñ\u0001R \u0010Ö\u0001\u001a\u00030Ó\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u000f\u0010®\u0001\u001a\u0006\bÔ\u0001\u0010Õ\u0001R!\u0010Û\u0001\u001a\u00030×\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bØ\u0001\u0010®\u0001\u001a\u0006\bÙ\u0001\u0010Ú\u0001R!\u0010Þ\u0001\u001a\u00030\u0085\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÜ\u0001\u0010®\u0001\u001a\u0006\b©\u0001\u0010Ý\u0001R!\u0010á\u0001\u001a\u00030\u0085\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bß\u0001\u0010®\u0001\u001a\u0006\bà\u0001\u0010Ý\u0001R!\u0010æ\u0001\u001a\u00030â\u00018FX\u0086\u0084\u0002¢\u0006\u0010\n\u0006\bã\u0001\u0010®\u0001\u001a\u0006\bä\u0001\u0010å\u0001R\u0018\u0010ê\u0001\u001a\u00030ç\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bè\u0001\u0010é\u0001¨\u0006î\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;", "Landroidx/fragment/app/DialogFragment;", "", "W1", "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;", "K2", "k2", "B2", "z2", "U0", "Y1", "V1", "T1", "j1", "X1", "L1", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "item", "h3", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "i3", "J1", "a2", "Landroid/view/View;", Constants.ELEMNAME_ANCHOR_STRING, "f3", "h1", "", "containsCover", "g3", "p2", "l2", "g1", "f1", "I2", "H2", "m2", "F2", "e1", "M2", "L2", "", "createNoteName", "d1", "Y2", "W0", "A1", "D1", "B1", "X0", "J2", "", "u1", "V0", "Y0", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "k1", "C2", "N2", "templateJsonBean", "a3", "b3", "coverJsonBean", "Z2", "S1", "coverOrientation", "b1", "(Ljava/lang/Integer;)V", "Z1", "t3", "d3", "n3", "c3", "templateModel", "r3", "j2", "j3", "l3", "orientation", "O2", "P2", "w3", "k3", "s3", "E2", "D2", "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;", "spaceArgs", "v3", "", "colorList", "selectColorIndex", "isCover", "m3", "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;", "sourceType", "C1", "x3", "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;", "templateDisplayType", "E1", "isSelectMod", "X2", "p3", "U1", "A2", "I1", "position", "W2", "", "Landroid/net/Uri;", "resultList", "V2", "uriList", "H1", "G1", "eventId", "state", "T2", "(Ljava/lang/String;Ljava/lang/Integer;)V", "R2", "S2", "Q2", "e3", "", "Landroidx/fragment/app/Fragment;", "i1", "templateSourceType", "q3", "F1", "a1", "color", "Z0", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "c1", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "onStart", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "onCreateView", "onResume", "onPause", "onDestroyView", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "view", "onViewCreated", "Lcom/onyx/galaxy/note/category/event/ImportCustomPaperEvent;", NotificationCompat.CATEGORY_EVENT, "onImportCustomPaperEvent", "Lcom/onyx/galaxy/note/category/event/ImportCustomCoverEvent;", "onImportCustomCoverEvent", "Lcom/onyx/galaxy/note/category/event/HandleCustomCoverDocumentsEvent;", "onHandleCustomCoverDocumentsEvent", "Lcom/onyx/galaxy/note/category/event/HandleCustomPaperDocumentsEvent;", "onHandleCustomPaperDocumentsEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;", "onGlobalDocumentOpenSuccessEvent", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "z1", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "templateViewModel", "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;", "templateFragmentArgs", "Lkotlin/Lazy;", "t1", "()Ljava/util/Map;", "fragments", "Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;", "s1", "()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;", "customPaperHeaderAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;", "q1", "()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;", "customPaperAdapter", "Lcom/chad/library/adapter4/QuickAdapterHelper;", "r1", "()Lcom/chad/library/adapter4/QuickAdapterHelper;", "customPaperAdapterHelper", "p1", "customCoverHeaderAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;", "n1", "()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;", "customCoverAdapter", "o1", "customCoverAdapterHelper", "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;", "w1", "()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;", "paperCategoryTitleAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;", "m1", "()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;", "coverCategoryTitleAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;", "K1", "x1", "()Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;", "tagListAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;", FirebaseInstallationServiceClient.f35986m, "()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;", "paperCategoryAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;", "M1", "l1", "()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;", "coverCategoryAdapter", "N1", "()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "templatePaperColorAdapter", "O1", "y1", "templateCoverColorAdapter", "Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;", "P1", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;", "binding", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "Q1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SuppressLint({"UseGetLayoutInflater"})
@SourceDebugExtension({"SMAP\nNoteTemplateFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTemplateFragment\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,2176:1\n58#2,23:2177\n93#2,3:2200\n256#3,2:2203\n256#3,2:2205\n256#3,2:2211\n256#3,2:2213\n256#3,2:2215\n256#3,2:2217\n256#3,2:2219\n256#3,2:2221\n256#3,2:2223\n256#3,2:2225\n256#3,2:2227\n256#3,2:2229\n256#3,2:2231\n256#3,2:2233\n256#3,2:2235\n256#3,2:2237\n256#3,2:2239\n256#3,2:2241\n256#3,2:2243\n256#3,2:2245\n256#3,2:2247\n256#3,2:2249\n1549#4:2207\n1620#4,3:2208\n1855#4,2:2251\n1864#4,3:2255\n1864#4,3:2258\n215#5,2:2253\n*S KotlinDebug\n*F\n+ 1 NoteTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTemplateFragment\n*L\n677#1:2177,23\n677#1:2200,3\n776#1:2203,2\n777#1:2205,2\n1544#1:2211,2\n1558#1:2213,2\n1559#1:2215,2\n1575#1:2217,2\n1576#1:2219,2\n1648#1:2221,2\n1649#1:2223,2\n1650#1:2225,2\n1659#1:2227,2\n1770#1:2229,2\n1771#1:2231,2\n1772#1:2233,2\n1773#1:2235,2\n1799#1:2237,2\n1825#1:2239,2\n1833#1:2241,2\n1844#1:2243,2\n1848#1:2245,2\n1850#1:2247,2\n1855#1:2249,2\n887#1:2207\n887#1:2208,3\n2080#1:2251,2\n2127#1:2255,3\n2160#1:2258,3\n2109#1:2253,2\n*E\n"})
/* loaded from: classes17.dex */
public final class NoteTemplateFragment extends DialogFragment {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String TAG = "NoteTemplateFragment";

    /* renamed from: A1, reason: from kotlin metadata */
    public TemplateFragmentArgs templateFragmentArgs;

    /* renamed from: B1, reason: from kotlin metadata */
    @NotNull
    public final Lazy fragments;

    /* renamed from: C1, reason: from kotlin metadata */
    @NotNull
    public final Lazy customPaperHeaderAdapter;

    /* renamed from: D1, reason: from kotlin metadata */
    @NotNull
    public final Lazy customPaperAdapter;

    /* renamed from: E1, reason: from kotlin metadata */
    @NotNull
    public final Lazy customPaperAdapterHelper;

    /* renamed from: F1, reason: from kotlin metadata */
    @NotNull
    public final Lazy customCoverHeaderAdapter;

    /* renamed from: G1, reason: from kotlin metadata */
    @NotNull
    public final Lazy customCoverAdapter;

    /* renamed from: H1, reason: from kotlin metadata */
    @NotNull
    public final Lazy customCoverAdapterHelper;

    /* renamed from: I1, reason: from kotlin metadata */
    @NotNull
    public final Lazy paperCategoryTitleAdapter;

    /* renamed from: J1, reason: from kotlin metadata */
    @NotNull
    public final Lazy coverCategoryTitleAdapter;

    /* renamed from: K1, reason: from kotlin metadata */
    @NotNull
    public final Lazy tagListAdapter;

    /* renamed from: L1, reason: from kotlin metadata */
    @NotNull
    public final Lazy paperCategoryAdapter;

    /* renamed from: M1, reason: from kotlin metadata */
    @NotNull
    public final Lazy coverCategoryAdapter;

    /* renamed from: N1, reason: from kotlin metadata */
    @NotNull
    public final Lazy templatePaperColorAdapter;

    /* renamed from: O1, reason: from kotlin metadata */
    @NotNull
    public final Lazy templateCoverColorAdapter;

    /* renamed from: P1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: Q1, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: z1, reason: from kotlin metadata */
    public NoteTemplateViewModel templateViewModel;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$Companion;", "", "()V", "TAG", "", Dfp.f108018r, "Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;", "templateFragmentArgs", "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final NoteTemplateFragment newInstance(@NotNull TemplateFragmentArgs templateFragmentArgs) {
            Intrinsics.checkNotNullParameter(templateFragmentArgs, "templateFragmentArgs");
            NoteTemplateFragment noteTemplateFragment = new NoteTemplateFragment();
            Bundle bundle = new Bundle();
            bundle.putString("args", JSONUtils.INSTANCE.toJson(templateFragmentArgs));
            noteTemplateFragment.setArguments(bundle);
            return noteTemplateFragment;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[TemplateSourceType.values().length];
            try {
                iArr[TemplateSourceType.CUSTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TemplateSourceType.OFFICIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TemplateSourceType.MATERIALS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[TemplateDisplayType.values().length];
            try {
                iArr2[TemplateDisplayType.PAPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[TemplateDisplayType.COVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$a */
    /* loaded from: classes9.dex */
    public static final class C11316a<T> implements Consumer {
        public C11316a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateFragment.this.m43609d1(it2);
        }
    }

    @SourceDebugExtension({"SMAP\nNoteTemplateFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTemplateFragment$createNoteByCheck$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2176:1\n1#2:2177\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$b */
    /* loaded from: classes9.dex */
    public static final class C11317b<T> implements Consumer {

        /* renamed from: e */
        public static final C11317b<T> f54852e = new C11317b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            String message = it2.getMessage();
            if (message != null) {
                ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) message, false, 2, (Object) null);
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$c */
    /* loaded from: classes9.dex */
    public static final class C11318c<T> implements Consumer {
        public C11318c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateFragment.this.m43574L2();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$d */
    /* loaded from: classes9.dex */
    public static final class C11319d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ boolean f54855f;

        public C11319d(boolean z) {
            this.f54855f = z;
        }

        /* renamed from: a */
        public final void m43660a(boolean z) {
            NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
            NoteTemplateViewModel noteTemplateViewModel2 = null;
            if (noteTemplateViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel = null;
            }
            noteTemplateViewModel.getCustomCoverMultiSelectList().clear();
            NoteTemplateFragment.this.m43618h3(null);
            NoteTemplateViewModel noteTemplateViewModel3 = NoteTemplateFragment.this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel3;
            }
            noteTemplateViewModel2.loadCustomCoverByDelete(this.f54855f);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43660a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$e */
    /* loaded from: classes9.dex */
    public static final class C11320e<T> implements Consumer {

        /* renamed from: e */
        public static final C11320e<T> f54856e = new C11320e<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$f */
    /* loaded from: classes9.dex */
    public static final class C11321f<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ boolean f54858f;

        public C11321f(boolean z) {
            this.f54858f = z;
        }

        /* renamed from: a */
        public final void m43662a(boolean z) {
            NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
            NoteTemplateViewModel noteTemplateViewModel2 = null;
            if (noteTemplateViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel = null;
            }
            noteTemplateViewModel.getCustomPaperMultiSelectList().clear();
            NoteTemplateFragment.this.m43620i3(null);
            NoteTemplateViewModel noteTemplateViewModel3 = NoteTemplateFragment.this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel3;
            }
            noteTemplateViewModel2.loadCustomPaperByDelete(this.f54858f);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43662a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$g */
    /* loaded from: classes9.dex */
    public static final class C11322g<T> implements Consumer {

        /* renamed from: e */
        public static final C11322g<T> f54859e = new C11322g<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$h */
    /* loaded from: classes9.dex */
    public static final class C11323h<T, R> implements Function {

        /* renamed from: e */
        public static final C11323h<T, R> f54860e = new C11323h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return 0L;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$i */
    /* loaded from: classes9.dex */
    public static final class C11324i<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ long f54861e;

        /* renamed from: f */
        public final /* synthetic */ long f54862f;

        /* renamed from: g */
        public final /* synthetic */ NoteTemplateFragment f54863g;

        public C11324i(long j, long j2, NoteTemplateFragment noteTemplateFragment) {
            this.f54861e = j;
            this.f54862f = j2;
            this.f54863g = noteTemplateFragment;
        }

        /* renamed from: a */
        public final void m43665a(long j) {
            if (j > 0 && System.currentTimeMillis() - this.f54861e < this.f54862f) {
                NoteTemplateViewModel noteTemplateViewModel = this.f54863g.templateViewModel;
                if (noteTemplateViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel = null;
                }
                noteTemplateViewModel.loadData();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43665a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$j */
    /* loaded from: classes9.dex */
    public static final class C11325j<T> implements Consumer {

        /* renamed from: e */
        public static final C11325j<T> f54871e = new C11325j<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$k */
    /* loaded from: classes9.dex */
    public static final class C11326k<T> implements Consumer {

        /* renamed from: e */
        public static final C11326k<T> f54872e = new C11326k<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CoverModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$l */
    /* loaded from: classes9.dex */
    public static final class C11327l<T> implements Consumer {

        /* renamed from: e */
        public static final C11327l<T> f54873e = new C11327l<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$m */
    /* loaded from: classes9.dex */
    public static final class C11328m<T> implements Consumer {

        /* renamed from: e */
        public static final C11328m<T> f54874e = new C11328m<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$n */
    /* loaded from: classes9.dex */
    public static final class C11329n<T> implements Consumer {
        public C11329n() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateFragment.this.m43588V1();
            NoteTemplateFragment.this.m43594X1();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$o */
    /* loaded from: classes9.dex */
    public static final class C11330o<T> implements Consumer {
        public C11330o() {
        }

        /* renamed from: a */
        public final void m43678a(boolean z) {
            NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
            if (noteTemplateViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel = null;
            }
            noteTemplateViewModel.loadCustomCoverList();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43678a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$p */
    /* loaded from: classes9.dex */
    public static final class C11331p<T> implements Consumer {

        /* renamed from: e */
        public static final C11331p<T> f54878e = new C11331p<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) String.valueOf(it2.getMessage()), false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$q */
    /* loaded from: classes9.dex */
    public static final class C11332q<T> implements Consumer {
        public C11332q() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
            if (noteTemplateViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel = null;
            }
            noteTemplateViewModel.loadCustomPaperList();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$r */
    /* loaded from: classes9.dex */
    public static final class C11333r<T> implements Consumer {

        /* renamed from: e */
        public static final C11333r<T> f54880e = new C11333r<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) String.valueOf(it2.getMessage()), false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$s */
    /* loaded from: classes9.dex */
    public static final class C11334s<T, R> implements Function {
        public C11334s() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ImportCustomCoverAction> apply(@NotNull List<DocumentBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            WeakReference weakReference = new WeakReference(NoteTemplateFragment.this.requireActivity());
            TemplateFragmentArgs templateFragmentArgs = NoteTemplateFragment.this.templateFragmentArgs;
            NoteTemplateViewModel noteTemplateViewModel = null;
            if (templateFragmentArgs == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
                templateFragmentArgs = null;
            }
            int type = templateFragmentArgs.getType();
            NoteTemplateViewModel noteTemplateViewModel2 = NoteTemplateFragment.this.templateViewModel;
            if (noteTemplateViewModel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel = noteTemplateViewModel2;
            }
            TemplateDisplayType value = noteTemplateViewModel.getTemplateType().getValue();
            Intrinsics.checkNotNull(value);
            return new ImportCustomCoverAction(weakReference, it2, type, value).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$t */
    /* loaded from: classes9.dex */
    public static final class C11335t<T, R> implements Function {
        public C11335t() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ImportCustomPaperAction> apply(@NotNull List<DocumentBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            WeakReference weakReference = new WeakReference(NoteTemplateFragment.this.requireActivity());
            TemplateFragmentArgs templateFragmentArgs = NoteTemplateFragment.this.templateFragmentArgs;
            NoteTemplateViewModel noteTemplateViewModel = null;
            if (templateFragmentArgs == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
                templateFragmentArgs = null;
            }
            int type = templateFragmentArgs.getType();
            NoteTemplateViewModel noteTemplateViewModel2 = NoteTemplateFragment.this.templateViewModel;
            if (noteTemplateViewModel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel = noteTemplateViewModel2;
            }
            TemplateDisplayType value = noteTemplateViewModel.getTemplateType().getValue();
            Intrinsics.checkNotNull(value);
            return new ImportCustomPaperAction(weakReference, it2, type, value).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$u */
    /* loaded from: classes9.dex */
    public static final class C11336u<T, R> implements Function {
        public C11336u() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteTemplateFragment apply(@NotNull List<CoverModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
            NoteTemplateViewModel noteTemplateViewModel2 = null;
            if (noteTemplateViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel = null;
            }
            CoverModel value = noteTemplateViewModel.getCoverModel().getValue();
            if (value != null && SourceType.INSTANCE.isOfficialType(value.getSource()) && value.getOrientation() != it2.get(0).getOrientation()) {
                NoteTemplateViewModel noteTemplateViewModel3 = NoteTemplateFragment.this.templateViewModel;
                if (noteTemplateViewModel3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel3 = null;
                }
                noteTemplateViewModel3.selectCoverColor(it2.get(0), it2.get(0).getTemplateResourceWrapper().getCurFillColor());
            }
            NoteTemplateViewModel noteTemplateViewModel4 = NoteTemplateFragment.this.templateViewModel;
            if (noteTemplateViewModel4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel4;
            }
            noteTemplateViewModel2.getOfficialCoverList().postValue(it2);
            NoteTemplateFragment.this.m43627l1().notifyDataSetChanged();
            return NoteTemplateFragment.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$v */
    /* loaded from: classes9.dex */
    public static final class C11337v<T, R> implements Function {
        public C11337v() {
        }

        /* renamed from: a */
        public final void m43685a(@NotNull List<TemplateModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
            NoteTemplateViewModel noteTemplateViewModel2 = null;
            if (noteTemplateViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel = null;
            }
            TemplateModel value = noteTemplateViewModel.getPaperModel().getValue();
            if (value != null && SourceType.INSTANCE.isOfficialType(value.getSource())) {
                if (!(value.getOrientation() == it2.get(0).getOrientation())) {
                    NoteTemplateViewModel noteTemplateViewModel3 = NoteTemplateFragment.this.templateViewModel;
                    if (noteTemplateViewModel3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                        noteTemplateViewModel3 = null;
                    }
                    noteTemplateViewModel3.selectPaperColor(it2.get(0), it2.get(0).getTemplateResourceWrapper().getCurFillColor());
                }
            }
            NoteTemplateViewModel noteTemplateViewModel4 = NoteTemplateFragment.this.templateViewModel;
            if (noteTemplateViewModel4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel4;
            }
            noteTemplateViewModel2.getOfficialPaperList().postValue(it2);
            NoteTemplateFragment.this.m43648v1().notifyDataSetChanged();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m43685a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$w */
    /* loaded from: classes9.dex */
    public static final class C11338w<T> implements Consumer {
        public C11338w() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTemplateFragment.this.dismiss();
        }
    }

    public NoteTemplateFragment() {
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
        Lazy lazy12;
        Lazy lazy13;
        Lazy lazy14;
        Lazy lazy15;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Map<TemplateSourceType, ? extends Fragment>>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$fragments$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Map<TemplateSourceType, ? extends Fragment> invoke() {
                Map<TemplateSourceType, ? extends Fragment> m43619i1;
                m43619i1 = NoteTemplateFragment.this.m43619i1();
                return m43619i1;
            }
        });
        this.fragments = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<CustomTemplateAddAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$customPaperHeaderAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CustomTemplateAddAdapter invoke() {
                return new CustomTemplateAddAdapter();
            }
        });
        this.customPaperHeaderAdapter = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<CustomPaperAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$customPaperAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CustomPaperAdapter invoke() {
                NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
                if (noteTemplateViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel = null;
                }
                return new CustomPaperAdapter(noteTemplateViewModel);
            }
        });
        this.customPaperAdapter = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<QuickAdapterHelper>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$customPaperAdapterHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final QuickAdapterHelper invoke() {
                CustomPaperAdapter m43639q1;
                CustomTemplateAddAdapter m43643s1;
                m43639q1 = NoteTemplateFragment.this.m43639q1();
                QuickAdapterHelper build = new QuickAdapterHelper.Builder(m43639q1).build();
                m43643s1 = NoteTemplateFragment.this.m43643s1();
                return build.addBeforeAdapter(0, m43643s1);
            }
        });
        this.customPaperAdapterHelper = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<CustomTemplateAddAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$customCoverHeaderAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CustomTemplateAddAdapter invoke() {
                return new CustomTemplateAddAdapter();
            }
        });
        this.customCoverHeaderAdapter = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<CustomCoverAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$customCoverAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CustomCoverAdapter invoke() {
                NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
                if (noteTemplateViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel = null;
                }
                return new CustomCoverAdapter(noteTemplateViewModel);
            }
        });
        this.customCoverAdapter = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<QuickAdapterHelper>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$customCoverAdapterHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final QuickAdapterHelper invoke() {
                CustomCoverAdapter m43633n1;
                CustomTemplateAddAdapter m43636p1;
                m43633n1 = NoteTemplateFragment.this.m43633n1();
                QuickAdapterHelper build = new QuickAdapterHelper.Builder(m43633n1).build();
                m43636p1 = NoteTemplateFragment.this.m43636p1();
                return build.addBeforeAdapter(0, m43636p1);
            }
        });
        this.customCoverAdapterHelper = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new Function0<PaperTitleCategoryAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$paperCategoryTitleAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PaperTitleCategoryAdapter invoke() {
                return new PaperTitleCategoryAdapter();
            }
        });
        this.paperCategoryTitleAdapter = lazy8;
        lazy9 = LazyKt__LazyJVMKt.lazy(new Function0<CoverTitleCategoryAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$coverCategoryTitleAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CoverTitleCategoryAdapter invoke() {
                return new CoverTitleCategoryAdapter();
            }
        });
        this.coverCategoryTitleAdapter = lazy9;
        lazy10 = LazyKt__LazyJVMKt.lazy(new Function0<TagsListAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$tagListAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TagsListAdapter invoke() {
                return new TagsListAdapter();
            }
        });
        this.tagListAdapter = lazy10;
        lazy11 = LazyKt__LazyJVMKt.lazy(new Function0<PaperCategoryAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$paperCategoryAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PaperCategoryAdapter invoke() {
                NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
                if (noteTemplateViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel = null;
                }
                return new PaperCategoryAdapter(noteTemplateViewModel);
            }
        });
        this.paperCategoryAdapter = lazy11;
        lazy12 = LazyKt__LazyJVMKt.lazy(new Function0<CoverCategoryAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$coverCategoryAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CoverCategoryAdapter invoke() {
                NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
                if (noteTemplateViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel = null;
                }
                return new CoverCategoryAdapter(noteTemplateViewModel);
            }
        });
        this.coverCategoryAdapter = lazy12;
        lazy13 = LazyKt__LazyJVMKt.lazy(new Function0<ColorViewAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$templatePaperColorAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ColorViewAdapter invoke() {
                ColorViewAdapter m43607c1;
                m43607c1 = NoteTemplateFragment.this.m43607c1();
                return m43607c1;
            }
        });
        this.templatePaperColorAdapter = lazy13;
        lazy14 = LazyKt__LazyJVMKt.lazy(new Function0<ColorViewAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$templateCoverColorAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ColorViewAdapter invoke() {
                ColorViewAdapter m43607c1;
                m43607c1 = NoteTemplateFragment.this.m43607c1();
                return m43607c1;
            }
        });
        this.templateCoverColorAdapter = lazy14;
        lazy15 = LazyKt__LazyJVMKt.lazy(new Function0<DialogNoteTemplateBinding>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogNoteTemplateBinding invoke() {
                DialogNoteTemplateBinding inflate = DialogNoteTemplateBinding.inflate(LayoutInflater.from(NoteTemplateFragment.this.getContext()));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy15;
        this.compositeDisposable = new CompositeDisposable();
    }

    /* renamed from: G2 */
    public static final void m43501G2(NoteTemplateFragment this$0, EditTagForNoteContext editTagForNoteContext) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editTagForNoteContext, "$editTagForNoteContext");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        noteTemplateViewModel.getTagList().postValue(editTagForNoteContext.getSelectedNoteTagBean());
    }

    /* renamed from: K1 */
    public static final void m43506K1(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        TemplateSpacePopup templateSpacePopup = new TemplateSpacePopup(requireContext, noteTemplateViewModel);
        Intrinsics.checkNotNull(view);
        BasePopupWindow.showAsDropCenter$default(templateSpacePopup, view, 0, 0, 0, 14, null);
    }

    /* renamed from: M1 */
    public static final boolean m43509M1(NoteTemplateFragment this$0, BaseQuickAdapter adapter, final View v, int i) {
        WindowLocation windowLocation;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(v, "v");
        TemplateModel templateModel = (TemplateModel) adapter.getItem(i);
        if (templateModel == null) {
            return true;
        }
        View view = (View) AnyKt.getOrElse(v.findViewById(C10651R.id.cl_thumbnail), new Function0<View>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCoverAndPaperListListener$6$1$anchor$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final View invoke() {
                View findViewById = v.findViewById(C10651R.id.tv_template_name);
                Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
                return findViewById;
            }
        });
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        PaperEditPopup paperEditPopup = new PaperEditPopup(requireContext, templateModel, noteTemplateViewModel);
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        DockPoint dockPoint = DockPoint.BOTTOM_CENTER;
        windowLocation = popupLocator.getWindowLocation((PopupLocator) paperEditPopup, view, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : dockPoint, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : dockPoint, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : view);
        popupLocator.show(paperEditPopup, windowLocation, view);
        return true;
    }

    /* renamed from: N1 */
    public static final void m43511N1(final NoteTemplateFragment this$0, BaseQuickAdapter baseQuickAdapter, View v, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(v, "v");
        this$0.m43582S2(OnyxStatisticConstant.ID_CRATE_NOTE_DIALOG_CUSTOM_PAGE_IMPORT_CLICK);
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        TemplateFragmentArgs templateFragmentArgs = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        TemplateDisplayType value = noteTemplateViewModel.getTemplateType().getValue();
        Intrinsics.checkNotNull(value);
        TemplateDisplayType templateDisplayType = value;
        TemplateFragmentArgs templateFragmentArgs2 = this$0.templateFragmentArgs;
        if (templateFragmentArgs2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
        } else {
            templateFragmentArgs = templateFragmentArgs2;
        }
        BasePopupWindow.showByDockType$default(new CustomTemplatePopupWindow(this$0, templateDisplayType, templateFragmentArgs.getType(), new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCoverAndPaperListListener$7$1
            {
                super(0);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                NoteTemplateFragment.this.m43582S2(OnyxStatisticConstant.ID_CRATE_NOTE_DIALOG_CUSTOM_PAGE_IMPORT_FROM_PIC_CLICK);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCoverAndPaperListListener$7$2
            {
                super(0);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                NoteTemplateFragment.this.m43582S2(OnyxStatisticConstant.ID_CRATE_NOTE_DIALOG_CUSTOM_PAGE_IMPORT_FROM_FILE_CLICK);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }), v, 0, 0, v, 6, null);
    }

    /* renamed from: O1 */
    public static final void m43513O1(NoteTemplateFragment this$0, BaseQuickAdapter baseQuickAdapter, View v, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(v, "v");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        TemplateFragmentArgs templateFragmentArgs = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        TemplateDisplayType value = noteTemplateViewModel.getTemplateType().getValue();
        Intrinsics.checkNotNull(value);
        TemplateDisplayType templateDisplayType = value;
        TemplateFragmentArgs templateFragmentArgs2 = this$0.templateFragmentArgs;
        if (templateFragmentArgs2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
        } else {
            templateFragmentArgs = templateFragmentArgs2;
        }
        BasePopupWindow.showByDockType$default(new CustomTemplatePopupWindow(this$0, templateDisplayType, templateFragmentArgs.getType(), null, null, 24, null), v, 0, 0, v, 6, null);
    }

    /* renamed from: P1 */
    public static final void m43515P1(NoteTemplateFragment this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        CoverModel coverModel = (CoverModel) adapter.getItem(i);
        if (this$0.m43633n1().getIsMultiSelectMode()) {
            if (coverModel != null) {
                this$0.m43618h3(coverModel);
            }
        } else {
            NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
            if (noteTemplateViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel = null;
            }
            noteTemplateViewModel.getCoverModel().postValue(coverModel);
        }
    }

    /* renamed from: Q1 */
    public static final boolean m43517Q1(NoteTemplateFragment this$0, BaseQuickAdapter adapter, final View v, int i) {
        WindowLocation windowLocation;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(v, "v");
        CoverModel coverModel = (CoverModel) adapter.getItem(i);
        if (coverModel == null) {
            return true;
        }
        View view = (View) AnyKt.getOrElse(v.findViewById(C10651R.id.cl_thumbnail), new Function0<View>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCoverAndPaperListListener$4$1$anchor$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final View invoke() {
                View findViewById = v.findViewById(C10651R.id.tv_template_name);
                Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
                return findViewById;
            }
        });
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        CoverEditPopup coverEditPopup = new CoverEditPopup(requireContext, coverModel, noteTemplateViewModel);
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        DockPoint dockPoint = DockPoint.BOTTOM_CENTER;
        windowLocation = popupLocator.getWindowLocation((PopupLocator) coverEditPopup, view, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : dockPoint, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : dockPoint, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : view);
        popupLocator.show(coverEditPopup, windowLocation, view);
        return true;
    }

    /* renamed from: R1 */
    public static final void m43519R1(NoteTemplateFragment this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        TemplateModel templateModel = (TemplateModel) adapter.getItem(i);
        if (this$0.m43639q1().getIsMultiSelectMode()) {
            if (templateModel != null) {
                this$0.m43620i3(templateModel);
            }
        } else {
            NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
            if (noteTemplateViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel = null;
            }
            noteTemplateViewModel.getPaperModel().postValue(templateModel);
        }
    }

    /* renamed from: U2 */
    public static /* synthetic */ void m43522U2(NoteTemplateFragment noteTemplateFragment, String str, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        noteTemplateFragment.m43584T2(str, num);
    }

    /* renamed from: b2 */
    public static final void m43523b2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        TemplateDisplayType value = noteTemplateViewModel.getTemplateType().getValue();
        TemplateDisplayType templateDisplayType = TemplateDisplayType.COVER;
        if (value != templateDisplayType) {
            NoteTemplateViewModel noteTemplateViewModel3 = this$0.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel3;
            }
            noteTemplateViewModel2.updateTemplateDisplayType(templateDisplayType);
            this$0.m43634n3();
        }
    }

    /* renamed from: c2 */
    public static final void m43524c2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        TemplateDisplayType value = noteTemplateViewModel.getTemplateType().getValue();
        TemplateDisplayType templateDisplayType = TemplateDisplayType.PAPER;
        if (value != templateDisplayType) {
            NoteTemplateViewModel noteTemplateViewModel3 = this$0.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel3;
            }
            noteTemplateViewModel2.updateTemplateDisplayType(templateDisplayType);
            this$0.m43646t3();
        }
    }

    /* renamed from: d2 */
    public static final void m43525d2(NoteTemplateFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        noteTemplateViewModel.setContainsCover(z);
        NoteTemplateViewModel noteTemplateViewModel3 = this$0.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel3;
        }
        this$0.m43616g3(noteTemplateViewModel2.getIsContainsCover());
        if (z) {
            this$0.m43617h1();
        }
    }

    /* renamed from: e2 */
    public static final void m43526e2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.isOfficialTemplateSourceType()) {
            NoteTemplateViewModel noteTemplateViewModel3 = this$0.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel3;
            }
            if (noteTemplateViewModel2.getTemplateFragmentArgs().isBoundlessNoteOperation()) {
                return;
            }
            Intrinsics.checkNotNull(view);
            this$0.m43614f3(view);
        }
    }

    /* renamed from: f2 */
    public static final void m43527f2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.isOfficialTemplateSourceType()) {
            Intrinsics.checkNotNull(view);
            this$0.m43614f3(view);
        }
    }

    /* renamed from: g2 */
    public static final void m43528g2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43582S2(OnyxStatisticConstant.ID_CRATE_NOTE_DIALOG_CUSTOM_PAGE_CLICK);
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        noteTemplateViewModel.updateTemplateSourceType(TemplateSourceType.CUSTOM);
    }

    /* renamed from: h2 */
    public static final void m43529h2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43582S2(OnyxStatisticConstant.ID_CRATE_NOTE_DIALOG_RECOMMEND_PAGE_CLICK);
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getOrientation().getValue() == null) {
            NoteTemplateViewModel noteTemplateViewModel3 = this$0.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel3 = null;
            }
            noteTemplateViewModel3.getOrientation().setValue(Integer.valueOf(Orientation.PORTRAIT.getValue()));
        }
        NoteTemplateViewModel noteTemplateViewModel4 = this$0.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel4;
        }
        noteTemplateViewModel2.updateTemplateSourceType(TemplateSourceType.OFFICIAL);
    }

    /* renamed from: i2 */
    public static final void m43530i2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getOrientation().getValue() == null) {
            NoteTemplateViewModel noteTemplateViewModel3 = this$0.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel3 = null;
            }
            noteTemplateViewModel3.getOrientation().setValue(Integer.valueOf(Orientation.PORTRAIT.getValue()));
        }
        NoteTemplateViewModel noteTemplateViewModel4 = this$0.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel4;
        }
        noteTemplateViewModel2.updateTemplateSourceType(TemplateSourceType.MATERIALS);
    }

    /* renamed from: n2 */
    public static final void m43531n2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43564F2();
    }

    /* renamed from: o2 */
    public static final boolean m43532o2(BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        return true;
    }

    /* renamed from: o3 */
    public static final void m43533o3(NoteTemplateFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43608c3();
    }

    /* renamed from: q2 */
    public static final void m43534q2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43611e1();
    }

    /* renamed from: r2 */
    public static final void m43536r2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43590W0();
    }

    /* renamed from: s2 */
    public static final void m43538s2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43580R2(OnyxStatisticConstant.ID_CRATE_NOTE_DIALOG_CANCEL_CLICK);
        this$0.dismiss();
    }

    /* renamed from: t2 */
    public static final void m43540t2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        m43522U2(this$0, OnyxStatisticConstant.ID_CLICK_DOCSSETTING_CHANGETEMPLATE_CANCEL, null, 2, null);
    }

    /* renamed from: u2 */
    public static final void m43542u2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43595X2(true);
    }

    /* renamed from: u3 */
    public static final void m43543u3(NoteTemplateFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43610d3();
    }

    /* renamed from: v2 */
    public static final void m43545v2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43595X2(false);
    }

    /* renamed from: w2 */
    public static final void m43547w2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getTemplateType().getValue() == TemplateDisplayType.COVER) {
            this$0.m43567H2();
        } else {
            this$0.m43569I2();
        }
    }

    /* renamed from: x2 */
    public static final void m43549x2(NoteTemplateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteTemplateViewModel noteTemplateViewModel = this$0.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getTemplateType().getValue() == TemplateDisplayType.COVER) {
            this$0.m43613f1();
        } else {
            this$0.m43615g1();
        }
    }

    /* renamed from: y2 */
    public static final void m43551y2(View view) {
        Navigator.INSTANCE.navigateToTemplateMaterialCenter();
    }

    /* renamed from: A1 */
    public final void m43553A1() {
        TemplateJsonBean m43624k1 = m43624k1();
        if (m43624k1 == null) {
            ToastUtils.INSTANCE.show(C10651R.string.no_selected_cover_hint, true);
            return;
        }
        TemplateFragmentArgs templateFragmentArgs = this.templateFragmentArgs;
        TemplateFragmentArgs templateFragmentArgs2 = null;
        if (templateFragmentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
            templateFragmentArgs = null;
        }
        if (m43624k1.sameContent(templateFragmentArgs.getCoverTemplateJsonBean())) {
            dismiss();
            return;
        }
        ApplyTemplateInfo applyTemplateInfo = new ApplyTemplateInfo(m43624k1, null, false, false, false, 30, null);
        TemplateFragmentArgs templateFragmentArgs3 = this.templateFragmentArgs;
        if (templateFragmentArgs3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
        } else {
            templateFragmentArgs2 = templateFragmentArgs3;
        }
        String noteId = templateFragmentArgs2.getNoteId();
        Intrinsics.checkNotNull(noteId);
        DocCollectionBundle.INSTANCE.postEvent(new ChangeNoteTemplateEvent(noteId, applyTemplateInfo));
        m43575M2();
        dismiss();
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0177, code lost:
    
        if (r2.isBoundlessNoteOperation() == false) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00d3  */
    /* renamed from: A2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m43554A2() {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment.m43554A2():void");
    }

    /* renamed from: B1 */
    public final void m43555B1() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getTemplateType().getValue() == TemplateDisplayType.COVER) {
            m43596Y0();
            dismiss();
        } else if (m43571J2()) {
            m43593X0();
            dismiss();
        } else {
            Context context = getBinding().getRoot().getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            new CommonDialog.Builder(context).setTitle(C10651R.string.hint).setMessage(m43647u1()).setWarning(true).setConfirmText(C10651R.string.apply).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$handleChangeTemplate$1
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                    invoke2(commonDialog, str);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                    Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                    Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                    NoteTemplateFragment.this.m43593X0();
                    NoteTemplateFragment.this.dismiss();
                }
            }).create().show();
        }
    }

    /* renamed from: B2 */
    public final void m43556B2() {
        Window window;
        int windowDefaultHeight;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        TemplateFragmentArgs templateFragmentArgs = this.templateFragmentArgs;
        TemplateFragmentArgs templateFragmentArgs2 = null;
        if (templateFragmentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
            templateFragmentArgs = null;
        }
        if (templateFragmentArgs.getFullWindowShow()) {
            windowDefaultHeight = -1;
        } else {
            ResManager resManager = ResManager.INSTANCE;
            windowDefaultHeight = resManager.getWindowDefaultHeight() - resManager.getDimens(C7384R.dimen.dp_96);
        }
        window.setLayout(-1, windowDefaultHeight);
        window.setBackgroundDrawable(new ColorDrawable(0));
        TemplateFragmentArgs templateFragmentArgs3 = this.templateFragmentArgs;
        if (templateFragmentArgs3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
        } else {
            templateFragmentArgs2 = templateFragmentArgs3;
        }
        if (templateFragmentArgs2.getFullWindowShow()) {
            return;
        }
        window.setGravity(80);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0105, code lost:
    
        if (r1.m72418getTemplateSourceType() == r5) goto L68;
     */
    /* renamed from: C1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m43557C1(com.onyx.galaxy.note.category.data.TemplateSourceType r9) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment.m43557C1(com.onyx.galaxy.note.category.data.TemplateSourceType):void");
    }

    /* renamed from: C2 */
    public final void m43558C2() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel3 = null;
        }
        SizeFormat value = noteTemplateViewModel3.getTemplateSize().getValue();
        Intrinsics.checkNotNull(value);
        noteTemplateViewModel.updatePaperModelSizeFormat(value);
        Templates templates = Templates.INSTANCE;
        NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel4 = null;
        }
        TemplateModel value2 = noteTemplateViewModel4.getPaperModel().getValue();
        NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
        if (noteTemplateViewModel5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel5 = null;
        }
        TemplateJsonBean templateModelToJsonBean = templates.templateModelToJsonBean(value2, noteTemplateViewModel5.getGeoLayout());
        m43604a3(templateModelToJsonBean);
        DocCollectionBundle docCollectionBundle = DocCollectionBundle.INSTANCE;
        NoteTemplateViewModel noteTemplateViewModel6 = this.templateViewModel;
        if (noteTemplateViewModel6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel6 = null;
        }
        Integer insertAtPageIndex = noteTemplateViewModel6.getTemplateFragmentArgs().getInsertAtPageIndex();
        NoteTemplateViewModel noteTemplateViewModel7 = this.templateViewModel;
        if (noteTemplateViewModel7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel7;
        }
        docCollectionBundle.postEvent(new InsertPageWithTemplateEvent(templateModelToJsonBean, insertAtPageIndex, templates.paperTemplateRect(noteTemplateViewModel2.getPaperModel().getValue()), InsertPageFrom.MORE_TEMPLATE, true));
        m43576N2();
    }

    /* renamed from: D1 */
    public final void m43559D1() {
        m43558C2();
        dismiss();
    }

    /* renamed from: D2 */
    public final boolean m43560D2() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        return noteTemplateViewModel.getTemplateFragmentArgs().getType() == 7;
    }

    /* renamed from: E1 */
    public final void m43561E1(TemplateDisplayType templateDisplayType) {
        int i = WhenMappings.$EnumSwitchMapping$1[templateDisplayType.ordinal()];
        if (i == 1) {
            getBinding().titleContainer.templateTitleOrientationContainer.tvPaperType.setSelected(true);
            getBinding().titleContainer.templateTitleOrientationContainer.tvCoverType.setSelected(false);
            getBinding().titleContainer.templateTitleOrientationContainer.llPaperContainer.setSelected(true);
            getBinding().titleContainer.templateTitleOrientationContainer.llCoverContainer.setSelected(false);
            getBinding().clCategoryTemplate.setAdapter(m43648v1());
            getBinding().titleContainer.categoryContainer.rlCategoryTitle.setAdapter(m43650w1());
            getBinding().clCategoryCustomTemplate.setAdapter(m43641r1().getMAdapter());
            m43595X2(false);
            return;
        }
        if (i != 2) {
            return;
        }
        getBinding().titleContainer.templateTitleOrientationContainer.tvPaperType.setSelected(false);
        getBinding().titleContainer.templateTitleOrientationContainer.tvCoverType.setSelected(true);
        getBinding().titleContainer.templateTitleOrientationContainer.llPaperContainer.setSelected(false);
        getBinding().titleContainer.templateTitleOrientationContainer.llCoverContainer.setSelected(true);
        getBinding().clCategoryTemplate.setAdapter(m43627l1());
        getBinding().titleContainer.categoryContainer.rlCategoryTitle.setAdapter(m43630m1());
        getBinding().clCategoryCustomTemplate.setAdapter(m43635o1().getMAdapter());
        m43595X2(false);
    }

    /* renamed from: E2 */
    public final boolean m43562E2() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        return noteTemplateViewModel.getTemplateFragmentArgs().getType() == 1;
    }

    /* renamed from: F1 */
    public final void m43563F1(TemplateSourceType templateSourceType) {
        FragmentTransaction fragmentTransaction = null;
        for (Map.Entry<TemplateSourceType, Fragment> entry : m43645t1().entrySet()) {
            TemplateSourceType key = entry.getKey();
            Fragment value = entry.getValue();
            if (key != templateSourceType && value.isVisible()) {
                if (fragmentTransaction == null) {
                    fragmentTransaction = getChildFragmentManager().beginTransaction();
                }
                if (fragmentTransaction != null) {
                    fragmentTransaction.hide(value);
                }
            }
        }
        if (fragmentTransaction != null) {
            fragmentTransaction.commitNowAllowingStateLoss();
        }
    }

    /* renamed from: F2 */
    public final void m43564F2() {
        int collectionSizeOrDefault;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        List<SyncTagModel> m72417getTagList = noteTemplateViewModel.m72417getTagList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(m72417getTagList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = m72417getTagList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncTagModel) it2.next()).getUniqueId());
        }
        final EditTagForNoteContext editTagForNoteContext = new EditTagForNoteContext();
        editTagForNoteContext.getSelectTagIds().addAll(arrayList);
        EditTagForNoteAction editTagForNoteAction = new EditTagForNoteAction(editTagForNoteContext, TAG);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        editTagForNoteAction.setActivityContext(requireContext).build().doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.v3k
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteTemplateFragment.m43501G2(NoteTemplateFragment.this, editTagForNoteContext);
            }
        }).subscribe();
    }

    /* renamed from: G1 */
    public final void m43565G1(List<? extends Uri> uriList) {
        new ImportFilesAsCustomCoverAction(DocCollectionBundle.INSTANCE.docManagerBundle(), TemplateFileBean.INSTANCE.createTemplateFileBeanList(uriList)).build().doOnError(C11325j.f54871e).doOnNext(C11326k.f54872e).subscribe();
    }

    /* renamed from: H1 */
    public final void m43566H1(List<? extends Uri> uriList) {
        new ImportFilesAsCustomPaperAction(DocCollectionBundle.INSTANCE.docManagerBundle(), TemplateFileBean.INSTANCE.createTemplateFileBeanList(uriList)).build().doOnError(C11327l.f54873e).doOnNext(C11328m.f54874e).subscribe();
    }

    /* renamed from: H2 */
    public final void m43567H2() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (!noteTemplateViewModel.getCustomCoverMultiSelectList().isEmpty()) {
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel3;
            }
            new ModifyCustomCoverAction(getContext(), noteTemplateViewModel2.getCustomCoverMultiSelectList().entrySet().iterator().next().getValue()).build().doOnNext(new C11330o()).doOnError(C11331p.f54878e).subscribe();
        }
    }

    /* renamed from: I1 */
    public final void m43568I1() {
        getBinding().clCategoryTemplate.setLayoutManager(new LinearLayoutManager(getContext()));
        getBinding().clCategoryTemplate.setAdapter(m43648v1());
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(0);
        RecyclerView clCategoryTemplate = getBinding().clCategoryTemplate;
        Intrinsics.checkNotNullExpressionValue(clCategoryTemplate, "clCategoryTemplate");
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        RecyclerViewKt.addMaterialItemDecoration$default(clCategoryTemplate, requireContext, 1, resManager.getDimensionPixelSize(C7384R.dimen.dp_24), false, 8, null);
        getBinding().titleContainer.categoryContainer.rlCategoryTitle.setLayoutManager(linearLayoutManager);
        getBinding().titleContainer.categoryContainer.rlCategoryTitle.setAdapter(m43650w1());
        RecyclerView rlCategoryTitle = getBinding().titleContainer.categoryContainer.rlCategoryTitle;
        Intrinsics.checkNotNullExpressionValue(rlCategoryTitle, "rlCategoryTitle");
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
        RecyclerViewKt.addMaterialItemDecoration$default(rlCategoryTitle, requireContext2, 0, resManager.getDimensionPixelSize(C10651R.dimen.template_category_divider_width), false, 8, null);
        m43648v1().setCategoryTitleChange(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCategory$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                PaperTitleCategoryAdapter m43650w1;
                m43650w1 = NoteTemplateFragment.this.m43650w1();
                m43650w1.setDisplayPosition(i);
            }
        });
        m43627l1().setCategoryTitleChange(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCategory$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                CoverTitleCategoryAdapter m43630m1;
                m43630m1 = NoteTemplateFragment.this.m43630m1();
                m43630m1.setDisplayPosition(i);
            }
        });
    }

    /* renamed from: I2 */
    public final void m43569I2() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (!noteTemplateViewModel.getCustomPaperMultiSelectList().isEmpty()) {
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel3;
            }
            new ModifyCustomPaperAction(getContext(), noteTemplateViewModel2.getCustomPaperMultiSelectList().entrySet().iterator().next().getValue()).build().doOnNext(new C11332q()).doOnError(C11333r.f54880e).subscribe();
        }
    }

    /* renamed from: J1 */
    public final void m43570J1() {
        m43630m1().setItemClickCallback(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCategoryTitleListener$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                NoteTemplateFragment.this.getBinding().clCategoryTemplate.smoothScrollToPosition(i);
            }
        });
        m43650w1().setItemClickCallback(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCategoryTitleListener$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                NoteTemplateFragment.this.getBinding().clCategoryTemplate.smoothScrollToPosition(i);
            }
        });
        m43654y1().setColorViewListener(new ColorViewAdapter.ColorViewListener() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCategoryTitleListener$3

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public List<Integer> oldColors = new ArrayList();

            /* renamed from: a */
            public final void m43666a() {
                ColorViewAdapter m43654y1;
                this.oldColors.clear();
                List<Integer> list = this.oldColors;
                m43654y1 = NoteTemplateFragment.this.m43654y1();
                list.addAll(m43654y1.getItems());
            }

            /* renamed from: b */
            public final void m43667b() {
                ColorViewAdapter m43654y1;
                List<Integer> list = this.oldColors;
                m43654y1 = NoteTemplateFragment.this.m43654y1();
                if (Intrinsics.areEqual(list, m43654y1.getItems())) {
                    return;
                }
                m43666a();
                NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
                if (noteTemplateViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel = null;
                }
                CoverModel value = noteTemplateViewModel.getCoverModel().getValue();
                if (value == null) {
                    return;
                }
                RxBaseAction.execute$default(new UpdateCoverResourceAction(value, value.getTemplateResourceWrapper().getResourceList()), null, null, null, 7, null);
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onDismissColorPicker() {
                m43667b();
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onSelectColor(int color) {
                NoteTemplateFragment.this.m43599Z0(color);
                if (this.oldColors.contains(Integer.valueOf(color))) {
                    return;
                }
                this.oldColors.add(Integer.valueOf(color));
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onShowColorPicker() {
                if (CollectionKt.isNonBlank(this.oldColors)) {
                    m43667b();
                }
                m43666a();
            }
        });
        m43655z1().setColorViewListener(new ColorViewAdapter.ColorViewListener() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCategoryTitleListener$4

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public List<Integer> oldColors = new ArrayList();

            /* renamed from: a */
            public final void m43668a() {
                ColorViewAdapter m43655z1;
                this.oldColors.clear();
                List<Integer> list = this.oldColors;
                m43655z1 = NoteTemplateFragment.this.m43655z1();
                list.addAll(m43655z1.getItems());
            }

            /* renamed from: b */
            public final void m43669b() {
                ColorViewAdapter m43655z1;
                List<Integer> list = this.oldColors;
                m43655z1 = NoteTemplateFragment.this.m43655z1();
                if (Intrinsics.areEqual(list, m43655z1.getItems())) {
                    return;
                }
                m43668a();
                NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
                if (noteTemplateViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel = null;
                }
                TemplateModel value = noteTemplateViewModel.getPaperModel().getValue();
                if (value == null) {
                    return;
                }
                RxBaseAction.execute$default(new UpdateTemplateResourceAction(value, value.getTemplateResourceWrapper().getResourceList()), null, null, null, 7, null);
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onDismissColorPicker() {
                m43669b();
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onSelectColor(int color) {
                NoteTemplateFragment.this.m43602a1();
                if (this.oldColors.contains(Integer.valueOf(color))) {
                    return;
                }
                this.oldColors.add(Integer.valueOf(color));
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onShowColorPicker() {
                if (CollectionKt.isNonBlank(this.oldColors)) {
                    m43669b();
                }
                m43668a();
            }
        });
        LinearLayout llSpaceArgs = getBinding().titleContainer.categoryContainer.llSpaceArgs;
        Intrinsics.checkNotNullExpressionValue(llSpaceArgs, "llSpaceArgs");
        ViewKt.click$default(llSpaceArgs, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.i3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43506K1(NoteTemplateFragment.this, view);
            }
        }, 1, null);
    }

    /* renamed from: J2 */
    public final boolean m43571J2() {
        if (m43560D2()) {
            NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
            if (noteTemplateViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel = null;
            }
            if (noteTemplateViewModel.getTemplateType().getValue() == TemplateDisplayType.PAPER) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: K2 */
    public final TemplateFragmentArgs m43572K2() {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Bundle arguments = getArguments();
        TemplateFragmentArgs templateFragmentArgs = (TemplateFragmentArgs) jSONUtils.parseObject(arguments != null ? arguments.getString("args") : null, TemplateFragmentArgs.class);
        if (templateFragmentArgs == null) {
            templateFragmentArgs = new TemplateFragmentArgs();
        }
        this.templateFragmentArgs = templateFragmentArgs;
        return templateFragmentArgs;
    }

    /* renamed from: L1 */
    public final void m43573L1() {
        getBinding().clCategoryTemplate.addOnScrollListener(new ScrollPositionListener() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCoverAndPaperListListener$1
            @Override // com.onyx.galaxy.note.category.view.adapter.template.ScrollPositionListener
            public void onPositionChange(int position) {
                super.onPositionChange(position);
                NoteTemplateFragment.this.m43592W2(position);
            }
        });
        m43636p1().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.c3k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteTemplateFragment.m43513O1(NoteTemplateFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43633n1().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.d3k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteTemplateFragment.m43515P1(NoteTemplateFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43633n1().setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() { // from class: com.sunia.HTREnginev2.e3k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemLongClickListener
            public final boolean onLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m43517Q1;
                m43517Q1 = NoteTemplateFragment.m43517Q1(NoteTemplateFragment.this, baseQuickAdapter, view, i);
                return m43517Q1;
            }
        });
        m43639q1().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.f3k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteTemplateFragment.m43519R1(NoteTemplateFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43639q1().setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() { // from class: com.sunia.HTREnginev2.g3k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemLongClickListener
            public final boolean onLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m43509M1;
                m43509M1 = NoteTemplateFragment.m43509M1(NoteTemplateFragment.this, baseQuickAdapter, view, i);
                return m43509M1;
            }
        });
        m43643s1().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.h3k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteTemplateFragment.m43511N1(NoteTemplateFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: L2 */
    public final void m43574L2() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        CoverModel value = noteTemplateViewModel.getCoverModel().getValue();
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel3 = null;
        }
        TemplateModel value2 = noteTemplateViewModel3.getPaperModel().getValue();
        if (value != null) {
            NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
            if (noteTemplateViewModel4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel4 = null;
            }
            StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteTempleEvent(noteTemplateViewModel4.getCoverModelStatisticName(), SourceType.INSTANCE.getSourceTypeName(value.getSource())));
        }
        if (value2 != null) {
            NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
            if (noteTemplateViewModel5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel5;
            }
            StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteTempleEvent(noteTemplateViewModel2.getPaperModelStatisticName(), SourceType.INSTANCE.getSourceTypeName(value2.getSource())));
        }
    }

    /* renamed from: M2 */
    public final void m43575M2() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        CoverModel value = noteTemplateViewModel.getCoverModel().getValue();
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel3 = null;
        }
        TemplateModel value2 = noteTemplateViewModel3.getPaperModel().getValue();
        if (value != null) {
            NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
            if (noteTemplateViewModel4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel4 = null;
            }
            StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteTemplateChangeEvent(noteTemplateViewModel4.getCoverModelStatisticName(), SourceType.INSTANCE.getSourceTypeName(value.getSource())));
        }
        if (value2 != null) {
            NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
            if (noteTemplateViewModel5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel5;
            }
            StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteTemplateChangeEvent(noteTemplateViewModel2.getPaperModelStatisticName(), SourceType.INSTANCE.getSourceTypeName(value2.getSource())));
        }
    }

    /* renamed from: N2 */
    public final void m43576N2() {
        String sb;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        TemplateModel value = noteTemplateViewModel.getPaperModel().getValue();
        if (value == null) {
            return;
        }
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel3;
        }
        String valueOf = String.valueOf(noteTemplateViewModel2.getTemplateFragmentArgs().getInsertAtPageIndex());
        if (value.getSource() != 0) {
            sb = "custom";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("more_template_");
            String stringSafely = ResManager.INSTANCE.getStringSafely(value.getTitleResName(), value.getTitle());
            if (stringSafely == null) {
                stringSafely = "";
            }
            sb2.append(stringSafely);
            sb = sb2.toString();
        }
        StatisticsBundle.INSTANCE.postEvent(new StatisticsStoolbarPageAdd(valueOf, sb));
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: O2 */
    public final void m43577O2(Integer orientation) {
        if (orientation != null) {
            orientation.intValue();
            NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
            if (noteTemplateViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel = null;
            }
            List<CoverCategory> value = noteTemplateViewModel.getCoverCategoryList().getValue();
            if (value == null) {
                return;
            }
            new LoadAllOfficialCoverListAction(value, orientation.intValue(), TemplateSourceType.OFFICIAL).build().map(new C11336u()).subscribe();
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: P2 */
    public final void m43578P2(Integer orientation) {
        if (orientation != null) {
            orientation.intValue();
            NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
            NoteTemplateViewModel noteTemplateViewModel2 = null;
            if (noteTemplateViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel = null;
            }
            List<TemplateCategory> value = noteTemplateViewModel.getPaperCategoryList().getValue();
            if (value == null) {
                return;
            }
            int intValue = orientation.intValue();
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel3;
            }
            new LoadAllOfficialPaperListAction(value, intValue, noteTemplateViewModel2.getTemplateFragmentArgs().isBoundlessNoteOperation(), TemplateSourceType.OFFICIAL).build().map(new C11337v()).subscribe();
        }
    }

    /* renamed from: Q2 */
    public final void m43579Q2() {
        Map<String, ? extends Object> mutableMapOf;
        TemplateArgs templateArgs;
        SpaceArgs spaceArgs;
        TemplateResourceWrapper templateResourceWrapper;
        TemplateResourceWrapper templateResourceWrapper2;
        TemplateFragmentArgs templateFragmentArgs = this.templateFragmentArgs;
        NoteTemplateViewModel noteTemplateViewModel = null;
        if (templateFragmentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
            templateFragmentArgs = null;
        }
        if (templateFragmentArgs.getType() != 0) {
            return;
        }
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(NoteTreeBundle.INSTANCE.activeFilterInfo().getType())));
        NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
        if (noteTemplateViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel2 = null;
        }
        mutableMapOf.put(OnyxStatisticConstant.KEY_NOTE_COVER_STATE, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(noteTemplateViewModel2.getIsContainsCover()))));
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel3 = null;
        }
        Integer value = noteTemplateViewModel3.getOrientation().getValue();
        if (value == null) {
            NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
            if (noteTemplateViewModel4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel4 = null;
            }
            TemplateModel value2 = noteTemplateViewModel4.getPaperModel().getValue();
            value = value2 != null ? Integer.valueOf(value2.getOrientation()) : null;
            if (value == null) {
                value = Integer.valueOf(Orientation.PORTRAIT.getValue());
            }
        }
        mutableMapOf.put(OnyxStatisticConstant.KEY_NOTE_ORIENTATION, value);
        NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
        if (noteTemplateViewModel5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel5 = null;
        }
        SizeFormat value3 = noteTemplateViewModel5.getTemplateSize().getValue();
        Intrinsics.checkNotNull(value3);
        mutableMapOf.put(OnyxStatisticConstant.KEY_NOTE_SIZE, value3.getSizeFormatName());
        NoteTemplateViewModel noteTemplateViewModel6 = this.templateViewModel;
        if (noteTemplateViewModel6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel6 = null;
        }
        CoverModel value4 = noteTemplateViewModel6.getCoverModel().getValue();
        if (value4 != null && (templateResourceWrapper2 = value4.getTemplateResourceWrapper()) != null) {
            String int2ArgbString = ColorUtils.int2ArgbString(templateResourceWrapper2.getCurFillColor());
            Intrinsics.checkNotNullExpressionValue(int2ArgbString, "int2ArgbString(...)");
            mutableMapOf.put(OnyxStatisticConstant.KEY_NOTE_COVER_COLOR, int2ArgbString);
        }
        NoteTemplateViewModel noteTemplateViewModel7 = this.templateViewModel;
        if (noteTemplateViewModel7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel7 = null;
        }
        TemplateModel value5 = noteTemplateViewModel7.getPaperModel().getValue();
        if (value5 != null && (templateResourceWrapper = value5.getTemplateResourceWrapper()) != null) {
            String int2ArgbString2 = ColorUtils.int2ArgbString(templateResourceWrapper.getCurFillColor());
            Intrinsics.checkNotNullExpressionValue(int2ArgbString2, "int2ArgbString(...)");
            mutableMapOf.put(OnyxStatisticConstant.KEY_NOTE_TEMPLATE_COLOR, int2ArgbString2);
        }
        NoteTemplateViewModel noteTemplateViewModel8 = this.templateViewModel;
        if (noteTemplateViewModel8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel = noteTemplateViewModel8;
        }
        TemplateModel value6 = noteTemplateViewModel.getPaperModel().getValue();
        if (value6 != null && (templateArgs = value6.getTemplateArgs()) != null && (spaceArgs = templateArgs.getSpaceArgs()) != null) {
            mutableMapOf.put(OnyxStatisticConstant.KEY_NOTE_TEMPLATE_LINE, Integer.valueOf(spaceArgs.loadSpaceHalfUpDisplayValue()));
        }
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_CRATE_NOTE_DIALOG_DONE_CLICK, mutableMapOf);
    }

    /* renamed from: R2 */
    public final void m43580R2(String eventId) {
        Map<String, ? extends Object> mutableMapOf;
        TemplateFragmentArgs templateFragmentArgs = this.templateFragmentArgs;
        if (templateFragmentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
            templateFragmentArgs = null;
        }
        if (templateFragmentArgs.getType() != 0) {
            return;
        }
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(NoteTreeBundle.INSTANCE.activeFilterInfo().getType())));
        StatisticsBundle.INSTANCE.reportEvent(eventId, mutableMapOf);
    }

    /* renamed from: S1 */
    public final void m43581S1() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        noteTemplateViewModel.getCoverModel().observe(this, new NoteTemplateFragmentKt.C11339a(new Function1<CoverModel, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCoverObserve$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CoverModel coverModel) {
                invoke2(coverModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable CoverModel coverModel) {
                CustomCoverAdapter m43633n1;
                m43633n1 = NoteTemplateFragment.this.m43633n1();
                m43633n1.notifySelectChange();
                NoteTemplateFragment.this.m43627l1().notifySelectChange();
                TemplateThumbnailView ivTitleThumbCover = NoteTemplateFragment.this.getBinding().titleContainer.templateTitleOrientationContainer.ivTitleThumbCover;
                Intrinsics.checkNotNullExpressionValue(ivTitleThumbCover, "ivTitleThumbCover");
                if (coverModel != null) {
                    ivTitleThumbCover.updateViewSize(coverModel.getOrientation());
                    ivTitleThumbCover.loadCoverTemplateThumbnail(coverModel);
                }
                NoteTemplateFragment.this.m43626k3();
                NoteTemplateFragment.this.m43623j3();
                NoteTemplateFragment.this.m43605b1(coverModel != null ? Integer.valueOf(coverModel.getOrientation()) : null);
                NoteTemplateFragment.this.m43634n3();
            }
        }));
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel3 = null;
        }
        noteTemplateViewModel3.getCoverCategoryList().observe(this, new NoteTemplateFragmentKt.C11339a(new NoteTemplateFragment$initCoverObserve$2(this)));
        NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel4 = null;
        }
        noteTemplateViewModel4.getOfficialCoverList().observe(this, new NoteTemplateFragmentKt.C11339a(new Function1<List<? extends CoverModel>, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCoverObserve$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends CoverModel> list) {
                invoke2((List<CoverModel>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<CoverModel> list) {
                CoverCategoryAdapter m43627l1 = NoteTemplateFragment.this.m43627l1();
                NoteTemplateViewModel noteTemplateViewModel5 = NoteTemplateFragment.this.templateViewModel;
                if (noteTemplateViewModel5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel5 = null;
                }
                m43627l1.submitList(noteTemplateViewModel5.getCoverCategoryList().getValue());
                NoteTemplateFragment.this.m43595X2(false);
            }
        }));
        NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
        if (noteTemplateViewModel5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel5;
        }
        noteTemplateViewModel2.getCustomCoverList().observe(this, new NoteTemplateFragmentKt.C11339a(new Function1<List<? extends CoverModel>, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initCoverObserve$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends CoverModel> list) {
                invoke2((List<CoverModel>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<CoverModel> list) {
                CustomCoverAdapter m43633n1;
                CustomCoverAdapter m43633n12;
                m43633n1 = NoteTemplateFragment.this.m43633n1();
                m43633n1.submitList(list);
                NoteTemplateFragment.this.m43638p3();
                m43633n12 = NoteTemplateFragment.this.m43633n1();
                if (m43633n12.getIsMultiSelectMode()) {
                    NoteTemplateFragment.this.m43618h3(null);
                }
            }
        }));
    }

    /* renamed from: S2 */
    public final void m43582S2(String eventId) {
        Map<String, ? extends Object> mutableMapOf;
        TemplateFragmentArgs templateFragmentArgs = this.templateFragmentArgs;
        NoteTemplateViewModel noteTemplateViewModel = null;
        if (templateFragmentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
            templateFragmentArgs = null;
        }
        if (templateFragmentArgs.getType() != 0) {
            NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
            if (noteTemplateViewModel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel = noteTemplateViewModel2;
            }
            if (noteTemplateViewModel.getTemplateType().getValue() != TemplateDisplayType.PAPER) {
                return;
            }
        }
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(NoteTreeBundle.INSTANCE.activeFilterInfo().getType())));
        StatisticsBundle.INSTANCE.reportEvent(eventId, mutableMapOf);
    }

    /* renamed from: T1 */
    public final void m43583T1() {
        TintSwitchCompat tintSwitchCompat = getBinding().titleContainer.templateTitleOrientationContainer.switchCover;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        tintSwitchCompat.setChecked(noteTemplateViewModel.getTemplateFragmentArgs().getChangeContainsCover());
        TintConstraintLayout tintConstraintLayout = getBinding().titleContainer.templateTitleOrientationContainer.llCoverContainer;
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel3;
        }
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(tintConstraintLayout, noteTemplateViewModel2.getTemplateFragmentArgs().getChangeContainsCover());
    }

    /* renamed from: T2 */
    public final void m43584T2(String eventId, Integer state) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        TemplateFragmentArgs templateFragmentArgs = this.templateFragmentArgs;
        if (templateFragmentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
            templateFragmentArgs = null;
        }
        String noteId = templateFragmentArgs.getNoteId();
        if (noteId == null) {
            noteId = "";
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, noteId);
        if (state != null) {
            linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_TEMPLATE_FULL_CHANGE, Integer.valueOf(state.intValue()));
        }
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: U0 */
    public final void m43585U0() {
        getBinding().noteTemplateRoot.setClickCallback(new Function1<MotionEvent, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$addEditTextListener$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
                invoke2(motionEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull MotionEvent it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                TouchModeMaxLengthEditText etNoteName = NoteTemplateFragment.this.getBinding().titleContainer.templateTitleOrientationContainer.etNoteName;
                Intrinsics.checkNotNullExpressionValue(etNoteName, "etNoteName");
                EditTextKt.hiddenInputIfNeeded(etNoteName, it2);
            }
        });
    }

    /* renamed from: U1 */
    public final void m43586U1() {
        AutoFitRecycleView autoFitRecycleView = getBinding().clCategoryCustomTemplate;
        MaterialDividerItemDecoration materialDividerItemDecoration = new MaterialDividerItemDecoration(requireContext(), 0);
        materialDividerItemDecoration.setDividerColor(0);
        materialDividerItemDecoration.setDividerThickness(ResManager.INSTANCE.getDimensionPixelSize(C10651R.dimen.template_custom_divider_width));
        autoFitRecycleView.addItemDecoration(materialDividerItemDecoration);
        TouchModeMaxLengthEditText touchModeMaxLengthEditText = getBinding().titleContainer.templateTitleOrientationContainer.etNoteName;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        touchModeMaxLengthEditText.setText(noteTemplateViewModel.getCreateNoteName());
    }

    /* renamed from: V0 */
    public final void m43587V0() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        TemplateModel value = noteTemplateViewModel.getPaperModel().getValue();
        if (value != null) {
            value.setSizeFormat(SizeFormat.BOUNDLESS.name());
        }
        NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
        if (noteTemplateViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel2 = null;
        }
        GeoLayout geoLayout = noteTemplateViewModel2.getGeoLayout();
        if (geoLayout != null) {
            geoLayout.clearMargins();
        }
        Templates templates = Templates.INSTANCE;
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel3 = null;
        }
        TemplateModel value2 = noteTemplateViewModel3.getPaperModel().getValue();
        NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel4 = null;
        }
        DocCollectionBundle.INSTANCE.postEvent(new ApplyTemplateEvent(new ApplyTemplateInfo(null, templates.templateModelToJsonBean(value2, noteTemplateViewModel4.getGeoLayout()), true, false, false, 25, null)));
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.change_paper_succeed, false, 2, (Object) null);
        m43584T2(OnyxStatisticConstant.ID_CLICK_DOCSSETTING_CHANGETEMPLATE_CONFIRM, 1);
        m43575M2();
    }

    /* renamed from: V1 */
    public final void m43588V1() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getTemplateFragmentArgs().getOnlyCoverChange()) {
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel3 = null;
            }
            noteTemplateViewModel3.updateTemplateDisplayType(TemplateDisplayType.COVER);
        }
        NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel4 = null;
        }
        if (noteTemplateViewModel4.getTemplateFragmentArgs().getOnlyPaperChange()) {
            NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
            if (noteTemplateViewModel5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel5 = null;
            }
            noteTemplateViewModel5.updateTemplateDisplayType(TemplateDisplayType.PAPER);
        }
        m43583T1();
        m43631m2();
        if (!m43612e3()) {
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().titleContainer.categoryContainer.rlCategoryTitle, false);
            LinearLayout llNoteSettingContainer = getBinding().titleContainer.templateTitleOrientationContainer.llNoteSettingContainer;
            Intrinsics.checkNotNullExpressionValue(llNoteSettingContainer, "llNoteSettingContainer");
            com.onyx.android.sdk.base.extension.ViewKt.setLayoutHeight(llNoteSettingContainer, -1);
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().titleContainer.templateTitleOrientationContainer.llCoverContainer, false);
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().titleContainer.templateTitleOrientationContainer.llParamsCoverContainer, false);
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().llCustomSwitchContainer, false);
            getBinding().titleContainer.templateTitleOrientationContainer.tvPaperType.setText(ResManager.INSTANCE.getString(C10651R.string.boundless_note_paper));
        }
        NoteTemplateViewModel noteTemplateViewModel6 = this.templateViewModel;
        if (noteTemplateViewModel6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel6;
        }
        noteTemplateViewModel2.loadData();
        m43621j1();
    }

    /* renamed from: V2 */
    public final void m43589V2(List<Uri> resultList) {
        Map<String, ? extends Object> mutableMapOf;
        CustomTemplatePopupWindow.Companion companion = CustomTemplatePopupWindow.INSTANCE;
        TemplateFragmentArgs templateFragmentArgs = this.templateFragmentArgs;
        NoteTemplateViewModel noteTemplateViewModel = null;
        if (templateFragmentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
            templateFragmentArgs = null;
        }
        int type = templateFragmentArgs.getType();
        NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
        if (noteTemplateViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel = noteTemplateViewModel2;
        }
        TemplateDisplayType value = noteTemplateViewModel.getTemplateType().getValue();
        Intrinsics.checkNotNull(value);
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(companion.getTriggerFrom(type, value))));
        mutableMapOf.put(OnyxStatisticConstant.KEY_IMAGE_AMOUNT, Integer.valueOf(resultList.size()));
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_PICK_PIC_FINISHED, mutableMapOf);
    }

    /* renamed from: W0 */
    public final void m43590W0() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        int type = noteTemplateViewModel.getTemplateFragmentArgs().getType();
        if (type != 1) {
            if (type == 2) {
                m43559D1();
                return;
            } else if (type == 4) {
                m43553A1();
                return;
            } else if (type != 6 && type != 7) {
                return;
            }
        }
        m43555B1();
    }

    /* renamed from: W1 */
    public final void m43591W1() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        noteTemplateViewModel.updateFragmentArgs().doOnNext(new C11329n()).subscribe();
    }

    /* renamed from: W2 */
    public final void m43592W2(int position) {
        RecyclerView.Adapter adapter = getBinding().titleContainer.categoryContainer.rlCategoryTitle.getAdapter();
        if (adapter instanceof PaperTitleCategoryAdapter) {
            PaperTitleCategoryAdapter paperTitleCategoryAdapter = (PaperTitleCategoryAdapter) adapter;
            paperTitleCategoryAdapter.setDisplayPosition(position);
            paperTitleCategoryAdapter.getRecyclerView().scrollToPosition(position);
        }
        if (adapter instanceof CoverTitleCategoryAdapter) {
            CoverTitleCategoryAdapter coverTitleCategoryAdapter = (CoverTitleCategoryAdapter) adapter;
            coverTitleCategoryAdapter.setDisplayPosition(position);
            coverTitleCategoryAdapter.getRecyclerView().scrollToPosition(position);
        }
    }

    /* renamed from: X0 */
    public final void m43593X0() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getTemplateFragmentArgs().isBoundlessNoteOperation()) {
            m43587V0();
        } else {
            m43596Y0();
        }
    }

    /* renamed from: X1 */
    public final void m43594X1() {
        m43637p2();
        m43603a2();
        m43570J1();
        m43573L1();
    }

    /* renamed from: X2 */
    public final void m43595X2(boolean isSelectMod) {
        m43638p3();
        TintTextView tvDelete = getBinding().titleContainer.categoryContainer.tvDelete;
        Intrinsics.checkNotNullExpressionValue(tvDelete, "tvDelete");
        tvDelete.setVisibility(isSelectMod ? 0 : 8);
        TintTextView tvRename = getBinding().titleContainer.categoryContainer.tvRename;
        Intrinsics.checkNotNullExpressionValue(tvRename, "tvRename");
        tvRename.setVisibility(isSelectMod ? 0 : 8);
        TintTextView tvDone = getBinding().titleContainer.categoryContainer.tvDone;
        Intrinsics.checkNotNullExpressionValue(tvDone, "tvDone");
        tvDone.setVisibility(isSelectMod ? 0 : 8);
        TintTextView tvSelect = getBinding().titleContainer.categoryContainer.tvSelect;
        Intrinsics.checkNotNullExpressionValue(tvSelect, "tvSelect");
        tvSelect.setVisibility(isSelectMod ^ true ? 0 : 8);
        if (isSelectMod) {
            m43633n1().setMultiSelectMode(true);
            m43639q1().setMultiSelectMode(true);
            return;
        }
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        noteTemplateViewModel.getCustomCoverMultiSelectList().clear();
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel3;
        }
        noteTemplateViewModel2.getCustomPaperMultiSelectList().clear();
        getBinding().titleContainer.categoryContainer.tvRename.setEnabled(false);
        getBinding().titleContainer.categoryContainer.tvDelete.setEnabled(false);
        m43633n1().setMultiSelectMode(false);
        m43639q1().setMultiSelectMode(false);
    }

    /* renamed from: Y0 */
    public final void m43596Y0() {
        ApplyTemplateInfo applyTemplateInfo;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        SizeFormat value = noteTemplateViewModel.getTemplateSize().getValue();
        Intrinsics.checkNotNull(value);
        String name = value.name();
        NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
        if (noteTemplateViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel2 = null;
        }
        TemplateModel value2 = noteTemplateViewModel2.getPaperModel().getValue();
        if (!Intrinsics.areEqual(value2 != null ? value2.getSizeFormat() : null, SizeFormat.CUSTOM.name())) {
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel3 = null;
            }
            TemplateModel value3 = noteTemplateViewModel3.getPaperModel().getValue();
            if (value3 != null) {
                value3.setSizeFormat(name);
            }
        }
        TemplateJsonBean m43624k1 = m43624k1();
        NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel4 = null;
        }
        TemplateDisplayType value4 = noteTemplateViewModel4.getTemplateType().getValue();
        TemplateDisplayType templateDisplayType = TemplateDisplayType.COVER;
        if (value4 == templateDisplayType) {
            applyTemplateInfo = new ApplyTemplateInfo(m43624k1, null, false, false, false, 30, null);
        } else if (m43571J2()) {
            Templates templates = Templates.INSTANCE;
            NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
            if (noteTemplateViewModel5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel5 = null;
            }
            TemplateModel value5 = noteTemplateViewModel5.getPaperModel().getValue();
            NoteTemplateViewModel noteTemplateViewModel6 = this.templateViewModel;
            if (noteTemplateViewModel6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel6 = null;
            }
            applyTemplateInfo = new ApplyTemplateInfo(null, templates.templateModelToJsonBean(value5, noteTemplateViewModel6.getGeoLayout()), false, false, true, 1, null);
        } else {
            Templates templates2 = Templates.INSTANCE;
            NoteTemplateViewModel noteTemplateViewModel7 = this.templateViewModel;
            if (noteTemplateViewModel7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel7 = null;
            }
            TemplateModel value6 = noteTemplateViewModel7.getPaperModel().getValue();
            NoteTemplateViewModel noteTemplateViewModel8 = this.templateViewModel;
            if (noteTemplateViewModel8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel8 = null;
            }
            applyTemplateInfo = new ApplyTemplateInfo(null, templates2.templateModelToJsonBean(value6, noteTemplateViewModel8.getGeoLayout()), getBinding().titleContainer.categoryContainer.applyAll.isChecked(), true, getBinding().titleContainer.categoryContainer.applyAll.isChecked(), 1, null);
        }
        NoteTemplateViewModel noteTemplateViewModel9 = this.templateViewModel;
        if (noteTemplateViewModel9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel9 = null;
        }
        if (!noteTemplateViewModel9.getTemplateFragmentArgs().getOnlyPaperChange() && applyTemplateInfo.getCoverTemplateJsonBean() != null) {
            m43601Z2(applyTemplateInfo.getCoverTemplateJsonBean());
        }
        NoteTemplateViewModel noteTemplateViewModel10 = this.templateViewModel;
        if (noteTemplateViewModel10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel10 = null;
        }
        if (!noteTemplateViewModel10.getTemplateFragmentArgs().getOnlyCoverChange() && applyTemplateInfo.getPaperTemplateJsonBean() != null) {
            m43604a3(applyTemplateInfo.getPaperTemplateJsonBean());
        }
        DocCollectionBundle.INSTANCE.postEvent(new ApplyTemplateEvent(applyTemplateInfo));
        if (applyTemplateInfo.getApplyAllPaper()) {
            m43606b3(applyTemplateInfo.getPaperTemplateJsonBean());
        }
        NoteTemplateViewModel noteTemplateViewModel11 = this.templateViewModel;
        if (noteTemplateViewModel11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel11 = null;
        }
        if (noteTemplateViewModel11.getTemplateType().getValue() == templateDisplayType) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.change_cover_succeed, false, 2, (Object) null);
        } else if (m43571J2()) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.change_default_paper_template_success, false, 2, (Object) null);
        } else {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.change_paper_succeed, false, 2, (Object) null);
        }
        m43584T2(OnyxStatisticConstant.ID_CLICK_DOCSSETTING_CHANGETEMPLATE_CONFIRM, Integer.valueOf(getBinding().titleContainer.categoryContainer.applyAll.isChecked() ? 1 : 0));
        m43575M2();
    }

    /* renamed from: Y1 */
    public final void m43597Y1() {
        m43622j2();
        m43600Z1();
        if (m43612e3()) {
            m43581S1();
        }
    }

    /* renamed from: Y2 */
    public final void m43598Y2() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        Observable<Unit> doOnNext = new SaveQuicklyNoteConfigAction(noteTemplateViewModel).build().doOnNext(new C11338w());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    /* renamed from: Z0 */
    public final void m43599Z0(int color) {
        int intValue;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        CoverModel value = noteTemplateViewModel.getCoverModel().getValue();
        if (value == null) {
            return;
        }
        List<TemplateResourceModel> resourceList = value.getTemplateResourceWrapper().getResourceList();
        value.getTemplateResourceWrapper().setCurResourceIndex(m43654y1().getSelectedPosition());
        int i = 0;
        for (Object obj : resourceList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            TemplateResourceModel templateResourceModel = (TemplateResourceModel) obj;
            Integer item = m43654y1().getItem(i);
            if (item != null && templateResourceModel.getFillColor() != (intValue = item.intValue())) {
                templateResourceModel.setFillColor(intValue);
            }
            i = i2;
        }
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel3;
        }
        noteTemplateViewModel2.getCoverModel().postValue(value);
        m43627l1().notifyCoverChangeSelectColor();
    }

    /* renamed from: Z1 */
    public final void m43600Z1() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        noteTemplateViewModel.getPaperModel().observe(this, new NoteTemplateFragmentKt.C11339a(new NoteTemplateFragment$initPaperObserve$1(this)));
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel3 = null;
        }
        noteTemplateViewModel3.getPaperCategoryList().observe(this, new NoteTemplateFragmentKt.C11339a(new NoteTemplateFragment$initPaperObserve$2(this)));
        NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel4 = null;
        }
        noteTemplateViewModel4.getOfficialPaperList().observe(this, new NoteTemplateFragmentKt.C11339a(new Function1<List<? extends TemplateModel>, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initPaperObserve$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends TemplateModel> list) {
                invoke2((List<TemplateModel>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<TemplateModel> list) {
                PaperCategoryAdapter m43648v1 = NoteTemplateFragment.this.m43648v1();
                NoteTemplateViewModel noteTemplateViewModel5 = NoteTemplateFragment.this.templateViewModel;
                if (noteTemplateViewModel5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel5 = null;
                }
                m43648v1.submitList(noteTemplateViewModel5.getPaperCategoryList().getValue());
                NoteTemplateFragment.this.m43595X2(false);
            }
        }));
        NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
        if (noteTemplateViewModel5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel5;
        }
        noteTemplateViewModel2.getCustomPaperList().observe(this, new NoteTemplateFragmentKt.C11339a(new Function1<List<? extends TemplateModel>, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initPaperObserve$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends TemplateModel> list) {
                invoke2((List<TemplateModel>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<TemplateModel> list) {
                CustomPaperAdapter m43639q1;
                CustomPaperAdapter m43639q12;
                m43639q1 = NoteTemplateFragment.this.m43639q1();
                m43639q1.submitList(list);
                NoteTemplateFragment.this.m43638p3();
                m43639q12 = NoteTemplateFragment.this.m43639q1();
                if (m43639q12.getIsMultiSelectMode()) {
                    NoteTemplateFragment.this.m43620i3(null);
                }
            }
        }));
    }

    /* renamed from: Z2 */
    public final void m43601Z2(TemplateJsonBean coverJsonBean) {
        TemplateFragmentArgs templateFragmentArgs = this.templateFragmentArgs;
        if (templateFragmentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
            templateFragmentArgs = null;
        }
        if (templateFragmentArgs.isBoundlessNoteOperation()) {
            return;
        }
        MMKVNote.getCoverOption$default(MMKVNote.INSTANCE, null, 1, null).put(coverJsonBean);
    }

    /* renamed from: a1 */
    public final void m43602a1() {
        int intValue;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        TemplateModel value = noteTemplateViewModel.getPaperModel().getValue();
        if (value == null) {
            return;
        }
        List<TemplateResourceModel> resourceList = value.getTemplateResourceWrapper().getResourceList();
        value.getTemplateResourceWrapper().setCurResourceIndex(m43655z1().getSelectedPosition());
        int i = 0;
        for (Object obj : resourceList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            TemplateResourceModel templateResourceModel = (TemplateResourceModel) obj;
            Integer item = m43655z1().getItem(i);
            if (item != null && templateResourceModel.getFillColor() != (intValue = item.intValue())) {
                templateResourceModel.setFillColor(intValue);
                ResManager resManager = ResManager.INSTANCE;
                if (intValue == resManager.getColor(C10651R.color.template_page_default_gray_color)) {
                    templateResourceModel.setColorTransformMode(0);
                    templateResourceModel.setStrokeColor(resManager.getColor(C7594R.color.color_dynamic_dark_paper_stroke));
                } else {
                    templateResourceModel.setColorTransformMode(!ColorUtils.isLightColor(intValue) ? 1 : 0);
                    if (ColorUtils.isLightColor(templateResourceModel.getStrokeColor()) && templateResourceModel.getColorTransformMode() == 1) {
                        templateResourceModel.setStrokeColor(com.onyx.android.sdk.base.lite.utils.ColorUtils.INSTANCE.invertColor(templateResourceModel.getStrokeColor()));
                    }
                }
            }
            i = i2;
        }
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel3;
        }
        noteTemplateViewModel2.getPaperModel().postValue(value);
        m43648v1().notifyPaperChangeSelectColor();
    }

    /* renamed from: a2 */
    public final void m43603a2() {
        getBinding().titleContainer.templateTitleOrientationContainer.llCoverContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43523b2(NoteTemplateFragment.this, view);
            }
        });
        getBinding().titleContainer.templateTitleOrientationContainer.llPaperContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.k3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43524c2(NoteTemplateFragment.this, view);
            }
        });
        getBinding().titleContainer.templateTitleOrientationContainer.switchCover.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.l3k
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NoteTemplateFragment.m43525d2(NoteTemplateFragment.this, compoundButton, z);
            }
        });
        TouchModeMaxLengthEditText etNoteName = getBinding().titleContainer.templateTitleOrientationContainer.etNoteName;
        Intrinsics.checkNotNullExpressionValue(etNoteName, "etNoteName");
        etNoteName.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initParamsListener$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                NoteTemplateViewModel noteTemplateViewModel = NoteTemplateFragment.this.templateViewModel;
                if (noteTemplateViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel = null;
                }
                noteTemplateViewModel.setCreateNoteName(String.valueOf(s));
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        getBinding().titleContainer.templateTitleOrientationContainer.llOrientationSizeContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43526e2(NoteTemplateFragment.this, view);
            }
        });
        getBinding().titleContainer.categoryContainer.tvChangeTemplateSizeOrientation.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43527f2(NoteTemplateFragment.this, view);
            }
        });
        getBinding().tvTemplateCustom.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.p3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43528g2(NoteTemplateFragment.this, view);
            }
        });
        getBinding().tvTemplateRecommend.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.q3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43529h2(NoteTemplateFragment.this, view);
            }
        });
        TintTextView tvTemplateAdded = getBinding().tvTemplateAdded;
        Intrinsics.checkNotNullExpressionValue(tvTemplateAdded, "tvTemplateAdded");
        ViewKt.click$default(tvTemplateAdded, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43530i2(NoteTemplateFragment.this, view);
            }
        }, 1, null);
    }

    /* renamed from: a3 */
    public final void m43604a3(TemplateJsonBean templateJsonBean) {
        if (templateJsonBean == null) {
            return;
        }
        TemplateFragmentArgs templateFragmentArgs = this.templateFragmentArgs;
        if (templateFragmentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
            templateFragmentArgs = null;
        }
        if (templateFragmentArgs.isBoundlessNoteOperation()) {
            return;
        }
        RxBaseAction.execute$default(new AddRecentUseTemplateAction(templateJsonBean), null, null, null, 7, null);
    }

    /* renamed from: b1 */
    public final void m43605b1(final Integer coverOrientation) {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getOrientation().getValue() == null) {
            return;
        }
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel3;
        }
        if (Intrinsics.areEqual(noteTemplateViewModel2.getOrientation().getValue(), coverOrientation)) {
            return;
        }
        RxTimerUtil.INSTANCE.shortTimer(new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$checkOrientationReloadData$1
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
                NoteTemplateFragment.this.m43577O2(coverOrientation);
            }
        });
    }

    /* renamed from: b3 */
    public final void m43606b3(TemplateJsonBean templateJsonBean) {
        TemplateFragmentArgs templateFragmentArgs = this.templateFragmentArgs;
        if (templateFragmentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
            templateFragmentArgs = null;
        }
        MMKVNote.getTemplateOption$default(MMKVNote.INSTANCE, null, templateFragmentArgs.isBoundlessNoteOperation() ? 1 : 0, 1, null).put(templateJsonBean);
    }

    /* renamed from: c1 */
    public final ColorViewAdapter m43607c1() {
        ColorViewAdapter colorViewAdapter = new ColorViewAdapter();
        colorViewAdapter.updateContainerWidthDimension(C7384R.dimen.dp_30);
        return colorViewAdapter;
    }

    /* renamed from: c3 */
    public final void m43608c3() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getTemplateType().getValue() == TemplateDisplayType.PAPER) {
            return;
        }
        NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
        if (noteTemplateViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel2 = null;
        }
        TemplateSourceType value = noteTemplateViewModel2.getTemplateSourceType().getValue();
        int i = value == null ? -1 : WhenMappings.$EnumSwitchMapping$0[value.ordinal()];
        if (i == 1) {
            int selectPosition = m43633n1().getSelectPosition();
            AutoFitRecycleView clCategoryCustomTemplate = getBinding().clCategoryCustomTemplate;
            Intrinsics.checkNotNullExpressionValue(clCategoryCustomTemplate, "clCategoryCustomTemplate");
            RecyclerViewKt.scrollToPositionIfCompletelyInVisible(clCategoryCustomTemplate, selectPosition);
            return;
        }
        if (i == 2 || i == 3) {
            CoverTitleCategoryAdapter m43630m1 = m43630m1();
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel3 = null;
            }
            CoverModel value2 = noteTemplateViewModel3.getCoverModel().getValue();
            int selectPosition2 = m43630m1.getSelectPosition(value2 != null ? value2.getCategoryId() : null);
            RecyclerView clCategoryTemplate = getBinding().clCategoryTemplate;
            Intrinsics.checkNotNullExpressionValue(clCategoryTemplate, "clCategoryTemplate");
            RecyclerViewKt.scrollToPositionIfCompletelyInVisible(clCategoryTemplate, selectPosition2);
        }
    }

    /* renamed from: d1 */
    public final void m43609d1(String createNoteName) {
        TemplateJsonBean templateJsonBean;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        List<String> tagIdList = noteTemplateViewModel.getTagIdList();
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel3 = null;
        }
        boolean isContainsCover = noteTemplateViewModel3.getIsContainsCover();
        NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel4 = null;
        }
        Integer value = noteTemplateViewModel4.getOrientation().getValue();
        if (value == null) {
            NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
            if (noteTemplateViewModel5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel5 = null;
            }
            TemplateModel value2 = noteTemplateViewModel5.getPaperModel().getValue();
            value = value2 != null ? Integer.valueOf(value2.getOrientation()) : null;
            if (value == null) {
                value = Integer.valueOf(Orientation.PORTRAIT.getValue());
            }
        }
        NoteTemplateViewModel noteTemplateViewModel6 = this.templateViewModel;
        if (noteTemplateViewModel6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel6 = null;
        }
        String folderId = noteTemplateViewModel6.getTemplateFragmentArgs().getFolderId();
        NoteTemplateViewModel noteTemplateViewModel7 = this.templateViewModel;
        if (noteTemplateViewModel7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel7 = null;
        }
        SizeFormat value3 = noteTemplateViewModel7.getTemplateSize().getValue();
        Intrinsics.checkNotNull(value3);
        NoteCreateInfo noteCreateInfo = new NoteCreateInfo(createNoteName, null, folderId, 0, tagIdList, null, null, isContainsCover, value.intValue(), value3, null, null, 0, 0, 15466, null);
        SizeFormat sizeFormat = noteCreateInfo.getSizeFormat();
        Intrinsics.checkNotNull(sizeFormat);
        NoteTemplateViewModel noteTemplateViewModel8 = this.templateViewModel;
        if (noteTemplateViewModel8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel8 = null;
        }
        noteTemplateViewModel8.updatePaperModelSizeFormat(sizeFormat);
        NoteTemplateViewModel noteTemplateViewModel9 = this.templateViewModel;
        if (noteTemplateViewModel9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel9 = null;
        }
        if (noteTemplateViewModel9.getTemplateFragmentArgs().getType() == 5) {
            NoteTemplateViewModel noteTemplateViewModel10 = this.templateViewModel;
            if (noteTemplateViewModel10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel10 = null;
            }
            GeoLayout geoLayout = noteTemplateViewModel10.getGeoLayout();
            if (geoLayout != null) {
                geoLayout.clearMargins();
            }
        } else {
            NoteConfigManager.INSTANCE.getContainsCoverOption().put(noteCreateInfo.isContainsCover());
            NoteTemplateViewModel noteTemplateViewModel11 = this.templateViewModel;
            if (noteTemplateViewModel11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel11 = null;
            }
            noteTemplateViewModel11.updateCoverModelSizeFormat(sizeFormat);
            NoteTemplateViewModel noteTemplateViewModel12 = this.templateViewModel;
            if (noteTemplateViewModel12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel12 = null;
            }
            if (noteTemplateViewModel12.getIsContainsCover()) {
                Templates templates = Templates.INSTANCE;
                NoteTemplateViewModel noteTemplateViewModel13 = this.templateViewModel;
                if (noteTemplateViewModel13 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel13 = null;
                }
                templateJsonBean = templates.coverModelToJsonBean(noteTemplateViewModel13.getCoverModel().getValue());
            } else {
                templateJsonBean = null;
            }
            noteCreateInfo.setCoverJsonBean(templateJsonBean);
            Templates templates2 = Templates.INSTANCE;
            NoteTemplateViewModel noteTemplateViewModel14 = this.templateViewModel;
            if (noteTemplateViewModel14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel14 = null;
            }
            noteCreateInfo.setCoverRectF(templates2.coverTemplateRect(noteTemplateViewModel14.getCoverModel().getValue()));
        }
        List<PaperBean> paperBeanList = noteCreateInfo.getPaperBeanList();
        Templates templates3 = Templates.INSTANCE;
        NoteTemplateViewModel noteTemplateViewModel15 = this.templateViewModel;
        if (noteTemplateViewModel15 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel15 = null;
        }
        TemplateModel value4 = noteTemplateViewModel15.getPaperModel().getValue();
        NoteTemplateViewModel noteTemplateViewModel16 = this.templateViewModel;
        if (noteTemplateViewModel16 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel16 = null;
        }
        CollectionKt.safeAdd(paperBeanList, templates3.toPaperBean(value4, noteTemplateViewModel16.getGeoLayout()));
        m43604a3(noteCreateInfo.firstPaperJsonBean());
        m43601Z2(noteCreateInfo.getCoverJsonBean());
        m43606b3(noteCreateInfo.firstPaperJsonBean());
        m43579Q2();
        NoteTemplateViewModel noteTemplateViewModel17 = this.templateViewModel;
        if (noteTemplateViewModel17 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel17;
        }
        int type = noteTemplateViewModel2.getTemplateFragmentArgs().getType();
        if (type == 0) {
            DocCollectionBundle.INSTANCE.postEvent(new NCreateScribbleNoteEvent(noteCreateInfo, NoteCreateFrom.NORMAL_CREATE));
        } else {
            if (type != 5) {
                return;
            }
            noteCreateInfo.setScene(2);
            noteCreateInfo.setContainsCover(false);
            DocCollectionBundle.INSTANCE.postEvent(new NCreateScribbleNoteEvent(noteCreateInfo, NoteCreateFrom.NORMAL_CREATE));
        }
    }

    /* renamed from: d3 */
    public final void m43610d3() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getTemplateType().getValue() == TemplateDisplayType.COVER) {
            return;
        }
        NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
        if (noteTemplateViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel2 = null;
        }
        TemplateSourceType value = noteTemplateViewModel2.getTemplateSourceType().getValue();
        int i = value == null ? -1 : WhenMappings.$EnumSwitchMapping$0[value.ordinal()];
        if (i == 1) {
            AutoFitRecycleView clCategoryCustomTemplate = getBinding().clCategoryCustomTemplate;
            Intrinsics.checkNotNullExpressionValue(clCategoryCustomTemplate, "clCategoryCustomTemplate");
            RecyclerViewKt.scrollToPositionIfCompletelyInVisible(clCategoryCustomTemplate, m43639q1().getSelectPosition());
        } else if (i == 2 || i == 3) {
            PaperTitleCategoryAdapter m43650w1 = m43650w1();
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel3 = null;
            }
            TemplateModel value2 = noteTemplateViewModel3.getPaperModel().getValue();
            int selectPosition = m43650w1.getSelectPosition(value2 != null ? value2.getCategoryId() : null);
            RecyclerView clCategoryTemplate = getBinding().clCategoryTemplate;
            Intrinsics.checkNotNullExpressionValue(clCategoryTemplate, "clCategoryTemplate");
            RecyclerViewKt.scrollToPositionIfCompletelyInVisible(clCategoryTemplate, selectPosition);
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: e1 */
    public final void m43611e1() {
        CharSequence trim;
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "CreateNoteAction, onClick", new Object[0]);
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getTemplateFragmentArgs().isQuicklyType()) {
            m43598Y2();
            return;
        }
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel3;
        }
        trim = StringsKt__StringsKt.trim((CharSequence) noteTemplateViewModel2.getCreateNoteName());
        String obj = trim.toString();
        if (obj.length() == 0) {
            obj = ResManager.INSTANCE.getStringSafely(C10651R.string.unnamed_note);
        }
        new NoteNameCreateAction(1, obj, 0, null, 12, null).build().doOnNext(new C11316a()).doOnError(C11317b.f54852e).subscribe(new C11318c());
    }

    /* renamed from: e3 */
    public final boolean m43612e3() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        return !noteTemplateViewModel.getTemplateFragmentArgs().isBoundlessNoteOperation();
    }

    /* renamed from: f1 */
    public final void m43613f1() {
        List list;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        Map<String, CoverModel> customCoverMultiSelectList = noteTemplateViewModel.getCustomCoverMultiSelectList();
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel3 = null;
        }
        CoverModel value = noteTemplateViewModel3.getCoverModel().getValue();
        boolean containsKey = customCoverMultiSelectList.containsKey(value != null ? value.getUniqueId() : null);
        Context context = getContext();
        NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel4;
        }
        list = CollectionsKt___CollectionsKt.toList(noteTemplateViewModel2.getCustomCoverMultiSelectList().values());
        new DeleteCustomCoverAction(context, list).build().doOnNext(new C11319d(containsKey)).doOnError(C11320e.f54856e).subscribe();
    }

    /* renamed from: f3 */
    public final void m43614f3(View anchor) {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        BasePopupWindow.showAsDropCenter$default(new SizeOrientationPopup(requireContext, noteTemplateViewModel, new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$showSizeOrientationPopup$1
            {
                super(1);
            }

            public final void invoke(int i) {
                NoteTemplateFragment.this.m43577O2(Integer.valueOf(i));
                NoteTemplateFragment.this.m43578P2(Integer.valueOf(i));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }
        }), anchor, 0, 0, 0, 14, null);
    }

    /* renamed from: g1 */
    public final void m43615g1() {
        List list;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        Map<String, TemplateModel> customPaperMultiSelectList = noteTemplateViewModel.getCustomPaperMultiSelectList();
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel3 = null;
        }
        TemplateModel value = noteTemplateViewModel3.getPaperModel().getValue();
        boolean containsKey = customPaperMultiSelectList.containsKey(value != null ? value.getUniqueId() : null);
        Context context = getContext();
        NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel4;
        }
        list = CollectionsKt___CollectionsKt.toList(noteTemplateViewModel2.getCustomPaperMultiSelectList().values());
        new DeleteCustomTemplateAction(context, list).build().doOnNext(new C11321f(containsKey)).doOnError(C11322g.f54859e).subscribe();
    }

    /* renamed from: g3 */
    public final void m43616g3(boolean containsCover) {
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(getBinding().titleContainer.templateTitleOrientationContainer.llCoverContainer, containsCover);
        if (containsCover) {
            return;
        }
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        TemplateDisplayType value = noteTemplateViewModel.getTemplateType().getValue();
        TemplateDisplayType templateDisplayType = TemplateDisplayType.PAPER;
        if (value != templateDisplayType) {
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel3;
            }
            noteTemplateViewModel2.getTemplateType().postValue(templateDisplayType);
        }
    }

    @NotNull
    public final DialogNoteTemplateBinding getBinding() {
        return (DialogNoteTemplateBinding) this.binding.getValue();
    }

    /* renamed from: h1 */
    public final void m43617h1() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getCoverModel().getValue() == null) {
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel3;
            }
            noteTemplateViewModel2.updateCoverSelect(new ArrayList());
        }
    }

    /* renamed from: h3 */
    public final void m43618h3(CoverModel item) {
        NoteTemplateViewModel noteTemplateViewModel = null;
        if (item != null) {
            NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
            if (noteTemplateViewModel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel2 = null;
            }
            if (noteTemplateViewModel2.getCustomCoverMultiSelectList().containsKey(item.getUniqueId())) {
                NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
                if (noteTemplateViewModel3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel3 = null;
                }
                noteTemplateViewModel3.getCustomCoverMultiSelectList().remove(item.getUniqueId());
            } else {
                NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
                if (noteTemplateViewModel4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel4 = null;
                }
                noteTemplateViewModel4.getCustomCoverMultiSelectList().put(item.getUniqueId(), item);
            }
        }
        TintTextView tintTextView = getBinding().titleContainer.categoryContainer.tvRename;
        NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
        if (noteTemplateViewModel5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel5 = null;
        }
        int size = noteTemplateViewModel5.getCustomCoverMultiSelectList().size();
        ResManager resManager = ResManager.INSTANCE;
        tintTextView.setEnabled(size == resManager.getInteger(C10651R.integer.custom_template_select_single));
        TintTextView tintTextView2 = getBinding().titleContainer.categoryContainer.tvDelete;
        NoteTemplateViewModel noteTemplateViewModel6 = this.templateViewModel;
        if (noteTemplateViewModel6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel = noteTemplateViewModel6;
        }
        tintTextView2.setEnabled(noteTemplateViewModel.getCustomCoverMultiSelectList().size() >= resManager.getInteger(C10651R.integer.custom_template_select_single));
        m43633n1().notifySelectChange();
    }

    /* renamed from: i1 */
    public final Map<TemplateSourceType, Fragment> m43619i1() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<Fragment> fragments = getChildFragmentManager().getFragments();
        Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
        for (Fragment fragment : fragments) {
            if (fragment instanceof MaterialTemplateFragment) {
                linkedHashMap.put(TemplateSourceType.MATERIALS, fragment);
            }
        }
        TemplateSourceType templateSourceType = TemplateSourceType.MATERIALS;
        if (!linkedHashMap.containsKey(templateSourceType)) {
            linkedHashMap.put(templateSourceType, new MaterialTemplateFragment());
        }
        return linkedHashMap;
    }

    /* renamed from: i3 */
    public final void m43620i3(TemplateModel item) {
        NoteTemplateViewModel noteTemplateViewModel = null;
        if (item != null) {
            NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
            if (noteTemplateViewModel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel2 = null;
            }
            if (noteTemplateViewModel2.getCustomPaperMultiSelectList().containsKey(item.getUniqueId())) {
                NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
                if (noteTemplateViewModel3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel3 = null;
                }
                noteTemplateViewModel3.getCustomPaperMultiSelectList().remove(item.getUniqueId());
            } else {
                NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
                if (noteTemplateViewModel4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel4 = null;
                }
                noteTemplateViewModel4.getCustomPaperMultiSelectList().put(item.getUniqueId(), item);
            }
        }
        TintTextView tintTextView = getBinding().titleContainer.categoryContainer.tvRename;
        NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
        if (noteTemplateViewModel5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel5 = null;
        }
        int size = noteTemplateViewModel5.getCustomPaperMultiSelectList().size();
        ResManager resManager = ResManager.INSTANCE;
        tintTextView.setEnabled(size == resManager.getInteger(C10651R.integer.custom_template_select_single));
        TintTextView tintTextView2 = getBinding().titleContainer.categoryContainer.tvDelete;
        NoteTemplateViewModel noteTemplateViewModel6 = this.templateViewModel;
        if (noteTemplateViewModel6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel = noteTemplateViewModel6;
        }
        tintTextView2.setEnabled(noteTemplateViewModel.getCustomPaperMultiSelectList().size() >= resManager.getInteger(C10651R.integer.custom_template_select_single));
        m43639q1().notifySelectChange();
    }

    /* renamed from: j1 */
    public final void m43621j1() {
        long j = ResManager.INSTANCE.getLong(C7373R.integer.sync_timeout);
        long currentTimeMillis = System.currentTimeMillis();
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Long> doOnNext = new FetchCoverPaperAction().build().onErrorReturn(C11323h.f54860e).doOnNext(new C11324i(currentTimeMillis, j, this));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    /* renamed from: j2 */
    public final void m43622j2() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        noteTemplateViewModel.getTemplateType().observe(this, new NoteTemplateFragmentKt.C11339a(new Function1<TemplateDisplayType, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initParamsObserve$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TemplateDisplayType templateDisplayType) {
                invoke2(templateDisplayType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(TemplateDisplayType templateDisplayType) {
                NoteTemplateFragment.this.m43644s3();
                NoteTemplateFragment noteTemplateFragment = NoteTemplateFragment.this;
                Intrinsics.checkNotNull(templateDisplayType);
                noteTemplateFragment.m43561E1(templateDisplayType);
                NoteTemplateFragment.this.m43653x3();
                NoteTemplateFragment.this.m43626k3();
                NoteTemplateFragment.this.m43629l3();
                NoteTemplateFragment.this.m43623j3();
            }
        }));
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel3 = null;
        }
        noteTemplateViewModel3.getOrientation().observe(this, new NoteTemplateFragmentKt.C11339a(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initParamsObserve$2
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
                if (num == null) {
                    return;
                }
                NoteTemplateFragment.this.m43651w3();
            }
        }));
        NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel4 = null;
        }
        noteTemplateViewModel4.getTemplateSourceType().observe(this, new NoteTemplateFragmentKt.C11339a(new Function1<TemplateSourceType, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initParamsObserve$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TemplateSourceType templateSourceType) {
                invoke2(templateSourceType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(TemplateSourceType templateSourceType) {
                NoteTemplateFragment noteTemplateFragment = NoteTemplateFragment.this;
                Intrinsics.checkNotNull(templateSourceType);
                noteTemplateFragment.m43557C1(templateSourceType);
                NoteTemplateFragment.this.m43651w3();
                NoteTemplateFragment.this.m43626k3();
                NoteTemplateFragment.this.m43640q3(templateSourceType);
            }
        }));
        NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
        if (noteTemplateViewModel5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel5 = null;
        }
        noteTemplateViewModel5.getTemplateSize().observe(this, new NoteTemplateFragmentKt.C11339a(new Function1<SizeFormat, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initParamsObserve$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SizeFormat sizeFormat) {
                invoke2(sizeFormat);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SizeFormat sizeFormat) {
                NoteTemplateFragment.this.m43651w3();
            }
        }));
        NoteTemplateViewModel noteTemplateViewModel6 = this.templateViewModel;
        if (noteTemplateViewModel6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel6 = null;
        }
        noteTemplateViewModel6.getTagList().observe(this, new NoteTemplateFragmentKt.C11339a(new Function1<List<? extends SyncTagModel>, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initParamsObserve$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends SyncTagModel> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends SyncTagModel> list) {
                TagsListAdapter m43652x1;
                int collectionSizeOrDefault;
                m43652x1 = NoteTemplateFragment.this.m43652x1();
                Intrinsics.checkNotNull(list);
                List<? extends SyncTagModel> list2 = list;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((SyncTagModel) it2.next()).getUniqueId());
                }
                m43652x1.submitList(arrayList);
            }
        }));
        NoteTemplateViewModel noteTemplateViewModel7 = this.templateViewModel;
        if (noteTemplateViewModel7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel7;
        }
        noteTemplateViewModel2.getVisibleMaterialButton().observe(this, new NoteTemplateFragmentKt.C11339a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initParamsObserve$6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void invoke2(java.lang.Boolean r3) {
                /*
                    r2 = this;
                    com.onyx.galaxy.note.category.ui.NoteTemplateFragment r0 = com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment.this
                    com.onyx.galaxy.note.databinding.DialogNoteTemplateBinding r0 = r0.getBinding()
                    com.onyx.galaxy.note.databinding.CreateNoteTemplateTitleContainerBinding r0 = r0.titleContainer
                    com.onyx.galaxy.note.databinding.LayoutCategoryTitleContainerBinding r0 = r0.categoryContainer
                    com.onyx.android.sdk.ui.EllipsizingTextView r0 = r0.tvGotoMaterialCenter
                    java.lang.String r1 = "tvGotoMaterialCenter"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
                    boolean r3 = r3.booleanValue()
                    r1 = 0
                    if (r3 == 0) goto L33
                    com.onyx.galaxy.note.category.ui.NoteTemplateFragment r2 = com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment.this
                    com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel r2 = com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment.access$getTemplateViewModel$p(r2)
                    if (r2 != 0) goto L29
                    java.lang.String r2 = "templateViewModel"
                    kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
                    r2 = 0
                L29:
                    com.onyx.galaxy.note.category.data.TemplateSourceType r2 = r2.m72418getTemplateSourceType()
                    com.onyx.galaxy.note.category.data.TemplateSourceType r3 = com.onyx.galaxy.note.category.data.TemplateSourceType.MATERIALS
                    if (r2 != r3) goto L33
                    r2 = 1
                    goto L34
                L33:
                    r2 = r1
                L34:
                    if (r2 == 0) goto L37
                    goto L39
                L37:
                    r1 = 8
                L39:
                    r0.setVisibility(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment$initParamsObserve$6.invoke2(java.lang.Boolean):void");
            }
        }));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
    
        if (r1.getCoverModel().getValue() != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0041, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
    
        if (r1.getPaperModel().getValue() != null) goto L22;
     */
    /* renamed from: j3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m43623j3() {
        /*
            r6 = this;
            com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel r0 = r6.templateViewModel
            r1 = 0
            java.lang.String r2 = "templateViewModel"
            if (r0 != 0) goto Lb
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r0 = r1
        Lb:
            androidx.lifecycle.MutableLiveData r0 = r0.getTemplateType()
            java.lang.Object r0 = r0.getValue()
            com.onyx.galaxy.note.category.data.TemplateDisplayType r3 = com.onyx.galaxy.note.category.data.TemplateDisplayType.COVER
            r4 = 1
            r5 = 0
            if (r0 != r3) goto L2d
            com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel r0 = r6.templateViewModel
            if (r0 != 0) goto L21
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            goto L22
        L21:
            r1 = r0
        L22:
            androidx.lifecycle.MutableLiveData r0 = r1.getCoverModel()
            java.lang.Object r0 = r0.getValue()
            if (r0 == 0) goto L41
            goto L42
        L2d:
            com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel r0 = r6.templateViewModel
            if (r0 != 0) goto L35
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            goto L36
        L35:
            r1 = r0
        L36:
            androidx.lifecycle.MutableLiveData r0 = r1.getPaperModel()
            java.lang.Object r0 = r0.getValue()
            if (r0 == 0) goto L41
            goto L42
        L41:
            r4 = r5
        L42:
            com.onyx.galaxy.note.databinding.DialogNoteTemplateBinding r6 = r6.getBinding()
            com.onyx.galaxy.note.databinding.CreateNoteTemplateTitleContainerBinding r6 = r6.titleContainer
            com.onyx.galaxy.note.databinding.ChangeNoteTemplateTitleContainerBinding r6 = r6.changeTitleContainer
            com.onyx.android.sdk.ui.MediumTextView r6 = r6.tvTemplateApply
            r6.setEnabled(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment.m43623j3():void");
    }

    /* renamed from: k1 */
    public final TemplateJsonBean m43624k1() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        SizeFormat value = noteTemplateViewModel.getTemplateSize().getValue();
        Intrinsics.checkNotNull(value);
        String name = value.name();
        NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
        if (noteTemplateViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel3 = null;
        }
        if (!noteTemplateViewModel3.getTemplateFragmentArgs().getChangeContainsCover()) {
            return null;
        }
        NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel4 = null;
        }
        CoverModel value2 = noteTemplateViewModel4.getCoverModel().getValue();
        if (!Intrinsics.areEqual(value2 != null ? value2.getSizeFormat() : null, SizeFormat.CUSTOM.name())) {
            NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
            if (noteTemplateViewModel5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel5 = null;
            }
            CoverModel value3 = noteTemplateViewModel5.getCoverModel().getValue();
            if (value3 != null) {
                value3.setSizeFormat(name);
            }
        }
        Templates templates = Templates.INSTANCE;
        NoteTemplateViewModel noteTemplateViewModel6 = this.templateViewModel;
        if (noteTemplateViewModel6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel6;
        }
        return templates.coverModelToJsonBean(noteTemplateViewModel2.getCoverModel().getValue());
    }

    /* renamed from: k2 */
    public final void m43625k2() {
        TemplateFragmentArgs templateFragmentArgs = this.templateFragmentArgs;
        if (templateFragmentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
            templateFragmentArgs = null;
        }
        setStyle(1, templateFragmentArgs.getFullWindowShow() ? C10651R.style.FullScreenDialogTheme : C10651R.style.NormalDialogTheme);
    }

    /* renamed from: k3 */
    public final void m43626k3() {
        List<Integer> emptyList;
        TemplateArgs templateArgs;
        TemplateResourceWrapper templateResourceWrapper;
        TemplateArgs templateArgs2;
        TemplateResourceWrapper templateResourceWrapper2;
        List<Integer> emptyList2;
        TemplateResourceWrapper templateResourceWrapper3;
        TemplateResourceWrapper templateResourceWrapper4;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getTemplateType().getValue() == TemplateDisplayType.COVER) {
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel3 = null;
            }
            MutableLiveData<CoverModel> coverModel = noteTemplateViewModel3.getCoverModel();
            CoverModel value = coverModel.getValue();
            if (value != null && value.isOfficialSource()) {
                CoverModel value2 = coverModel.getValue();
                if (value2 == null || (templateResourceWrapper4 = value2.getTemplateResourceWrapper()) == null || (emptyList2 = templateResourceWrapper4.getFillColorList()) == null) {
                    emptyList2 = CollectionsKt__CollectionsKt.emptyList();
                }
            } else {
                emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            }
            List<Integer> safelySubList = CollectionKt.safelySubList(emptyList2, 0, NoteConfigConst.INSTANCE.getDEFAULT_TEMPLATE_PAGE_COLOR_LIST().size());
            LinearLayout llColorArgs = getBinding().titleContainer.categoryContainer.llColorArgs;
            Intrinsics.checkNotNullExpressionValue(llColorArgs, "llColorArgs");
            llColorArgs.setVisibility(safelySubList.isEmpty() ^ true ? 0 : 8);
            LinearLayout llSpaceArgs = getBinding().titleContainer.categoryContainer.llSpaceArgs;
            Intrinsics.checkNotNullExpressionValue(llSpaceArgs, "llSpaceArgs");
            llSpaceArgs.setVisibility(8);
            NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
            if (noteTemplateViewModel4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel4 = null;
            }
            CoverModel value3 = noteTemplateViewModel4.getCoverModel().getValue();
            m43632m3(safelySubList, (value3 == null || (templateResourceWrapper3 = value3.getTemplateResourceWrapper()) == null) ? 0 : templateResourceWrapper3.getCurResourceIndex(), true);
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().titleContainer.categoryContainer.applyAll, false);
        }
        NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
        if (noteTemplateViewModel5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel5 = null;
        }
        if (noteTemplateViewModel5.getTemplateType().getValue() == TemplateDisplayType.PAPER) {
            NoteTemplateViewModel noteTemplateViewModel6 = this.templateViewModel;
            if (noteTemplateViewModel6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel6 = null;
            }
            MutableLiveData<TemplateModel> paperModel = noteTemplateViewModel6.getPaperModel();
            TemplateModel value4 = paperModel.getValue();
            if (value4 != null && value4.isOfficialSource()) {
                TemplateModel value5 = paperModel.getValue();
                if (value5 == null || (templateResourceWrapper2 = value5.getTemplateResourceWrapper()) == null || (emptyList = templateResourceWrapper2.getFillColorList()) == null) {
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                }
            } else {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            List<Integer> safelySubList2 = CollectionKt.safelySubList(emptyList, 0, NoteConfigConst.INSTANCE.getDEFAULT_TEMPLATE_PAGE_COLOR_LIST().size());
            LinearLayout llColorArgs2 = getBinding().titleContainer.categoryContainer.llColorArgs;
            Intrinsics.checkNotNullExpressionValue(llColorArgs2, "llColorArgs");
            llColorArgs2.setVisibility(safelySubList2.isEmpty() ^ true ? 0 : 8);
            LinearLayout llSpaceArgs2 = getBinding().titleContainer.categoryContainer.llSpaceArgs;
            Intrinsics.checkNotNullExpressionValue(llSpaceArgs2, "llSpaceArgs");
            TemplateModel value6 = paperModel.getValue();
            llSpaceArgs2.setVisibility(((value6 == null || (templateArgs2 = value6.getTemplateArgs()) == null) ? null : templateArgs2.getSpaceArgs()) != null ? 0 : 8);
            NoteTemplateViewModel noteTemplateViewModel7 = this.templateViewModel;
            if (noteTemplateViewModel7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel7 = null;
            }
            TemplateModel value7 = noteTemplateViewModel7.getPaperModel().getValue();
            m43632m3(safelySubList2, (value7 == null || (templateResourceWrapper = value7.getTemplateResourceWrapper()) == null) ? 0 : templateResourceWrapper.getCurResourceIndex(), false);
            TemplateModel value8 = paperModel.getValue();
            m43649v3((value8 == null || (templateArgs = value8.getTemplateArgs()) == null) ? null : templateArgs.getSpaceArgs());
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().titleContainer.categoryContainer.applyAll, m43562E2());
            MediumTextView mediumTextView = getBinding().titleContainer.tvTemplateCreate;
            NoteTemplateViewModel noteTemplateViewModel8 = this.templateViewModel;
            if (noteTemplateViewModel8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            } else {
                noteTemplateViewModel2 = noteTemplateViewModel8;
            }
            mediumTextView.setText(noteTemplateViewModel2.getTemplateFragmentArgs().isQuicklyType() ? ResManager.INSTANCE.getStringSafely(C10651R.string.apply) : ResManager.INSTANCE.getStringSafely(C10651R.string.dialog_create_sub_folder_create));
        }
    }

    /* renamed from: l1 */
    public final CoverCategoryAdapter m43627l1() {
        return (CoverCategoryAdapter) this.coverCategoryAdapter.getValue();
    }

    /* renamed from: l2 */
    public final void m43628l2() {
        ArrayList arrayListOf;
        TintTabLayoutView templateChangeTabLayout = getBinding().titleContainer.changeTitleContainer.templateChangeTabLayout;
        Intrinsics.checkNotNullExpressionValue(templateChangeTabLayout, "templateChangeTabLayout");
        templateChangeTabLayout.setVisibility(m43560D2() ^ true ? 0 : 8);
        MediumTextView tvChangeNewPageTemplateTitle = getBinding().titleContainer.changeTitleContainer.tvChangeNewPageTemplateTitle;
        Intrinsics.checkNotNullExpressionValue(tvChangeNewPageTemplateTitle, "tvChangeNewPageTemplateTitle");
        tvChangeNewPageTemplateTitle.setVisibility(m43560D2() ? 0 : 8);
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getTemplateFragmentArgs().getOnlyCoverChange()) {
            arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(TemplateDisplayType.COVER);
        } else {
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel3 = null;
            }
            arrayListOf = noteTemplateViewModel3.getTemplateFragmentArgs().getOnlyPaperChange() ? CollectionsKt__CollectionsKt.arrayListOf(TemplateDisplayType.PAPER) : CollectionsKt__CollectionsKt.arrayListOf(TemplateDisplayType.COVER, TemplateDisplayType.PAPER);
        }
        TintTabLayoutView tintTabLayoutView = getBinding().titleContainer.changeTitleContainer.templateChangeTabLayout;
        NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
        if (noteTemplateViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel4;
        }
        TemplateDisplayType templateDisplayType = noteTemplateViewModel2.getTemplateFragmentArgs().getOnlyCoverChange() ? TemplateDisplayType.COVER : TemplateDisplayType.PAPER;
        Intrinsics.checkNotNull(tintTabLayoutView);
        TabLayoutKt.addChangeTemplateTabs(tintTabLayoutView, arrayListOf, templateDisplayType, new Function1<TabLayout.Tab, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteTemplateFragment$initTabLayout$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TabLayout.Tab tab) {
                invoke2(tab);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TabLayout.Tab tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                Object tag = tab.getTag();
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.galaxy.note.category.data.TemplateDisplayType");
                TemplateDisplayType templateDisplayType2 = (TemplateDisplayType) tag;
                NoteTemplateViewModel noteTemplateViewModel5 = NoteTemplateFragment.this.templateViewModel;
                NoteTemplateViewModel noteTemplateViewModel6 = null;
                if (noteTemplateViewModel5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel5 = null;
                }
                if (noteTemplateViewModel5.getTemplateType().getValue() == templateDisplayType2) {
                    return;
                }
                if (templateDisplayType2 == TemplateDisplayType.COVER) {
                    NoteTemplateViewModel noteTemplateViewModel7 = NoteTemplateFragment.this.templateViewModel;
                    if (noteTemplateViewModel7 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                        noteTemplateViewModel7 = null;
                    }
                    noteTemplateViewModel7.getTemplateFragmentArgs().setChangeContainsCover(true);
                    NoteTemplateFragment.this.m43634n3();
                } else {
                    NoteTemplateFragment.this.m43646t3();
                }
                NoteTemplateViewModel noteTemplateViewModel8 = NoteTemplateFragment.this.templateViewModel;
                if (noteTemplateViewModel8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                } else {
                    noteTemplateViewModel6 = noteTemplateViewModel8;
                }
                noteTemplateViewModel6.getTemplateType().postValue(templateDisplayType2);
            }
        });
    }

    /* renamed from: l3 */
    public final void m43629l3() {
        m43592W2(0);
    }

    /* renamed from: m1 */
    public final CoverTitleCategoryAdapter m43630m1() {
        return (CoverTitleCategoryAdapter) this.coverCategoryTitleAdapter.getValue();
    }

    /* renamed from: m2 */
    public final void m43631m2() {
        TintImageView ivBenchMarkAdd = getBinding().titleContainer.templateTitleOrientationContainer.ivBenchMarkAdd;
        Intrinsics.checkNotNullExpressionValue(ivBenchMarkAdd, "ivBenchMarkAdd");
        ViewKt.click$default(ivBenchMarkAdd, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43531n2(NoteTemplateFragment.this, view);
            }
        }, 1, null);
        m43652x1().setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() { // from class: com.sunia.HTREnginev2.u3k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemLongClickListener
            public final boolean onLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m43532o2;
                m43532o2 = NoteTemplateFragment.m43532o2(baseQuickAdapter, view, i);
                return m43532o2;
            }
        });
        RecyclerView clTagContainer = getBinding().titleContainer.templateTitleOrientationContainer.clTagContainer;
        Intrinsics.checkNotNullExpressionValue(clTagContainer, "clTagContainer");
        MaterialDividerItemDecoration materialDividerItemDecoration = new MaterialDividerItemDecoration(requireContext(), 0);
        materialDividerItemDecoration.setDividerColor(0);
        materialDividerItemDecoration.setDividerThickness(ResManager.INSTANCE.getDimensionPixelSize(C7384R.dimen.dp_6));
        clTagContainer.addItemDecoration(materialDividerItemDecoration);
        clTagContainer.setLayoutManager(new LinearLayoutManager(requireContext(), 0, false));
        clTagContainer.setAdapter(m43652x1());
    }

    /* renamed from: m3 */
    public final void m43632m3(List<Integer> colorList, int selectColorIndex, boolean isCover) {
        if (colorList != null) {
            if (isCover) {
                getBinding().titleContainer.categoryContainer.clColorList.setAdapter(m43654y1());
                m43654y1().setSelectedPosition(selectColorIndex);
                m43654y1().submitList(colorList);
            } else {
                getBinding().titleContainer.categoryContainer.clColorList.setAdapter(m43655z1());
                m43655z1().setSelectedPosition(selectColorIndex);
                m43655z1().submitList(colorList);
            }
        }
    }

    /* renamed from: n1 */
    public final CustomCoverAdapter m43633n1() {
        return (CustomCoverAdapter) this.customCoverAdapter.getValue();
    }

    /* renamed from: n3 */
    public final void m43634n3() {
        DispatchClickCallbackConstraintLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        Disposable subscribe = RxjavaKt.postDelayObservable(root, 500).observeOn(AndroidSchedulers.mainThread()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.s3k
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteTemplateFragment.m43533o3(NoteTemplateFragment.this);
            }
        }).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: o1 */
    public final QuickAdapterHelper m43635o1() {
        return (QuickAdapterHelper) this.customCoverAdapterHelper.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1) {
            if (requestCode == 1001) {
                List<Uri> obtainResult = Matisse.obtainResult(data);
                Intrinsics.checkNotNull(obtainResult);
                m43589V2(obtainResult);
                m43566H1(obtainResult);
                return;
            }
            if (requestCode == 1002) {
                List<Uri> obtainResult2 = Matisse.obtainResult(data);
                Intrinsics.checkNotNull(obtainResult2);
                m43589V2(obtainResult2);
                m43565G1(obtainResult2);
                return;
            }
            if (requestCode == 2002) {
                OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
                Observable<R> flatMap = new ObtainDocumentListAction(data).build().flatMap(new C11334s());
                Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
                OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, flatMap, null, null, 3, null);
                return;
            }
            if (requestCode != 2003) {
                return;
            }
            OnyxErrorHandler onyxErrorHandler2 = OnyxErrorHandler.INSTANCE;
            Observable<R> flatMap2 = new ObtainDocumentListAction(data).build().flatMap(new C11335t());
            Intrinsics.checkNotNullExpressionValue(flatMap2, "flatMap(...)");
            OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler2, flatMap2, null, null, 3, null);
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        m43556B2();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063317, this, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Dialog dialog = getDialog();
        Intrinsics.checkNotNull(dialog);
        Window window = dialog.getWindow();
        Intrinsics.checkNotNull(window);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        window.setAttributes(attributes);
        NoteTemplateViewModel noteTemplateViewModel = (NoteTemplateViewModel) FragmentKt.getViewModel(this, NoteTemplateViewModel.class);
        this.templateViewModel = noteTemplateViewModel;
        TemplateFragmentArgs templateFragmentArgs = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        TemplateFragmentArgs templateFragmentArgs2 = this.templateFragmentArgs;
        if (templateFragmentArgs2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
        } else {
            templateFragmentArgs = templateFragmentArgs2;
        }
        noteTemplateViewModel.setTemplateFragmentArgs(templateFragmentArgs);
        m43656z2();
        m43597Y1();
        m43591W1();
        DispatchClickCallbackConstraintLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.compositeDisposable.dispose();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGlobalDocumentOpenSuccessEvent(@NotNull GlobalDocumentOpenSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        dismissAllowingStateLoss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHandleCustomCoverDocumentsEvent(@NotNull HandleCustomCoverDocumentsEvent event) {
        Object firstOrNull;
        android.app.Activity context;
        List listOf;
        Intrinsics.checkNotNullParameter(event, "event");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) event.getFileEntries());
        DocumentFileEntry documentFileEntry = (DocumentFileEntry) firstOrNull;
        if (documentFileEntry == null) {
            return;
        }
        WeakReference<android.app.Activity> activityWeakReference = event.getActivityWeakReference();
        if (activityWeakReference == null || (context = activityWeakReference.get()) == null) {
            context = getBinding().getRoot().getContext();
        }
        FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
        Uri fileUri = documentFileEntry.getFileUri();
        ResManager resManager = ResManager.INSTANCE;
        if (fileExtensionUtils.isPdfFile(UriKt.getFileName(fileUri, resManager.getAppContext()))) {
            EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
            Intrinsics.checkNotNull(context);
            new SelectFilePagesAsCoverTemplatePopup(docManagerBundle, context, documentFileEntry, resManager.getInteger(C10651R.integer.file_picker_max_count)).show();
        } else {
            EditorBundle docManagerBundle2 = DocCollectionBundle.INSTANCE.docManagerBundle();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(TemplateFileBean.Companion.createTemplateFileBean$default(TemplateFileBean.INSTANCE, documentFileEntry.getFileUri(), null, null, 6, null));
            RxBaseAction.execute$default(new ImportFilesAsCustomCoverAction(docManagerBundle2, listOf), null, null, null, 7, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHandleCustomPaperDocumentsEvent(@NotNull HandleCustomPaperDocumentsEvent event) {
        Object firstOrNull;
        android.app.Activity context;
        List listOf;
        Intrinsics.checkNotNullParameter(event, "event");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) event.getFileEntries());
        DocumentFileEntry documentFileEntry = (DocumentFileEntry) firstOrNull;
        if (documentFileEntry == null) {
            return;
        }
        WeakReference<android.app.Activity> activityWeakReference = event.getActivityWeakReference();
        if (activityWeakReference == null || (context = activityWeakReference.get()) == null) {
            context = getBinding().getRoot().getContext();
        }
        FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
        Uri fileUri = documentFileEntry.getFileUri();
        ResManager resManager = ResManager.INSTANCE;
        if (fileExtensionUtils.isPdfFile(UriKt.getFileName(fileUri, resManager.getAppContext()))) {
            EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
            Intrinsics.checkNotNull(context);
            new SelectFilePagesAsPaperTemplatePopup(docManagerBundle, context, documentFileEntry, resManager.getInteger(C10651R.integer.file_picker_max_count)).show();
        } else {
            EditorBundle docManagerBundle2 = DocCollectionBundle.INSTANCE.docManagerBundle();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(TemplateFileBean.Companion.createTemplateFileBean$default(TemplateFileBean.INSTANCE, documentFileEntry.getFileUri(), null, null, 6, null));
            RxBaseAction.execute$default(new ImportFilesAsCustomPaperAction(docManagerBundle2, listOf), null, null, null, 7, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportCustomCoverEvent(@NotNull ImportCustomCoverEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        noteTemplateViewModel.loadCustomCoverList();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportCustomPaperEvent(@NotNull ImportCustomPaperEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        noteTemplateViewModel.loadCustomPaperList();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        Window window;
        super.onResume();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowKt.hideNavigationBar(window);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        m43556B2();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m43583T1();
    }

    /* renamed from: p1 */
    public final CustomTemplateAddAdapter m43636p1() {
        return (CustomTemplateAddAdapter) this.customCoverHeaderAdapter.getValue();
    }

    /* renamed from: p2 */
    public final void m43637p2() {
        m43628l2();
        MediumTextView tvTemplateCreate = getBinding().titleContainer.tvTemplateCreate;
        Intrinsics.checkNotNullExpressionValue(tvTemplateCreate, "tvTemplateCreate");
        ViewKt.click(tvTemplateCreate, ResManager.INSTANCE.getLong(C10651R.integer.create_note_click_time_interval), new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43534q2(NoteTemplateFragment.this, view);
            }
        });
        getBinding().titleContainer.changeTitleContainer.tvTemplateApply.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43536r2(NoteTemplateFragment.this, view);
            }
        });
        getBinding().titleContainer.ivNoteTemplateBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43538s2(NoteTemplateFragment.this, view);
            }
        });
        getBinding().titleContainer.changeTitleContainer.ivNoteTemplateBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.y3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43540t2(NoteTemplateFragment.this, view);
            }
        });
        getBinding().titleContainer.categoryContainer.tvSelect.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.z3k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43542u2(NoteTemplateFragment.this, view);
            }
        });
        getBinding().titleContainer.categoryContainer.tvDone.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.a4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43545v2(NoteTemplateFragment.this, view);
            }
        });
        getBinding().titleContainer.categoryContainer.tvRename.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.b4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43547w2(NoteTemplateFragment.this, view);
            }
        });
        getBinding().titleContainer.categoryContainer.tvDelete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.c4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43549x2(NoteTemplateFragment.this, view);
            }
        });
        EllipsizingTextView tvGotoMaterialCenter = getBinding().titleContainer.categoryContainer.tvGotoMaterialCenter;
        Intrinsics.checkNotNullExpressionValue(tvGotoMaterialCenter, "tvGotoMaterialCenter");
        ViewKt.click$default(tvGotoMaterialCenter, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.d4k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTemplateFragment.m43551y2(view);
            }
        }, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x005b  */
    /* renamed from: p3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m43638p3() {
        /*
            r6 = this;
            com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel r0 = r6.templateViewModel
            r1 = 0
            java.lang.String r2 = "templateViewModel"
            if (r0 != 0) goto Lb
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r0 = r1
        Lb:
            androidx.lifecycle.MutableLiveData r0 = r0.getTemplateType()
            java.lang.Object r0 = r0.getValue()
            com.onyx.galaxy.note.category.data.TemplateDisplayType r0 = (com.onyx.galaxy.note.category.data.TemplateDisplayType) r0
            com.onyx.galaxy.note.category.data.TemplateDisplayType r3 = com.onyx.galaxy.note.category.data.TemplateDisplayType.PAPER
            r4 = 1
            if (r0 != r3) goto L33
            com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel r3 = r6.templateViewModel
            if (r3 != 0) goto L22
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r3 = r1
        L22:
            androidx.lifecycle.MutableLiveData r3 = r3.getCustomPaperList()
            java.lang.Object r3 = r3.getValue()
            java.util.List r3 = (java.util.List) r3
            if (r3 == 0) goto L33
            boolean r3 = r3.isEmpty()
            goto L34
        L33:
            r3 = r4
        L34:
            com.onyx.galaxy.note.category.data.TemplateDisplayType r5 = com.onyx.galaxy.note.category.data.TemplateDisplayType.COVER
            if (r0 != r5) goto L53
            com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel r0 = r6.templateViewModel
            if (r0 != 0) goto L40
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r0 = r1
        L40:
            androidx.lifecycle.MutableLiveData r0 = r0.getCustomCoverList()
            java.lang.Object r0 = r0.getValue()
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L52
            boolean r0 = r0.isEmpty()
            r3 = r0
            goto L53
        L52:
            r3 = r4
        L53:
            com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel r0 = r6.templateViewModel
            if (r0 != 0) goto L5b
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            goto L5c
        L5b:
            r1 = r0
        L5c:
            com.onyx.galaxy.note.category.data.TemplateSourceType r0 = r1.m72418getTemplateSourceType()
            com.onyx.galaxy.note.category.data.TemplateSourceType r1 = com.onyx.galaxy.note.category.data.TemplateSourceType.CUSTOM
            r2 = 0
            if (r0 != r1) goto L67
            r0 = r4
            goto L68
        L67:
            r0 = r2
        L68:
            com.onyx.galaxy.note.databinding.DialogNoteTemplateBinding r1 = r6.getBinding()
            com.onyx.galaxy.note.databinding.CreateNoteTemplateTitleContainerBinding r1 = r1.titleContainer
            com.onyx.galaxy.note.databinding.LayoutCategoryTitleContainerBinding r1 = r1.categoryContainer
            android.widget.LinearLayout r1 = r1.llCustomSelectedContainer
            java.lang.String r5 = "llCustomSelectedContainer"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r5)
            if (r3 != 0) goto L88
            if (r0 == 0) goto L88
            boolean r0 = r6.m43562E2()
            if (r0 != 0) goto L88
            boolean r6 = r6.m43560D2()
            if (r6 != 0) goto L88
            goto L89
        L88:
            r4 = r2
        L89:
            if (r4 == 0) goto L8c
            goto L8e
        L8c:
            r2 = 8
        L8e:
            r1.setVisibility(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment.m43638p3():void");
    }

    /* renamed from: q1 */
    public final CustomPaperAdapter m43639q1() {
        return (CustomPaperAdapter) this.customPaperAdapter.getValue();
    }

    /* renamed from: q3 */
    public final void m43640q3(TemplateSourceType templateSourceType) {
        m43563F1(templateSourceType);
        Fragment fragment = m43645t1().get(templateSourceType);
        if (fragment == null || fragment.isVisible()) {
            return;
        }
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "beginTransaction(...)");
        if (fragment.isAdded()) {
            beginTransaction.show(fragment);
            beginTransaction.commitNowAllowingStateLoss();
        } else {
            beginTransaction.add(C10651R.id.fly_content, fragment);
            beginTransaction.commitNowAllowingStateLoss();
        }
    }

    /* renamed from: r1 */
    public final QuickAdapterHelper m43641r1() {
        return (QuickAdapterHelper) this.customPaperAdapterHelper.getValue();
    }

    /* renamed from: r3 */
    public final void m43642r3(TemplateModel templateModel) {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        noteTemplateViewModel.setGeoLayout(TemplateModel.Companion.loadGeoLayoutFromTemplateModel$default(TemplateModel.INSTANCE, templateModel, null, false, 3, null));
    }

    /* renamed from: s1 */
    public final CustomTemplateAddAdapter m43643s1() {
        return (CustomTemplateAddAdapter) this.customPaperHeaderAdapter.getValue();
    }

    /* renamed from: s3 */
    public final void m43644s3() {
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.isOfficialTemplateSourceType()) {
            NoteTemplateViewModel noteTemplateViewModel2 = this.templateViewModel;
            if (noteTemplateViewModel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel2 = null;
            }
            if (noteTemplateViewModel2.getTemplateFragmentArgs().isBoundlessNoteOperation()) {
                return;
            }
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel3 = null;
            }
            if (noteTemplateViewModel3.getTemplateType().getValue() == TemplateDisplayType.COVER) {
                NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
                if (noteTemplateViewModel4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel4 = null;
                }
                if (noteTemplateViewModel4.getCoverModel().getValue() == null) {
                    return;
                }
                NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
                if (noteTemplateViewModel5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel5 = null;
                }
                if (noteTemplateViewModel5.getOrientation().getValue() == null) {
                    return;
                }
                NoteTemplateViewModel noteTemplateViewModel6 = this.templateViewModel;
                if (noteTemplateViewModel6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel6 = null;
                }
                CoverModel value = noteTemplateViewModel6.getCoverModel().getValue();
                Integer valueOf = value != null ? Integer.valueOf(value.getOrientation()) : null;
                NoteTemplateViewModel noteTemplateViewModel7 = this.templateViewModel;
                if (noteTemplateViewModel7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel7 = null;
                }
                if (Intrinsics.areEqual(valueOf, noteTemplateViewModel7.getOrientation().getValue())) {
                    return;
                }
                NoteTemplateViewModel noteTemplateViewModel8 = this.templateViewModel;
                if (noteTemplateViewModel8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel8 = null;
                }
                MutableLiveData<Integer> orientation = noteTemplateViewModel8.getOrientation();
                NoteTemplateViewModel noteTemplateViewModel9 = this.templateViewModel;
                if (noteTemplateViewModel9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel9 = null;
                }
                CoverModel value2 = noteTemplateViewModel9.getCoverModel().getValue();
                orientation.postValue(value2 != null ? Integer.valueOf(value2.getOrientation()) : null);
                NoteTemplateViewModel noteTemplateViewModel10 = this.templateViewModel;
                if (noteTemplateViewModel10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                    noteTemplateViewModel10 = null;
                }
                CoverModel value3 = noteTemplateViewModel10.getCoverModel().getValue();
                m43577O2(value3 != null ? Integer.valueOf(value3.getOrientation()) : null);
                return;
            }
            NoteTemplateViewModel noteTemplateViewModel11 = this.templateViewModel;
            if (noteTemplateViewModel11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel11 = null;
            }
            if (noteTemplateViewModel11.getPaperModel().getValue() == null) {
                return;
            }
            NoteTemplateViewModel noteTemplateViewModel12 = this.templateViewModel;
            if (noteTemplateViewModel12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel12 = null;
            }
            if (noteTemplateViewModel12.getOrientation().getValue() == null) {
                return;
            }
            NoteTemplateViewModel noteTemplateViewModel13 = this.templateViewModel;
            if (noteTemplateViewModel13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel13 = null;
            }
            TemplateModel value4 = noteTemplateViewModel13.getPaperModel().getValue();
            Integer valueOf2 = value4 != null ? Integer.valueOf(value4.getOrientation()) : null;
            NoteTemplateViewModel noteTemplateViewModel14 = this.templateViewModel;
            if (noteTemplateViewModel14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel14 = null;
            }
            if (Intrinsics.areEqual(valueOf2, noteTemplateViewModel14.getOrientation().getValue())) {
                return;
            }
            NoteTemplateViewModel noteTemplateViewModel15 = this.templateViewModel;
            if (noteTemplateViewModel15 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel15 = null;
            }
            MutableLiveData<Integer> orientation2 = noteTemplateViewModel15.getOrientation();
            NoteTemplateViewModel noteTemplateViewModel16 = this.templateViewModel;
            if (noteTemplateViewModel16 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel16 = null;
            }
            TemplateModel value5 = noteTemplateViewModel16.getPaperModel().getValue();
            orientation2.postValue(value5 != null ? Integer.valueOf(value5.getOrientation()) : null);
            NoteTemplateViewModel noteTemplateViewModel17 = this.templateViewModel;
            if (noteTemplateViewModel17 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel17 = null;
            }
            TemplateModel value6 = noteTemplateViewModel17.getPaperModel().getValue();
            m43578P2(value6 != null ? Integer.valueOf(value6.getOrientation()) : null);
        }
    }

    /* renamed from: t1 */
    public final Map<TemplateSourceType, Fragment> m43645t1() {
        return (Map) this.fragments.getValue();
    }

    /* renamed from: t3 */
    public final void m43646t3() {
        DispatchClickCallbackConstraintLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        Disposable subscribe = RxjavaKt.postDelayObservable(root, 500).observeOn(AndroidSchedulers.mainThread()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.b3k
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteTemplateFragment.m43543u3(NoteTemplateFragment.this);
            }
        }).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: u1 */
    public final int m43647u1() {
        TemplateFragmentArgs templateFragmentArgs = null;
        if (getBinding().titleContainer.categoryContainer.applyAll.isChecked()) {
            TemplateFragmentArgs templateFragmentArgs2 = this.templateFragmentArgs;
            if (templateFragmentArgs2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
            } else {
                templateFragmentArgs = templateFragmentArgs2;
            }
            return templateFragmentArgs.getHasPictureOrPDF() ? C10651R.string.change_all_other_tips : C10651R.string.change_all_tips;
        }
        TemplateFragmentArgs templateFragmentArgs3 = this.templateFragmentArgs;
        if (templateFragmentArgs3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateFragmentArgs");
        } else {
            templateFragmentArgs = templateFragmentArgs3;
        }
        return TemplateResourceConstant.INSTANCE.isPictureOrPDF(Templates.INSTANCE.getTemplateResourceType(templateFragmentArgs.getPaperTemplateJsonBean())) ? C10651R.string.change_single_other_tips : C10651R.string.change_single_tips;
    }

    /* renamed from: v1 */
    public final PaperCategoryAdapter m43648v1() {
        return (PaperCategoryAdapter) this.paperCategoryAdapter.getValue();
    }

    /* renamed from: v3 */
    public final void m43649v3(SpaceArgs spaceArgs) {
        if (spaceArgs != null) {
            getBinding().titleContainer.categoryContainer.tvLineSpace.setText(String.valueOf(spaceArgs.loadSpaceHalfUpDisplayValue()));
        }
    }

    /* renamed from: w1 */
    public final PaperTitleCategoryAdapter m43650w1() {
        return (PaperTitleCategoryAdapter) this.paperCategoryTitleAdapter.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x008a  */
    /* renamed from: w3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m43651w3() {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.p044ui.NoteTemplateFragment.m43651w3():void");
    }

    /* renamed from: x1 */
    public final TagsListAdapter m43652x1() {
        return (TagsListAdapter) this.tagListAdapter.getValue();
    }

    /* renamed from: x3 */
    public final void m43653x3() {
        String string;
        NoteTemplateViewModel noteTemplateViewModel = this.templateViewModel;
        NoteTemplateViewModel noteTemplateViewModel2 = null;
        if (noteTemplateViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel = null;
        }
        if (noteTemplateViewModel.getTemplateType().getValue() == TemplateDisplayType.PAPER) {
            NoteTemplateViewModel noteTemplateViewModel3 = this.templateViewModel;
            if (noteTemplateViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel3 = null;
            }
            int i = WhenMappings.$EnumSwitchMapping$0[noteTemplateViewModel3.m72418getTemplateSourceType().ordinal()];
            if (i == 1) {
                string = ResManager.INSTANCE.getString(requireContext(), C10651R.string.custom_paper);
            } else if (i == 2) {
                string = ResManager.INSTANCE.getString(requireContext(), C10651R.string.paper_template);
            } else {
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                string = ResManager.INSTANCE.getString(C10651R.string.added_paper);
            }
        } else {
            NoteTemplateViewModel noteTemplateViewModel4 = this.templateViewModel;
            if (noteTemplateViewModel4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
                noteTemplateViewModel4 = null;
            }
            int i2 = WhenMappings.$EnumSwitchMapping$0[noteTemplateViewModel4.m72418getTemplateSourceType().ordinal()];
            if (i2 == 1) {
                string = ResManager.INSTANCE.getString(requireContext(), C10651R.string.custom_cover);
            } else if (i2 == 2) {
                string = ResManager.INSTANCE.getString(requireContext(), C10651R.string.cover_template);
            } else {
                if (i2 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                string = ResManager.INSTANCE.getString(C10651R.string.added_cover);
            }
        }
        NoteTemplateViewModel noteTemplateViewModel5 = this.templateViewModel;
        if (noteTemplateViewModel5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel5 = null;
        }
        TemplateDisplayType value = noteTemplateViewModel5.getTemplateType().getValue();
        int i3 = value == null ? -1 : WhenMappings.$EnumSwitchMapping$1[value.ordinal()];
        String str = "";
        String string2 = i3 != 1 ? i3 != 2 ? "" : ResManager.INSTANCE.getString(requireContext(), C10651R.string.cover_template) : ResManager.INSTANCE.getString(requireContext(), C10651R.string.paper_template);
        NoteTemplateViewModel noteTemplateViewModel6 = this.templateViewModel;
        if (noteTemplateViewModel6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
            noteTemplateViewModel6 = null;
        }
        TemplateDisplayType value2 = noteTemplateViewModel6.getTemplateType().getValue();
        int i4 = value2 == null ? -1 : WhenMappings.$EnumSwitchMapping$1[value2.ordinal()];
        String string3 = i4 != 1 ? i4 != 2 ? "" : ResManager.INSTANCE.getString(requireContext(), C10651R.string.custom_cover) : ResManager.INSTANCE.getString(requireContext(), C10651R.string.custom_paper);
        getBinding().tvTemplateRecommend.setText(string2);
        getBinding().tvTemplateCustom.setText(string3);
        TintTextView tintTextView = getBinding().tvTemplateAdded;
        NoteTemplateViewModel noteTemplateViewModel7 = this.templateViewModel;
        if (noteTemplateViewModel7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateViewModel");
        } else {
            noteTemplateViewModel2 = noteTemplateViewModel7;
        }
        TemplateDisplayType value3 = noteTemplateViewModel2.getTemplateType().getValue();
        int i5 = value3 != null ? WhenMappings.$EnumSwitchMapping$1[value3.ordinal()] : -1;
        if (i5 == 1) {
            str = ResManager.INSTANCE.getString(C10651R.string.added_paper);
        } else if (i5 == 2) {
            str = ResManager.INSTANCE.getString(C10651R.string.added_cover);
        }
        tintTextView.setText(str);
        getBinding().titleContainer.categoryContainer.tvCategoryTitle.setText(string);
    }

    /* renamed from: y1 */
    public final ColorViewAdapter m43654y1() {
        return (ColorViewAdapter) this.templateCoverColorAdapter.getValue();
    }

    /* renamed from: z1 */
    public final ColorViewAdapter m43655z1() {
        return (ColorViewAdapter) this.templatePaperColorAdapter.getValue();
    }

    /* renamed from: z2 */
    public final void m43656z2() {
        m43554A2();
        m43586U1();
        m43568I1();
        m43631m2();
        m43583T1();
        m43585U0();
        m43522U2(this, OnyxStatisticConstant.ID_VIEW_DOCSSETTING_CHANGETEMPLATE_POPUP, null, 2, null);
        m43580R2(OnyxStatisticConstant.ID_CRATE_NOTE_DIALOG_VIEW);
    }
}

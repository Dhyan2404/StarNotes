package com.onyx.galaxy.note.category.viewmodel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.blankj.utilcode.util.DeviceUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ComparatorUtils;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.debug.PerformanceWatcher;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunConstant;
import com.onyx.android.sdk.data.NoteCreateFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType;
import com.onyx.android.sdk.data.sync.bean.NoteUsageInfo;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.event.StatisticsImportFileTypeEvent;
import com.onyx.android.sdk.filepicker.QueryInfoFromUriAction;
import com.onyx.android.sdk.replicator.note.action.CheckNoteSyncConditionAction;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.bean.PageModelBean;
import com.onyx.android.sdk.replicator.note.bean.SortData;
import com.onyx.android.sdk.universal.docmanager.action.DocConvertAction;
import com.onyx.android.sdk.universal.docmanager.action.name.NoteNameCreateAction;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageArgs;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.LoadFilterListAction;
import com.onyx.galaxy.note.category.action.LoadNoteFolderTreeAction;
import com.onyx.galaxy.note.category.action.LoadNoteListAction;
import com.onyx.galaxy.note.category.action.LoadPageModelsAction;
import com.onyx.galaxy.note.category.action.LoadTagTreeAction;
import com.onyx.galaxy.note.category.action.p127import.CheckPdfPasswordAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.data.NoteAllFilter;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.data.NoteDustBinFilter;
import com.onyx.galaxy.note.category.data.NoteFolderFilterInfo;
import com.onyx.galaxy.note.category.data.NoteFolderRootFilter;
import com.onyx.galaxy.note.category.data.NotePageBean;
import com.onyx.galaxy.note.category.data.NoteSelectType;
import com.onyx.galaxy.note.category.data.NoteSetNoTag;
import com.onyx.galaxy.note.category.data.NoteSetUnClassfied;
import com.onyx.galaxy.note.category.data.NoteTagFilter;
import com.onyx.galaxy.note.category.data.NoteTagFilterInfo;
import com.onyx.galaxy.note.category.data.NoteTagRootFilter;
import com.onyx.galaxy.note.category.data.SearchFilter;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.extension.NoteQueryArgsKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import com.onyx.galaxy.note.settings.data.NoteDisplayTypeOption;
import com.onyx.galaxy.note.settings.data.NoteSelectTypeOption;
import com.onyx.galaxy.note.utils.NoteSortHelper;
import com.onyx.galaxy.note.utils.PinYinStringHelper;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.tencent.mmkv.MMKV;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¦\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\t¢\u0006\u0006\b\u008e\u0002\u0010\u008f\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006H\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\u0014\u0010\f\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\u000b\u001a\u00020\nH\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006H\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006H\u0002J\u0014\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u0006H\u0002J\u001c\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00022\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J \u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0016H\u0002J\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u00182\b\u0010\u001c\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001d\u001a\u00020\u0018H\u0002J\u001c\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u001f0\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002J\"\u0010$\u001a\u00020\u00042\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\nH\u0002J\b\u0010%\u001a\u00020\u0004H\u0002J\u0010\u0010'\u001a\u00020&2\u0006\u0010\"\u001a\u00020&H\u0002J\b\u0010(\u001a\u00020\u0004H\u0002J\b\u0010)\u001a\u00020\u0004H\u0002J\b\u0010*\u001a\u00020\u0004H\u0002J\b\u0010+\u001a\u00020\u0004H\u0002J\b\u0010,\u001a\u00020\u0004H\u0002J\b\u0010-\u001a\u00020\u0004H\u0002J\b\u0010.\u001a\u00020\u0004H\u0002J\u000e\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0016\u00101\u001a\b\u0012\u0004\u0012\u0002000\u00062\u0006\u0010\u0013\u001a\u00020\u0002H\u0002J.\u00107\u001a\b\u0012\u0004\u0012\u0002000\u00062\u0016\u00105\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020302j\u0002`40\u00062\u0006\u00106\u001a\u00020\u0018H\u0002J\u001c\u0010<\u001a\u00020\u00042\u0006\u00109\u001a\u0002082\n\b\u0002\u0010;\u001a\u0004\u0018\u00010:H\u0002J\"\u0010?\u001a\u00020\u00042\f\u0010>\u001a\b\u0012\u0004\u0012\u00020=0\u001f2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010:H\u0002J\u0010\u0010A\u001a\u00020\u00162\u0006\u0010@\u001a\u00020\u0018H\u0002J\u0010\u0010B\u001a\u00020\u00162\u0006\u0010@\u001a\u00020\u0018H\u0002J\b\u0010C\u001a\u00020\u0004H\u0014J\u0006\u0010D\u001a\u00020\u0004J\u0006\u0010E\u001a\u00020\u0004J\u0006\u0010G\u001a\u00020FJ\u0006\u0010H\u001a\u00020FJ\u0006\u0010I\u001a\u00020\u0004J\u0006\u0010J\u001a\u00020\u0004J\u0006\u0010K\u001a\u00020\u0004J\u0006\u0010L\u001a\u00020\u0004J\u0006\u0010M\u001a\u00020\u0004J\u0006\u0010N\u001a\u00020\u0004J\u0006\u0010O\u001a\u00020\u0004J\u0010\u0010P\u001a\u00020\u00042\b\u0010@\u001a\u0004\u0018\u00010\u0018J\u0010\u0010Q\u001a\u00020\u00042\b\u0010@\u001a\u0004\u0018\u00010\u0018J\u0006\u0010R\u001a\u00020\u0004J\u0006\u0010S\u001a\u00020FJ\u0006\u0010T\u001a\u00020\u0004J\u0006\u0010U\u001a\u00020FJ\u0006\u0010V\u001a\u00020\u0004J\u0006\u0010W\u001a\u00020FJ\u0006\u0010X\u001a\u00020\u0004J\u0006\u0010Y\u001a\u00020\u0004J\u0016\u0010^\u001a\u00020\u00042\u0006\u0010[\u001a\u00020Z2\u0006\u0010]\u001a\u00020\\J\f\u0010_\u001a\b\u0012\u0004\u0012\u00020F0\u0006J\f\u0010`\u001a\b\u0012\u0004\u0012\u00020F0\u0006J\b\u0010a\u001a\u0004\u0018\u00010\u0018J\b\u0010b\u001a\u0004\u0018\u00010\u0018J\b\u0010c\u001a\u00020\u0004H\u0007J\u001a\u0010g\u001a\f\u0012\u0004\u0012\u00020e02j\u0002`f2\b\u0010d\u001a\u0004\u0018\u00010\u0018J$\u0010i\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020e02j\u0002`f0\u000f2\f\u0010h\u001a\b\u0012\u0004\u0012\u00020\u00180\u000fJ\u001e\u0010j\u001a\u0010\u0012\u0004\u0012\u000203\u0018\u000102j\u0004\u0018\u0001`42\b\u0010d\u001a\u0004\u0018\u00010\u0018J\b\u0010k\u001a\u0004\u0018\u00010\u0018J\b\u0010l\u001a\u0004\u0018\u00010\u0018J\u0006\u0010m\u001a\u00020\u0018J\u0006\u0010n\u001a\u00020\u0016J\b\u0010o\u001a\u00020\u0004H\u0007J\u0006\u0010p\u001a\u00020FJ6\u0010v\u001a\u00020\u00042\u0006\u0010r\u001a\u00020q2\u001a\u0010u\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020t\u0012\u0006\u0012\u0004\u0018\u00010\u00180s0\u001f2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010:J \u0010y\u001a\u00020\u00042\f\u0010x\u001a\b\u0012\u0004\u0012\u00020w0\u001f2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010:J\u0006\u0010z\u001a\u00020\u0004J \u0010v\u001a\u00020\u00042\f\u0010x\u001a\b\u0012\u0004\u0012\u00020w0\u001f2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010:J(\u0010~\u001a\u00020\u00042\f\u0010{\u001a\b\u0012\u0004\u0012\u00020t0\u001f2\u0006\u0010}\u001a\u00020|2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010:J\u000f\u0010\u0080\u0001\u001a\u00020F2\u0006\u0010\u007f\u001a\u00020eJ#\u0010\u0083\u0001\u001a\u000f\u0012\u0004\u0012\u00020e\u0012\u0004\u0012\u00020F0\u0082\u00012\r\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00020e0\u001fJ\u0007\u0010\u0084\u0001\u001a\u00020\u0004J\u0007\u0010\u0085\u0001\u001a\u00020\u0004J*\u0010\u0089\u0001\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00020\u00182\u0007\u0010\u0087\u0001\u001a\u00020\u00182\u0007\u0010\u0088\u0001\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\nJ\u0007\u0010\u008a\u0001\u001a\u00020\u0004R\u001c\u0010\u008f\u0001\u001a\u00030\u008b\u00018\u0006¢\u0006\u000f\n\u0005\b\u0005\u0010\u008c\u0001\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001R\u0017\u0010\u0092\u0001\u001a\u00030\u0090\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0015\u0010\u0091\u0001R\u001d\u0010\u0098\u0001\u001a\u00030\u0093\u00018\u0006¢\u0006\u0010\n\u0006\b\u0094\u0001\u0010\u0095\u0001\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001d\u0010\u009e\u0001\u001a\u00030\u0099\u00018\u0006¢\u0006\u0010\n\u0006\b\u009a\u0001\u0010\u009b\u0001\u001a\u0006\b\u009c\u0001\u0010\u009d\u0001R\u001c\u0010 \u0001\u001a\u00030\u0099\u00018\u0006¢\u0006\u000f\n\u0005\b\t\u0010\u009b\u0001\u001a\u0006\b\u009f\u0001\u0010\u009d\u0001R\u001c\u0010¥\u0001\u001a\u00030¡\u00018\u0006¢\u0006\u000f\n\u0005\b\f\u0010¢\u0001\u001a\u0006\b£\u0001\u0010¤\u0001R\u001d\u0010§\u0001\u001a\u00030¡\u00018\u0006¢\u0006\u0010\n\u0006\b¦\u0001\u0010¢\u0001\u001a\u0006\b§\u0001\u0010¤\u0001R\u001c\u0010¨\u0001\u001a\u00030¡\u00018\u0006¢\u0006\u000f\n\u0005\b-\u0010¢\u0001\u001a\u0006\b¨\u0001\u0010¤\u0001R\u001c\u0010ª\u0001\u001a\u00030\u0099\u00018\u0006¢\u0006\u000f\n\u0005\b)\u0010\u009b\u0001\u001a\u0006\b©\u0001\u0010\u009d\u0001R+\u0010®\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010F0F0«\u00018\u0006¢\u0006\u000f\n\u0005\b/\u0010\u00ad\u0001\u001a\u0006\b®\u0001\u0010¯\u0001R+\u0010°\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010F0F0«\u00018\u0006¢\u0006\u000f\n\u0005\b1\u0010\u00ad\u0001\u001a\u0006\b°\u0001\u0010¯\u0001R+\u0010±\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010F0F0«\u00018\u0006¢\u0006\u000f\n\u0005\bA\u0010\u00ad\u0001\u001a\u0006\b±\u0001\u0010¯\u0001R+\u0010²\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010F0F0«\u00018\u0006¢\u0006\u000f\n\u0005\bB\u0010\u00ad\u0001\u001a\u0006\b²\u0001\u0010¯\u0001R$\u0010´\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00180«\u00018\u0006¢\u0006\u000f\n\u0005\b7\u0010\u00ad\u0001\u001a\u0006\b³\u0001\u0010¯\u0001R-\u0010·\u0001\u001a\u0014\u0012\u000f\u0012\r ¬\u0001*\u0005\u0018\u00010µ\u00010µ\u00010«\u00018\u0006¢\u0006\u000f\n\u0005\b?\u0010\u00ad\u0001\u001a\u0006\b¶\u0001\u0010¯\u0001R8\u0010º\u0001\u001a\u001e\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0010 ¬\u0001*\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000f0«\u00018\u0006¢\u0006\u0010\n\u0006\b¸\u0001\u0010\u00ad\u0001\u001a\u0006\b¹\u0001\u0010¯\u0001R7\u0010¼\u0001\u001a\u001e\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0010 ¬\u0001*\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000f0«\u00018\u0006¢\u0006\u000f\n\u0005\b\u0011\u0010\u00ad\u0001\u001a\u0006\b»\u0001\u0010¯\u0001R7\u0010¾\u0001\u001a\u001e\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0010 ¬\u0001*\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000f0«\u00018\u0006¢\u0006\u000f\n\u0005\b\u0012\u0010\u00ad\u0001\u001a\u0006\b½\u0001\u0010¯\u0001R+\u0010À\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010&0&0«\u00018\u0006¢\u0006\u000f\n\u0005\b\u001b\u0010\u00ad\u0001\u001a\u0006\b¿\u0001\u0010¯\u0001R8\u0010Ã\u0001\u001a\u001e\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0002 ¬\u0001*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001f0\u001f0«\u00018\u0006¢\u0006\u0010\n\u0006\bÁ\u0001\u0010\u00ad\u0001\u001a\u0006\bÂ\u0001\u0010¯\u0001R,\u0010Å\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010F0F0«\u00018\u0006¢\u0006\u0010\n\u0006\bÄ\u0001\u0010\u00ad\u0001\u001a\u0006\bÅ\u0001\u0010¯\u0001R#\u0010É\u0001\u001a\t\u0012\u0004\u0012\u00020F0Æ\u00018\u0006¢\u0006\u0010\n\u0006\bÇ\u0001\u0010È\u0001\u001a\u0006\bÉ\u0001\u0010Ê\u0001R,\u0010Ì\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010F0F0«\u00018\u0006¢\u0006\u0010\n\u0006\bË\u0001\u0010\u00ad\u0001\u001a\u0006\bÌ\u0001\u0010¯\u0001R#\u0010Î\u0001\u001a\t\u0012\u0004\u0012\u00020F0Æ\u00018\u0006¢\u0006\u0010\n\u0006\bÍ\u0001\u0010È\u0001\u001a\u0006\bÎ\u0001\u0010Ê\u0001R#\u0010Ð\u0001\u001a\t\u0012\u0004\u0012\u00020F0Æ\u00018\u0006¢\u0006\u0010\n\u0006\bÏ\u0001\u0010È\u0001\u001a\u0006\bÐ\u0001\u0010Ê\u0001R,\u0010Ò\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010F0F0«\u00018\u0006¢\u0006\u0010\n\u0006\bÑ\u0001\u0010\u00ad\u0001\u001a\u0006\bÒ\u0001\u0010¯\u0001R,\u0010Ô\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010F0F0«\u00018\u0006¢\u0006\u0010\n\u0006\bÓ\u0001\u0010\u00ad\u0001\u001a\u0006\bÔ\u0001\u0010¯\u0001R,\u0010Ö\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010F0F0«\u00018\u0006¢\u0006\u0010\n\u0006\bÕ\u0001\u0010\u00ad\u0001\u001a\u0006\bÖ\u0001\u0010¯\u0001R-\u0010Ù\u0001\u001a\u0013\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020e02j\u0002`f0«\u00018\u0006¢\u0006\u0010\n\u0006\b×\u0001\u0010\u00ad\u0001\u001a\u0006\bØ\u0001\u0010¯\u0001R-\u0010Ü\u0001\u001a\u0013\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020302j\u0002`40«\u00018\u0006¢\u0006\u0010\n\u0006\bÚ\u0001\u0010\u00ad\u0001\u001a\u0006\bÛ\u0001\u0010¯\u0001R,\u0010ß\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010\u00020\u00020«\u00018\u0006¢\u0006\u0010\n\u0006\bÝ\u0001\u0010\u00ad\u0001\u001a\u0006\bÞ\u0001\u0010¯\u0001R,\u0010â\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010\n0\n0«\u00018\u0006¢\u0006\u0010\n\u0006\bà\u0001\u0010\u00ad\u0001\u001a\u0006\bá\u0001\u0010¯\u0001R,\u0010å\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010Z0Z0«\u00018\u0006¢\u0006\u0010\n\u0006\bã\u0001\u0010\u00ad\u0001\u001a\u0006\bä\u0001\u0010¯\u0001R,\u0010è\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010\\0\\0«\u00018\u0006¢\u0006\u0010\n\u0006\bæ\u0001\u0010\u00ad\u0001\u001a\u0006\bç\u0001\u0010¯\u0001R,\u0010ë\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010F0F0«\u00018\u0006¢\u0006\u0010\n\u0006\bé\u0001\u0010\u00ad\u0001\u001a\u0006\bê\u0001\u0010¯\u0001R,\u0010î\u0001\u001a\u0012\u0012\r\u0012\u000b ¬\u0001*\u0004\u0018\u00010&0&0«\u00018\u0006¢\u0006\u0010\n\u0006\bì\u0001\u0010\u00ad\u0001\u001a\u0006\bí\u0001\u0010¯\u0001R$\u0010ò\u0001\u001a\n\u0012\u0005\u0012\u00030ï\u00010«\u00018\u0006¢\u0006\u0010\n\u0006\bð\u0001\u0010\u00ad\u0001\u001a\u0006\bñ\u0001\u0010¯\u0001R\u0018\u0010ô\u0001\u001a\u00030¡\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bó\u0001\u0010¢\u0001R\u0018\u0010ö\u0001\u001a\u00030¡\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bõ\u0001\u0010¢\u0001R\u0018\u0010ø\u0001\u001a\u00030¡\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b÷\u0001\u0010¢\u0001R \u0010ú\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00180«\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bù\u0001\u0010\u00ad\u0001R \u0010ü\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00180«\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bû\u0001\u0010\u00ad\u0001R\u001c\u0010\u0080\u0002\u001a\u0005\u0018\u00010ý\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bþ\u0001\u0010ÿ\u0001R\u001c\u0010\u0084\u0002\u001a\u0005\u0018\u00010\u0081\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0002\u0010\u0083\u0002R\u001f\u0010\u0087\u0002\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0002\u0010\u0086\u0002R(\u0010\u008d\u0002\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0088\u0002\u0010%\u001a\u0006\b\u0089\u0002\u0010\u008a\u0002\"\u0006\b\u008b\u0002\u0010\u008c\u0002¨\u0006\u0090\u0002"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", PrivilegedApp.f6532i, "", "i", "Lio/reactivex/rxjava3/core/Observable;", "B", "Lcom/onyx/android/sdk/replicator/note/bean/SortData;", "m", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "noteSelectType", GoogleApiAvailabilityLight.f29016b, SardineUtil.DEFAULT_NAMESPACE_PREFIX, "A", "", "Lcom/onyx/galaxy/note/category/data/NotePageBean;", "y", "z", "filter", "notePageList", "j", "", "level", "", "title", "maxLevel", "J", "value", "rootId", "F", "", "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "list", AliYunConstant.CHECK_NAME_MODE_IGNORE, "S", "I", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "K", "G", "q", "P", "R", "E", "p", "H", "r", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "s", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "rootTag", "parentTagId", "v", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "importArgs", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "importSelectedContext", "M", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "entries", "w", "id", "t", "u", "onCleared", "toggleDisplayType", "gotoUp", "", "isFilterRootFolder", "isFilterFolder", "gotoSearch", "gotoNoteSet", "gotoUnClassfied", "gotoNoTag", "gotoDustBin", "gotoFolderRoot", "gotoTagRoot", "gotoFolder", "gotoTag", "toggleNoteSetExpand", "isNoteSetExpand", "toggleFolderExpand", "isFolderExpand", "toggleTagExpand", "isTagExpand", "toggleSideExpand", "toggleMulSelect", "Lcom/onyx/android/sdk/base/data/SortBy;", "sortBy", "Lcom/onyx/android/sdk/base/data/SortOrder;", "sortOrder", "toggleSort", "loadNoteFoldTree", "loadTagTree", "getNormalizedFolderId", "getNormalizedTagId", "initList", CouchFieldKey.KEY_UNIQUE_ID, "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "findFolder", "uniqueIds", "findFolders", "findTag", "getCurrentFolderId", "getCurrentTagId", "getSortName", "getSortIconId", "loadFilterList", "isSyncFinished", "Landroid/content/Context;", "activityContext", "Lkotlin/Pair;", "Landroid/net/Uri;", "uriList", "importDocuments", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "fileList", "convertDocumentsOnline", "cancelDocConvert", "uris", "Lcom/onyx/android/sdk/data/NoteCreateFrom;", "noteCreateFrom", "importImages", "model", "toggleSelectList", "models", "", "swipeSelectItems", "resetFolderRootListData", "checkCloudSyncCondition", "originId", "targetId", "dragState", "customSortNoteList", "updateCurrFilterTitle", "Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;", "Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;", "getSelectTypeOp", "()Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;", "selectTypeOp", "Lcom/onyx/galaxy/note/utils/NoteSortHelper;", "Lcom/onyx/galaxy/note/utils/NoteSortHelper;", "sortHelper", "Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;", C4921e.f26537n, "Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;", "getNoteDisplayTypeOp", "()Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;", "noteDisplayTypeOp", "Lcom/onyx/android/sdk/data/utils/StringOption;", "l", "Lcom/onyx/android/sdk/data/utils/StringOption;", "getFolderIdOp", "()Lcom/onyx/android/sdk/data/utils/StringOption;", "folderIdOp", "getTagIdOp", "tagIdOp", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "getSlideExpandOp", "()Lcom/onyx/android/sdk/data/utils/BooleanOption;", "slideExpandOp", C4921e.f26528e, "isTopLevelOp", "isBottomLevelOp", "getCurrTitleOp", "currTitleOp", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "Landroidx/lifecycle/MutableLiveData;", "isTopLevel", "()Landroidx/lifecycle/MutableLiveData;", "isBottomLevel", "isSideExpand", "isInMultiWindowMode", "getCurrTitle", "currTitle", "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;", "getDisplayType", "displayType", "x", "getTabAllListData", "tabAllListData", "getTabNoteListData", "tabNoteListData", "getTabPdfListData", "tabPdfListData", "getFolderRootListData", "folderRootListData", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "getFilterList", "filterList", "Q", "isMulSelect", "Landroidx/lifecycle/MediatorLiveData;", Constants.HASIDCALL_INDEX_SIG, "Landroidx/lifecycle/MediatorLiveData;", "isTopAndIsExpanded", "()Landroidx/lifecycle/MediatorLiveData;", "k0", "isLoadingList", "q0", "isShowSlideMenu", "t0", "isShowDrawerMenu", "u0", "isHalfInMultiWindowMode", "v0", "isSlideAnimating", "w0", "isViewPagerAnimating", "x0", "getFolderRootNode", "folderRootNode", "y0", "getTagRootNode", "tagRootNode", "z0", "getFilterInfo", "filterInfo", "A0", "getSelectType", "selectType", "B0", "getSortType", "sortType", "C0", "getOrderType", "orderType", "D0", "getAllowCloudSync", "allowCloudSync", "E0", "getSelectList", "selectList", "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;", "F0", "getNoteUsageInfo", "noteUsageInfo", "G0", "noteExpandOp", "H0", "folderExpandOp", "I0", "tagExpandOp", "J0", "folderId", "K0", CouchFieldKey.KEY_TAG_ID, "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;", "L0", "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;", "docConvertAction", "Lio/reactivex/rxjava3/disposables/Disposable;", "M0", "Lio/reactivex/rxjava3/disposables/Disposable;", "loadListDispose", "N0", "Ljava/util/List;", "allDataList", "O0", "getSyncProgress", "()I", "setSyncProgress", "(I)V", "syncProgress", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1161:1\n766#2:1162\n857#2,2:1163\n766#2:1165\n857#2,2:1166\n766#2:1168\n857#2,2:1169\n766#2:1171\n857#2,2:1172\n1747#2,3:1174\n1855#2,2:1177\n1855#2,2:1179\n2634#2:1181\n766#2:1183\n857#2,2:1184\n1855#2,2:1186\n766#2:1188\n857#2,2:1189\n1603#2,9:1191\n1855#2:1200\n1856#2:1202\n1612#2:1203\n1549#2:1204\n1620#2,3:1205\n350#2,7:1208\n766#2:1215\n857#2,2:1216\n350#2,7:1218\n1#3:1182\n1#3:1201\n*S KotlinDebug\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel\n*L\n745#1:1162\n745#1:1163,2\n749#1:1165\n749#1:1166,2\n765#1:1168\n765#1:1169,2\n766#1:1171\n766#1:1172,2\n774#1:1174,3\n939#1:1177,2\n978#1:1179,2\n1002#1:1181\n1096#1:1183\n1096#1:1184,2\n1104#1:1186,2\n1120#1:1188\n1120#1:1189,2\n1121#1:1191,9\n1121#1:1200\n1121#1:1202\n1121#1:1203\n1128#1:1204\n1128#1:1205,3\n1149#1:1208,7\n1155#1:1215\n1155#1:1216,2\n1156#1:1218,7\n1002#1:1182\n1121#1:1201\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteListViewModel extends BaseViewModel {

    /* renamed from: A0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<NoteSelectType> selectType;

    /* renamed from: B0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<SortBy> sortType;

    /* renamed from: C0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<SortOrder> orderType;

    /* renamed from: D0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> allowCloudSync;

    /* renamed from: E0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<NoteModelBeanList> selectList;

    /* renamed from: F0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<NoteUsageInfo> noteUsageInfo;

    /* renamed from: G0, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption noteExpandOp;

    /* renamed from: H0, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption folderExpandOp;

    /* renamed from: I0, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption tagExpandOp;

    /* renamed from: J, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<NoteModelBeanList> folderRootListData;

    /* renamed from: J0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> folderId;

    /* renamed from: K0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> tagId;

    /* renamed from: L0, reason: from kotlin metadata */
    @Nullable
    public DocConvertAction docConvertAction;

    /* renamed from: M0, reason: from kotlin metadata */
    @Nullable
    public Disposable loadListDispose;

    /* renamed from: N0, reason: from kotlin metadata */
    @NotNull
    public List<NotePageBean> allDataList;

    /* renamed from: O, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<FilterInfo>> filterList;

    /* renamed from: O0, reason: from kotlin metadata */
    public int syncProgress;

    /* renamed from: Q, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isMulSelect;

    /* renamed from: Z, reason: from kotlin metadata */
    @NotNull
    public final MediatorLiveData<Boolean> isTopAndIsExpanded;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final NoteSelectTypeOption selectTypeOp;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final NoteSortHelper sortHelper;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final NoteDisplayTypeOption noteDisplayTypeOp;

    /* renamed from: k0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isLoadingList;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final StringOption folderIdOp;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final StringOption tagIdOp;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption slideExpandOp;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption isTopLevelOp;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption isBottomLevelOp;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final StringOption currTitleOp;

    /* renamed from: q0, reason: from kotlin metadata */
    @NotNull
    public final MediatorLiveData<Boolean> isShowSlideMenu;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isTopLevel;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isBottomLevel;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isSideExpand;

    /* renamed from: t0, reason: from kotlin metadata */
    @NotNull
    public final MediatorLiveData<Boolean> isShowDrawerMenu;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isInMultiWindowMode;

    /* renamed from: u0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isHalfInMultiWindowMode;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> currTitle;

    /* renamed from: v0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isSlideAnimating;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<NoteDisplayType> displayType;

    /* renamed from: w0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isViewPagerAnimating;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<NotePageBean>> tabAllListData;

    /* renamed from: x0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<TreeNode<NoteModelBean>> folderRootNode;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<NotePageBean>> tabNoteListData;

    /* renamed from: y0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<TreeNode<NoteTagBean>> tagRootNode;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<NotePageBean>> tabPdfListData;

    /* renamed from: z0, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<FilterInfo> filterInfo;

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C11484a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Context f55754e;

        public C11484a(Context context) {
            this.f55754e = context;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CheckPdfPasswordAction> apply(@NotNull QueryInfoFromUriAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CheckPdfPasswordAction(DocCollectionBundle.INSTANCE.docManagerBundle(), it2.getResult()).setActivityContext(this.f55754e).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$a0 */
    /* loaded from: classes9.dex */
    public static final class C11485a0<T> implements Consumer {
        public C11485a0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends FilterInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.getFilterList().setValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C11486b<T> implements Predicate {

        /* renamed from: e */
        public static final C11486b<T> f55756e = new C11486b<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.getResultList().isEmpty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$b0 */
    /* loaded from: classes9.dex */
    public static final class C11487b0<T> implements Consumer {
        public C11487b0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends FilterInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.getFilterInfo().setValue(NoteTreeBundle.INSTANCE.activeFilterInfo());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C11488c<T, R> implements Function {

        /* renamed from: e */
        public static final C11488c<T, R> f55758e = new C11488c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<DocumentFileEntry> apply(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getResultList();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$c0 */
    /* loaded from: classes9.dex */
    public static final class C11489c0<T> implements Consumer {
        public C11489c0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends FilterInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.getNoteUsageInfo().setValue(NoteTreeBundle.FilterManager.INSTANCE.getQuotaInfo());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C11490d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ImportSelectedContext f55761f;

        public C11490d(ImportSelectedContext importSelectedContext) {
            this.f55761f = importSelectedContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<DocumentFileEntry> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.convertDocumentsOnline(it2, this.f55761f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$d0 */
    /* loaded from: classes9.dex */
    public static final class C11491d0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CBQueryArgs f55762e;

        /* renamed from: f */
        public final /* synthetic */ NoteListViewModel f55763f;

        public C11491d0(CBQueryArgs cBQueryArgs, NoteListViewModel noteListViewModel) {
            this.f55762e = cBQueryArgs;
            this.f55763f = noteListViewModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteModelBeanList> apply(@NotNull NoteListViewModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadNoteListAction(this.f55762e, this.f55763f.m44748m()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C11492e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Uri> f55764e;

        /* renamed from: f */
        public final /* synthetic */ NoteListViewModel f55765f;

        /* JADX WARN: Multi-variable type inference failed */
        public C11492e(List<? extends Uri> list, NoteListViewModel noteListViewModel) {
            this.f55764e = list;
            this.f55765f = noteListViewModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportImageArgs apply(@NotNull String it2) {
            List listOfNotNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            List<Uri> list = this.f55764e;
            String normalizedFolderId = this.f55765f.getNormalizedFolderId();
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(this.f55765f.getNormalizedTagId());
            return new ImportImageArgs(it2, list, normalizedFolderId, listOfNotNull, null, 16, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$e0 */
    /* loaded from: classes9.dex */
    public static final class C11493e0<T> implements Consumer {
        public C11493e0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.getFolderRootListData().setValue(NoteListViewModel.this.m44741K(it2));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$f */
    /* loaded from: classes9.dex */
    public static final class C11494f<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ImportSelectedContext f55767e;

        public C11494f(ImportSelectedContext importSelectedContext) {
            this.f55767e = importSelectedContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportImageArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportSelectedContext importSelectedContext = this.f55767e;
            if (importSelectedContext != null) {
                importSelectedContext.resetImportImageAgr(it2);
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$f0 */
    /* loaded from: classes9.dex */
    public static final class C11495f0<T> implements Consumer {
        public C11495f0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.getFilterInfo().setValue(NoteTreeBundle.INSTANCE.activeFilterInfo());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$g */
    /* loaded from: classes9.dex */
    public static final class C11496g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ NoteCreateFrom f55769e;

        public C11496g(NoteCreateFrom noteCreateFrom) {
            this.f55769e = noteCreateFrom;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportImageArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocCollectionBundle.INSTANCE.importImage(it2, this.f55769e);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$g0 */
    /* loaded from: classes9.dex */
    public static final class C11497g0<T, R> implements Function {
        public C11497g0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteListViewModel apply(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteListViewModel.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$h */
    /* loaded from: classes9.dex */
    public static final class C11498h<T> implements Consumer {
        public C11498h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.isLoadingList().setValue(Boolean.TRUE);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$h0 */
    /* loaded from: classes9.dex */
    public static final class C11499h0<T> implements Consumer {
        public C11499h0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteModelBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.getFolderRootNode().setValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$i */
    /* loaded from: classes9.dex */
    public static final class C11500i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Observable<NoteListViewModel> f55774e;

        public C11500i(Observable<NoteListViewModel> observable) {
            this.f55774e = observable;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteListViewModel> apply(@NotNull NoteListViewModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f55774e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$i0 */
    /* loaded from: classes9.dex */
    public static final class C11501i0<T, R> implements Function {

        /* renamed from: e */
        public static final C11501i0<T, R> f55775e = new C11501i0<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull TreeNode<NoteModelBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$j */
    /* loaded from: classes9.dex */
    public static final class C11503j<T> implements Consumer {
        public C11503j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteListViewModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.isLoadingList().setValue(Boolean.FALSE);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$j0 */
    /* loaded from: classes9.dex */
    public static final class C11504j0<T> implements Consumer {
        public C11504j0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteTagBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.getTagRootNode().setValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$k */
    /* loaded from: classes9.dex */
    public static final class C11505k<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ FilterInfo f55780f;

        public C11505k(FilterInfo filterInfo) {
            this.f55780f = filterInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CBQueryArgs> apply(@NotNull NoteListViewModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteListViewModel.this.m44753s(this.f55780f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$k0 */
    /* loaded from: classes9.dex */
    public static final class C11506k0<T, R> implements Function {

        /* renamed from: e */
        public static final C11506k0<T, R> f55781e = new C11506k0<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull TreeNode<NoteTagBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$l */
    /* loaded from: classes9.dex */
    public static final class C11507l<T, R> implements Function {
        public C11507l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CBQueryArgs apply(@NotNull CBQueryArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SortBy value = NoteListViewModel.this.getSortType().getValue();
            Intrinsics.checkNotNull(value);
            SortOrder value2 = NoteListViewModel.this.getOrderType().getValue();
            Intrinsics.checkNotNull(value2);
            return NoteQueryArgsKt.sortWith(it2, value, value2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$l0 */
    /* loaded from: classes9.dex */
    public static final class C11508l0<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ FilterInfo f55783e;

        public C11508l0(FilterInfo filterInfo) {
            this.f55783e = filterInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull NoteListViewModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f55783e.getType() != 0;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$m */
    /* loaded from: classes9.dex */
    public static final class C11509m<T, R> implements Function {
        public C11509m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteModelBeanList> apply(@NotNull CBQueryArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadNoteListAction(it2, NoteListViewModel.this.m44749n(NoteSelectType.TAB_ALL)).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$m0 */
    /* loaded from: classes9.dex */
    public static final class C11510m0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f55785e;

        public C11510m0(String str) {
            this.f55785e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteListViewModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PerformanceWatcher.INSTANCE.beginFirstDocList(this.f55785e);
        }
    }

    @SourceDebugExtension({"SMAP\nNoteListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$loadData$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1161:1\n1549#2:1162\n1620#2,3:1163\n*S KotlinDebug\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$loadData$4\n*L\n655#1:1162\n655#1:1163,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$n */
    /* loaded from: classes9.dex */
    public static final class C11511n<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<NotePageBean> f55786e;

        public C11511n(List<NotePageBean> list) {
            this.f55786e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteModelBeanList noteList) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(noteList, "noteList");
            List<NotePageBean> list = this.f55786e;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<NoteModelBean> it2 = noteList.iterator();
            while (it2.hasNext()) {
                arrayList.add(new NotePageBean(2, it2.next(), null, 4, null));
            }
            list.addAll(arrayList);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$n0 */
    /* loaded from: classes9.dex */
    public static final class C11512n0<T, R> implements Function {
        public C11512n0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NotePageBean>> apply(@NotNull NoteListViewModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteListViewModel.this.m44758y();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$o */
    /* loaded from: classes9.dex */
    public static final class C11513o<T, R> implements Function {
        public C11513o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<PageModelBean>> apply(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteListViewModel.this.m44733C(NoteSelectType.TAB_ALL);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$o0 */
    /* loaded from: classes9.dex */
    public static final class C11514o0<T> implements Consumer {
        public C11514o0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NotePageBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.m44721T(NoteListViewModel.this, it2, null, 2, null);
        }
    }

    @SourceDebugExtension({"SMAP\nNoteListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$loadData$6\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1161:1\n1855#2:1162\n288#2,2:1163\n1856#2:1165\n1549#2:1166\n1620#2,3:1167\n*S KotlinDebug\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$loadData$6\n*L\n660#1:1162\n661#1:1163,2\n660#1:1165\n664#1:1166\n664#1:1167,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$p */
    /* loaded from: classes9.dex */
    public static final class C11515p<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<NotePageBean> f55790e;

        public C11515p(List<NotePageBean> list) {
            this.f55790e = list;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x004f A[EDGE_INSN: B:14:0x004f->B:15:0x004f BREAK  A[LOOP:1: B:5:0x0020->B:26:?], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:26:? A[LOOP:1: B:5:0x0020->B:26:?, LOOP_END, SYNTHETIC] */
        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void accept(@org.jetbrains.annotations.NotNull java.util.List<com.onyx.android.sdk.replicator.note.bean.PageModelBean> r9) {
            /*
                r8 = this;
                java.lang.String r0 = "pageList"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
                java.lang.Iterable r9 = (java.lang.Iterable) r9
                java.util.List<com.onyx.galaxy.note.category.data.NotePageBean> r0 = r8.f55790e
                java.util.Iterator r1 = r9.iterator()
            Ld:
                boolean r2 = r1.hasNext()
                if (r2 == 0) goto L6a
                java.lang.Object r2 = r1.next()
                com.onyx.android.sdk.replicator.note.bean.PageModelBean r2 = (com.onyx.android.sdk.replicator.note.bean.PageModelBean) r2
                r3 = r0
                java.lang.Iterable r3 = (java.lang.Iterable) r3
                java.util.Iterator r3 = r3.iterator()
            L20:
                boolean r4 = r3.hasNext()
                if (r4 == 0) goto L4e
                java.lang.Object r4 = r3.next()
                r5 = r4
                com.onyx.galaxy.note.category.data.NotePageBean r5 = (com.onyx.galaxy.note.category.data.NotePageBean) r5
                boolean r6 = r5.isNoteType()
                if (r6 == 0) goto L4a
                com.onyx.android.sdk.replicator.note.bean.NoteModelBean r5 = r5.getNoteModelBean()
                kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
                java.lang.String r5 = r5.getUniqueId()
                java.lang.String r6 = r2.getDocumentId()
                boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
                if (r5 == 0) goto L4a
                r5 = 1
                goto L4b
            L4a:
                r5 = 0
            L4b:
                if (r5 == 0) goto L20
                goto L4f
            L4e:
                r4 = 0
            L4f:
                com.onyx.galaxy.note.category.data.NotePageBean r4 = (com.onyx.galaxy.note.category.data.NotePageBean) r4
                if (r4 == 0) goto L64
                com.onyx.android.sdk.replicator.note.bean.NoteModelBean r3 = r4.getNoteModelBean()
                if (r3 == 0) goto L64
                com.onyx.android.sdk.replicator.note.db.model.SortModel r3 = r3.getSortModel()
                if (r3 == 0) goto L64
                float r3 = r3.getOrderIndex()
                goto L66
            L64:
                r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            L66:
                r2.setOrderIndex(r3)
                goto Ld
            L6a:
                java.util.List<com.onyx.galaxy.note.category.data.NotePageBean> r8 = r8.f55790e
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = 10
                int r1 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r9, r1)
                r0.<init>(r1)
                java.util.Iterator r9 = r9.iterator()
            L7b:
                boolean r1 = r9.hasNext()
                if (r1 == 0) goto L96
                java.lang.Object r1 = r9.next()
                r5 = r1
                com.onyx.android.sdk.replicator.note.bean.PageModelBean r5 = (com.onyx.android.sdk.replicator.note.bean.PageModelBean) r5
                com.onyx.galaxy.note.category.data.NotePageBean r1 = new com.onyx.galaxy.note.category.data.NotePageBean
                r3 = 1
                r4 = 0
                r6 = 2
                r7 = 0
                r2 = r1
                r2.<init>(r3, r4, r5, r6, r7)
                r0.add(r1)
                goto L7b
            L96:
                r8.addAll(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel.C11515p.accept(java.util.List):void");
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$p0 */
    /* loaded from: classes9.dex */
    public static final class C11516p0<T> implements Consumer {
        public C11516p0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NotePageBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.getFilterInfo().setValue(NoteTreeBundle.INSTANCE.activeFilterInfo());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$q */
    /* loaded from: classes9.dex */
    public static final class C11517q<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<NotePageBean> f55793f;

        public C11517q(List<NotePageBean> list) {
            this.f55793f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NotePageBean> apply(@NotNull List<PageModelBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteListViewModel.this.sortHelper.sortNotePageList(this.f55793f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$q0 */
    /* loaded from: classes9.dex */
    public static final class C11518q0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f55794e;

        /* renamed from: f */
        public final /* synthetic */ NoteListViewModel f55795f;

        public C11518q0(String str, NoteListViewModel noteListViewModel) {
            this.f55794e = str;
            this.f55795f = noteListViewModel;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NotePageBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PerformanceWatcher.INSTANCE.endFirstDocList(this.f55794e, this.f55795f.allDataList.size());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$r */
    /* loaded from: classes9.dex */
    public static final class C11519r<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ FilterInfo f55797f;

        public C11519r(FilterInfo filterInfo) {
            this.f55797f = filterInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NotePageBean> sortedList) {
            Intrinsics.checkNotNullParameter(sortedList, "sortedList");
            NoteListViewModel.this.m44747j(this.f55797f, sortedList);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$r0 */
    /* loaded from: classes9.dex */
    public static final class C11520r0<T, R> implements Function {
        public C11520r0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteListViewModel apply(@NotNull List<NotePageBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteListViewModel.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$s */
    /* loaded from: classes9.dex */
    public static final class C11521s<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CBQueryArgs f55799e;

        public C11521s(CBQueryArgs cBQueryArgs) {
            this.f55799e = cBQueryArgs;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteModelBeanList> apply(@NotNull NoteListViewModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadNoteListAction(this.f55799e, null, 2, 0 == true ? 1 : 0).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$s0 */
    /* loaded from: classes9.dex */
    public static final class C11522s0 implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f55800a;

        public C11522s0(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f55800a = function;
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
            return this.f55800a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f55800a.invoke(obj);
        }
    }

    @SourceDebugExtension({"SMAP\nNoteListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$loadDustBinData$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1161:1\n1549#2:1162\n1620#2,3:1163\n*S KotlinDebug\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$loadDustBinData$2\n*L\n685#1:1162\n685#1:1163,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$t */
    /* loaded from: classes9.dex */
    public static final class C11523t<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<NotePageBean> f55802e;

        public C11523t(List<NotePageBean> list) {
            this.f55802e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteModelBeanList noteList) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(noteList, "noteList");
            List<NotePageBean> list = this.f55802e;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<NoteModelBean> it2 = noteList.iterator();
            while (it2.hasNext()) {
                arrayList.add(new NotePageBean(2, it2.next(), null, 4, null));
            }
            list.addAll(arrayList);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$u */
    /* loaded from: classes9.dex */
    public static final class C11524u<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ FilterInfo f55804f;

        /* renamed from: g */
        public final /* synthetic */ List<NotePageBean> f55805g;

        public C11524u(FilterInfo filterInfo, List<NotePageBean> list) {
            this.f55804f = filterInfo;
            this.f55805g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.m44747j(this.f55804f, this.f55805g);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$v */
    /* loaded from: classes9.dex */
    public static final class C11525v<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<NotePageBean> f55806e;

        public C11525v(List<NotePageBean> list) {
            this.f55806e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NotePageBean> apply(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f55806e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$w */
    /* loaded from: classes9.dex */
    public static final class C11526w<T, R> implements Function {
        public C11526w() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NotePageBean>> apply(@NotNull NoteSelectType it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteListViewModel.this.m44759z(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$x */
    /* loaded from: classes9.dex */
    public static final class C11527x<T> implements Consumer {
        public C11527x() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NotePageBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.m44721T(NoteListViewModel.this, it2, null, 2, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$y */
    /* loaded from: classes9.dex */
    public static final class C11528y<T> implements Consumer {
        public C11528y() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NotePageBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListViewModel.this.getFilterInfo().setValue(NoteTreeBundle.INSTANCE.activeFilterInfo());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$z */
    /* loaded from: classes9.dex */
    public static final class C11529z<T, R> implements Function {
        public C11529z() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteListViewModel apply(@NotNull List<NotePageBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteListViewModel.this;
        }
    }

    public NoteListViewModel() {
        List emptyList;
        NoteSelectTypeOption noteSelectTypeOption = new NoteSelectTypeOption(null, null, null, 7, null);
        this.selectTypeOp = noteSelectTypeOption;
        NoteSortHelper noteSortHelper = new NoteSortHelper();
        this.sortHelper = noteSortHelper;
        NoteDisplayTypeOption noteDisplayTypeOption = new NoteDisplayTypeOption(null, null, null, 7, null);
        this.noteDisplayTypeOp = noteDisplayTypeOption;
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        StringOption stringOption = new StringOption(mMKVUtils.get(), NoteConfigConst.NOTE_LIST_FOLDER_ID, null, 4, null);
        this.folderIdOp = stringOption;
        StringOption stringOption2 = new StringOption(mMKVUtils.get(), NoteConfigConst.NOTE_LIST_TAG_ID, null, 4, null);
        this.tagIdOp = stringOption2;
        BooleanOption booleanOption = new BooleanOption(mMKVUtils.get(), NoteConfigConst.NOTE_LIST_SLIDE_IS_EXPAND, true);
        this.slideExpandOp = booleanOption;
        BooleanOption booleanOption2 = new BooleanOption(mMKVUtils.get(), NoteConfigConst.NOTE_LIST_IS_TOP_LEVEL, true);
        this.isTopLevelOp = booleanOption2;
        BooleanOption booleanOption3 = new BooleanOption(mMKVUtils.get(), NoteConfigConst.NOTE_LIST_IS_BOTTOM_LEVEL, false);
        this.isBottomLevelOp = booleanOption3;
        MMKV mmkv = mMKVUtils.get();
        String string = ResManager.INSTANCE.getString(C10651R.string.all_note);
        Intrinsics.checkNotNull(string);
        StringOption stringOption3 = new StringOption(mmkv, NoteConfigConst.NOTE_LIST_CURR_TITLE, string);
        this.currTitleOp = stringOption3;
        MutableLiveData<Boolean> mutableLiveData = new MutableLiveData<>(Boolean.valueOf(booleanOption2.get()));
        this.isTopLevel = mutableLiveData;
        this.isBottomLevel = new MutableLiveData<>(Boolean.valueOf(booleanOption3.get()));
        MutableLiveData<Boolean> mutableLiveData2 = new MutableLiveData<>(Boolean.valueOf(booleanOption.get()));
        this.isSideExpand = mutableLiveData2;
        Boolean bool = Boolean.FALSE;
        MutableLiveData<Boolean> mutableLiveData3 = new MutableLiveData<>(bool);
        this.isInMultiWindowMode = mutableLiveData3;
        this.currTitle = new MutableLiveData<>(stringOption3.get());
        this.displayType = new MutableLiveData<>(noteDisplayTypeOption.get());
        this.tabAllListData = new MutableLiveData<>(m44752r());
        this.tabNoteListData = new MutableLiveData<>(m44752r());
        this.tabPdfListData = new MutableLiveData<>(m44752r());
        this.folderRootListData = new MutableLiveData<>(new NoteModelBeanList());
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.filterList = new MutableLiveData<>(emptyList);
        this.isMulSelect = new MutableLiveData<>(bool);
        MediatorLiveData<Boolean> mediatorLiveData = new MediatorLiveData<>();
        this.isTopAndIsExpanded = mediatorLiveData;
        this.isLoadingList = new MutableLiveData<>(bool);
        MediatorLiveData<Boolean> mediatorLiveData2 = new MediatorLiveData<>();
        this.isShowSlideMenu = mediatorLiveData2;
        MediatorLiveData<Boolean> mediatorLiveData3 = new MediatorLiveData<>();
        this.isShowDrawerMenu = mediatorLiveData3;
        this.isHalfInMultiWindowMode = new MutableLiveData<>(bool);
        this.isSlideAnimating = new MutableLiveData<>(bool);
        this.isViewPagerAnimating = new MutableLiveData<>(bool);
        this.folderRootNode = new MutableLiveData<>();
        this.tagRootNode = new MutableLiveData<>();
        this.filterInfo = new MutableLiveData<>(NoteTreeBundle.INSTANCE.activeFilterInfo());
        this.selectType = new MutableLiveData<>(noteSelectTypeOption.get());
        this.sortType = noteSortHelper.getSortType();
        this.orderType = noteSortHelper.getOrderType();
        this.allowCloudSync = new MutableLiveData<>(bool);
        this.selectList = new MutableLiveData<>(new NoteModelBeanList());
        this.noteUsageInfo = new MutableLiveData<>();
        this.noteExpandOp = NoteAllFilter.INSTANCE.getNoteSetExpandOp();
        this.folderExpandOp = NoteFolderRootFilter.INSTANCE.getNoteFolderRootExpandOp();
        this.tagExpandOp = NoteTagRootFilter.INSTANCE.getNoteTagRootExpandOp();
        this.folderId = new MutableLiveData<>(stringOption.get());
        this.tagId = new MutableLiveData<>(stringOption2.get());
        this.allDataList = m44752r();
        this.syncProgress = -1;
        mediatorLiveData2.addSource(mutableLiveData3, new C11522s0(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool2) {
                invoke2(bool2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool2) {
                NoteListViewModel.this.isShowSlideMenu().setValue(Boolean.valueOf(Intrinsics.areEqual(NoteListViewModel.this.isInMultiWindowMode().getValue(), Boolean.FALSE) && Intrinsics.areEqual(NoteListViewModel.this.isSideExpand().getValue(), Boolean.TRUE) && DeviceUtils.isTablet()));
            }
        }));
        mediatorLiveData2.addSource(mutableLiveData2, new C11522s0(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool2) {
                invoke2(bool2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool2) {
                NoteListViewModel.this.isShowSlideMenu().setValue(Boolean.valueOf(Intrinsics.areEqual(NoteListViewModel.this.isInMultiWindowMode().getValue(), Boolean.FALSE) && Intrinsics.areEqual(NoteListViewModel.this.isSideExpand().getValue(), Boolean.TRUE) && DeviceUtils.isTablet()));
            }
        }));
        mediatorLiveData3.addSource(mutableLiveData3, new C11522s0(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel.3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool2) {
                invoke2(bool2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool2) {
                MediatorLiveData<Boolean> isShowDrawerMenu = NoteListViewModel.this.isShowDrawerMenu();
                Boolean value = NoteListViewModel.this.isInMultiWindowMode().getValue();
                Boolean bool3 = Boolean.TRUE;
                isShowDrawerMenu.setValue(Boolean.valueOf((Intrinsics.areEqual(value, bool3) || !DeviceUtils.isTablet()) && Intrinsics.areEqual(NoteListViewModel.this.isSideExpand().getValue(), bool3)));
            }
        }));
        mediatorLiveData3.addSource(mutableLiveData2, new C11522s0(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel.4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool2) {
                invoke2(bool2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool2) {
                MediatorLiveData<Boolean> isShowDrawerMenu = NoteListViewModel.this.isShowDrawerMenu();
                Boolean value = NoteListViewModel.this.isInMultiWindowMode().getValue();
                Boolean bool3 = Boolean.TRUE;
                isShowDrawerMenu.setValue(Boolean.valueOf((Intrinsics.areEqual(value, bool3) || !DeviceUtils.isTablet()) && Intrinsics.areEqual(NoteListViewModel.this.isSideExpand().getValue(), bool3)));
            }
        }));
        mediatorLiveData.addSource(mutableLiveData, new C11522s0(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel.5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool2) {
                invoke2(bool2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool2) {
                MediatorLiveData<Boolean> isTopAndIsExpanded = NoteListViewModel.this.isTopAndIsExpanded();
                Boolean value = NoteListViewModel.this.isTopLevel().getValue();
                Boolean bool3 = Boolean.TRUE;
                isTopAndIsExpanded.setValue(Boolean.valueOf(Intrinsics.areEqual(value, bool3) && Intrinsics.areEqual(NoteListViewModel.this.isShowSlideMenu().getValue(), bool3)));
            }
        }));
        mediatorLiveData.addSource(mediatorLiveData2, new C11522s0(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel.6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool2) {
                invoke2(bool2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool2) {
                MediatorLiveData<Boolean> isTopAndIsExpanded = NoteListViewModel.this.isTopAndIsExpanded();
                Boolean value = NoteListViewModel.this.isTopLevel().getValue();
                Boolean bool3 = Boolean.TRUE;
                isTopAndIsExpanded.setValue(Boolean.valueOf(Intrinsics.areEqual(value, bool3) && Intrinsics.areEqual(NoteListViewModel.this.isShowSlideMenu().getValue(), bool3)));
            }
        }));
    }

    /* renamed from: L */
    public static final int m44717L(boolean z, NoteModelBean noteModelBean, NoteModelBean noteModelBean2) {
        return z ? Float.compare(noteModelBean.getSortModel().getOrderIndex(), noteModelBean2.getSortModel().getOrderIndex()) : Float.compare(noteModelBean2.getSortModel().getOrderIndex(), noteModelBean.getSortModel().getOrderIndex());
    }

    /* renamed from: N */
    public static /* synthetic */ void m44718N(NoteListViewModel noteListViewModel, NoteImportArgs noteImportArgs, ImportSelectedContext importSelectedContext, int i, Object obj) {
        if ((i & 2) != 0) {
            importSelectedContext = null;
        }
        noteListViewModel.m44742M(noteImportArgs, importSelectedContext);
    }

    /* renamed from: O */
    public static final boolean m44719O(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* renamed from: Q */
    public static final boolean m44720Q(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* renamed from: T */
    public static /* synthetic */ void m44721T(NoteListViewModel noteListViewModel, List list, NoteSelectType noteSelectType, int i, Object obj) {
        if ((i & 2) != 0) {
            noteSelectType = null;
        }
        noteListViewModel.m44745S(list, noteSelectType);
    }

    public static /* synthetic */ void convertDocumentsOnline$default(NoteListViewModel noteListViewModel, List list, ImportSelectedContext importSelectedContext, int i, Object obj) {
        if ((i & 2) != 0) {
            importSelectedContext = null;
        }
        noteListViewModel.convertDocumentsOnline(list, importSelectedContext);
    }

    public static /* synthetic */ void importDocuments$default(NoteListViewModel noteListViewModel, Context context, List list, ImportSelectedContext importSelectedContext, int i, Object obj) {
        if ((i & 4) != 0) {
            importSelectedContext = null;
        }
        noteListViewModel.importDocuments(context, list, importSelectedContext);
    }

    public static /* synthetic */ void importImages$default(NoteListViewModel noteListViewModel, List list, NoteCreateFrom noteCreateFrom, ImportSelectedContext importSelectedContext, int i, Object obj) {
        if ((i & 4) != 0) {
            importSelectedContext = null;
        }
        noteListViewModel.importImages(list, noteCreateFrom, importSelectedContext);
    }

    /* renamed from: k */
    public static final void m44727k(NoteListViewModel this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.allowCloudSync.postValue(Boolean.valueOf(AccountDataBundle.INSTANCE.canSync()));
    }

    /* renamed from: l */
    public static final void m44728l(NoteListViewModel this$0, DocConvertAction this_apply, ImportSelectedContext importSelectedContext) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.m44757w(this_apply.getImportList(), importSelectedContext);
    }

    /* renamed from: o */
    public static /* synthetic */ SortData m44729o(NoteListViewModel noteListViewModel, NoteSelectType noteSelectType, int i, Object obj) {
        if ((i & 1) != 0) {
            noteSelectType = NoteSelectType.TAB_ALL;
        }
        return noteListViewModel.m44749n(noteSelectType);
    }

    /* renamed from: x */
    public static /* synthetic */ void m44730x(NoteListViewModel noteListViewModel, List list, ImportSelectedContext importSelectedContext, int i, Object obj) {
        if ((i & 2) != 0) {
            importSelectedContext = null;
        }
        noteListViewModel.m44757w(list, importSelectedContext);
    }

    /* renamed from: A */
    public final Observable<NoteListViewModel> m44731A() {
        Observable<NoteListViewModel> map = Observable.just(NoteSelectType.TAB_ALL).flatMap(new C11526w()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11527x()).doOnNext(new C11528y()).map(new C11529z());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: B */
    public final Observable<NoteListViewModel> m44732B() {
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        CBQueryArgs m72249clone = value.getQueryArgs().m72249clone();
        SortBy value2 = this.sortType.getValue();
        Intrinsics.checkNotNull(value2);
        SortOrder value3 = this.orderType.getValue();
        Intrinsics.checkNotNull(value3);
        NoteQueryArgsKt.sortWith(m72249clone, value2, value3);
        Observable<NoteListViewModel> map = Observable.just(this).observeOn(NoteTreeBundle.INSTANCE.getObserveOn()).flatMap(new C11491d0(m72249clone, this)).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11493e0()).doOnNext(new C11495f0()).map(new C11497g0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: C */
    public final Observable<List<PageModelBean>> m44733C(NoteSelectType noteSelectType) {
        List emptyList;
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        int type = value.getType();
        if (type == 6 || type == 7) {
            FilterInfo value2 = this.filterInfo.getValue();
            Intrinsics.checkNotNull(value2);
            return new LoadPageModelsAction(value2.getUniqueId(), noteSelectType).build();
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Observable<List<PageModelBean>> just = Observable.just(emptyList);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: D */
    public final Observable<NoteListViewModel> m44734D() {
        FilterInfo activeFilterInfo = NoteTreeBundle.INSTANCE.activeFilterInfo();
        String valueOf = String.valueOf(activeFilterInfo.getType());
        Observable<NoteListViewModel> map = Observable.just(this).filter(new C11508l0(activeFilterInfo)).doOnNext(new C11510m0(valueOf)).flatMap(new C11512n0()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11514o0()).doOnNext(new C11516p0()).doOnNext(new C11518q0(valueOf, this)).map(new C11520r0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: E */
    public final void m44735E() {
        this.folderIdOp.put("");
        this.tagIdOp.put("");
        this.isTopLevelOp.put(true);
        this.isBottomLevelOp.put(false);
        StringOption stringOption = this.currTitleOp;
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C10651R.string.no_mark);
        Intrinsics.checkNotNull(string);
        stringOption.put(string);
        this.folderId.setValue("");
        this.tagId.setValue("");
        this.isTopLevel.setValue(Boolean.TRUE);
        this.isBottomLevel.setValue(Boolean.FALSE);
        this.currTitle.setValue(resManager.getString(C10651R.string.no_mark));
    }

    /* renamed from: F */
    public final String m44736F(String value, String rootId) {
        if ((value == null || value.length() == 0) || Intrinsics.areEqual(value, rootId)) {
            return null;
        }
        return value;
    }

    /* renamed from: G */
    public final void m44737G() {
        this.folderIdOp.put("");
        this.tagIdOp.put("");
        this.isTopLevelOp.put(true);
        this.isBottomLevelOp.put(false);
        StringOption stringOption = this.currTitleOp;
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C10651R.string.all_note);
        Intrinsics.checkNotNull(string);
        stringOption.put(string);
        this.folderId.setValue("");
        this.tagId.setValue("");
        this.isTopLevel.setValue(Boolean.TRUE);
        this.isBottomLevel.setValue(Boolean.FALSE);
        this.currTitle.setValue(resManager.getString(C10651R.string.all_note));
    }

    /* renamed from: H */
    public final void m44738H() {
        this.tabAllListData.setValue(m44752r());
        this.tabNoteListData.setValue(m44752r());
        this.tabPdfListData.setValue(m44752r());
    }

    /* renamed from: I */
    public final void m44739I() {
        NoteSelectTypeOption noteSelectTypeOption = this.selectTypeOp;
        NoteSelectType noteSelectType = NoteSelectType.TAB_ALL;
        noteSelectTypeOption.put(noteSelectType);
        this.selectType.setValue(noteSelectType);
        this.isMulSelect.setValue(Boolean.FALSE);
    }

    /* renamed from: J */
    public final void m44740J(int level, String title, int maxLevel) {
        this.isTopLevel.setValue(Boolean.valueOf(level <= 1));
        this.isBottomLevel.setValue(Boolean.valueOf(level >= maxLevel));
        this.isTopLevelOp.put(level <= 1);
        this.isBottomLevelOp.put(level >= maxLevel);
        this.currTitle.setValue(title);
        this.currTitleOp.put(title);
    }

    /* renamed from: K */
    public final NoteModelBeanList m44741K(NoteModelBeanList list) {
        Comparator comparator;
        if (this.sortType.getValue() != SortBy.Name && this.sortType.getValue() != SortBy.Manual) {
            return list;
        }
        NoteModelBeanList noteModelBeanList = new NoteModelBeanList();
        ArrayList arrayList = new ArrayList();
        for (NoteModelBean noteModelBean : list) {
            if (noteModelBean.isLibrary()) {
                arrayList.add(noteModelBean);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (NoteModelBean noteModelBean2 : list) {
            if (noteModelBean2.isDocument()) {
                arrayList2.add(noteModelBean2);
            }
        }
        if (this.sortType.getValue() == SortBy.Name) {
            comparator = new PinYinStringHelper.PinYinSortComparator<NoteModelBean>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$sortFolderRootList$comparator$1
                @Override // java.util.Comparator
                public int compare(@NotNull NoteModelBean o1, @NotNull NoteModelBean o2) {
                    String str;
                    CharSequence trim;
                    CharSequence trim2;
                    Intrinsics.checkNotNullParameter(o1, "o1");
                    Intrinsics.checkNotNullParameter(o2, "o2");
                    ComparatorUtils comparatorUtils = ComparatorUtils.INSTANCE;
                    PinYinStringHelper pinYinStringHelper = PinYinStringHelper.INSTANCE;
                    String title = o1.getTitle();
                    String str2 = null;
                    if (title != null) {
                        trim2 = StringsKt__StringsKt.trim((CharSequence) title);
                        str = trim2.toString();
                    } else {
                        str = null;
                    }
                    String pinYin = pinYinStringHelper.getPinYin(str);
                    String title2 = o2.getTitle();
                    if (title2 != null) {
                        trim = StringsKt__StringsKt.trim((CharSequence) title2);
                        str2 = trim.toString();
                    }
                    String pinYin2 = pinYinStringHelper.getPinYin(str2);
                    SortOrder value = NoteListViewModel.this.getOrderType().getValue();
                    Intrinsics.checkNotNull(value);
                    return comparatorUtils.stringComparator(pinYin, pinYin2, value);
                }
            };
        } else {
            final boolean z = false;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<NoteModelBean> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (!(it2.next().getSortModel().getOrderIndex() == -1.0f)) {
                        z = true;
                        break;
                    }
                }
            }
            comparator = new Comparator() { // from class: com.sunia.HTREnginev2.myj
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m44717L;
                    m44717L = NoteListViewModel.m44717L(z, (NoteModelBean) obj, (NoteModelBean) obj2);
                    return m44717L;
                }
            };
        }
        Collections.sort(arrayList, comparator);
        Collections.sort(arrayList2, comparator);
        noteModelBeanList.addAll(arrayList);
        noteModelBeanList.addAll(arrayList2);
        return noteModelBeanList;
    }

    /* renamed from: M */
    public final void m44742M(NoteImportArgs importArgs, ImportSelectedContext importSelectedContext) {
        List<String> listOf;
        FilterInfo value = this.filterInfo.getValue();
        Integer valueOf = value != null ? Integer.valueOf(value.getType()) : null;
        if (valueOf != null && valueOf.intValue() == 5) {
            importArgs.setImportFolderName(this.currTitle.getValue());
        } else if (valueOf != null && valueOf.intValue() == 7) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(String.valueOf(this.currTitle.getValue()));
            importArgs.setImportTagNameList(listOf);
        }
        if (importSelectedContext != null) {
            importSelectedContext.resetNoteImportArg(importArgs);
        }
    }

    /* renamed from: P */
    public final void m44743P() {
        this.folderIdOp.put("");
        this.tagIdOp.put(NoteConfigConst.TAG_ROOT_ID);
        this.isTopLevelOp.put(true);
        this.isBottomLevelOp.put(false);
        StringOption stringOption = this.currTitleOp;
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C10651R.string.tag);
        Intrinsics.checkNotNull(string);
        stringOption.put(string);
        this.folderId.setValue("");
        this.tagId.setValue(NoteConfigConst.TAG_ROOT_ID);
        this.isTopLevel.setValue(Boolean.TRUE);
        this.isBottomLevel.setValue(Boolean.FALSE);
        this.currTitle.setValue(resManager.getString(C10651R.string.tag));
    }

    /* renamed from: R */
    public final void m44744R() {
        this.folderIdOp.put(NoteConfigConst.FOLDER_ROOT_ID);
        this.tagIdOp.put("");
        this.isTopLevelOp.put(true);
        this.isBottomLevelOp.put(false);
        StringOption stringOption = this.currTitleOp;
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C10651R.string.no_classify);
        Intrinsics.checkNotNull(string);
        stringOption.put(string);
        this.folderId.setValue(NoteConfigConst.FOLDER_ROOT_ID);
        this.tagId.setValue("");
        this.isTopLevel.setValue(Boolean.TRUE);
        this.isBottomLevel.setValue(Boolean.FALSE);
        this.currTitle.setValue(resManager.getString(C10651R.string.no_classify));
    }

    /* renamed from: S */
    public final void m44745S(List<NotePageBean> list, NoteSelectType ignore) {
        List<NotePageBean> mutableList;
        List<NotePageBean> mutableList2;
        List<NotePageBean> mutableList3;
        this.allDataList = list;
        if (ignore != NoteSelectType.TAB_ALL) {
            MutableLiveData<List<NotePageBean>> mutableLiveData = this.tabAllListData;
            mutableList3 = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
            mutableLiveData.setValue(mutableList3);
        }
        if (ignore != NoteSelectType.TAB_NOTE) {
            MutableLiveData<List<NotePageBean>> mutableLiveData2 = this.tabNoteListData;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                NotePageBean notePageBean = (NotePageBean) obj;
                if ((notePageBean.isNoteScene() && notePageBean.isNoteDoc()) || notePageBean.isHeaderType()) {
                    arrayList.add(obj);
                }
            }
            mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            mutableLiveData2.setValue(mutableList2);
        }
        if (ignore != NoteSelectType.TAB_PDF) {
            MutableLiveData<List<NotePageBean>> mutableLiveData3 = this.tabPdfListData;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : list) {
                NotePageBean notePageBean2 = (NotePageBean) obj2;
                if ((notePageBean2.isPdfScene() && notePageBean2.isNoteDoc()) || notePageBean2.isHeaderType()) {
                    arrayList2.add(obj2);
                }
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
            mutableLiveData3.setValue(mutableList);
        }
    }

    public final void cancelDocConvert() {
        DocConvertAction docConvertAction = this.docConvertAction;
        if (docConvertAction != null) {
            docConvertAction.dispose();
        }
        this.docConvertAction = null;
    }

    public final void checkCloudSyncCondition() {
        NoteCloudSyncCheckArgs noteCloudSyncCheckArgs = new NoteCloudSyncCheckArgs();
        noteCloudSyncCheckArgs.setCheckConfig(false);
        noteCloudSyncCheckArgs.setCheckSpace(false);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Unit> doFinally = new CheckNoteSyncConditionAction(noteCloudSyncCheckArgs).build().observeOn(AndroidSchedulers.mainThread()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.nyj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteListViewModel.m44727k(NoteListViewModel.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doFinally, null, null, 3, null);
    }

    public final void convertDocumentsOnline(@NotNull List<DocumentFileEntry> fileList, @Nullable final ImportSelectedContext importSelectedContext) {
        Intrinsics.checkNotNullParameter(fileList, "fileList");
        Iterator<T> it2 = fileList.iterator();
        while (it2.hasNext()) {
            StatisticsBundle.INSTANCE.postEvent(new StatisticsImportFileTypeEvent(((DocumentFileEntry) it2.next()).getExtensionName()));
        }
        if (!NetworkUtils.INSTANCE.isNetworkConnected(ResManager.INSTANCE.getAppContext())) {
            importDocuments(fileList, importSelectedContext);
            return;
        }
        final DocConvertAction docConvertAction = new DocConvertAction(DocCollectionBundle.INSTANCE.docManagerBundle(), fileList);
        this.docConvertAction = docConvertAction;
        docConvertAction.build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.lyj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteListViewModel.m44728l(NoteListViewModel.this, docConvertAction, importSelectedContext);
            }
        }).subscribe();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x004d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void customSortNoteList(@org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.NotNull java.lang.String r13, int r14, @org.jetbrains.annotations.NotNull com.onyx.galaxy.note.category.data.NoteSelectType r15) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel.customSortNoteList(java.lang.String, java.lang.String, int, com.onyx.galaxy.note.category.data.NoteSelectType):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001a  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteModelBean> findFolder(@org.jetbrains.annotations.Nullable java.lang.String r2) {
        /*
            r1 = this;
            if (r2 == 0) goto Lb
            boolean r0 = kotlin.text.StringsKt.isBlank(r2)
            if (r0 == 0) goto L9
            goto Lb
        L9:
            r0 = 0
            goto Lc
        Lb:
            r0 = 1
        Lc:
            if (r0 == 0) goto L1a
            androidx.lifecycle.MutableLiveData<com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteModelBean>> r1 = r1.folderRootNode
            java.lang.Object r1 = r1.getValue()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            com.onyx.android.sdk.base.data.TreeNode r1 = (com.onyx.android.sdk.base.data.TreeNode) r1
            return r1
        L1a:
            androidx.lifecycle.MutableLiveData<com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteModelBean>> r1 = r1.folderRootNode
            java.lang.Object r1 = r1.getValue()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            com.onyx.android.sdk.base.data.TreeNode r1 = (com.onyx.android.sdk.base.data.TreeNode) r1
            com.onyx.android.sdk.base.data.TreeNode r1 = r1.findNode(r2)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel.findFolder(java.lang.String):com.onyx.android.sdk.base.data.TreeNode");
    }

    @NotNull
    public final List<TreeNode<NoteModelBean>> findFolders(@NotNull final List<String> uniqueIds) {
        Intrinsics.checkNotNullParameter(uniqueIds, "uniqueIds");
        TreeNode<NoteModelBean> value = this.folderRootNode.getValue();
        Intrinsics.checkNotNull(value);
        return TreeNode.findNodes$default(value, new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$findFolders$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                boolean contains;
                Intrinsics.checkNotNullParameter(it2, "it");
                contains = CollectionsKt___CollectionsKt.contains(uniqueIds, it2.getId());
                return Boolean.valueOf(contains);
            }
        }, null, null, 6, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0017  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean> findTag(@org.jetbrains.annotations.Nullable final java.lang.String r2) {
        /*
            r1 = this;
            if (r2 == 0) goto Lb
            boolean r0 = kotlin.text.StringsKt.isBlank(r2)
            if (r0 == 0) goto L9
            goto Lb
        L9:
            r0 = 0
            goto Lc
        Lb:
            r0 = 1
        Lc:
            if (r0 == 0) goto L17
            androidx.lifecycle.MutableLiveData<com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>> r1 = r1.tagRootNode
            java.lang.Object r1 = r1.getValue()
            com.onyx.android.sdk.base.data.TreeNode r1 = (com.onyx.android.sdk.base.data.TreeNode) r1
            return r1
        L17:
            androidx.lifecycle.MutableLiveData<com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>> r1 = r1.tagRootNode
            java.lang.Object r1 = r1.getValue()
            com.onyx.android.sdk.base.data.TreeNode r1 = (com.onyx.android.sdk.base.data.TreeNode) r1
            if (r1 == 0) goto L2b
            com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$findTag$1 r0 = new com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$findTag$1
            r0.<init>()
            com.onyx.android.sdk.base.data.TreeNode r1 = r1.findNode(r0)
            goto L2c
        L2b:
            r1 = 0
        L2c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel.findTag(java.lang.String):com.onyx.android.sdk.base.data.TreeNode");
    }

    @NotNull
    public final MutableLiveData<Boolean> getAllowCloudSync() {
        return this.allowCloudSync;
    }

    @NotNull
    public final MutableLiveData<String> getCurrTitle() {
        return this.currTitle;
    }

    @NotNull
    public final StringOption getCurrTitleOp() {
        return this.currTitleOp;
    }

    @Nullable
    public final String getCurrentFolderId() {
        String str = this.folderIdOp.get();
        if ((str == null || str.length() == 0) || Intrinsics.areEqual(str, NoteConfigConst.FOLDER_ROOT_ID)) {
            return null;
        }
        return str;
    }

    @Nullable
    public final String getCurrentTagId() {
        String str = this.tagIdOp.get();
        if ((str == null || str.length() == 0) || Intrinsics.areEqual(str, NoteConfigConst.TAG_ROOT_ID)) {
            return null;
        }
        return str;
    }

    @NotNull
    public final MutableLiveData<NoteDisplayType> getDisplayType() {
        return this.displayType;
    }

    @NotNull
    public final MutableLiveData<FilterInfo> getFilterInfo() {
        return this.filterInfo;
    }

    @NotNull
    public final MutableLiveData<List<FilterInfo>> getFilterList() {
        return this.filterList;
    }

    @NotNull
    public final StringOption getFolderIdOp() {
        return this.folderIdOp;
    }

    @NotNull
    public final MutableLiveData<NoteModelBeanList> getFolderRootListData() {
        return this.folderRootListData;
    }

    @NotNull
    public final MutableLiveData<TreeNode<NoteModelBean>> getFolderRootNode() {
        return this.folderRootNode;
    }

    @Nullable
    public final String getNormalizedFolderId() {
        return m44736F(this.folderId.getValue(), NoteConfigConst.FOLDER_ROOT_ID);
    }

    @Nullable
    public final String getNormalizedTagId() {
        return m44736F(this.tagId.getValue(), NoteConfigConst.TAG_ROOT_ID);
    }

    @NotNull
    public final NoteDisplayTypeOption getNoteDisplayTypeOp() {
        return this.noteDisplayTypeOp;
    }

    @NotNull
    public final MutableLiveData<NoteUsageInfo> getNoteUsageInfo() {
        return this.noteUsageInfo;
    }

    @NotNull
    public final MutableLiveData<SortOrder> getOrderType() {
        return this.orderType;
    }

    @NotNull
    public final MutableLiveData<NoteModelBeanList> getSelectList() {
        return this.selectList;
    }

    @NotNull
    public final MutableLiveData<NoteSelectType> getSelectType() {
        return this.selectType;
    }

    @NotNull
    public final NoteSelectTypeOption getSelectTypeOp() {
        return this.selectTypeOp;
    }

    @NotNull
    public final BooleanOption getSlideExpandOp() {
        return this.slideExpandOp;
    }

    public final int getSortIconId() {
        SortBy value = this.sortType.getValue();
        Intrinsics.checkNotNull(value);
        SortOrder value2 = this.orderType.getValue();
        Intrinsics.checkNotNull(value2);
        String str = value.name() + value2.name();
        StringBuilder sb = new StringBuilder();
        SortBy sortBy = SortBy.Name;
        sb.append(sortBy.name());
        SortOrder sortOrder = SortOrder.Asc;
        sb.append(sortOrder);
        if (Intrinsics.areEqual(str, sb.toString())) {
            return C10651R.drawable.icon_note_sort_name_asc;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(sortBy.name());
        SortOrder sortOrder2 = SortOrder.Desc;
        sb2.append(sortOrder2);
        if (Intrinsics.areEqual(str, sb2.toString())) {
            return C10651R.drawable.icon_note_sort_name_desc;
        }
        StringBuilder sb3 = new StringBuilder();
        SortBy sortBy2 = SortBy.CreationTime;
        sb3.append(sortBy2.name());
        sb3.append(sortOrder);
        if (Intrinsics.areEqual(str, sb3.toString())) {
            return C10651R.drawable.icon_note_sort_create_asc;
        }
        if (Intrinsics.areEqual(str, sortBy2.name() + sortOrder2)) {
            return C10651R.drawable.icon_note_sort_create_desc;
        }
        StringBuilder sb4 = new StringBuilder();
        SortBy sortBy3 = SortBy.UpdateAt;
        sb4.append(sortBy3.name());
        sb4.append(sortOrder);
        if (Intrinsics.areEqual(str, sb4.toString())) {
            return C10651R.drawable.icon_note_sort_update_asc;
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append(sortBy3.name());
        sb5.append(sortOrder2);
        return Intrinsics.areEqual(str, sb5.toString()) ? C10651R.drawable.icon_note_sort_update_desc : C10651R.drawable.icon_note_sort_custom;
    }

    @NotNull
    public final String getSortName() {
        int i;
        SortBy value = this.sortType.getValue();
        Intrinsics.checkNotNull(value);
        SortOrder value2 = this.orderType.getValue();
        Intrinsics.checkNotNull(value2);
        String str = value.name() + value2.name();
        StringBuilder sb = new StringBuilder();
        SortBy sortBy = SortBy.Name;
        sb.append(sortBy.name());
        SortOrder sortOrder = SortOrder.Asc;
        sb.append(sortOrder);
        if (Intrinsics.areEqual(str, sb.toString())) {
            i = C10651R.string.note_sort_name_asc;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(sortBy.name());
            SortOrder sortOrder2 = SortOrder.Desc;
            sb2.append(sortOrder2);
            if (Intrinsics.areEqual(str, sb2.toString())) {
                i = C10651R.string.note_sort_name_desc;
            } else {
                StringBuilder sb3 = new StringBuilder();
                SortBy sortBy2 = SortBy.CreationTime;
                sb3.append(sortBy2.name());
                sb3.append(sortOrder);
                if (Intrinsics.areEqual(str, sb3.toString())) {
                    i = C10651R.string.note_sort_create_asc;
                } else {
                    if (Intrinsics.areEqual(str, sortBy2.name() + sortOrder2)) {
                        i = C10651R.string.note_sort_create_desc;
                    } else {
                        StringBuilder sb4 = new StringBuilder();
                        SortBy sortBy3 = SortBy.UpdateAt;
                        sb4.append(sortBy3.name());
                        sb4.append(sortOrder);
                        if (Intrinsics.areEqual(str, sb4.toString())) {
                            i = C10651R.string.note_sort_update_asc;
                        } else {
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append(sortBy3.name());
                            sb5.append(sortOrder2);
                            i = Intrinsics.areEqual(str, sb5.toString()) ? C10651R.string.note_sort_update_desc : C10651R.string.note_sort_custom;
                        }
                    }
                }
            }
        }
        String string = ResManager.INSTANCE.getString(i);
        Intrinsics.checkNotNull(string);
        return string;
    }

    @NotNull
    public final MutableLiveData<SortBy> getSortType() {
        return this.sortType;
    }

    public final int getSyncProgress() {
        return this.syncProgress;
    }

    @NotNull
    public final MutableLiveData<List<NotePageBean>> getTabAllListData() {
        return this.tabAllListData;
    }

    @NotNull
    public final MutableLiveData<List<NotePageBean>> getTabNoteListData() {
        return this.tabNoteListData;
    }

    @NotNull
    public final MutableLiveData<List<NotePageBean>> getTabPdfListData() {
        return this.tabPdfListData;
    }

    @NotNull
    public final StringOption getTagIdOp() {
        return this.tagIdOp;
    }

    @NotNull
    public final MutableLiveData<TreeNode<NoteTagBean>> getTagRootNode() {
        return this.tagRootNode;
    }

    public final void gotoDustBin() {
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        if (value.getType() == 8) {
            return;
        }
        m44746i(NoteDustBinFilter.INSTANCE.getInfo());
        m44750p();
        m44739I();
        initList();
    }

    public final void gotoFolder(@Nullable String id) {
        TreeNode<NoteModelBean> findNode;
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        if (Intrinsics.areEqual(value.getUniqueId(), id) || (findNode = NoteTreeBundle.INSTANCE.getFolderRootNote().findNode(id)) == null) {
            return;
        }
        FilterInfo value2 = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value2);
        if (value2.getType() == 5) {
            FilterInfo value3 = this.filterInfo.getValue();
            Intrinsics.checkNotNull(value3);
            if (Intrinsics.areEqual(value3.getUniqueId(), findNode.getData().getUniqueId())) {
                return;
            }
        }
        this.folderId.setValue(findNode.getData().getUniqueId());
        this.folderIdOp.put(findNode.getData().getUniqueId());
        this.tagId.setValue("");
        this.tagIdOp.put("");
        Intrinsics.checkNotNull(id);
        m44746i(new NoteFolderFilterInfo(id));
        this.currTitle.setValue(findNode.getData().getTitle());
        StringOption stringOption = this.currTitleOp;
        String title = findNode.getData().getTitle();
        Intrinsics.checkNotNull(title);
        stringOption.put(title);
        this.isTopLevel.setValue(Boolean.FALSE);
        this.isTopLevelOp.put(false);
        this.isBottomLevel.setValue(Boolean.valueOf(findNode.exceedMaxLevel(6)));
        this.isBottomLevelOp.put(findNode.exceedMaxLevel(6));
        m44739I();
        initList();
    }

    public final void gotoFolderRoot() {
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        if (value.getType() == 4) {
            return;
        }
        m44746i(NoteFolderRootFilter.INSTANCE.getInfo());
        m44751q();
        m44739I();
        initList();
    }

    public final void gotoNoTag() {
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        if (value.getType() == 3) {
            return;
        }
        m44746i(NoteSetNoTag.INSTANCE.getInfo());
        m44735E();
        m44739I();
        initList();
    }

    public final void gotoNoteSet() {
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        if (value.getType() == 1) {
            return;
        }
        m44746i(NoteAllFilter.INSTANCE.getInfo());
        m44737G();
        m44739I();
        initList();
    }

    public final void gotoSearch() {
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        if (value.getType() == 0) {
            return;
        }
        m44746i(SearchFilter.INSTANCE.getInfo());
        this.isMulSelect.setValue(Boolean.FALSE);
    }

    public final void gotoTag(@Nullable String id) {
        TreeNode<NoteTagBean> findNode;
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        if (Intrinsics.areEqual(value.getUniqueId(), id) || (findNode = NoteTreeBundle.INSTANCE.getTagRootNote().findNode(id)) == null) {
            return;
        }
        FilterInfo value2 = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value2);
        if (value2.getType() == 5) {
            FilterInfo value3 = this.filterInfo.getValue();
            Intrinsics.checkNotNull(value3);
            if (Intrinsics.areEqual(value3.getUniqueId(), findNode.getData().getUniqueId())) {
                return;
            }
        }
        this.tagId.setValue(findNode.getData().getUniqueId());
        this.tagIdOp.put(findNode.getData().getUniqueId());
        this.folderId.setValue("");
        this.folderIdOp.put("");
        Intrinsics.checkNotNull(id);
        m44746i(new NoteTagFilterInfo(id));
        this.currTitle.setValue(findNode.getData().getContent());
        this.currTitleOp.put(findNode.getData().getContent());
        this.isTopLevel.setValue(Boolean.FALSE);
        this.isTopLevelOp.put(false);
        this.isBottomLevel.setValue(Boolean.valueOf(findNode.exceedMaxLevel(6)));
        this.isBottomLevelOp.put(findNode.exceedMaxLevel(6));
        m44739I();
        initList();
    }

    public final void gotoTagRoot() {
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        if (value.getType() == 6) {
            return;
        }
        m44746i(NoteTagRootFilter.INSTANCE.getInfo());
        m44743P();
        m44739I();
        initList();
    }

    public final void gotoUnClassfied() {
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        if (value.getType() == 2) {
            return;
        }
        m44746i(NoteSetUnClassfied.INSTANCE.getInfo());
        m44744R();
        m44739I();
        initList();
    }

    public final void gotoUp() {
        TreeNode<NoteTagBean> value;
        TreeNode<NoteTagBean> findNode;
        TreeNode<NoteTagBean> parent;
        String content;
        TreeNode<NoteModelBean> findNode2;
        TreeNode<NoteModelBean> parent2;
        String title;
        final String value2 = this.folderId.getValue();
        final String value3 = this.tagId.getValue();
        String str = NoteConfigConst.FOLDER_ROOT_ID;
        if (!Intrinsics.areEqual(value2, NoteConfigConst.FOLDER_ROOT_ID) && StringKt.isNotBlank(value2)) {
            TreeNode<NoteModelBean> value4 = this.folderRootNode.getValue();
            if (value4 == null || (findNode2 = value4.findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$gotoUp$pNode$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it2.getId(), value2));
                }
            })) == null || (parent2 = findNode2.getParent()) == null) {
                return;
            }
            if (parent2.isRootNode()) {
                title = ResManager.INSTANCE.getString(C10651R.string.folder);
                Intrinsics.checkNotNull(title);
                m44746i(NoteFolderRootFilter.INSTANCE.getInfo());
            } else {
                str = parent2.getData().getUniqueId();
                title = parent2.getData().getTitle();
                Intrinsics.checkNotNull(title);
                m44746i(new NoteFolderFilterInfo(str));
            }
            this.folderId.setValue(str);
            this.folderIdOp.put(str);
            m44740J(parent2.levelToRoot(), title, 6);
        }
        String str2 = NoteConfigConst.TAG_ROOT_ID;
        if (Intrinsics.areEqual(value3, NoteConfigConst.TAG_ROOT_ID) || !StringKt.isNotBlank(value3) || (value = this.tagRootNode.getValue()) == null || (findNode = value.findNode(new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$gotoUp$pNode$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getId(), value3));
            }
        })) == null || (parent = findNode.getParent()) == null) {
            return;
        }
        if (parent.isRootNode()) {
            content = ResManager.INSTANCE.getString(C10651R.string.tag);
            Intrinsics.checkNotNull(content);
            m44746i(NoteTagRootFilter.INSTANCE.getInfo());
        } else {
            str2 = parent.getData().getUniqueId();
            content = parent.getData().getContent();
            m44746i(new NoteTagFilterInfo(str2));
        }
        this.tagId.setValue(str2);
        this.tagIdOp.put(str2);
        m44740J(parent.levelToRoot(), content, 6);
    }

    /* renamed from: i */
    public final void m44746i(FilterInfo info) {
        NoteTreeBundle.INSTANCE.activate(info);
        m44738H();
        this.filterInfo.setValue(info);
    }

    public final void importDocuments(@NotNull Context activityContext, @NotNull List<? extends Pair<? extends Uri, String>> uriList, @Nullable ImportSelectedContext importSelectedContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        Observable doOnNext = new QueryInfoFromUriAction(uriList).build().flatMap(new C11484a(activityContext)).filter(C11486b.f55756e).map(C11488c.f55758e).doOnNext(new C11490d(importSelectedContext));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    public final void importImages(@NotNull List<? extends Uri> uris, @NotNull NoteCreateFrom noteCreateFrom, @Nullable final ImportSelectedContext importSelectedContext) {
        Intrinsics.checkNotNullParameter(uris, "uris");
        Intrinsics.checkNotNullParameter(noteCreateFrom, "noteCreateFrom");
        Observable.just(uris).observeOn(NoteTreeBundle.INSTANCE.getObserveOn()).flatMap(new Function() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$importImages$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends String> apply(@NotNull List<? extends Uri> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                int i = 1;
                ImportSelectedContext importSelectedContext2 = ImportSelectedContext.this;
                return new NoteNameCreateAction(i, (String) AnyKt.getOrElse(importSelectedContext2 != null ? importSelectedContext2.getModifyName() : null, new Function0<String>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$importImages$1.1
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final String invoke() {
                        return ResManager.INSTANCE.getStringSafely(C10651R.string.unnamed_note);
                    }
                }), 0, null, 12, null).build();
            }
        }).map(new C11492e(uris, this)).doOnNext(new C11494f(importSelectedContext)).doOnNext(new C11496g(noteCreateFrom)).subscribe();
    }

    @SuppressLint({"CheckResult"})
    public final void initList() {
        Disposable disposable = this.loadListDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        int type = value.getType();
        this.loadListDispose = Observable.just(this).doOnSubscribe(new C11498h()).flatMap(new C11500i(type != 4 ? type != 8 ? m44734D() : m44731A() : m44732B())).subscribe(new C11503j());
    }

    @NotNull
    public final MutableLiveData<Boolean> isBottomLevel() {
        return this.isBottomLevel;
    }

    @NotNull
    /* renamed from: isBottomLevelOp, reason: from getter */
    public final BooleanOption getIsBottomLevelOp() {
        return this.isBottomLevelOp;
    }

    public final boolean isFilterFolder() {
        return NoteTreeBundle.INSTANCE.activeFilterInfo().getType() == 5;
    }

    public final boolean isFilterRootFolder() {
        return NoteTreeBundle.INSTANCE.activeFilterInfo().getType() == 4;
    }

    public final boolean isFolderExpand() {
        return this.folderExpandOp.get();
    }

    @NotNull
    public final MutableLiveData<Boolean> isHalfInMultiWindowMode() {
        return this.isHalfInMultiWindowMode;
    }

    @NotNull
    public final MutableLiveData<Boolean> isInMultiWindowMode() {
        return this.isInMultiWindowMode;
    }

    @NotNull
    public final MutableLiveData<Boolean> isLoadingList() {
        return this.isLoadingList;
    }

    @NotNull
    public final MutableLiveData<Boolean> isMulSelect() {
        return this.isMulSelect;
    }

    public final boolean isNoteSetExpand() {
        return this.noteExpandOp.get();
    }

    @NotNull
    public final MediatorLiveData<Boolean> isShowDrawerMenu() {
        return this.isShowDrawerMenu;
    }

    @NotNull
    public final MediatorLiveData<Boolean> isShowSlideMenu() {
        return this.isShowSlideMenu;
    }

    @NotNull
    public final MutableLiveData<Boolean> isSideExpand() {
        return this.isSideExpand;
    }

    @NotNull
    public final MutableLiveData<Boolean> isSlideAnimating() {
        return this.isSlideAnimating;
    }

    public final boolean isSyncFinished() {
        return this.syncProgress == -1;
    }

    public final boolean isTagExpand() {
        return this.tagExpandOp.get();
    }

    @NotNull
    public final MediatorLiveData<Boolean> isTopAndIsExpanded() {
        return this.isTopAndIsExpanded;
    }

    @NotNull
    public final MutableLiveData<Boolean> isTopLevel() {
        return this.isTopLevel;
    }

    @NotNull
    /* renamed from: isTopLevelOp, reason: from getter */
    public final BooleanOption getIsTopLevelOp() {
        return this.isTopLevelOp;
    }

    @NotNull
    public final MutableLiveData<Boolean> isViewPagerAnimating() {
        return this.isViewPagerAnimating;
    }

    /* renamed from: j */
    public final void m44747j(FilterInfo filter, List<NotePageBean> notePageList) {
        if (filter.getType() == 6 || filter.getType() == 8) {
            return;
        }
        notePageList.add(0, new NotePageBean(3, null, null, 6, null));
    }

    @SuppressLint({"CheckResult"})
    public final void loadFilterList() {
        new LoadFilterListAction().build().doOnNext(new C11485a0()).doOnNext(new C11487b0()).doOnNext(new C11489c0()).subscribe();
    }

    @NotNull
    public final Observable<Boolean> loadNoteFoldTree() {
        Observable map = new LoadNoteFolderTreeAction().build().doOnNext(new C11499h0()).map(C11501i0.f55775e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<Boolean> loadTagTree() {
        Observable map = new LoadTagTreeAction().build().doOnNext(new C11504j0()).map(C11506k0.f55781e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final SortData m44748m() {
        if (this.sortType.getValue() != SortBy.Manual) {
            return null;
        }
        SortData sortData = new SortData();
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        sortData.setFilterId(value.getUniqueId());
        FilterInfo value2 = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value2);
        sortData.setSubFilterId(value2.getUniqueId());
        return sortData;
    }

    /* renamed from: n */
    public final SortData m44749n(NoteSelectType noteSelectType) {
        if (this.sortType.getValue() != SortBy.Manual) {
            return null;
        }
        SortData sortData = new SortData();
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        sortData.setFilterId(value.getUniqueId());
        sortData.setSubFilterId(String.valueOf(noteSelectType.ordinal()));
        return sortData;
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        Disposable disposable = this.loadListDispose;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: p */
    public final void m44750p() {
        this.folderIdOp.put("");
        this.tagIdOp.put("");
        this.isTopLevelOp.put(true);
        this.isBottomLevelOp.put(false);
        StringOption stringOption = this.currTitleOp;
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C10651R.string.dustbin);
        Intrinsics.checkNotNull(string);
        stringOption.put(string);
        this.folderId.setValue("");
        this.tagId.setValue("");
        this.isTopLevel.setValue(Boolean.TRUE);
        this.isBottomLevel.setValue(Boolean.FALSE);
        this.currTitle.setValue(resManager.getString(C10651R.string.dustbin));
    }

    /* renamed from: q */
    public final void m44751q() {
        this.folderIdOp.put(NoteConfigConst.FOLDER_ROOT_ID);
        this.tagIdOp.put("");
        this.isTopLevelOp.put(true);
        this.isBottomLevelOp.put(false);
        StringOption stringOption = this.currTitleOp;
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C10651R.string.folder);
        Intrinsics.checkNotNull(string);
        stringOption.put(string);
        this.folderId.setValue(NoteConfigConst.FOLDER_ROOT_ID);
        this.tagId.setValue("");
        this.isTopLevel.setValue(Boolean.TRUE);
        this.isBottomLevel.setValue(Boolean.FALSE);
        this.currTitle.setValue(resManager.getString(C10651R.string.folder));
    }

    /* renamed from: r */
    public final List<NotePageBean> m44752r() {
        List<NotePageBean> mutableListOf;
        int type = NoteTreeBundle.INSTANCE.activeFilterInfo().getType();
        if (type == 6 || type == 8) {
            return new ArrayList();
        }
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new NotePageBean(3, null, null, 6, null));
        return mutableListOf;
    }

    public final void resetFolderRootListData() {
        this.folderRootListData.setValue(new NoteModelBeanList());
    }

    /* renamed from: s */
    public final Observable<CBQueryArgs> m44753s(FilterInfo filter) {
        Observable<TreeNode<NoteTagBean>> just;
        if (filter.getType() != 7) {
            Observable<CBQueryArgs> just2 = Observable.just(filter.getQueryArgs().m72249clone());
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        NoteTreeBundle noteTreeBundle = NoteTreeBundle.INSTANCE;
        if (noteTreeBundle.getTagRootNote().findChildren().isEmpty()) {
            just = new LoadTagTreeAction().build();
        } else {
            just = Observable.just(noteTreeBundle.getTagRootNote());
            Intrinsics.checkNotNull(just);
        }
        return m44756v(just, filter.getUniqueId());
    }

    public final void setSyncProgress(int i) {
        this.syncProgress = i;
    }

    @NotNull
    public final Map<NoteModelBean, Boolean> swipeSelectItems(@NotNull List<NoteModelBean> models) {
        Intrinsics.checkNotNullParameter(models, "models");
        NoteModelBeanList noteModelBeanList = new NoteModelBeanList();
        NoteModelBeanList value = this.selectList.getValue();
        Intrinsics.checkNotNull(value);
        noteModelBeanList.addAll(value);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (final NoteModelBean noteModelBean : models) {
            boolean contains = CollectionKt.contains(noteModelBeanList, new Function1<NoteModelBean, Boolean>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$swipeSelectItems$contains$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull NoteModelBean it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it2.getUniqueId(), NoteModelBean.this.getUniqueId()));
                }
            });
            if (contains) {
                final Function1<NoteModelBean, Boolean> function1 = new Function1<NoteModelBean, Boolean>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$swipeSelectItems$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull NoteModelBean it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(Intrinsics.areEqual(it2.getUniqueId(), NoteModelBean.this.getUniqueId()));
                    }
                };
                noteModelBeanList.removeIf(new java.util.function.Predicate() { // from class: com.sunia.HTREnginev2.kyj
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean m44719O;
                        m44719O = NoteListViewModel.m44719O(Function1.this, obj);
                        return m44719O;
                    }
                });
            } else {
                noteModelBeanList.add(noteModelBean);
            }
            linkedHashMap.put(noteModelBean, Boolean.valueOf(!contains));
        }
        this.selectList.setValue(noteModelBeanList);
        return linkedHashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[LOOP:0: B:2:0x0008->B:13:0x0032, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036 A[SYNTHETIC] */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m44754t(java.lang.String r5) {
        /*
            r4 = this;
            java.util.List<com.onyx.galaxy.note.category.data.NotePageBean> r4 = r4.allDataList
            java.util.Iterator r4 = r4.iterator()
            r0 = 0
            r1 = r0
        L8:
            boolean r2 = r4.hasNext()
            if (r2 == 0) goto L35
            java.lang.Object r2 = r4.next()
            com.onyx.galaxy.note.category.data.NotePageBean r2 = (com.onyx.galaxy.note.category.data.NotePageBean) r2
            boolean r3 = r2.isNoteType()
            if (r3 == 0) goto L2e
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r2 = r2.getNoteModelBean()
            if (r2 == 0) goto L25
            java.lang.String r2 = r2.getUniqueId()
            goto L26
        L25:
            r2 = 0
        L26:
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r5)
            if (r2 == 0) goto L2e
            r2 = 1
            goto L2f
        L2e:
            r2 = r0
        L2f:
            if (r2 == 0) goto L32
            goto L36
        L32:
            int r1 = r1 + 1
            goto L8
        L35:
            r1 = -1
        L36:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel.m44754t(java.lang.String):int");
    }

    public final void toggleDisplayType() {
        NoteDisplayType value = this.displayType.getValue();
        Intrinsics.checkNotNull(value);
        if (value.isGrid()) {
            this.displayType.setValue(NoteDisplayType.DISPLAY_LIST);
        } else {
            this.displayType.setValue(NoteDisplayType.DISPLAY_GRID);
        }
        NoteDisplayTypeOption noteDisplayTypeOption = this.noteDisplayTypeOp;
        NoteDisplayType value2 = this.displayType.getValue();
        Intrinsics.checkNotNull(value2);
        noteDisplayTypeOption.put(value2);
    }

    public final void toggleFolderExpand() {
        this.folderExpandOp.put(!r1.get());
    }

    public final void toggleMulSelect() {
        MutableLiveData<Boolean> mutableLiveData = this.isMulSelect;
        Intrinsics.checkNotNull(mutableLiveData.getValue());
        mutableLiveData.setValue(Boolean.valueOf(!r0.booleanValue()));
    }

    public final void toggleNoteSetExpand() {
        this.noteExpandOp.put(!r1.get());
    }

    public final boolean toggleSelectList(@NotNull final NoteModelBean model) {
        Intrinsics.checkNotNullParameter(model, "model");
        NoteModelBeanList noteModelBeanList = new NoteModelBeanList();
        NoteModelBeanList value = this.selectList.getValue();
        Intrinsics.checkNotNull(value);
        noteModelBeanList.addAll(value);
        boolean contains = CollectionKt.contains(noteModelBeanList, new Function1<NoteModelBean, Boolean>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$toggleSelectList$contains$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NoteModelBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getUniqueId(), NoteModelBean.this.getUniqueId()));
            }
        });
        if (contains) {
            final Function1<NoteModelBean, Boolean> function1 = new Function1<NoteModelBean, Boolean>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$toggleSelectList$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull NoteModelBean it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it2.getUniqueId(), NoteModelBean.this.getUniqueId()));
                }
            };
            noteModelBeanList.removeIf(new java.util.function.Predicate() { // from class: com.sunia.HTREnginev2.oyj
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m44720Q;
                    m44720Q = NoteListViewModel.m44720Q(Function1.this, obj);
                    return m44720Q;
                }
            });
        } else {
            noteModelBeanList.add(model);
        }
        this.selectList.setValue(noteModelBeanList);
        return !contains;
    }

    public final void toggleSideExpand() {
        Map<String, ? extends Object> mapOf;
        Boolean value = this.isSlideAnimating.getValue();
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.areEqual(value, bool) || Intrinsics.areEqual(this.isViewPagerAnimating.getValue(), bool)) {
            return;
        }
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_HOMEPAGE_STATE, Integer.valueOf(BooleanKt.toInteger(this.isSideExpand.getValue()))));
        statisticsBundle.reportEvent(OnyxStatisticConstant.ID_HOME_PAGE_SLIDE_TOGGLE_CLICK, mapOf);
        MutableLiveData<Boolean> mutableLiveData = this.isSideExpand;
        Intrinsics.checkNotNull(mutableLiveData.getValue());
        mutableLiveData.setValue(Boolean.valueOf(!r1.booleanValue()));
        BooleanOption booleanOption = this.slideExpandOp;
        Boolean value2 = this.isSideExpand.getValue();
        Intrinsics.checkNotNull(value2);
        booleanOption.put(value2.booleanValue());
    }

    public final void toggleSort(@NotNull SortBy sortBy, @NotNull SortOrder sortOrder) {
        Intrinsics.checkNotNullParameter(sortBy, "sortBy");
        Intrinsics.checkNotNullParameter(sortOrder, "sortOrder");
        this.sortType.setValue(sortBy);
        this.sortHelper.getSortByOp().put(sortBy);
        this.orderType.setValue(sortOrder);
        this.sortHelper.getSortOrderOp().put(sortOrder);
    }

    public final void toggleTagExpand() {
        this.tagExpandOp.put(!r1.get());
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0054 A[LOOP:1: B:13:0x002a->B:24:0x0054, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0058 A[SYNTHETIC] */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m44755u(java.lang.String r5) {
        /*
            r4 = this;
            java.util.List<com.onyx.galaxy.note.category.data.NotePageBean> r4 = r4.allDataList
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r4 = r4.iterator()
        Ld:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L24
            java.lang.Object r1 = r4.next()
            r2 = r1
            com.onyx.galaxy.note.category.data.NotePageBean r2 = (com.onyx.galaxy.note.category.data.NotePageBean) r2
            boolean r2 = r2.isNoteType()
            if (r2 == 0) goto Ld
            r0.add(r1)
            goto Ld
        L24:
            java.util.Iterator r4 = r0.iterator()
            r0 = 0
            r1 = r0
        L2a:
            boolean r2 = r4.hasNext()
            if (r2 == 0) goto L57
            java.lang.Object r2 = r4.next()
            com.onyx.galaxy.note.category.data.NotePageBean r2 = (com.onyx.galaxy.note.category.data.NotePageBean) r2
            boolean r3 = r2.isNoteType()
            if (r3 == 0) goto L50
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r2 = r2.getNoteModelBean()
            if (r2 == 0) goto L47
            java.lang.String r2 = r2.getUniqueId()
            goto L48
        L47:
            r2 = 0
        L48:
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r5)
            if (r2 == 0) goto L50
            r2 = 1
            goto L51
        L50:
            r2 = r0
        L51:
            if (r2 == 0) goto L54
            goto L58
        L54:
            int r1 = r1 + 1
            goto L2a
        L57:
            r1 = -1
        L58:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel.m44755u(java.lang.String):int");
    }

    public final void updateCurrFilterTitle() {
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        int type = value.getType();
        if (type == 5 || type == 7) {
            this.currTitle.setValue(this.currTitleOp.get());
            return;
        }
        String string = ResManager.INSTANCE.getString(NoteTreeBundle.FilterManager.INSTANCE.getRootFilterTitleRes(type));
        Intrinsics.checkNotNull(string);
        this.currTitleOp.put(string);
        this.currTitle.setValue(string);
    }

    /* renamed from: v */
    public final Observable<CBQueryArgs> m44756v(Observable<TreeNode<NoteTagBean>> rootTag, final String parentTagId) {
        Observable map = rootTag.map(new Function() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$getTagFilterArgs$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final CBQueryArgs apply(@NotNull TreeNode<NoteTagBean> root) {
                int collectionSizeOrDefault;
                List mutableList;
                Intrinsics.checkNotNullParameter(root, "root");
                TreeNode<NoteTagBean> findNode = root.findNode(parentTagId);
                if (findNode == null) {
                    return NoteTagFilter.INSTANCE.generateTagFilterArgs(parentTagId);
                }
                List findNodes$default = TreeNode.findNodes$default(findNode, new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.viewmodel.NoteListViewModel$getTagFilterArgs$1$tagIds$1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.TRUE;
                    }
                }, null, null, 6, null);
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findNodes$default, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it2 = findNodes$default.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((NoteTagBean) ((TreeNode) it2.next()).getData()).getUniqueId());
                }
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                return NoteConfigKt.getNoteByTagIdsArgs(mutableList).andWith(CouchUtils.INSTANCE.equalExpression("status", 1));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: w */
    public final void m44757w(List<ConvertEntry> entries, ImportSelectedContext importSelectedContext) {
        List<String> listOfNotNull;
        ArrayList arrayList = new ArrayList();
        for (ConvertEntry convertEntry : entries) {
            Uri importUri = convertEntry.getImportUri();
            if (importUri != null) {
                NoteImportArgs.Companion companion = NoteImportArgs.INSTANCE;
                String normalizedFolderId = getNormalizedFolderId();
                listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(getNormalizedTagId());
                NoteImportArgs create = companion.create(importUri, normalizedFolderId, listOfNotNull);
                create.setImportFilePath(convertEntry.getDownloadLocalPath());
                create.setOriginUri(convertEntry.getUri());
                m44742M(create, importSelectedContext);
                if (convertEntry.getStatus() == ConvertResultType.RESULT_SUCCESS) {
                    create.setDeleteSourceOnImported(true);
                }
                arrayList.add(create);
            }
        }
        DocCollectionBundle.importDocuments$default(DocCollectionBundle.INSTANCE, arrayList, null, 2, null);
    }

    /* renamed from: y */
    public final Observable<List<NotePageBean>> m44758y() {
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        FilterInfo filterInfo = value;
        ArrayList arrayList = new ArrayList();
        Observable flatMap = Observable.just(this).flatMap(new C11505k(filterInfo)).map(new C11507l()).flatMap(new C11509m());
        NoteTreeBundle noteTreeBundle = NoteTreeBundle.INSTANCE;
        Observable<List<NotePageBean>> doOnNext = flatMap.observeOn(noteTreeBundle.getObserveOn()).doOnNext(new C11511n(arrayList)).flatMap(new C11513o()).observeOn(noteTreeBundle.getObserveOn()).doOnNext(new C11515p(arrayList)).map(new C11517q(arrayList)).doOnNext(new C11519r(filterInfo));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: z */
    public final Observable<List<NotePageBean>> m44759z(NoteSelectType noteSelectType) {
        FilterInfo value = this.filterInfo.getValue();
        Intrinsics.checkNotNull(value);
        FilterInfo filterInfo = value;
        CBQueryArgs m72249clone = filterInfo.getQueryArgs().m72249clone();
        ArrayList arrayList = new ArrayList();
        NoteQueryArgsKt.andWithSelectType(m72249clone, noteSelectType);
        Observable flatMap = Observable.just(this).flatMap(new C11521s(m72249clone));
        NoteTreeBundle noteTreeBundle = NoteTreeBundle.INSTANCE;
        Observable<List<NotePageBean>> map = flatMap.observeOn(noteTreeBundle.getObserveOn()).doOnNext(new C11523t(arrayList)).observeOn(noteTreeBundle.getObserveOn()).doOnNext(new C11524u(filterInfo, arrayList)).map(new C11525v(arrayList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public static /* synthetic */ void importDocuments$default(NoteListViewModel noteListViewModel, List list, ImportSelectedContext importSelectedContext, int i, Object obj) {
        if ((i & 2) != 0) {
            importSelectedContext = null;
        }
        noteListViewModel.importDocuments(list, importSelectedContext);
    }

    public final void importDocuments(@NotNull List<DocumentFileEntry> fileList, @Nullable ImportSelectedContext importSelectedContext) {
        List<String> listOfNotNull;
        Intrinsics.checkNotNullParameter(fileList, "fileList");
        NoteImportArgs.Companion companion = NoteImportArgs.INSTANCE;
        String normalizedFolderId = getNormalizedFolderId();
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(getNormalizedTagId());
        List<NoteImportArgs> createFromDocEntries = companion.createFromDocEntries(fileList, normalizedFolderId, listOfNotNull);
        for (NoteImportArgs noteImportArgs : createFromDocEntries) {
            noteImportArgs.setOriginUri(noteImportArgs.getImportFileUri());
            m44742M(noteImportArgs, importSelectedContext);
        }
        DocCollectionBundle.importDocuments$default(DocCollectionBundle.INSTANCE, createFromDocEntries, null, 2, null);
    }
}

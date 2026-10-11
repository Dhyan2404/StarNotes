package com.onyx.android.sdk.universal.editor.doc;

import android.graphics.Rect;
import android.graphics.RectF;
import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onegravity.rteditor.utils.io.FilenameUtils;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.SizeKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.data.template.TemplateData;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxCellInfo;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.MarginPercent;
import com.onyx.android.sdk.geometry.data.MarginStyle;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neopdf.lib.JSONUtils;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.extension.NoteDocumentKt;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.replicator.bean.DataFetchType;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.bean.PaperBean;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.data.constant.NoteScene;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.p035db.VirtualBookmarkQueryArgsKt;
import com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.replicator.note.utils.TocListUtils;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.CopyPageArgs;
import com.onyx.android.sdk.universal.editor.data.MovePageArgs;
import com.onyx.android.sdk.universal.editor.data.PageMarginArgs;
import com.onyx.android.sdk.universal.editor.data.VirtualDocOpenResultInfo;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.app.DraftCellAddedEvent;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.bcel.internal.Constants;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import kotlin.time.TimedValue;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\b\u0010\u0099\u0001\u001a\u00030\u0093\u0001¢\u0006\u0006\b\u009d\u0001\u0010\u0098\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0016\u0010\u000e\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\tH\u0002J\u0016\u0010\u000f\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\tH\u0002JB\u0010\u0016\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\t0\u00152\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0002J\u0012\u0010\u0017\u001a\u00020\u00072\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\b\u0010\u0018\u001a\u00020\u0007H\u0002J\b\u0010\u0019\u001a\u00020\u0007H\u0002J\b\u0010\u001b\u001a\u00020\u001aH\u0002J\b\u0010\u001c\u001a\u00020\u0007H\u0002J\b\u0010\u001d\u001a\u00020\u0012H\u0002J\u0016\u0010\u001f\u001a\u00020\u00072\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\"\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u00112\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\b\u0010!\u001a\u00020\u0007H\u0002J\b\u0010\"\u001a\u00020\u0007H\u0002J\u0010\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020#H\u0002J,\u0010+\u001a\u00020\f2\u0006\u0010&\u001a\u00020\u00122\u0006\u0010(\u001a\u00020'2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020)0\u0011H\u0002J\u0018\u0010,\u001a\u00020\f2\u0006\u0010$\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0012H\u0002J\b\u0010-\u001a\u00020\u0007H\u0002J\b\u0010.\u001a\u00020\u0007H\u0002J\u0010\u00101\u001a\u00020\u00072\u0006\u00100\u001a\u00020/H\u0002J\b\u00102\u001a\u00020\u0004H\u0002J\b\u00103\u001a\u00020\u0012H\u0002J\f\u00104\u001a\u00020\u0007*\u00020\u0004H\u0002J\n\u00106\u001a\u0004\u0018\u000105H\u0002J\n\u00107\u001a\u0004\u0018\u000105H\u0002J\b\u00108\u001a\u00020\u0007H\u0002J\u0010\u0010;\u001a\u00020\u00072\u0006\u0010:\u001a\u000209H\u0002J\u0010\u0010<\u001a\u00020\u00072\u0006\u0010:\u001a\u000209H\u0002J\u0010\u0010?\u001a\u00020>2\u0006\u0010=\u001a\u00020\fH\u0002J\b\u0010@\u001a\u00020\u0007H\u0002J\b\u0010A\u001a\u00020\u0007H\u0002J&\u0010G\u001a\u00020F2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\f0\t2\u0006\u0010C\u001a\u00020)2\u0006\u0010E\u001a\u00020DH\u0002J\u0018\u0010K\u001a\u00020\f2\u0006\u0010H\u001a\u00020\f2\u0006\u0010J\u001a\u00020IH\u0002J\b\u0010L\u001a\u00020\fH\u0002J\u0010\u0010N\u001a\u00020M2\u0006\u0010=\u001a\u00020\fH\u0002J\u001a\u0010Q\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\f2\b\u0010P\u001a\u0004\u0018\u00010OH\u0002J\u001a\u0010S\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\f2\b\u0010R\u001a\u0004\u0018\u00010MH\u0002J\u0010\u0010T\u001a\u00020M2\u0006\u0010=\u001a\u00020\fH\u0002J\b\u0010U\u001a\u00020MH\u0002J\b\u0010V\u001a\u00020\u0007H\u0016J\b\u0010W\u001a\u00020\u0002H\u0016J\u0010\u0010Y\u001a\u00020\u00072\u0006\u0010X\u001a\u00020\u0012H\u0016J\u000e\u0010Z\u001a\b\u0012\u0004\u0012\u00020\f0\tH\u0016J\b\u0010[\u001a\u00020\u001aH\u0016J\b\u0010\\\u001a\u00020\u0007H\u0016J\u0010\u0010]\u001a\u00020\f2\u0006\u0010J\u001a\u00020IH\u0016J\u0010\u0010]\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\fH\u0016J\u0018\u0010_\u001a\u00020\u00072\u0006\u0010^\u001a\u00020D2\u0006\u0010=\u001a\u00020\fH\u0016J\u0010\u0010`\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\fH\u0016J\u0010\u0010a\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\fH\u0016J\u0010\u0010d\u001a\u00020\f2\u0006\u0010c\u001a\u00020bH\u0016J\u0010\u0010g\u001a\u00020\u00072\u0006\u0010f\u001a\u00020eH\u0016J\u0010\u0010h\u001a\u00020\u001a2\u0006\u0010=\u001a\u00020\fH\u0016J\u0018\u0010k\u001a\u00020\u00072\u0006\u0010^\u001a\u00020D2\u0006\u0010j\u001a\u00020iH\u0016J\u0010\u0010l\u001a\u00020\u00072\u0006\u0010:\u001a\u000209H\u0016J\u0010\u0010m\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\fH\u0016J\u0010\u0010n\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\fH\u0016J\u0010\u0010o\u001a\u00020O2\u0006\u0010=\u001a\u00020\fH\u0016J\u0012\u0010p\u001a\u0004\u0018\u00010O2\u0006\u0010=\u001a\u00020\fH\u0016J\u0012\u0010q\u001a\u0004\u0018\u00010\f2\u0006\u0010E\u001a\u00020DH\u0016J\u0012\u0010q\u001a\u0004\u0018\u00010\f2\u0006\u0010r\u001a\u00020\u0012H\u0016J\u0012\u0010q\u001a\u0004\u0018\u00010\f2\u0006\u0010s\u001a\u00020IH\u0016J\u000e\u0010t\u001a\b\u0012\u0004\u0012\u00020\f0\tH\u0016J\n\u0010u\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010v\u001a\u00020\u0012H\u0016J\u0010\u0010w\u001a\u00020\u001a2\u0006\u0010r\u001a\u00020\u0012H\u0016J\b\u0010x\u001a\u00020\fH\u0016J\b\u0010y\u001a\u00020OH\u0016J\b\u0010z\u001a\u00020DH\u0016J\u0010\u0010{\u001a\u00020D2\u0006\u0010r\u001a\u00020\u0012H\u0016J\u000e\u0010}\u001a\b\u0012\u0004\u0012\u00020>0|H\u0016J\u0012\u0010\u007f\u001a\u0004\u0018\u00010\f2\u0006\u0010~\u001a\u00020>H\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\u00072\u0006\u0010~\u001a\u00020>H\u0016J\u0011\u0010\u0083\u0001\u001a\n\u0012\u0005\u0012\u00030\u0082\u00010\u0081\u0001H\u0016J\u001a\u0010\u0086\u0001\u001a\t\u0012\u0005\u0012\u00030\u0082\u00010\t2\b\u0010\u0085\u0001\u001a\u00030\u0084\u0001H\u0016J\u0019\u0010\u0088\u0001\u001a\u00020\u001a2\u000e\u0010\u0087\u0001\u001a\t\u0012\u0005\u0012\u00030\u0082\u00010\tH\u0016J\u0019\u0010\u0089\u0001\u001a\u00020\u001a2\u000e\u0010\u0087\u0001\u001a\t\u0012\u0005\u0012\u00030\u0082\u00010\tH\u0016J\u0019\u0010\u008c\u0001\u001a\t\u0012\u0005\u0012\u00030\u008b\u00010\t2\u0007\u0010\u008a\u0001\u001a\u00020\u0012H\u0016J\u0013\u0010\u008e\u0001\u001a\u00020\u001a2\b\u0010\u008d\u0001\u001a\u00030\u008b\u0001H\u0016J\u0011\u0010\u008f\u0001\u001a\u00020\u001a2\u0006\u0010r\u001a\u00020\u0012H\u0016J\u0011\u0010\u0090\u0001\u001a\u00020\u001a2\u0006\u0010^\u001a\u00020DH\u0016J\f\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0091\u0001H\u0016R)\u0010\u0099\u0001\u001a\u00030\u0093\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bG\u0010\u0094\u0001\u001a\u0006\b\u0095\u0001\u0010\u0096\u0001\"\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0019\u0010\u009c\u0001\u001a\u00030\u009a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b4\u0010\u009b\u0001¨\u0006\u009e\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;", "l", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;", "docModel", C6998g.f39679a, "", "M", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "z", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "pageList", "B", "A", "pageModelList", "", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;", "pagePathInfoMap", "Lkotlin/Pair;", "H", "K", "L", "Q", "", "y", "r", "G", "modelList", GoogleApiAvailabilityLight.f29016b, "I", "x", "t", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "noteCreateInfo", "m", "documentId", "Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;", "paperBean", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "contentReaderInfoMap", C6999h.f39688c, "d", "p", "E", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "boxManager", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "w", "u", "b", "Lcom/onyx/android/sdk/data/common/data/template/TemplateData;", "v", "s", "F", "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;", "args", "P", "J", "virtualPage", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "j", C4921e.f26528e, "q", "virtualPageList", "readerPageInfo", "", FirebaseAnalytics.Param.INDEX, "", "a", "commonVirtualPage", "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", "boxCellInfo", "c", "e", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "N", "pageInfo", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, C4921e.f26537n, "i", "onDocCreated", "onDocOpened", "currentPageId", "updatePageIdOnInit", "getVirtualPageList", "save", "close", "addPage", "pageIndex", "insertPage", "removePage", "clearPage", "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;", "copyPageArgs", "copyPage", "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", "movePageArgs", "movePage", "gotoPage", "Landroid/graphics/RectF;", "newOriginRectF", "updateOriginPageRectF", "updatePageMargin", "updatePage", "updateCoverPage", "ensureNotePage", "getNotePage", "getVirtualPage", CouchFieldKey.KEY_TOC_PAGE_ID, "cellInfo", "getDirtyVirtualPages", "getCoverPage", "getCoverPageId", "isCoverPage", "ensureGlobalPage", "ensureGlobalNotePage", "getVirtualPageCount", "getVirtualPageIndex", "", "boxInfoSnapshot", "boxInfo", "obtainVirtualPage", "updateBoxInfo", "Lcom/onyx/android/sdk/base/data/Tree;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "readTableOfContent", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "loadTocEntries", "tocEntries", "deleteTocEntry", "updateTocEntry", "keyword", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;", "loadBookmarkList", "model", "updateBookmark", "deleteBookmark", "isNeedUpdateCover", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "loadGeoLayoutBackground", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "getWorkBundle", "()Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "setWorkBundle", "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "workBundle", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;", "virtualDoc", Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteDocPolicy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocPolicy.kt\ncom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 6 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,826:1\n766#2:827\n857#2,2:828\n1855#2,2:831\n1655#2,8:833\n1549#2:841\n1620#2,3:842\n288#2,2:845\n1549#2:847\n1620#2,3:848\n1855#2,2:851\n1855#2,2:853\n1855#2,2:862\n1864#2,3:876\n1855#2,2:879\n1549#2:881\n1620#2,3:882\n1855#2,2:885\n1855#2,2:887\n1045#2:889\n1855#2,2:893\n1#3:830\n526#4:855\n511#4,6:856\n79#5,5:864\n113#5,7:869\n344#6,3:890\n*S KotlinDebug\n*F\n+ 1 NoteDocPolicy.kt\ncom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy\n*L\n142#1:827\n142#1:828,2\n144#1:831,2\n169#1:833,8\n228#1:841\n228#1:842,3\n234#1:845,2\n237#1:847\n237#1:848,3\n281#1:851,2\n293#1:853,2\n338#1:862,2\n631#1:876,3\n657#1:879,2\n709#1:881\n709#1:882,3\n715#1:885,2\n721#1:887,2\n727#1:889\n691#1:893,2\n317#1:855\n317#1:856,6\n421#1:864,5\n421#1:869,7\n755#1:890,3\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteDocPolicy implements VirtualDocPolicy {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public WorkBundle workBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public VirtualDoc virtualDoc;

    public NoteDocPolicy(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.workBundle = workBundle;
        this.virtualDoc = new VirtualDoc();
    }

    /* renamed from: D */
    public static final void m40822D(NoteDocPolicy noteDocPolicy, Tree<VirtualTocModel> tree) {
        Iterator<T> it2 = tree.getChildren().iterator();
        while (it2.hasNext()) {
            Tree tree2 = (Tree) it2.next();
            Object item = tree2.getItem();
            Intrinsics.checkNotNull(item);
            int virtualPageIndex = noteDocPolicy.getVirtualPageIndex(((VirtualTocModel) item).getPageId());
            if (virtualPageIndex >= 0) {
                Object item2 = tree2.getItem();
                Intrinsics.checkNotNull(item2);
                ((VirtualTocModel) item2).setPageIndex(virtualPageIndex);
            }
            m40822D(noteDocPolicy, tree2);
        }
        TocListUtils.INSTANCE.sortVirtualTocModelTreeToNatural(tree);
    }

    /* renamed from: A */
    public final void m40823A(List<VirtualPage> pageList) {
        String joinToString$default;
        if (!(!pageList.isEmpty())) {
            pageList = null;
        }
        if (pageList != null) {
            LogFileUtils logFileUtils = LogFileUtils.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append("pageDistinct:");
            joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(pageList, null, null, null, 0, null, new Function1<VirtualPage, CharSequence>() { // from class: com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy$logIfPageDistinct$2$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final CharSequence invoke(@NotNull VirtualPage it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return it2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId() + it2.getBoxCellInfo() + ',' + it2.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_ORDER_INDEX java.lang.String();
                }
            }, 31, null);
            sb.append(joinToString$default);
            logFileUtils.m32102e(NoteDocPolicy.class, sb.toString());
        }
    }

    /* renamed from: B */
    public final void m40824B(List<VirtualPage> pageList) {
        ArrayList<VirtualPage> arrayList = new ArrayList();
        Iterator<T> it2 = pageList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((VirtualPage) next).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_ORDER_INDEX java.lang.String() < 0.0f) {
                arrayList.add(next);
            }
        }
        if (!(!arrayList.isEmpty())) {
            arrayList = null;
        }
        if (arrayList != null) {
            for (VirtualPage virtualPage : arrayList) {
                LogUtils.wTag("fillVirtualPageListByModelList", pageList.indexOf(virtualPage) + " invalid orderIndex:" + virtualPage.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_ORDER_INDEX java.lang.String());
            }
        }
    }

    /* renamed from: C */
    public final void m40825C(BoxManager boxManager) {
        LogUtils.wTag(AnyKt.toSimpleNameString(this), "save doc model fail, boxList empty, detail:\n " + boxManager.getDebugString());
    }

    /* renamed from: E */
    public final void m40826E() {
        VirtualDocModel loadVirtualDocModel = this.workBundle.getVirtualModelProvider().loadVirtualDocModel();
        if (loadVirtualDocModel == null) {
            loadVirtualDocModel = m40861w();
        }
        BoxManager boxManager = this.workBundle.getBoxManager();
        if (boxManager != null && (boxManager.isNaN() || !WorkBundleKt.updateVirtualDocModel(this.workBundle, loadVirtualDocModel))) {
            m40825C(boxManager);
            return;
        }
        loadVirtualDocModel.setCoverPageId(this.virtualDoc.getCoverPageId());
        loadVirtualDocModel.setDocOptions(this.workBundle.getDocOptions());
        loadVirtualDocModel.beforeSave();
        this.workBundle.getVirtualModelProvider().saveVirtualDocModel(loadVirtualDocModel);
    }

    /* renamed from: F */
    public final void m40827F() {
        long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
        VirtualPageModelChangedData convertToChangedModelData = this.virtualDoc.convertToChangedModelData();
        this.workBundle.getVirtualModelProvider().saveVirtualPageList(convertToChangedModelData.getAllList());
        this.virtualDoc.clearAfterSave();
        TimedValue timedValue = new TimedValue(convertToChangedModelData, TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto), null);
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), ((VirtualPageModelChangedData) timedValue.getValue()).getDebugString() + ", " + ((Object) Duration.m74024toStringimpl(timedValue.m74136getDurationUwyO8pc())), new Object[0]);
    }

    /* renamed from: G */
    public final String m40828G() {
        return AnyKt.toSimpleNameString(this);
    }

    /* renamed from: H */
    public final Pair<List<VirtualPage>, List<VirtualPage>> m40829H(List<VirtualPageModel> pageModelList, final Map<String, VirtualPagePathInfo> pagePathInfoMap) {
        Sequence asSequence;
        Sequence map;
        List mutableList;
        List emptyList;
        asSequence = CollectionsKt___CollectionsKt.asSequence(pageModelList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<VirtualPageModel, VirtualPage>() { // from class: com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy$toVirtualPageList$pageList$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final VirtualPage invoke(@NotNull VirtualPageModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return VirtualPage.INSTANCE.createVirtualPage(it2, pagePathInfoMap);
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map);
        if (!NoteScene.INSTANCE.isDraft(this.workBundle.getOpenDocArgs().getActiveScene()) || !AppConfig.INSTANCE.isEnabledDistinctDraftPage()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return new Pair<>(mutableList, emptyList);
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : mutableList) {
            if (hashSet.add(((VirtualPage) obj).getBoxCellInfo().toString())) {
                arrayList.add(obj);
            }
        }
        List list = null;
        if (!(mutableList.size() != arrayList.size())) {
            mutableList = null;
        }
        if (mutableList != null) {
            mutableList.removeAll(arrayList);
            list = mutableList;
        }
        return new Pair<>(arrayList, (List) AnyKt.getOrElse(list, new Function0<List<? extends VirtualPage>>() { // from class: com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy$toVirtualPageList$distinctList$3
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends VirtualPage> invoke() {
                List<? extends VirtualPage> emptyList2;
                emptyList2 = CollectionsKt__CollectionsKt.emptyList();
                return emptyList2;
            }
        }));
    }

    /* renamed from: I */
    public final Map<String, VirtualPagePathInfo> m40830I(List<VirtualPageModel> pageModelList) {
        int collectionSizeOrDefault;
        List distinct;
        Object firstOrNull;
        Collection collection;
        List listOf;
        Object obj;
        int collectionSizeOrDefault2;
        Map<String, VirtualPagePathInfo> emptyMap;
        final String documentId = this.workBundle.getOpenDocArgs().getDocumentId();
        List<VirtualPageModel> list = pageModelList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (VirtualPageModel virtualPageModel : list) {
            arrayList.add(new VirtualPageRelativePathInfo(virtualPageModel.getContentType(), virtualPageModel.getContentRelativePath()));
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) distinct);
        VirtualPageRelativePathInfo virtualPageRelativePathInfo = (VirtualPageRelativePathInfo) firstOrNull;
        if (virtualPageRelativePathInfo == null) {
            emptyMap = MapsKt__MapsKt.emptyMap();
            return emptyMap;
        }
        if (NoteScene.INSTANCE.isDraft(this.workBundle.getOpenDocArgs().getActiveScene())) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(virtualPageRelativePathInfo);
            Iterator<T> it2 = VirtualPagePathInfoKt.toVirtualPagePathInfoList(listOf, documentId).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (FileUtils.INSTANCE.isFileExist(((VirtualPagePathInfo) obj).getAbsolutePath())) {
                    break;
                }
            }
            VirtualPagePathInfo virtualPagePathInfo = (VirtualPagePathInfo) obj;
            String absolutePath = virtualPagePathInfo != null ? virtualPagePathInfo.getAbsolutePath() : null;
            if (FileUtils.INSTANCE.isFileExist(absolutePath)) {
                List<VirtualPageRelativePathInfo> list2 = distinct;
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                collection = new ArrayList(collectionSizeOrDefault2);
                for (VirtualPageRelativePathInfo virtualPageRelativePathInfo2 : list2) {
                    collection.add(new VirtualPagePathInfo(virtualPageRelativePathInfo2.getContentType(), virtualPageRelativePathInfo2.getRelativePath(), absolutePath));
                }
            } else {
                collection = (List) AnyKt.transform(distinct, new Function1<List<? extends VirtualPageRelativePathInfo>, List<? extends VirtualPagePathInfo>>() { // from class: com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy$toVirtualPagePathInfoMap$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ List<? extends VirtualPagePathInfo> invoke(List<? extends VirtualPageRelativePathInfo> list3) {
                        return invoke2((List<VirtualPageRelativePathInfo>) list3);
                    }

                    @NotNull
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final List<VirtualPagePathInfo> invoke2(@NotNull List<VirtualPageRelativePathInfo> it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return VirtualPagePathInfoKt.toVirtualPagePathInfoList(it3, documentId);
                    }
                });
            }
        } else {
            collection = (List) AnyKt.transform(distinct, new Function1<List<? extends VirtualPageRelativePathInfo>, List<? extends VirtualPagePathInfo>>() { // from class: com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy$toVirtualPagePathInfoMap$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ List<? extends VirtualPagePathInfo> invoke(List<? extends VirtualPageRelativePathInfo> list3) {
                    return invoke2((List<VirtualPageRelativePathInfo>) list3);
                }

                @NotNull
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final List<VirtualPagePathInfo> invoke2(@NotNull List<VirtualPageRelativePathInfo> it3) {
                    Intrinsics.checkNotNullParameter(it3, "it");
                    return VirtualPagePathInfoKt.toVirtualPagePathInfoList(it3, documentId);
                }
            });
        }
        return CollectionKt.toMap(collection, new Function1<VirtualPagePathInfo, String>() { // from class: com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy$toVirtualPagePathInfoMap$4
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull VirtualPagePathInfo it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3.toPathKey();
            }
        });
    }

    /* renamed from: J */
    public final void m40831J(PageMarginArgs args) {
        Iterator<VirtualPage> it2 = this.virtualDoc.getPageList().iterator();
        while (it2.hasNext()) {
            VirtualPage next = it2.next();
            if (args.getApplyToCover() || !isCoverPage(next.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId())) {
                MarginPercent marginPercent = args.getMarginPercent();
                MarginStyle marginStyle = new MarginStyle(args.getMarginColor(), args.getTemplateResource(), 0, 4, null);
                marginStyle.setTemplateSpace(args.getTemplateSpace());
                marginStyle.setTemplateResourceId(args.getTemplateResourceId());
                Unit unit = Unit.INSTANCE;
                next.updatePageMargin(marginPercent, marginStyle);
                VirtualDoc virtualDoc = this.virtualDoc;
                Intrinsics.checkNotNull(next);
                virtualDoc.updatePage(next);
            }
        }
    }

    /* renamed from: K */
    public final void m40832K(VirtualDocModel docModel) {
        if (docModel != null) {
            this.virtualDoc.setCoverPageId(docModel.getCoverPageId());
        }
    }

    /* renamed from: L */
    public final void m40833L() {
        this.virtualDoc.setGlobalPage(ensureGlobalPage());
    }

    /* renamed from: M */
    public final void m40834M() {
        this.workBundle.getNoteBundle().getGeoLayoutShaderWrapper().setGeoLayout(loadGeoLayoutBackground());
    }

    /* renamed from: N */
    public final void m40835N(VirtualPage virtualPage, NotePage notePage) {
        if (notePage == null) {
            return;
        }
        NoteDocumentKt.updateNotePageInfo(ensureGlobalNotePage(), notePage);
        m40836O(virtualPage, notePage.getPageInfo());
    }

    /* renamed from: O */
    public final void m40836O(VirtualPage virtualPage, PageInfo pageInfo) {
        if (pageInfo == null) {
            return;
        }
        RectF originRectFWithMargin = virtualPage.getBox().getOriginRectFWithMargin();
        Rect rect = new Rect();
        originRectFWithMargin.roundOut(rect);
        pageInfo.setPageRect(rect);
        pageInfo.setColorTheme(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getColorTheme());
    }

    /* renamed from: P */
    public final void m40837P(PageMarginArgs args) {
        VirtualPage virtualPage = getVirtualPage(args.getPageId());
        if (virtualPage == null) {
            return;
        }
        MarginPercent marginPercent = args.getMarginPercent();
        MarginStyle marginStyle = new MarginStyle(args.getMarginColor(), args.getTemplateResource(), 0, 4, null);
        marginStyle.setTemplateSpace(args.getTemplateSpace());
        marginStyle.setTemplateResourceId(args.getTemplateResourceId());
        Unit unit = Unit.INSTANCE;
        virtualPage.updatePageMargin(marginPercent, marginStyle);
        this.virtualDoc.updatePage(virtualPage);
    }

    /* renamed from: Q */
    public final void m40838Q() {
        WorkBundle workBundle = this.workBundle;
        workBundle.getOpenDocArgs().setActiveScene(workBundle.getNoteBundle().getNoteDoc().getNoteModel().getActiveScene());
    }

    /* renamed from: a */
    public final float m40839a(List<VirtualPage> virtualPageList, ReaderPageInfo readerPageInfo, int index) {
        Object first;
        if (index == 0) {
            return 1.0f;
        }
        float width = readerPageInfo.getPageOriginSize().width();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) virtualPageList);
        BoxInfo contentInfo = ((VirtualPage) first).getBox().getContentInfo();
        Intrinsics.checkNotNull(contentInfo);
        return width / contentInfo.getOriginRectF().width();
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public VirtualPage addPage(@NotNull BoxCellInfo boxCellInfo) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(boxCellInfo, "boxCellInfo");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.virtualDoc.getPageList());
        VirtualPage virtualPage = (VirtualPage) firstOrNull;
        if (virtualPage == null) {
            virtualPage = m40843e();
        }
        VirtualPage m40841c = m40841c(virtualPage, boxCellInfo);
        addPage(m40841c);
        WorkBundleKt.postEvent(this.workBundle, new DraftCellAddedEvent(m40841c));
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "addPage, cellInfo = " + boxCellInfo + m40841c.getBox().getId(), new Object[0]);
        m40827F();
        return m40841c;
    }

    /* renamed from: b */
    public final void m40840b(VirtualDocModel virtualDocModel) {
        if (virtualDocModel.getDefaultTemplate() == null) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(virtualDocModel), "init defaultTemplate fail!", new Object[0]);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public List<BoxInfo> boxInfoSnapshot() {
        Sequence asSequence;
        Sequence map;
        List<BoxInfo> mutableList;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.virtualDoc.getPageList());
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<VirtualPage, BoxInfo>() { // from class: com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy$boxInfoSnapshot$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final BoxInfo invoke(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getBox().copy();
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map);
        return mutableList;
    }

    /* renamed from: c */
    public final VirtualPage m40841c(VirtualPage commonVirtualPage, BoxCellInfo boxCellInfo) {
        VirtualPage copyWithNewPageId = commonVirtualPage.copyWithNewPageId();
        copyWithNewPageId.setBoxCellInfo(BoxCellInfo.copy$default(boxCellInfo, 0, 0, 3, null));
        copyWithNewPageId.updateBoxExtraInfo();
        return copyWithNewPageId;
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void clearPage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        updatePage(virtualPage);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void close() {
        this.virtualDoc.destroy();
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public VirtualPage copyPage(@NotNull CopyPageArgs copyPageArgs) {
        Intrinsics.checkNotNullParameter(copyPageArgs, "copyPageArgs");
        VirtualPage virtualPage = this.virtualDoc.getPageList().get(copyPageArgs.getSrcIndex());
        Intrinsics.checkNotNullExpressionValue(virtualPage, "get(...)");
        VirtualPage copy = virtualPage.copy();
        copy.setSaved(false);
        copy.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().setPageId(UUIDUtils.INSTANCE.rawUUID());
        copy.getBox().setId(copy.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
        BoxInfo noteInfo = copy.getBox().getNoteInfo();
        if (noteInfo != null) {
            noteInfo.setId(copy.getBox().getId());
        }
        this.virtualDoc.insertPage(copyPageArgs.getDstIndex(), copy);
        return copy;
    }

    /* renamed from: d */
    public final VirtualPage m40842d(NoteCreateInfo noteCreateInfo, String documentId) {
        return VirtualPage.INSTANCE.createVirtualPage(documentId, noteCreateInfo.getCoverRectF(), noteCreateInfo.getCoverJsonBean());
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean deleteBookmark(@NotNull String pageId) {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        VirtualModelProvider virtualModelProvider = this.workBundle.getVirtualModelProvider();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(pageId);
        return virtualModelProvider.removeVirtualBookmarkByPageId(listOf) > 0;
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean deleteTocEntry(@NotNull List<VirtualTocModel> tocEntries) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(tocEntries, "tocEntries");
        List<VirtualTocModel> list = tocEntries;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualTocModel) it2.next()).getUniqueId());
        }
        return this.workBundle.getVirtualModelProvider().removeVirtualToc(arrayList) > 0;
    }

    /* renamed from: e */
    public final VirtualPage m40843e() {
        return VirtualPage.INSTANCE.createDraftPage(this.workBundle.getOpenDocArgs().getDocumentId(), this.workBundle.getOpenDocArgs().getNoteCreateInfo());
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public NotePage ensureGlobalNotePage() {
        return this.workBundle.getNoteBundle().getNoteDoc().ensureGlobalNotePage();
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public VirtualPage ensureGlobalPage() {
        if (this.virtualDoc.getGlobalPage() == null) {
            VirtualDoc virtualDoc = this.virtualDoc;
            VirtualPage.Companion companion = VirtualPage.INSTANCE;
            VirtualPageConfig virtualPageConfig = new VirtualPageConfig();
            virtualPageConfig.setPageId(this.workBundle.getNoteBundle().getNoteDoc().getDocumentUniqueId());
            Unit unit = Unit.INSTANCE;
            virtualDoc.setGlobalPage(companion.createVirtualPage(virtualPageConfig, new RectF()));
        }
        VirtualPage globalPage = this.virtualDoc.getGlobalPage();
        Intrinsics.checkNotNull(globalPage);
        return globalPage;
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public NotePage ensureNotePage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        NotePage ensureNotePage = NoteDocNotePage.INSTANCE.ensureNotePage(this.workBundle.getNoteBundle().getNoteDoc(), m40848j(virtualPage).getId());
        m40835N(virtualPage, ensureNotePage);
        return ensureNotePage;
    }

    /* renamed from: f */
    public final PageInfo m40844f(VirtualPage virtualPage) {
        PageInfo m40849k = m40849k(virtualPage);
        NoteDocumentKt.updateNotePageInfo(m40847i(), m40849k);
        m40836O(virtualPage, m40849k);
        return m40849k;
    }

    /* renamed from: g */
    public final VirtualDocOpenResultInfo m40845g(VirtualDocModel docModel) {
        VirtualDocOpenResultInfo virtualDocOpenResultInfo = new VirtualDocOpenResultInfo();
        virtualDocOpenResultInfo.setVirtualDocModel(docModel);
        virtualDocOpenResultInfo.setGeoLayoutBackground(loadGeoLayoutBackground());
        String pageId = this.workBundle.getOpenDocArgs().getPageId();
        if (pageId.length() == 0) {
            String viewportId = docModel != null ? docModel.getViewportId() : null;
            if (viewportId == null) {
                viewportId = "";
            }
            pageId = viewportId;
        }
        VirtualPage virtualPage = getVirtualPage(pageId);
        virtualDocOpenResultInfo.setVirtualPageBoxInfo(virtualPage != null ? virtualPage.getBox() : null);
        return virtualDocOpenResultInfo;
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public VirtualPage getCoverPage() {
        return getVirtualPage(this.virtualDoc.getCoverPageId());
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public String getCoverPageId() {
        return this.virtualDoc.getCoverPageId();
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public List<VirtualPage> getDirtyVirtualPages() {
        List<VirtualPage> list;
        list = CollectionsKt___CollectionsKt.toList(this.virtualDoc.getDirtyMapHistory().values());
        return list;
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public NotePage getNotePage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        BoxInfo noteInfo = virtualPage.getBox().getNoteInfo();
        if (noteInfo == null) {
            return null;
        }
        NotePage orNullNotePage = NoteDocNotePage.INSTANCE.getOrNullNotePage(this.workBundle.getNoteBundle().getNoteDoc(), noteInfo.getId());
        m40835N(virtualPage, orNullNotePage);
        return orNullNotePage;
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public VirtualPage getVirtualPage(int index) {
        Object orNull;
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.virtualDoc.getPageList(), index);
        return (VirtualPage) orNull;
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public int getVirtualPageCount() {
        return this.virtualDoc.getPageList().size();
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public int getVirtualPageIndex(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return this.virtualDoc.getPageList().indexOfId(pageId);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public List<VirtualPage> getVirtualPageList() {
        List<VirtualPage> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.virtualDoc.getPageList());
        return mutableList;
    }

    @NotNull
    public final WorkBundle getWorkBundle() {
        return this.workBundle;
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean gotoPage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        BoxInfo noteInfo = virtualPage.getBox().getNoteInfo();
        return StringKt.isNotEmpty(noteInfo != null ? noteInfo.getId() : null);
    }

    /* renamed from: h */
    public final VirtualPage m40846h(String documentId, PaperBean paperBean, Map<String, ReaderPageInfo> contentReaderInfoMap) {
        boolean contains$default;
        Object firstOrNull;
        boolean endsWith$default;
        TemplateJsonBean paperJsonBean = paperBean.getPaperJsonBean();
        VirtualPage createVirtualPage = VirtualPage.INSTANCE.createVirtualPage(documentId, paperBean.getPaperRectF(), paperJsonBean);
        if (paperJsonBean == null || !ContentConstants.INSTANCE.isPDF(paperJsonBean.getContentType())) {
            return createVirtualPage;
        }
        String templateFilePath = Templates.INSTANCE.getTemplateFilePath(paperJsonBean, documentId, paperJsonBean.getContentPageId());
        if (!FileUtils.INSTANCE.isFileExist(templateFilePath)) {
            return createVirtualPage;
        }
        StringBuilder sb = new StringBuilder();
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) templateFilePath, (CharSequence) SyncConstant.LOCAL_TEMPLATE_RES_NAME, false, 2, (Object) null);
        if (contains$default) {
            Paths paths = Paths.INSTANCE;
            Path path = java.nio.file.Paths.get(SyncConstant.LOCAL_TEMPLATE_RES_NAME, new String[0]);
            Intrinsics.checkNotNullExpressionValue(path, "get(path)");
            templateFilePath = paths.append(path, FilenameUtils.getName(templateFilePath)).toAbsolutePath().toString();
        }
        sb.append(templateFilePath);
        sb.append(NameUtil.USCORE);
        sb.append(paperJsonBean.getContentPageId());
        String sb2 = sb.toString();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ReaderPageInfo> entry : contentReaderInfoMap.entrySet()) {
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(entry.getKey(), sb2, false, 2, null);
            if (endsWith$default) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull(linkedHashMap.values());
        ReaderPageInfo readerPageInfo = (ReaderPageInfo) firstOrNull;
        if (readerPageInfo != null) {
            return VirtualPage.Companion.createVirtualPageByReader$default(VirtualPage.INSTANCE, readerPageInfo, paperJsonBean.getUniqueId(), paperJsonBean.getContentType(), null, 0, 24, null);
        }
        LogUtils.wTag(AnyKt.toSimpleNameString(this), "readerPathInfo expected not null, but actual null");
        return createVirtualPage;
    }

    /* renamed from: i */
    public final PageInfo m40847i() {
        return this.workBundle.getNoteBundle().getNoteDoc().ensureGlobalNotePageInfo();
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void insertPage(int pageIndex, @NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.virtualDoc.insertPage(pageIndex, virtualPage);
        m40844f(virtualPage);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean isCoverPage(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return Intrinsics.areEqual(pageId, this.virtualDoc.getCoverPageId());
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean isNeedUpdateCover(int pageIndex) {
        VirtualPageConfig virtualPageConfig;
        String firstPageIdOnInit = this.virtualDoc.getFirstPageIdOnInit();
        String pageIdOnInit = this.virtualDoc.getPageIdOnInit();
        VirtualPage virtualPage = getVirtualPage(pageIndex);
        final String pageId = (virtualPage == null || (virtualPageConfig = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null) ? null : virtualPageConfig.getPageId();
        if (pageId == null) {
            pageId = "";
        }
        boolean useFirstPageAsCoverPage = WorkBundleKt.getWorkFeature(this.workBundle).useFirstPageAsCoverPage();
        boolean z = true;
        boolean z2 = getCoverPage() != null;
        boolean z3 = !(pageIndex == 0 && (useFirstPageAsCoverPage || z2)) ? Intrinsics.areEqual(pageIdOnInit, pageId) : Intrinsics.areEqual(firstPageIdOnInit, pageId);
        boolean contains = CollectionKt.contains(getDirtyVirtualPages(), new Function1<VirtualPage, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy$isNeedUpdateCover$isDirtyPage$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(pageId, it2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId()));
            }
        });
        if (!z3 && !contains) {
            z = false;
        }
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "firstPageIdOnInit = " + firstPageIdOnInit + ", useFirstPageAsCoverPage = " + useFirstPageAsCoverPage + ", hasCoverPage = " + z2 + ", pageIdOnInit = " + pageIdOnInit + ", pageIndex = " + pageIndex + ", pageId = " + pageId + ", isDirtyPage = " + contains + ", isPageIdChanged = " + z3 + ", isNeedUpdateCover = " + z, new Object[0]);
        return z;
    }

    /* renamed from: j */
    public final BoxInfo m40848j(VirtualPage virtualPage) {
        BoxInfo noteInfo = virtualPage.getBox().getNoteInfo();
        if (noteInfo != null) {
            return noteInfo;
        }
        BoxInfo boxInfo = new BoxInfo();
        boxInfo.setId(UUIDUtils.INSTANCE.rawUUID());
        RectF rectF = AppConfig.INSTANCE.virtualPageSize().toRectF();
        boxInfo.setOriginRectF(new RectF(rectF));
        boxInfo.setBox(new RectF(rectF));
        virtualPage.getBox().setNoteInfo(boxInfo);
        return boxInfo;
    }

    /* renamed from: k */
    public final PageInfo m40849k(VirtualPage virtualPage) {
        return NoteDocNotePage.INSTANCE.ensurePageInfo(this.workBundle.getNoteBundle().getNoteDoc(), virtualPage.getBox().getId());
    }

    /* renamed from: l */
    public final VirtualDocOpenResultInfo m40850l() {
        this.virtualDoc.setEnabledReorderIndex(WorkBundleKt.getWorkFeature(this.workBundle).supportMultiPage());
        Benchmark benchmark = new Benchmark();
        List<VirtualPageModel> m40864z = m40864z();
        benchmark.reportDebug(m40828G() + ", loadPageModelList, Size = " + m40864z.size() + ", needInit = " + m40864z.isEmpty());
        VirtualDocModel loadVirtualDocModel = this.workBundle.getVirtualModelProvider().loadVirtualDocModel();
        StringBuilder sb = new StringBuilder();
        sb.append(m40828G());
        sb.append(", docModel");
        benchmark.reportDebug(sb.toString());
        if (m40863y() && m40864z.isEmpty()) {
            m40856r();
            m40862x();
            benchmark.reportDebug(m40828G() + ", init");
        } else {
            m40838Q();
            m40852n(m40864z);
            benchmark.reportDebug(m40828G() + ", fill update");
        }
        Debug debug = Debug.INSTANCE;
        String simpleNameString = AnyKt.toSimpleNameString(this);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("scale = ");
        sb2.append(loadVirtualDocModel != null ? Float.valueOf(loadVirtualDocModel.getActualScale()) : null);
        debug.m32038d(simpleNameString, sb2.toString(), new Object[0]);
        m40832K(loadVirtualDocModel);
        m40833L();
        m40834M();
        return m40845g(loadVirtualDocModel);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public List<VirtualBookmarkModel> loadBookmarkList(@NotNull String keyword) {
        List mutableList;
        List<VirtualBookmarkModel> sortedWith;
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        List<VirtualBookmarkModel> loadVirtualBookmarkList = this.workBundle.getVirtualModelProvider().loadVirtualBookmarkList(VirtualBookmarkQueryArgsKt.loadEnabledBookmarkListQuery(keyword));
        for (VirtualBookmarkModel virtualBookmarkModel : loadVirtualBookmarkList) {
            int virtualPageIndex = getVirtualPageIndex(virtualBookmarkModel.getPageUniqueId());
            if (virtualPageIndex >= 0) {
                virtualBookmarkModel.setPageIndex(virtualPageIndex);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) loadVirtualBookmarkList);
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(mutableList, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy$loadBookmarkList$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((VirtualBookmarkModel) t).getPageIndex()), Integer.valueOf(((VirtualBookmarkModel) t2).getPageIndex()));
                return compareValues;
            }
        });
        return sortedWith;
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public GeoLayout loadGeoLayoutBackground() {
        if (!WorkBundleKt.getWorkFeature(this.workBundle).supportPageBackground()) {
            return null;
        }
        Benchmark benchmark = new Benchmark();
        Iterator<VirtualPage> it2 = this.virtualDoc.getPageList().iterator();
        String str = "";
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            int i2 = i + 1;
            VirtualPage next = it2.next();
            String contentPath = next.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath();
            if (FileUtils.INSTANCE.isFileExist(contentPath)) {
                if (i > 0) {
                    benchmark.reportWarn("loadGeoLayoutBackground find exist path in " + i + " index:" + next.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath());
                }
                str = contentPath;
            } else {
                i = i2;
                str = contentPath;
            }
        }
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (!fileUtils.isFileExist(str) || fileUtils.isDirectory(str)) {
            return null;
        }
        String readContentOfFileSafely = fileUtils.readContentOfFileSafely(str);
        if (readContentOfFileSafely.length() == 0) {
            return null;
        }
        return (GeoLayout) JSONUtils.INSTANCE.parseObject(readContentOfFileSafely, GeoLayout.class);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public List<VirtualTocModel> loadTocEntries(@NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return this.workBundle.getVirtualModelProvider().loadVirtualTocModelList(queryArgs);
    }

    /* renamed from: m */
    public final void m40851m(NoteCreateInfo noteCreateInfo) {
        Object lastOrNull;
        String documentId = this.workBundle.getOpenDocArgs().getDocumentId();
        ArrayList<VirtualPage> arrayList = new ArrayList();
        if (noteCreateInfo.isContainsCover()) {
            VirtualPage m40842d = m40842d(noteCreateInfo, documentId);
            arrayList.add(m40842d);
            this.virtualDoc.setCoverPageId(m40842d.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
        }
        Map<String, ReaderPageInfo> map = CollectionKt.toMap(this.workBundle.getOpenDocArgs().getReaderPathInfoList(), new Function1<ReaderPageInfo, String>() { // from class: com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy$fillVirtualPageListByCreateInfo$contentReaderInfoMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull ReaderPageInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getPath() + NameUtil.USCORE + it2.getPageId();
            }
        });
        Iterator<T> it2 = noteCreateInfo.getPaperBeanList().iterator();
        while (it2.hasNext()) {
            VirtualPage m40846h = m40846h(documentId, (PaperBean) it2.next(), map);
            lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) arrayList);
            VirtualPage virtualPage = (VirtualPage) lastOrNull;
            if (virtualPage != null) {
                RectF box = m40846h.getBox().getBox();
                RectFKt.scaleRect(box, virtualPage.getBox().getBox().width() / box.width());
                RectFKt.offsetToOrigin(box);
                m40846h.updateVirtualPageBoxInfo(box);
            }
            arrayList.add(m40846h);
        }
        this.virtualDoc.initPageList(arrayList);
        for (VirtualPage virtualPage2 : arrayList) {
            m40836O(virtualPage2, m40849k(virtualPage2));
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void movePage(@NotNull MovePageArgs movePageArgs) {
        Intrinsics.checkNotNullParameter(movePageArgs, "movePageArgs");
        this.virtualDoc.movePage(movePageArgs);
    }

    /* renamed from: n */
    public final void m40852n(List<VirtualPageModel> modelList) {
        Benchmark benchmark = new Benchmark();
        final Map<String, VirtualPagePathInfo> m40830I = m40830I(modelList);
        benchmark.reportDebug(new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy$fillVirtualPageListByModelList$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                String m40828G;
                StringBuilder sb = new StringBuilder();
                m40828G = NoteDocPolicy.this.m40828G();
                sb.append(m40828G);
                sb.append(", createVirtualPage, toVirtualPagePathInfo = ");
                sb.append(m40830I.size());
                return sb.toString();
            }
        });
        final Pair<List<VirtualPage>, List<VirtualPage>> m40829H = m40829H(modelList, m40830I);
        if (this.virtualDoc.getIsEnabledReorderIndex()) {
            m40824B(m40829H.getFirst());
        }
        benchmark.reportDebug(new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.doc.NoteDocPolicy$fillVirtualPageListByModelList$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                String m40828G;
                StringBuilder sb = new StringBuilder();
                m40828G = NoteDocPolicy.this.m40828G();
                sb.append(m40828G);
                sb.append(", createVirtualPage, toVirtualPageList = ");
                sb.append(m40829H.getFirst().size());
                return sb.toString();
            }
        });
        this.virtualDoc.initPageList(m40829H.getFirst());
        List<VirtualPage> second = m40829H.getSecond();
        if (!(!second.isEmpty())) {
            second = null;
        }
        List<VirtualPage> list = second;
        if (list != null) {
            this.virtualDoc.removePage(list);
            m40823A(list);
        }
    }

    /* renamed from: o */
    public final void m40853o() {
        List<ReaderPageInfo> readerPathInfoList = this.workBundle.getOpenDocArgs().getReaderPathInfoList();
        if (readerPathInfoList.isEmpty()) {
            LogUtils.wTag(AnyKt.toSimpleNameString(this), "fillVirtualPageListByReaderPathInfoList error, list empty.");
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : readerPathInfoList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ReaderPageInfo readerPageInfo = (ReaderPageInfo) obj;
            RectF rectF = SizeKt.toRectF(SizeFormat.f45503A4.getSize());
            RectFKt.scaleRect(rectF, m40839a(arrayList, readerPageInfo, i));
            RectFKt.offsetToOrigin(rectF);
            arrayList.add(VirtualPage.Companion.createVirtualPageByReader$default(VirtualPage.INSTANCE, readerPageInfo, null, null, rectF, 0, 22, null));
            i = i2;
        }
        this.virtualDoc.initPageList(arrayList);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public VirtualPage obtainVirtualPage(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        return this.virtualDoc.obtainVirtualPage(boxInfo);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void onDocCreated() {
        m40850l();
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public VirtualDocOpenResultInfo onDocOpened() {
        return m40850l();
    }

    /* renamed from: p */
    public final void m40854p() {
        ArrayList arrayList = new ArrayList();
        List<NotePage> valueList = this.workBundle.getNoteBundle().getNoteDoc().getPageDataMap().valueList();
        Intrinsics.checkNotNullExpressionValue(valueList, "valueList(...)");
        for (NotePage notePage : valueList) {
            VirtualPage.Companion companion = VirtualPage.INSTANCE;
            Intrinsics.checkNotNull(notePage);
            arrayList.add(companion.createVirtualPageFromKNoteNotePage(notePage));
        }
        this.virtualDoc.initPageList(arrayList);
    }

    /* renamed from: q */
    public final void m40855q() {
        ArrayList arrayList = new ArrayList();
        this.workBundle.getOpenDocArgs().getNoteCreateInfo();
        arrayList.add(m40841c(m40843e(), new BoxCellInfo(0, 0)));
        this.virtualDoc.initPageList(arrayList);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.virtualDoc.updateCellPageMap((VirtualPage) it2.next());
        }
    }

    /* renamed from: r */
    public final void m40856r() {
        this.workBundle.getNoteBundle().getNoteDoc().getNoteModel().setActiveScene(this.workBundle.getOpenDocArgs().getActiveScene());
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public Tree<VirtualTocModel> readTableOfContent() {
        Tree<VirtualTocModel> loadVirtualTocTree = this.workBundle.getVirtualModelProvider().loadVirtualTocTree();
        m40822D(this, loadVirtualTocTree);
        return loadVirtualTocTree;
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void removePage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.virtualDoc.removePage(virtualPage);
    }

    /* renamed from: s */
    public final TemplateData m40857s() {
        Object lastOrNull;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) this.virtualDoc.getPageList());
        VirtualPage virtualPage = (VirtualPage) lastOrNull;
        if (virtualPage == null) {
            return null;
        }
        RectF copy = RectFKt.copy(virtualPage.getBox().getOriginRectF());
        if (copy.isEmpty()) {
            return null;
        }
        return Templates.INSTANCE.updateByTemplateJson(new TemplateData(), TemplateJsonBean.INSTANCE.defaultPaper(), copy, this.workBundle.getOpenDocArgs().getDocumentId());
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean save() {
        m40826E();
        m40827F();
        return true;
    }

    public final void setWorkBundle(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<set-?>");
        this.workBundle = workBundle;
    }

    /* renamed from: t */
    public final void m40858t() {
        NoteCreateInfo noteCreateInfo = this.workBundle.getOpenDocArgs().getNoteCreateInfo();
        if (noteCreateInfo != null) {
            m40851m(noteCreateInfo);
        } else {
            Debug.INSTANCE.m32044e(NoteDocPolicy.class, "noteCreateInfo is empty, maybe pull from kNote, init virtual page", new Object[0]);
            m40854p();
        }
    }

    /* renamed from: u */
    public final String m40859u() {
        Object firstOrNull;
        VirtualPageConfig virtualPageConfig;
        Object orNull;
        VirtualPageConfig virtualPageConfig2;
        NoteCreateInfo noteCreateInfo = this.workBundle.getOpenDocArgs().getNoteCreateInfo();
        if (noteCreateInfo == null) {
            return "";
        }
        String str = null;
        if (noteCreateInfo.isContainsCover()) {
            orNull = CollectionsKt___CollectionsKt.getOrNull(this.virtualDoc.getPageList(), 1);
            VirtualPage virtualPage = (VirtualPage) orNull;
            if (virtualPage != null && (virtualPageConfig2 = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) != null) {
                str = virtualPageConfig2.getPageId();
            }
            if (str == null) {
                return "";
            }
        } else {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.virtualDoc.getPageList());
            VirtualPage virtualPage2 = (VirtualPage) firstOrNull;
            if (virtualPage2 != null && (virtualPageConfig = virtualPage2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) != null) {
                str = virtualPageConfig.getPageId();
            }
            if (str == null) {
                return "";
            }
        }
        return str;
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean updateBookmark(@NotNull VirtualBookmarkModel model) {
        List<VirtualBookmarkModel> listOf;
        Intrinsics.checkNotNullParameter(model, "model");
        model.resetRevisionId();
        VirtualModelProvider virtualModelProvider = this.workBundle.getVirtualModelProvider();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(model);
        return virtualModelProvider.saveVirtualBookmarkList(listOf);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void updateBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        VirtualPage obtainVirtualPage = this.virtualDoc.obtainVirtualPage(boxInfo);
        if (obtainVirtualPage == null) {
            return;
        }
        obtainVirtualPage.setBox(boxInfo.copy());
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void updateCoverPage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.virtualDoc.setCoverPageId(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
        updatePage(virtualPage);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void updateOriginPageRectF(int pageIndex, @NotNull RectF newOriginRectF) {
        Intrinsics.checkNotNullParameter(newOriginRectF, "newOriginRectF");
        VirtualPage virtualPage = getVirtualPage(pageIndex);
        if (virtualPage == null) {
            return;
        }
        virtualPage.updateOriginPageRectF(newOriginRectF);
        this.virtualDoc.updatePage(virtualPage);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void updatePage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.virtualDoc.updatePage(virtualPage);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void updatePageIdOnInit(@NotNull String currentPageId) {
        Intrinsics.checkNotNullParameter(currentPageId, "currentPageId");
        this.virtualDoc.setPageIdOnInit(currentPageId);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void updatePageMargin(@NotNull PageMarginArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (args.getApplyAll()) {
            m40831J(args);
        } else {
            m40837P(args);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean updateTocEntry(@NotNull List<VirtualTocModel> tocEntries) {
        Intrinsics.checkNotNullParameter(tocEntries, "tocEntries");
        Iterator<T> it2 = tocEntries.iterator();
        while (it2.hasNext()) {
            ((VirtualTocModel) it2.next()).resetRevisionId();
        }
        return this.workBundle.getVirtualModelProvider().saveVirtualTocList(tocEntries);
    }

    /* renamed from: v */
    public final TemplateData m40860v() {
        Object lastOrNull;
        if (this.workBundle.getOpenDocArgs().getActiveScene() == 3) {
            return m40857s();
        }
        NoteCreateInfo noteCreateInfo = this.workBundle.getOpenDocArgs().getNoteCreateInfo();
        if (noteCreateInfo == null) {
            return null;
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) noteCreateInfo.getPaperBeanList());
        PaperBean paperBean = (PaperBean) lastOrNull;
        if (paperBean == null) {
            return null;
        }
        TemplateJsonBean paperJsonBean = paperBean.getPaperJsonBean();
        RectF copy = RectFKt.copy(paperBean.getPaperRectF());
        if (paperJsonBean == null) {
            return null;
        }
        return Templates.INSTANCE.updateByTemplateJson(new TemplateData(), paperJsonBean, copy, this.workBundle.getOpenDocArgs().getDocumentId());
    }

    /* renamed from: w */
    public final VirtualDocModel m40861w() {
        VirtualDocModel virtualDocModel = new VirtualDocModel();
        virtualDocModel.setViewportId(m40859u());
        this.workBundle.getDocOptions().setAlignCenterAfterOpen(true);
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(virtualDocModel), "initVirtualDocModel, viewportId = " + virtualDocModel.getViewportId(), new Object[0]);
        virtualDocModel.setDefaultTemplate(m40860v());
        m40840b(virtualDocModel);
        return virtualDocModel;
    }

    /* renamed from: x */
    public final void m40862x() {
        int activeScene = this.workBundle.getOpenDocArgs().getActiveScene();
        if (activeScene == 0) {
            m40858t();
        } else if (activeScene == 2) {
            m40855q();
        } else if (activeScene != 3) {
            m40858t();
        } else {
            m40853o();
        }
        List<VirtualPageModel> virtualPageModelList = VirtualPage.INSTANCE.toVirtualPageModelList(this.virtualDoc.getPageList());
        this.workBundle.getVirtualModelProvider().saveVirtualPageList(virtualPageModelList);
        Debug.INSTANCE.m32042d(Reflection.getOrCreateKotlinClass(NoteDocPolicy.class), "initVirtualPage, modelList = " + virtualPageModelList.size(), new Object[0]);
    }

    /* renamed from: y */
    public final boolean m40863y() {
        return this.workBundle.getOpenDocArgs().getPageDataFetchType() != DataFetchType.REMOVED;
    }

    /* renamed from: z */
    public final List<VirtualPageModel> m40864z() {
        return this.workBundle.getVirtualModelProvider().loadVirtualPageModelList(this.workBundle.getOpenDocArgs().getPageDataFetchType());
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public VirtualPage getVirtualPage(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return this.virtualDoc.getPageList().getWithId(pageId);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public VirtualPage getVirtualPage(@NotNull BoxCellInfo cellInfo) {
        Intrinsics.checkNotNullParameter(cellInfo, "cellInfo");
        return this.virtualDoc.obtainVirtualPage(cellInfo);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void addPage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.virtualDoc.addPage(virtualPage);
        m40844f(virtualPage);
    }
}

package com.onyx.android.sdk.universal.editor.action.p126import;

import android.net.Uri;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.StringUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.exception.SpaceNotEnoughException;
import com.onyx.android.sdk.data.common.path.StashPaths;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.replicator.note.data.page.NotePageInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageNameList;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.proto.NoteInfoProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.NoteInfoPBDocument;
import com.onyx.android.sdk.replicator.note.proto.doc.NoteTreePBDocument;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.StashNoteShapePBDocument;
import com.onyx.android.sdk.replicator.note.proto.p036pb.AppPBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.AppPbFactory;
import com.onyx.android.sdk.replicator.note.proto.p036pb.NoteModelPBData;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBFactory;
import com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.UserPbFactory;
import com.onyx.android.sdk.replicator.note.utils.CopyNoteUtils;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.p126import.ImportFromNoteFileAction;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.data.NoteProgressInfo;
import com.onyx.android.sdk.universal.editor.events.note.ImportNoteProgressEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.NoteExporter;
import com.onyx.android.sdk.universal.editor.request.common.SaveUriToFileRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010&\n\u0002\u0010 \n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 w2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001wB'\u0012\u0006\u0010X\u001a\u00020U\u0012\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\u000507\u0012\b\b\u0002\u0010]\u001a\u00020\u0015¢\u0006\u0004\bu\u0010vJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J$\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u001e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J(\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J.\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u0011H\u0002J\u0010\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J\u001e\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0002J \u0010#\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0002H\u0002J \u0010$\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0018\u0010%\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0016\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u001e\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u000fH\u0002J\u0010\u0010)\u001a\u00020\u00152\u0006\u0010'\u001a\u00020\u000fH\u0002J\u001e\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u000fH\u0002J\u001e\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u000fH\u0002J\"\u0010-\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u000f2\b\b\u0002\u0010,\u001a\u00020\u0011H\u0002J\u0018\u0010.\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u000fH\u0002J<\u00105\u001a\u001e\u0012\u0004\u0012\u00020\u0011\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020302j\b\u0012\u0004\u0012\u000203`4012\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\u0006\u0010,\u001a\u00020\u0011H\u0002J:\u00109\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\u0006\u0010,\u001a\u00020\u00112\u0018\u00108\u001a\u0014\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u0002030706H\u0002J\u001e\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u000fH\u0002J\u001e\u0010;\u001a\b\u0012\u0004\u0012\u000203072\u0006\u0010\u0010\u001a\u00020/2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010<\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020/2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J \u0010>\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020/2\u0006\u0010=\u001a\u0002032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010?\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010@\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010A\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010C\u001a\u00020\t2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\u001b07H\u0002J\u0016\u0010D\u001a\u00020\t2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\u001b07H\u0002J\u0010\u0010F\u001a\u00020\u00152\u0006\u0010E\u001a\u00020\u0011H\u0002J\b\u0010G\u001a\u00020\u0015H\u0002J\b\u0010H\u001a\u00020\tH\u0002J\u0010\u0010I\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010L\u001a\u00020\t2\u0006\u0010K\u001a\u00020JH\u0002J\u0010\u0010N\u001a\u00020\u00112\u0006\u0010M\u001a\u00020\u0011H\u0002J \u0010P\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010O\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0018\u0010R\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020\u0011H\u0002J\f\u0010S\u001a\b\u0012\u0004\u0012\u00020\u001b07J\u000e\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014R\u0014\u0010X\u001a\u00020U8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010WR\u001c\u0010B\u001a\b\u0012\u0004\u0012\u00020\u0005078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u0014\u0010]\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010\\R\u001b\u0010c\u001a\u00020^8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b_\u0010`\u001a\u0004\ba\u0010bR \u0010g\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001b0d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\be\u0010fR \u0010i\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001b0d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010fR \u0010k\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001b0d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bj\u0010fR \u0010n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020l0d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bm\u0010fR\u0018\u0010r\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0016\u0010t\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010\\¨\u0006x"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOn", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "noteImportArgs", "Lio/reactivex/rxjava3/core/Observable;", "P", "", "i0", "e0", "d0", "R", "v0", "Ljava/io/File;", "zipFile", "", "unzipDirPath", "s0", "noteFileDir", "", "S", "newDocId", "", "throwable", "g0", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "U", "k0", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "copyNoteArgs", "G", "progressInfo", "h0", "n0", "o0", "X", "importFile", "a0", "w", "b0", "W", "topLevelDir", "l0", "w0", "Ljava/util/zip/ZipFile;", "zip", "", "Ljava/util/ArrayList;", "Ljava/util/zip/ZipEntry;", "Lkotlin/collections/ArrayList;", "E", "", "", "data", "x0", "V", "B", "q0", "zipEntry", "r0", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "L", "M", "list", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "A", CouchFieldKey.KEY_UNIQUE_ID, "f0", "x", "z", "y", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "c0", "name", "p0", "noteTitle", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "key", "F", "getNoteList", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", C6997f.f39671c, "Ljava/util/List;", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "interruptIfException", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", C6999h.f39688c, "Lkotlin/Lazy;", "N", "()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "", "i", "Ljava/util/Map;", "noteTreeMap", "j", "libraryMap", C4921e.f26537n, "documentMap", "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;", "l", "userPBDataContextMap", "Lio/reactivex/rxjava3/disposables/Disposable;", "m", "Lio/reactivex/rxjava3/disposables/Disposable;", "importDisposable", GoogleApiAvailabilityLight.f29016b, "isDisposable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImportFromNoteFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportFromNoteFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,749:1\n1855#2,2:750\n1855#2,2:759\n766#2:761\n857#2,2:762\n766#2:764\n857#2,2:765\n766#2:767\n857#2,2:768\n766#2:770\n857#2,2:771\n1855#2,2:773\n1855#2,2:775\n766#2:777\n857#2,2:778\n1855#2,2:780\n766#2:782\n857#2,2:783\n1855#2,2:785\n1855#2,2:787\n1855#2,2:789\n766#2:791\n857#2,2:792\n1855#2,2:794\n1855#2,2:796\n1#3:752\n215#4,2:753\n179#5,2:755\n1313#5,2:757\n*S KotlinDebug\n*F\n+ 1 ImportFromNoteFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction\n*L\n141#1:750,2\n493#1:759,2\n622#1:761\n622#1:762,2\n623#1:764\n623#1:765,2\n629#1:767\n629#1:768,2\n630#1:770\n630#1:771,2\n631#1:773,2\n637#1:775,2\n643#1:777\n643#1:778,2\n645#1:780,2\n651#1:782\n651#1:783,2\n652#1:785,2\n669#1:787,2\n681#1:789,2\n688#1:791\n688#1:792,2\n692#1:794,2\n715#1:796,2\n331#1:753,2\n403#1:755,2\n478#1:757,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ImportFromNoteFileAction extends RxBaseAction<ProgressInfo> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: o */
    @NotNull
    public static final String f49814o = "ImportFromNoteFileAction";

    /* renamed from: p */
    @NotNull
    public static final String f49815p = "_unzip";

    /* renamed from: q */
    public static boolean f49816q;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public List<NoteImportArgs> list;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean interruptIfException;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteProvider;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<String, SyncNoteModel> noteTreeMap;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Map<String, SyncNoteModel> libraryMap;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Map<String, SyncNoteModel> documentMap;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Map<NoteImportArgs, UserPBDataContext> userPBDataContextMap;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public Disposable importDisposable;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean isDisposable;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$Companion;", "", "()V", "IMPORT_STASH_SHAPE", "", "getIMPORT_STASH_SHAPE", Constants.BOOLEAN_VALUE_SIG, "setIMPORT_STASH_SHAPE", "(Z)V", "TAG", "", "UNZIP_SUFFIX", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean getIMPORT_STASH_SHAPE() {
            return ImportFromNoteFileAction.f49816q;
        }

        public final void setIMPORT_STASH_SHAPE(boolean z) {
            ImportFromNoteFileAction.f49816q = z;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C9509a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ NoteImportArgs f49828f;

        /* renamed from: g */
        public final /* synthetic */ CopyNoteArgs f49829g;

        public C9509a(NoteImportArgs noteImportArgs, CopyNoteArgs copyNoteArgs) {
            this.f49828f = noteImportArgs;
            this.f49829g = copyNoteArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.m39167h0(this.f49828f, this.f49829g.getDstDocId(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$a0 */
    /* loaded from: classes8.dex */
    public static final class C9510a0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ NoteImportArgs f49831f;

        public C9510a0(NoteImportArgs noteImportArgs) {
            this.f49831f = noteImportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.m39163d0(this.f49831f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$b */
    /* loaded from: classes8.dex */
    public static final class C9511b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ PBDataContext f49833f;

        public C9511b(PBDataContext pBDataContext) {
            this.f49833f = pBDataContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.m39162c0(this.f49833f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$b0 */
    /* loaded from: classes8.dex */
    public static final class C9512b0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ NoteImportArgs f49835f;

        public C9512b0(NoteImportArgs noteImportArgs) {
            this.f49835f = noteImportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.m39154R(this.f49835f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$c */
    /* loaded from: classes8.dex */
    public static final class C9513c<T> implements Consumer {
        public C9513c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportFromNoteFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.m39180x();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$c0 */
    /* loaded from: classes8.dex */
    public static final class C9514c0<T> implements Consumer {
        public C9514c0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.m39182y(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$d */
    /* loaded from: classes8.dex */
    public static final class C9515d<T, R> implements Function {
        public C9515d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteImportArgs> apply(@NotNull ImportFromNoteFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(ImportFromNoteFileAction.this.list);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$d0 */
    /* loaded from: classes8.dex */
    public static final class C9516d0<T, R> implements Function {
        public C9516d0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteImportArgs> apply(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportFromNoteFileAction.this.m39177v0(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$e */
    /* loaded from: classes8.dex */
    public static final class C9517e<T, R> implements Function {
        public C9517e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportFromNoteFileAction.this.m39159X(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$e0 */
    /* loaded from: classes8.dex */
    public static final class C9518e0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteImportArgs f49842f;

        /* renamed from: g */
        public final /* synthetic */ File f49843g;

        public C9518e0(NoteImportArgs noteImportArgs, File file) {
            this.f49842f = noteImportArgs;
            this.f49843g = file;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction importFromNoteFileAction = ImportFromNoteFileAction.this;
            NoteImportArgs noteImportArgs = this.f49842f;
            String name = this.f49843g.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            importFromNoteFileAction.m39147F(noteImportArgs, name);
            return ImportFromNoteFileAction.this.m39153P(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$f */
    /* loaded from: classes8.dex */
    public static final class C9519f<T> implements Consumer {

        /* renamed from: e */
        public static final C9519f<T> f49844e = new C9519f<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LogUtils.file(ImportFromNoteFileAction.f49814o, "onImportFail e:" + it2.getMessage());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$f0 */
    /* loaded from: classes8.dex */
    public static final class C9520f0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteImportArgs f49846f;

        /* renamed from: g */
        public final /* synthetic */ File f49847g;

        public C9520f0(NoteImportArgs noteImportArgs, File file) {
            this.f49846f = noteImportArgs;
            this.f49847g = file;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ProgressInfo apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction importFromNoteFileAction = ImportFromNoteFileAction.this;
            NoteImportArgs noteImportArgs = this.f49846f;
            String name = this.f49847g.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            return importFromNoteFileAction.m39152O(noteImportArgs, name, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$g */
    /* loaded from: classes8.dex */
    public static final class C9521g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<File> f49848e;

        public C9521g(List<File> list) {
            this.f49848e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends File> apply(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(this.f49848e);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$g0 */
    /* loaded from: classes8.dex */
    public static final class C9522g0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ NoteImportArgs f49849e;

        /* renamed from: f */
        public final /* synthetic */ String f49850f;

        public C9522g0(NoteImportArgs noteImportArgs, String str) {
            this.f49849e = noteImportArgs;
            this.f49850f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49849e.getNoteProgressInfoMap().put(this.f49850f, new NoteProgressInfo());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$h */
    /* loaded from: classes8.dex */
    public static final class C9523h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteImportArgs f49852f;

        public C9523h(NoteImportArgs noteImportArgs) {
            this.f49852f = noteImportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull File it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportFromNoteFileAction.this.m39155S(this.f49852f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$h0 */
    /* loaded from: classes8.dex */
    public static final class C9524h0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ NoteImportArgs f49854f;

        /* renamed from: g */
        public final /* synthetic */ String f49855g;

        public C9524h0(NoteImportArgs noteImportArgs, String str) {
            this.f49854f = noteImportArgs;
            this.f49855g = str;
        }

        /* renamed from: a */
        public final void m39199a(int i) {
            ImportFromNoteFileAction.this.m39167h0(this.f49854f, this.f49855g, new ProgressInfo(i, 100));
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m39199a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$i */
    /* loaded from: classes8.dex */
    public static final class C9525i<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ReplaySubject<ProgressInfo> f49856e;

        /* renamed from: f */
        public final /* synthetic */ Ref.IntRef f49857f;

        /* renamed from: g */
        public final /* synthetic */ int f49858g;

        public C9525i(ReplaySubject<ProgressInfo> replaySubject, Ref.IntRef intRef, int i) {
            this.f49856e = replaySubject;
            this.f49857f = intRef;
            this.f49858g = i;
        }

        /* renamed from: a */
        public final void m39200a(boolean z) {
            ReplaySubject<ProgressInfo> replaySubject = this.f49856e;
            Ref.IntRef intRef = this.f49857f;
            int i = intRef.element + 1;
            intRef.element = i;
            replaySubject.onNext(new ProgressInfo(i, this.f49858g));
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m39200a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$i0 */
    /* loaded from: classes8.dex */
    public static final class C9526i0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ File f49860f;

        /* renamed from: g */
        public final /* synthetic */ NoteImportArgs f49861g;

        public C9526i0(File file, NoteImportArgs noteImportArgs) {
            this.f49860f = file;
            this.f49861g = noteImportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull File it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction importFromNoteFileAction = ImportFromNoteFileAction.this;
            String absolutePath = this.f49860f.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            return importFromNoteFileAction.m39176s0(it2, absolutePath, this.f49861g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$j */
    /* loaded from: classes8.dex */
    public static final class C9527j<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ReplaySubject<ProgressInfo> f49862e;

        public C9527j(ReplaySubject<ProgressInfo> replaySubject) {
            this.f49862e = replaySubject;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49862e.onError(it2);
        }
    }

    @SourceDebugExtension({"SMAP\nImportFromNoteFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportFromNoteFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$unzipNoteFiles$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,749:1\n3792#2:750\n4307#2,2:751\n*S KotlinDebug\n*F\n+ 1 ImportFromNoteFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$unzipNoteFiles$2\n*L\n198#1:750\n198#1:751,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$j0 */
    /* loaded from: classes8.dex */
    public static final class C9528j0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ NoteImportArgs f49863e;

        /* renamed from: f */
        public final /* synthetic */ File f49864f;

        public C9528j0(NoteImportArgs noteImportArgs, File file) {
            this.f49863e = noteImportArgs;
            this.f49864f = file;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            List list;
            List<File> mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteImportArgs noteImportArgs = this.f49863e;
            File[] listFiles = this.f49864f.listFiles();
            if (listFiles != null) {
                ArrayList arrayList = new ArrayList();
                for (File file : listFiles) {
                    if (file.isDirectory()) {
                        arrayList.add(file);
                    }
                }
                list = CollectionsKt___CollectionsKt.toList(arrayList);
            } else {
                list = null;
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionKt.ensureList(list));
            noteImportArgs.setFileList(mutableList);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$k */
    /* loaded from: classes8.dex */
    public static final class C9529k<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ File f49866f;

        public C9529k(File file) {
            this.f49866f = file;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteModel apply(@NotNull ImportFromNoteFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportFromNoteFileAction.this.m39169k0(this.f49866f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$k0 */
    /* loaded from: classes8.dex */
    public static final class C9530k0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteImportArgs f49867e;

        public C9530k0(NoteImportArgs noteImportArgs) {
            this.f49867e = noteImportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteImportArgs apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49867e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$l */
    /* loaded from: classes8.dex */
    public static final class C9531l<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteImportArgs f49869f;

        /* renamed from: g */
        public final /* synthetic */ File f49870g;

        /* renamed from: h */
        public final /* synthetic */ String f49871h;

        public C9531l(NoteImportArgs noteImportArgs, File file, String str) {
            this.f49869f = noteImportArgs;
            this.f49870g = file;
            this.f49871h = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SyncNoteModel> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportFromNoteFileAction.this.m39156U(this.f49869f, this.f49870g, it2, this.f49871h);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$m */
    /* loaded from: classes8.dex */
    public static final class C9532m<T> implements Consumer {
        public C9532m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.documentMap.put(it2.getUniqueId(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$n */
    /* loaded from: classes8.dex */
    public static final class C9533n<T, R> implements Function {

        /* renamed from: e */
        public static final C9533n<T, R> f49873e = new C9533n<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$o */
    /* loaded from: classes8.dex */
    public static final class C9534o<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteImportArgs f49875f;

        /* renamed from: g */
        public final /* synthetic */ File f49876g;

        /* renamed from: h */
        public final /* synthetic */ String f49877h;

        public C9534o(NoteImportArgs noteImportArgs, File file, String str) {
            this.f49875f = noteImportArgs;
            this.f49876g = file;
            this.f49877h = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(ImportFromNoteFileAction.this.m39166g0(this.f49875f, this.f49876g, this.f49877h, it2));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$p */
    /* loaded from: classes8.dex */
    public static final class C9535p<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteImportArgs f49879f;

        /* renamed from: g */
        public final /* synthetic */ SyncNoteModel f49880g;

        /* renamed from: h */
        public final /* synthetic */ CopyNoteArgs f49881h;

        public C9535p(NoteImportArgs noteImportArgs, SyncNoteModel syncNoteModel, CopyNoteArgs copyNoteArgs) {
            this.f49879f = noteImportArgs;
            this.f49880g = syncNoteModel;
            this.f49881h = copyNoteArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteModel apply(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.m39171n0(this.f49879f, this.f49880g, this.f49881h);
            Debug.INSTANCE.m32035d(ImportFromNoteFileAction.this.getClass(), "end import:" + this.f49880g.getTitle() + ",change uuid:" + this.f49880g.getUniqueId(), new Object[0]);
            return this.f49880g;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$q */
    /* loaded from: classes8.dex */
    public static final class C9536q<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ NoteImportArgs f49882e;

        public C9536q(NoteImportArgs noteImportArgs) {
            this.f49882e = noteImportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FileUtils.forceMkdir(this.f49882e.getImportCacheDir());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$r */
    /* loaded from: classes8.dex */
    public static final class C9537r<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ZipFile f49884f;

        public C9537r(ZipFile zipFile) {
            this.f49884f = zipFile;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.m39174q0(this.f49884f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$s */
    /* loaded from: classes8.dex */
    public static final class C9538s<T> implements Consumer {
        public C9538s() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.m39168i0(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$t */
    /* loaded from: classes8.dex */
    public static final class C9539t<T> implements Consumer {
        public C9539t() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.m39164e0(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$u */
    /* loaded from: classes8.dex */
    public static final class C9540u<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ ZipFile f49888f;

        /* renamed from: g */
        public final /* synthetic */ NoteImportArgs f49889g;

        public C9540u(ZipFile zipFile, NoteImportArgs noteImportArgs) {
            this.f49888f = zipFile;
            this.f49889g = noteImportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ZipEntry> apply(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(ImportFromNoteFileAction.this.m39143B(this.f49888f, this.f49889g));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$v */
    /* loaded from: classes8.dex */
    public static final class C9541v<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ ZipFile f49891f;

        /* renamed from: g */
        public final /* synthetic */ NoteImportArgs f49892g;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$v$a */
        /* loaded from: classes8.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ ImportFromNoteFileAction f49893e;

            /* renamed from: f */
            public final /* synthetic */ ZipFile f49894f;

            /* renamed from: g */
            public final /* synthetic */ ZipEntry f49895g;

            /* renamed from: h */
            public final /* synthetic */ NoteImportArgs f49896h;

            public a(ImportFromNoteFileAction importFromNoteFileAction, ZipFile zipFile, ZipEntry zipEntry, NoteImportArgs noteImportArgs) {
                this.f49893e = importFromNoteFileAction;
                this.f49894f = zipFile;
                this.f49895g = zipEntry;
                this.f49896h = noteImportArgs;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull ZipEntry it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f49893e.m39175r0(this.f49894f, this.f49895g, this.f49896h);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$v$b */
        /* loaded from: classes8.dex */
        public static final class b<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ ImportFromNoteFileAction f49897e;

            /* renamed from: f */
            public final /* synthetic */ NoteImportArgs f49898f;

            public b(ImportFromNoteFileAction importFromNoteFileAction, NoteImportArgs noteImportArgs) {
                this.f49897e = importFromNoteFileAction;
                this.f49898f = noteImportArgs;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull ZipEntry it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f49897e.m39144C(this.f49898f);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$v$c */
        /* loaded from: classes8.dex */
        public static final class c<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ NoteImportArgs f49899e;

            public c(NoteImportArgs noteImportArgs) {
                this.f49899e = noteImportArgs;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final NoteImportArgs apply(@NotNull ZipEntry it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f49899e;
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$v$d */
        /* loaded from: classes8.dex */
        public static final class d<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ ImportFromNoteFileAction f49900e;

            public d(ImportFromNoteFileAction importFromNoteFileAction) {
                this.f49900e = importFromNoteFileAction;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull NoteImportArgs it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f49900e.m39182y(it2);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$v$e */
        /* loaded from: classes8.dex */
        public static final class e<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ ImportFromNoteFileAction f49901e;

            public e(ImportFromNoteFileAction importFromNoteFileAction) {
                this.f49901e = importFromNoteFileAction;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends NoteImportArgs> apply(@NotNull NoteImportArgs it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f49901e.m39177v0(it2);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$v$f */
        /* loaded from: classes8.dex */
        public static final class f<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ ImportFromNoteFileAction f49902e;

            /* renamed from: f */
            public final /* synthetic */ NoteImportArgs f49903f;

            /* renamed from: g */
            public final /* synthetic */ ZipEntry f49904g;

            public f(ImportFromNoteFileAction importFromNoteFileAction, NoteImportArgs noteImportArgs, ZipEntry zipEntry) {
                this.f49902e = importFromNoteFileAction;
                this.f49903f = noteImportArgs;
                this.f49904g = zipEntry;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends ProgressInfo> apply(@NotNull NoteImportArgs it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ImportFromNoteFileAction importFromNoteFileAction = this.f49902e;
                NoteImportArgs noteImportArgs = this.f49903f;
                String name = this.f49904g.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                importFromNoteFileAction.m39147F(noteImportArgs, name);
                return this.f49902e.m39153P(it2);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$v$g */
        /* loaded from: classes8.dex */
        public static final class g<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ ImportFromNoteFileAction f49905e;

            /* renamed from: f */
            public final /* synthetic */ NoteImportArgs f49906f;

            /* renamed from: g */
            public final /* synthetic */ ZipEntry f49907g;

            public g(ImportFromNoteFileAction importFromNoteFileAction, NoteImportArgs noteImportArgs, ZipEntry zipEntry) {
                this.f49905e = importFromNoteFileAction;
                this.f49906f = noteImportArgs;
                this.f49907g = zipEntry;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ProgressInfo apply(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ImportFromNoteFileAction importFromNoteFileAction = this.f49905e;
                NoteImportArgs noteImportArgs = this.f49906f;
                String name = this.f49907g.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                return importFromNoteFileAction.m39152O(noteImportArgs, name, it2);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$v$h */
        /* loaded from: classes8.dex */
        public static final class h<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ ImportFromNoteFileAction f49908e;

            /* renamed from: f */
            public final /* synthetic */ NoteImportArgs f49909f;

            public h(ImportFromNoteFileAction importFromNoteFileAction, NoteImportArgs noteImportArgs) {
                this.f49908e = importFromNoteFileAction;
                this.f49909f = noteImportArgs;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull ProgressInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f49908e.m39149L(this.f49909f);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$v$i */
        /* loaded from: classes8.dex */
        public static final class i<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ ImportFromNoteFileAction f49910e;

            /* renamed from: f */
            public final /* synthetic */ NoteImportArgs f49911f;

            public i(ImportFromNoteFileAction importFromNoteFileAction, NoteImportArgs noteImportArgs) {
                this.f49910e = importFromNoteFileAction;
                this.f49911f = noteImportArgs;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull ProgressInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f49910e.m39150M(this.f49911f);
            }
        }

        public C9541v(ZipFile zipFile, NoteImportArgs noteImportArgs) {
            this.f49891f = zipFile;
            this.f49892g = noteImportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull ZipEntry zipEntry) {
            Intrinsics.checkNotNullParameter(zipEntry, "zipEntry");
            Observable<R> onErrorReturn = Observable.just(zipEntry).doOnNext(new a(ImportFromNoteFileAction.this, this.f49891f, zipEntry, this.f49892g)).doOnNext(new b(ImportFromNoteFileAction.this, this.f49892g)).map(new c(this.f49892g)).doOnNext(new d(ImportFromNoteFileAction.this)).flatMap(new e(ImportFromNoteFileAction.this)).flatMap(new f(ImportFromNoteFileAction.this, this.f49892g, zipEntry)).onErrorReturn(new g(ImportFromNoteFileAction.this, this.f49892g, zipEntry));
            Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
            return RxjavaKt.takeLastOne(onErrorReturn).doOnNext(new h(ImportFromNoteFileAction.this, this.f49892g)).doOnNext(new i(ImportFromNoteFileAction.this, this.f49892g));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$w */
    /* loaded from: classes8.dex */
    public static final class C9542w<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ NoteImportArgs f49913f;

        /* renamed from: g */
        public final /* synthetic */ File f49914g;

        /* renamed from: h */
        public final /* synthetic */ String f49915h;

        public C9542w(NoteImportArgs noteImportArgs, File file, String str) {
            this.f49913f = noteImportArgs;
            this.f49914g = file;
            this.f49915h = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.m39170l0(this.f49913f, this.f49914g, this.f49915h);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$x */
    /* loaded from: classes8.dex */
    public static final class C9543x<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteImportArgs f49917f;

        /* renamed from: g */
        public final /* synthetic */ ZipFile f49918g;

        /* renamed from: h */
        public final /* synthetic */ String f49919h;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$x$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ ImportFromNoteFileAction f49920e;

            /* renamed from: f */
            public final /* synthetic */ NoteImportArgs f49921f;

            /* renamed from: g */
            public final /* synthetic */ ZipFile f49922g;

            /* renamed from: h */
            public final /* synthetic */ String f49923h;

            /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$x$a$a, reason: collision with other inner class name */
            /* loaded from: classes8.dex */
            public static final class C20601a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ ImportFromNoteFileAction f49924e;

                /* renamed from: f */
                public final /* synthetic */ NoteImportArgs f49925f;

                /* renamed from: g */
                public final /* synthetic */ ZipFile f49926g;

                /* renamed from: h */
                public final /* synthetic */ String f49927h;

                public C20601a(ImportFromNoteFileAction importFromNoteFileAction, NoteImportArgs noteImportArgs, ZipFile zipFile, String str) {
                    this.f49924e = importFromNoteFileAction;
                    this.f49925f = noteImportArgs;
                    this.f49926g = zipFile;
                    this.f49927h = str;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final NoteImportArgs apply(@NotNull Map.Entry<String, ? extends ArrayList<ZipEntry>> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f49924e.m39181x0(this.f49925f, this.f49926g, this.f49927h, it2);
                    return this.f49925f;
                }
            }

            /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$x$a$b */
            /* loaded from: classes8.dex */
            public static final class b<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ ImportFromNoteFileAction f49928e;

                public b(ImportFromNoteFileAction importFromNoteFileAction) {
                    this.f49928e = importFromNoteFileAction;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends ProgressInfo> apply(@NotNull NoteImportArgs it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return this.f49928e.m39153P(it2);
                }
            }

            /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$x$a$c */
            /* loaded from: classes8.dex */
            public static final class c<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ ImportFromNoteFileAction f49929e;

                /* renamed from: f */
                public final /* synthetic */ NoteImportArgs f49930f;

                public c(ImportFromNoteFileAction importFromNoteFileAction, NoteImportArgs noteImportArgs) {
                    this.f49929e = importFromNoteFileAction;
                    this.f49930f = noteImportArgs;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull ProgressInfo it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f49929e.m39150M(this.f49930f);
                }
            }

            public a(ImportFromNoteFileAction importFromNoteFileAction, NoteImportArgs noteImportArgs, ZipFile zipFile, String str) {
                this.f49920e = importFromNoteFileAction;
                this.f49921f = noteImportArgs;
                this.f49922g = zipFile;
                this.f49923h = str;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends ProgressInfo> apply(@NotNull Map.Entry<String, ? extends ArrayList<ZipEntry>> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Observable.just(it2).map(new C20601a(this.f49920e, this.f49921f, this.f49922g, this.f49923h)).concatMap(new b(this.f49920e)).doOnNext(new c(this.f49920e, this.f49921f));
            }
        }

        public C9543x(NoteImportArgs noteImportArgs, ZipFile zipFile, String str) {
            this.f49917f = noteImportArgs;
            this.f49918g = zipFile;
            this.f49919h = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(ImportFromNoteFileAction.this.m39146E(this.f49917f, this.f49918g, this.f49919h).entrySet()).concatMap(new a(ImportFromNoteFileAction.this, this.f49917f, this.f49918g, this.f49919h));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$y */
    /* loaded from: classes8.dex */
    public static final class C9544y<T> implements Consumer {
        public C9544y() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportFromNoteFileAction.this.noteTreeMap.clear();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$z */
    /* loaded from: classes8.dex */
    public static final class C9545z<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Observable<ProgressInfo> f49932e;

        public C9545z(Observable<ProgressInfo> observable) {
            this.f49932e = observable;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49932e;
        }
    }

    public /* synthetic */ ImportFromNoteFileAction(EditorBundle editorBundle, List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, list, (i & 4) != 0 ? true : z);
    }

    /* renamed from: H */
    public static final void m39119H(NoteProviderHolder noteProviderHolder) {
        Intrinsics.checkNotNullParameter(noteProviderHolder, "$noteProviderHolder");
        noteProviderHolder.closeDocProvider();
    }

    /* renamed from: I */
    public static final void m39120I() {
        DBProviderBundle.Companion.dumpDocProviderInfo$default(DBProviderBundle.INSTANCE, KSyncBundle.INSTANCE.getDbProviderBundle(), false, 1, null);
    }

    /* renamed from: J */
    public static final void m39121J(ImportFromNoteFileAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m39183z();
    }

    /* renamed from: K */
    public static final void m39122K(ImportFromNoteFileAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isDisposable = true;
        Disposable disposable = this$0.importDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: Q */
    public static final void m39123Q(ReplaySubject progressSubject, int i) {
        Intrinsics.checkNotNullParameter(progressSubject, "$progressSubject");
        RxjavaKt.done(progressSubject, new ProgressInfo(i, i));
    }

    /* renamed from: T */
    public static final void m39124T(File noteFileDir) {
        Intrinsics.checkNotNullParameter(noteFileDir, "$noteFileDir");
        com.onyx.android.sdk.base.utils.FileUtils.deleteDirectoryQuietly$default(com.onyx.android.sdk.base.utils.FileUtils.INSTANCE, noteFileDir, null, null, 3, null);
    }

    /* renamed from: Y */
    public static final void m39125Y(ImportFromNoteFileAction this$0, NoteImportArgs noteImportArgs) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(noteImportArgs, "$noteImportArgs");
        this$0.userPBDataContextMap.remove(noteImportArgs);
    }

    /* renamed from: Z */
    public static final void m39126Z(NoteImportArgs noteImportArgs) {
        Intrinsics.checkNotNullParameter(noteImportArgs, "$noteImportArgs");
        com.onyx.android.sdk.base.utils.FileUtils.deleteDirectoryQuietly$default(com.onyx.android.sdk.base.utils.FileUtils.INSTANCE, noteImportArgs.getImportCacheDir(), null, null, 3, null);
    }

    /* renamed from: j0 */
    public static final UserPBDataContext m39127j0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (UserPBDataContext) tmp0.invoke(obj);
    }

    /* renamed from: m0 */
    public static /* synthetic */ void m39130m0(ImportFromNoteFileAction importFromNoteFileAction, NoteImportArgs noteImportArgs, File file, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = "";
        }
        importFromNoteFileAction.m39170l0(noteImportArgs, file, str);
    }

    /* renamed from: t0 */
    public static final void m39138t0(ImportFromNoteFileAction this$0, NoteImportArgs noteImportArgs, String unzipKey) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(noteImportArgs, "$noteImportArgs");
        Intrinsics.checkNotNullParameter(unzipKey, "$unzipKey");
        this$0.m39147F(noteImportArgs, unzipKey);
    }

    /* renamed from: u0 */
    public static final void m39140u0(Benchmark benchmark, String unzipKey) {
        Intrinsics.checkNotNullParameter(benchmark, "$benchmark");
        Intrinsics.checkNotNullParameter(unzipKey, "$unzipKey");
        benchmark.report("unzipNoteFile:" + unzipKey);
    }

    /* renamed from: A */
    public final void m39142A(List<? extends SyncNoteModel> list) {
        ArrayList<SyncNoteModel> arrayList = new ArrayList();
        for (Object obj : list) {
            if (((SyncNoteModel) obj).isLibrary()) {
                arrayList.add(obj);
            }
        }
        for (SyncNoteModel syncNoteModel : arrayList) {
            this.libraryMap.put(syncNoteModel.getUniqueId(), syncNoteModel);
        }
    }

    /* renamed from: B */
    public final List<ZipEntry> m39143B(ZipFile zipFile, NoteImportArgs noteImportArgs) {
        List<ZipEntry> collectEntries = ZipUtils.INSTANCE.collectEntries(zipFile, new Function1<ZipEntry, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$collectNoteEntries$noteEntries$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ZipEntry it2) {
                boolean endsWith$default;
                Intrinsics.checkNotNullParameter(it2, "it");
                String name = it2.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(name, "note", false, 2, null);
                return Boolean.valueOf(endsWith$default);
            }
        });
        for (ZipEntry zipEntry : collectEntries) {
            ConcurrentHashMap<String, NoteProgressInfo> noteProgressInfoMap = noteImportArgs.getNoteProgressInfoMap();
            String name = zipEntry.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            noteProgressInfoMap.put(name, new NoteProgressInfo());
            ConcurrentHashMap<String, NoteProgressInfo> noteProgressInfoMap2 = noteImportArgs.getNoteProgressInfoMap();
            String name2 = zipEntry.getName();
            Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
            noteProgressInfoMap2.put(m39173p0(name2), new NoteProgressInfo());
        }
        return collectEntries;
    }

    /* renamed from: C */
    public final void m39144C(NoteImportArgs noteImportArgs) {
        List list;
        List<File> mutableList;
        boolean endsWith$default;
        Collection<File> listFiles = FileUtils.listFiles(noteImportArgs.getImportCacheDir(), (String[]) null, true);
        Intrinsics.checkNotNullExpressionValue(listFiles, "listFiles(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : listFiles) {
            if (((File) obj).isFile()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            String absolutePath = ((File) obj2).getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(absolutePath, "note", false, 2, null);
            if (endsWith$default) {
                arrayList2.add(obj2);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList2);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        noteImportArgs.setFileList(mutableList);
    }

    /* renamed from: D */
    public final void m39145D(List<? extends SyncNoteModel> list) {
        ArrayList<SyncNoteModel> arrayList = new ArrayList();
        for (Object obj : list) {
            if (((SyncNoteModel) obj).isDocument()) {
                arrayList.add(obj);
            }
        }
        for (SyncNoteModel syncNoteModel : arrayList) {
            this.noteTreeMap.put(syncNoteModel.getUniqueId(), syncNoteModel);
        }
    }

    /* renamed from: E */
    public final Map<String, ArrayList<ZipEntry>> m39146E(NoteImportArgs noteImportArgs, ZipFile zip, String topLevelDir) {
        HashMap hashMap = new HashMap();
        for (ZipEntry zipEntry : ZipUtils.INSTANCE.collectEntries(zip, new Function1<ZipEntry, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$collectOnyxNoteEntries$entries$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ZipEntry it2) {
                boolean endsWith$default;
                Intrinsics.checkNotNullParameter(it2, "it");
                String name = it2.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(name, NoteTreePBDocument.NOTE_TREE_FILE_NAME, false, 2, null);
                return Boolean.valueOf(!endsWith$default);
            }
        })) {
            String name = zipEntry.getName();
            if (StringKt.isNotBlank(topLevelDir)) {
                Intrinsics.checkNotNull(name);
                String substring = name.substring(topLevelDir.length() + 1);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                Intrinsics.checkNotNull(substring);
                String separator = File.separator;
                Intrinsics.checkNotNullExpressionValue(separator, "separator");
                name = StringsKt__StringsKt.substringBefore$default(substring, separator, (String) null, 2, (Object) null);
            }
            if (!StringUtils.isEmpty(name)) {
                ArrayList arrayList = (ArrayList) hashMap.get(name);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    Intrinsics.checkNotNull(name);
                    hashMap.put(name, arrayList);
                }
                arrayList.add(zipEntry);
            }
        }
        for (String str : hashMap.keySet()) {
            ConcurrentHashMap<String, NoteProgressInfo> noteProgressInfoMap = noteImportArgs.getNoteProgressInfoMap();
            Intrinsics.checkNotNull(str);
            noteProgressInfoMap.put(str, new NoteProgressInfo());
        }
        return hashMap;
    }

    /* renamed from: F */
    public final void m39147F(NoteImportArgs noteImportArgs, String key) {
        NoteProgressInfo noteProgressInfo = noteImportArgs.getNoteProgressInfoMap().get(key);
        if (noteProgressInfo != null) {
            noteProgressInfo.setProgressInfo(ProgressInfo.INSTANCE.onComplete());
            noteProgressInfo.setIgnoreResult(true);
        }
    }

    /* renamed from: G */
    public final Observable<ProgressInfo> m39148G(NoteImportArgs noteImportArgs, CopyNoteArgs copyNoteArgs) {
        final NoteProviderHolder noteProviderHolder = new NoteProviderHolder(KSyncBundle.INSTANCE.getDbProviderBundle(), AccountDataBundle.INSTANCE.getSyncUserId(), copyNoteArgs.getDstDocId());
        PBDataContext pBDataContext = new PBDataContext(noteProviderHolder, copyNoteArgs.getSrcDocId());
        pBDataContext.setCopyNoteArgs(copyNoteArgs);
        Observable doOnNext = PBFactory.copyPBDataToDBObservable$default(PBFactory.INSTANCE, pBDataContext, null, 2, null).doOnNext(new C9509a(noteImportArgs, copyNoteArgs));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<ProgressInfo> doFinally = RxjavaKt.takeLastOne(doOnNext).observeOn(getObserveOn()).doOnNext(new C9511b(pBDataContext)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.dji
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ImportFromNoteFileAction.m39119H(NoteProviderHolder.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: L */
    public final void m39149L(NoteImportArgs noteImportArgs) {
        boolean endsWith$default;
        Collection<File> listFiles = FileUtils.listFiles(noteImportArgs.getImportCacheDir(), (String[]) null, true);
        Intrinsics.checkNotNullExpressionValue(listFiles, "listFiles(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : listFiles) {
            if (((File) obj).isFile()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            String absolutePath = ((File) obj2).getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(absolutePath, "note", false, 2, null);
            if (endsWith$default) {
                arrayList2.add(obj2);
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            FileUtils.deleteQuietly((File) it2.next());
        }
    }

    /* renamed from: M */
    public final void m39150M(NoteImportArgs noteImportArgs) {
        Iterator<T> it2 = noteImportArgs.getFileList().iterator();
        while (it2.hasNext()) {
            FileUtils.deleteQuietly((File) it2.next());
        }
    }

    /* renamed from: N */
    public final NoteProvider m39151N() {
        return (NoteProvider) this.noteProvider.getValue();
    }

    /* renamed from: O */
    public final ProgressInfo m39152O(NoteImportArgs noteImportArgs, String noteTitle, Throwable throwable) {
        String stackTraceToString;
        Debug.INSTANCE.m32048e(throwable);
        String simpleName = ImportFromNoteFileAction.class.getSimpleName();
        StringBuilder sb = new StringBuilder();
        sb.append("handleImportErrorReturn:");
        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(throwable);
        sb.append(stackTraceToString);
        LogUtils.file(simpleName, sb.toString());
        if (this.interruptIfException) {
            throw throwable;
        }
        NoteProgressInfo noteProgressInfo = new NoteProgressInfo();
        noteProgressInfo.setThrowable(throwable);
        noteProgressInfo.setProgressInfo(ProgressInfo.INSTANCE.onComplete());
        noteProgressInfo.setNoteTitle(noteTitle);
        noteImportArgs.getNoteProgressInfoMap().put(noteTitle, noteProgressInfo);
        return noteProgressInfo.getProgressInfo();
    }

    /* renamed from: P */
    public final Observable<ProgressInfo> m39153P(NoteImportArgs noteImportArgs) {
        List<File> fileList = noteImportArgs.getFileList();
        List<File> list = fileList;
        if (CollectionKt.isNullOrEmpty(list) || this.isDisposable) {
            Observable<ProgressInfo> just = Observable.just(new ProgressInfo());
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        for (File file : fileList) {
            ConcurrentHashMap<String, NoteProgressInfo> noteProgressInfoMap = noteImportArgs.getNoteProgressInfoMap();
            String name = file.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            noteProgressInfoMap.put(name, new NoteProgressInfo());
        }
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        Ref.IntRef intRef = new Ref.IntRef();
        final int size = CollectionKt.getSize(list);
        Observable doOnNext = Observable.just(noteImportArgs).observeOn(getObserveOn()).flatMap(new C9521g(fileList)).concatMap(new C9523h(noteImportArgs)).doOnNext(new C9525i(create, intRef, size));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        this.importDisposable = RxjavaKt.takeLastOne(doOnNext).doOnError(new C9527j(create)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.uii
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ImportFromNoteFileAction.m39123Q(ReplaySubject.this, size);
            }
        }).observeOn(Schedulers.m61350io()).subscribe();
        return create;
    }

    /* renamed from: R */
    public final void m39154R(NoteImportArgs noteImportArgs) {
        AppPBDataContext appPBDataContext = new AppPBDataContext(null, 1, null);
        appPBDataContext.setCopyNoteListArgs(noteImportArgs.getCopyNoteListArgs());
        AppPbFactory.INSTANCE.copyPBToDB(appPBDataContext);
    }

    /* renamed from: S */
    public final Observable<Boolean> m39155S(NoteImportArgs noteImportArgs, final File noteFileDir) {
        String rawUUID = UUIDUtils.INSTANCE.rawUUID();
        Observable<Boolean> doFinally = Observable.just(this).observeOn(getObserveOn()).map(new C9529k(noteFileDir)).flatMap(new C9531l(noteImportArgs, noteFileDir, rawUUID)).doOnNext(new C9532m()).map(C9533n.f49873e).onErrorReturn(new C9534o(noteImportArgs, noteFileDir, rawUUID)).observeOn(getObserveOn()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.aji
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ImportFromNoteFileAction.m39124T(noteFileDir);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: U */
    public final Observable<SyncNoteModel> m39156U(NoteImportArgs noteImportArgs, File noteFileDir, SyncNoteModel noteModel, String newDocId) {
        Debug.INSTANCE.m32035d(ImportFromNoteFileAction.class, "start import:" + noteModel.getTitle() + ",uuid:" + noteModel.getUniqueId(), new Object[0]);
        m39147F(noteImportArgs, noteModel.getUniqueId());
        ConcurrentHashMap<String, NoteProgressInfo> noteProgressInfoMap = noteImportArgs.getNoteProgressInfoMap();
        NoteProgressInfo noteProgressInfo = new NoteProgressInfo();
        noteProgressInfo.setNoteModel(noteModel);
        noteProgressInfoMap.put(newDocId, noteProgressInfo);
        CopyNoteArgs copyNoteArgs = new CopyNoteArgs();
        copyNoteArgs.setUserId(AccountDataBundle.INSTANCE.getSyncUserId());
        copyNoteArgs.setSrcDocId(noteModel.getUniqueId());
        copyNoteArgs.setDstDocId(newDocId);
        copyNoteArgs.setDstParentId(noteModel.getParentUniqueId());
        copyNoteArgs.setDocNote(noteModel);
        String parent = noteFileDir.getParent();
        Intrinsics.checkNotNullExpressionValue(parent, "getParent(...)");
        copyNoteArgs.setSrcDirFilePath(parent);
        copyNoteArgs.setCopyGlobalPage(true);
        noteImportArgs.getCopyNoteListArgs().addArgs(copyNoteArgs);
        if (!noteImportArgs.getUseOriginParentId()) {
            copyNoteArgs.setDstParentId(noteImportArgs.getParentId());
        } else if (!m39165f0(StringKt.safelyGetStr(noteModel.getParentUniqueId()))) {
            copyNoteArgs.setDstParentId(null);
        }
        Observable map = m39148G(noteImportArgs, copyNoteArgs).observeOn(getObserveOn()).map(new C9535p(noteImportArgs, noteModel, copyNoteArgs));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: V */
    public final Observable<ProgressInfo> m39157V(NoteImportArgs noteImportArgs, File importFile) {
        ZipFile zipFile = new ZipFile(importFile);
        Observable<ProgressInfo> concatMap = Observable.just(noteImportArgs).observeOn(getObserveOn()).doOnNext(new C9536q(noteImportArgs)).doOnNext(new C9537r(zipFile)).doOnNext(new C9538s()).doOnNext(new C9539t()).flatMap(new C9540u(zipFile, noteImportArgs)).concatMap(new C9541v(zipFile, noteImportArgs));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return concatMap;
    }

    /* renamed from: W */
    public final Observable<ProgressInfo> m39158W(NoteImportArgs noteImportArgs, File importFile) {
        List listOf;
        List<File> mutableList;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(importFile);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) listOf);
        noteImportArgs.setFileList(mutableList);
        ZipFile zipFile = new ZipFile(importFile);
        ZipUtils zipUtils = ZipUtils.INSTANCE;
        String absolutePath = importFile.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        String zipTopLevelDir = zipUtils.getZipTopLevelDir(absolutePath);
        Observable flatMap = Observable.just(noteImportArgs).observeOn(getObserveOn()).doOnNext(new C9542w(noteImportArgs, importFile, zipTopLevelDir)).flatMap(new C9543x(noteImportArgs, zipFile, zipTopLevelDir));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<ProgressInfo> doOnNext = RxjavaKt.takeLastOne(flatMap).doOnNext(new C9544y());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: X */
    public final Observable<ProgressInfo> m39159X(final NoteImportArgs noteImportArgs) {
        Uri importFileUri = noteImportArgs.getImportFileUri();
        String absolutePath = noteImportArgs.getImportCacheDir().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        SaveUriToFileRequest saveUriToFileRequest = new SaveUriToFileRequest(importFileUri, absolutePath);
        saveUriToFileRequest.setFileName(UUIDUtils.INSTANCE.rawUUID());
        saveUriToFileRequest.execute2();
        File file = new File(saveUriToFileRequest.getFilePath());
        final String exportExtraInfoName = NoteExporter.INSTANCE.getExportExtraInfoName();
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        ZipUtils.INSTANCE.predictEntry(new ZipFile(file), new Function1<ZipEntry, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$importNotes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Code restructure failed: missing block: B:9:0x003f, code lost:
            
                if (r6 != false) goto L10;
             */
            @Override // kotlin.jvm.functions.Function1
            @org.jetbrains.annotations.NotNull
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull java.util.zip.ZipEntry r6) {
                /*
                    r5 = this;
                    java.lang.String r0 = "it"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                    boolean r0 = r6.isDirectory()
                    java.lang.String r1 = "getName(...)"
                    r2 = 0
                    if (r0 == 0) goto L24
                    kotlin.jvm.internal.Ref$BooleanRef r5 = kotlin.jvm.internal.Ref.BooleanRef.this
                    java.lang.String r6 = r6.getName()
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r1)
                    r0 = 2
                    r1 = 0
                    java.lang.String r3 = "userData"
                    boolean r6 = kotlin.text.StringsKt.startsWith$default(r6, r3, r2, r0, r1)
                    r5.element = r6
                    java.lang.Boolean r5 = java.lang.Boolean.TRUE
                    return r5
                L24:
                    kotlin.jvm.internal.Ref$BooleanRef r0 = kotlin.jvm.internal.Ref.BooleanRef.this
                    java.lang.String r3 = r2
                    java.lang.String r4 = r6.getName()
                    boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
                    if (r3 != 0) goto L41
                    java.lang.String r6 = r6.getName()
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r1)
                    java.lang.String r1 = "note"
                    boolean r6 = kotlin.text.StringsKt.endsWith(r6, r1, r2)
                    if (r6 == 0) goto L42
                L41:
                    r2 = 1
                L42:
                    r0.element = r2
                    kotlin.jvm.internal.Ref$BooleanRef r5 = kotlin.jvm.internal.Ref.BooleanRef.this
                    boolean r5 = r5.element
                    java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.p126import.ImportFromNoteFileAction$importNotes$1.invoke(java.util.zip.ZipEntry):java.lang.Boolean");
            }
        });
        Observable flatMap = Observable.just(noteImportArgs).flatMap(new C9545z(booleanRef.element ? m39157V(noteImportArgs, file) : m39160a0(noteImportArgs, file)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<ProgressInfo> doFinally = RxjavaKt.takeLastOne(flatMap).doOnNext(new C9510a0(noteImportArgs)).doOnNext(new C9512b0(noteImportArgs)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.bji
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ImportFromNoteFileAction.m39125Y(ImportFromNoteFileAction.this, noteImportArgs);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.cji
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ImportFromNoteFileAction.m39126Z(NoteImportArgs.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: a0 */
    public final Observable<ProgressInfo> m39160a0(NoteImportArgs noteImportArgs, File importFile) {
        return m39178w(importFile) ? m39158W(noteImportArgs, importFile) : m39161b0(noteImportArgs, importFile);
    }

    /* renamed from: b0 */
    public final Observable<ProgressInfo> m39161b0(NoteImportArgs noteImportArgs, File importFile) {
        List listOf;
        List<File> mutableList;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(importFile);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) listOf);
        noteImportArgs.setFileList(mutableList);
        ConcurrentHashMap<String, NoteProgressInfo> noteProgressInfoMap = noteImportArgs.getNoteProgressInfoMap();
        String name = importFile.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        noteProgressInfoMap.put(name, new NoteProgressInfo());
        Observable<ProgressInfo> onErrorReturn = Observable.just(noteImportArgs).observeOn(getObserveOn()).doOnNext(new C9514c0()).flatMap(new C9516d0()).concatMap(new C9518e0(noteImportArgs, importFile)).onErrorReturn(new C9520f0(noteImportArgs, importFile));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }

    /* renamed from: c0 */
    public final void m39162c0(PBDataContext pbDataContext) {
        if (f49816q) {
            try {
                CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
                if (copyNoteArgs == null) {
                    return;
                }
                String documentId = pbDataContext.getDocumentId();
                StashPaths stashPaths = StashPaths.INSTANCE;
                Path stashShapePBFileDir = stashPaths.stashShapePBFileDir(copyNoteArgs.getSrcDirFilePath(), documentId);
                Path stashShapePBArchivedDir = stashPaths.stashShapePBArchivedDir(copyNoteArgs.getSrcDirFilePath(), documentId);
                boolean z = false;
                if (Files.exists(stashShapePBArchivedDir, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && Files.isDirectory(stashShapePBArchivedDir, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    z = true;
                }
                List list = null;
                if (!z) {
                    stashShapePBArchivedDir = null;
                }
                if (stashShapePBArchivedDir != null) {
                    File[] listFiles = stashShapePBArchivedDir.toFile().listFiles();
                    if (listFiles != null) {
                        Intrinsics.checkNotNull(listFiles);
                        list = ArraysKt___ArraysKt.toList(listFiles);
                    }
                    if (list != null) {
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            FileUtils.copyDirectory((File) it2.next(), stashShapePBFileDir.toFile());
                        }
                    }
                }
                StashNoteShapePBDocument.INSTANCE.importStashShape(pbDataContext, copyNoteArgs);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ProgressInfo> create() {
        Observable concatMap = Observable.just(this).observeOn(getObserveOn()).doOnNext(new C9513c()).flatMap(new C9515d()).concatMap(new C9517e());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<ProgressInfo> doOnDispose = RxjavaKt.takeLastOne(concatMap).observeOn(getObserveOn()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.tii
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ImportFromNoteFileAction.m39120I();
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.vii
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ImportFromNoteFileAction.m39121J(ImportFromNoteFileAction.this);
            }
        }).doOnError(C9519f.f49844e).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.wii
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ImportFromNoteFileAction.m39122K(ImportFromNoteFileAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    /* renamed from: d0 */
    public final void m39163d0(NoteImportArgs noteImportArgs) {
        UserPBDataContext userPBDataContext = this.userPBDataContextMap.get(noteImportArgs);
        if (userPBDataContext == null) {
            return;
        }
        UserPbFactory.INSTANCE.copyPBToDB(userPBDataContext);
    }

    /* renamed from: e0 */
    public final void m39164e0(NoteImportArgs noteImportArgs) {
        UserPBDataContext userPBDataContext = this.userPBDataContextMap.get(noteImportArgs);
        if (userPBDataContext == null) {
            return;
        }
        UserPbFactory.INSTANCE.copyUserPBToDB(userPBDataContext);
    }

    /* renamed from: f0 */
    public final boolean m39165f0(final String uniqueId) {
        return NoteModelProviderKt.hasNoteData(m39151N(), new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$isLibraryExist$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                invoke2(cBQueryArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CBQueryArgs hasNoteData) {
                Intrinsics.checkNotNullParameter(hasNoteData, "$this$hasNoteData");
                CouchUtils couchUtils = CouchUtils.INSTANCE;
                hasNoteData.andWith(couchUtils.equalExpression("type", 0));
                hasNoteData.andWith(couchUtils.equalExpression("status", 1));
                hasNoteData.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, uniqueId));
            }
        });
    }

    /* renamed from: g0 */
    public final boolean m39166g0(final NoteImportArgs noteImportArgs, final File noteFileDir, String newDocId, Throwable throwable) {
        Debug.INSTANCE.m32048e(throwable);
        NoteProgressInfo noteProgressInfo = (NoteProgressInfo) AnyKt.getOrElseNull(noteImportArgs.getNoteProgressInfoMap().get(newDocId), new Function0<NoteProgressInfo>() { // from class: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$onImportErrorReturn$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final NoteProgressInfo invoke() {
                return NoteImportArgs.this.getNoteProgressInfoMap().get(noteFileDir.getName());
            }
        });
        if (noteProgressInfo == null) {
            return false;
        }
        noteProgressInfo.setThrowable(throwable);
        noteProgressInfo.setProgressInfo(ProgressInfo.INSTANCE.onComplete());
        return false;
    }

    @NotNull
    public final List<SyncNoteModel> getNoteList() {
        List<SyncNoteModel> list;
        list = CollectionsKt___CollectionsKt.toList(this.documentMap.values());
        return list;
    }

    public final Scheduler getObserveOn() {
        Scheduler m61350io = Schedulers.m61350io();
        Intrinsics.checkNotNullExpressionValue(m61350io, "io(...)");
        return m61350io;
    }

    /* renamed from: h0 */
    public final void m39167h0(NoteImportArgs noteImportArgs, String newDocId, ProgressInfo progressInfo) {
        NoteProgressInfo noteProgressInfo = noteImportArgs.getNoteProgressInfoMap().get(newDocId);
        if (noteProgressInfo == null) {
            return;
        }
        noteProgressInfo.setProgressInfo(progressInfo);
        EditorBundleKt.postEvent(this.editorBundle, new ImportNoteProgressEvent(this.list));
    }

    /* renamed from: i0 */
    public final void m39168i0(final NoteImportArgs noteImportArgs) {
        Map<NoteImportArgs, UserPBDataContext> map = this.userPBDataContextMap;
        final Function1<NoteImportArgs, UserPBDataContext> function1 = new Function1<NoteImportArgs, UserPBDataContext>() { // from class: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$parseCopyPBToDBData$userPBDataContext$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final UserPBDataContext invoke(@NotNull NoteImportArgs it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                UserPBDataContext userPBDataContext = new UserPBDataContext(null, 1, null);
                NoteImportArgs noteImportArgs2 = NoteImportArgs.this;
                userPBDataContext.setCopyNoteListArgs(noteImportArgs2.getCopyNoteListArgs());
                CopyNoteListArgs copyNoteListArgs = userPBDataContext.getCopyNoteListArgs();
                if (copyNoteListArgs != null) {
                    copyNoteListArgs.setCopyAllFolder(noteImportArgs2.getUseOriginParentId());
                }
                CopyNoteListArgs copyNoteListArgs2 = userPBDataContext.getCopyNoteListArgs();
                if (copyNoteListArgs2 != null) {
                    copyNoteListArgs2.setCopyAllTag(noteImportArgs2.getUseOriginParentId());
                }
                return userPBDataContext;
            }
        };
        UserPBDataContext computeIfAbsent = map.computeIfAbsent(noteImportArgs, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.zii
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                UserPBDataContext m39127j0;
                m39127j0 = ImportFromNoteFileAction.m39127j0(Function1.this, obj);
                return m39127j0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        UserPBDataContext userPBDataContext = computeIfAbsent;
        List<String> tagIdList = noteImportArgs.getTagIdList();
        if (tagIdList != null) {
            userPBDataContext.getDocTagList().addAll(NoteTagProviderKt.loadTagById(m39151N(), tagIdList));
        }
        UserPbFactory.INSTANCE.parseCopyPBToDBData(userPBDataContext);
    }

    /* renamed from: k0 */
    public final SyncNoteModel m39169k0(final File noteFileDir) {
        PBDocumentArgs pBDocumentArgs = new PBDocumentArgs();
        String name = noteFileDir.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        PBDocumentArgs revisionId = pBDocumentArgs.setDocumentId(name).setRevisionId(NoteInfoPBDocument.NOTE_INFO_FILE_NAME);
        NoteInfoPBDocument noteInfoPBDocument = new NoteInfoPBDocument();
        String parent = noteFileDir.getParent();
        Intrinsics.checkNotNullExpressionValue(parent, "getParent(...)");
        NoteInfoProto.NoteInfoList data = noteInfoPBDocument.setPbDirPath(parent).setArgs(revisionId).load().getData();
        Object obj = null;
        List<? extends SyncNoteModel> ensureList = CollectionKt.ensureList(data != null ? NoteModelPBData.INSTANCE.fromProtoList(data) : null);
        m39142A(ensureList);
        Iterator<T> it2 = ensureList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((SyncNoteModel) next).isDocument()) {
                obj = next;
                break;
            }
        }
        SyncNoteModel syncNoteModel = (SyncNoteModel) AnyKt.getOrElseNull(obj, new Function0<SyncNoteModel>() { // from class: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$parseNoteInfo$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final SyncNoteModel invoke() {
                return (SyncNoteModel) ImportFromNoteFileAction.this.noteTreeMap.get(noteFileDir.getName());
            }
        });
        if (syncNoteModel != null) {
            return syncNoteModel;
        }
        throw new RuntimeException("can't parse document from note_info");
    }

    /* renamed from: l0 */
    public final void m39170l0(NoteImportArgs noteImportArgs, File importFile, String topLevelDir) {
        m39179w0(noteImportArgs, importFile);
        NoteTreePBDocument noteTreePBDocument = new NoteTreePBDocument();
        String absolutePath = new File(noteImportArgs.getImportCacheDir(), topLevelDir).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        noteTreePBDocument.setPbDirPath(absolutePath);
        NoteInfoProto.NoteInfoList loadData = noteTreePBDocument.loadData(new PBDocumentArgs().setDocumentId(NoteTreePBDocument.NOTE_TREE_FILE_NAME).setRevisionId(NoteTreePBDocument.NOTE_TREE_FILE_NAME));
        if (loadData != null) {
            List<SyncNoteModel> fromProtoList = NoteModelPBData.INSTANCE.fromProtoList(loadData);
            m39145D(fromProtoList);
            m39142A(fromProtoList);
        }
    }

    /* renamed from: n0 */
    public final void m39171n0(NoteImportArgs noteImportArgs, SyncNoteModel noteModel, CopyNoteArgs copyNoteArgs) {
        Map<String, PageInfo> pageInfoMap;
        noteModel.setUniqueId(copyNoteArgs.getDstDocId());
        noteModel.setParentUniqueId(copyNoteArgs.getDstParentId());
        noteModel.setUser(copyNoteArgs.getUserId());
        CopyNoteUtils copyNoteUtils = CopyNoteUtils.INSTANCE;
        copyNoteUtils.updateNotePageInfo(copyNoteArgs, noteModel);
        copyNoteUtils.updateNotePageNameList(copyNoteArgs, noteModel);
        noteModel.setRemovePageList(new PageNameList());
        NotePageInfo notePageInfo = noteModel.getNotePageInfo();
        if (notePageInfo != null && (pageInfoMap = notePageInfo.getPageInfoMap()) != null) {
            for (Map.Entry<String, PageInfo> entry : pageInfoMap.entrySet()) {
                entry.getValue().showAllLayers();
                entry.getValue().unlockAllLayers();
            }
        }
        if (CollectionKt.isNonBlank(noteImportArgs.getTagIdList())) {
            List<String> tagIdList = noteImportArgs.getTagIdList();
            noteModel.setTagIdList(CollectionKt.ensureMutableList(tagIdList != null ? CollectionsKt___CollectionsKt.toMutableList((Collection) tagIdList) : null));
        }
        m39172o0(noteImportArgs, noteModel);
        CopyNoteUtils.INSTANCE.generateUniqueName(m39151N(), noteModel);
        noteModel.forceUpdateTime();
        noteModel.resetEncryption();
        NoteModelProviderKt.saveNote(m39151N(), noteModel);
    }

    /* renamed from: o0 */
    public final void m39172o0(NoteImportArgs noteImportArgs, final SyncNoteModel noteModel) {
        ImportSelectedContext importSelectedContext = noteImportArgs.getImportSelectedContext();
        if (importSelectedContext != null) {
            List<String> selectedTagIdList = importSelectedContext.getSelectedTagIdList();
            noteModel.setTagIdList(CollectionKt.ensureMutableList(selectedTagIdList != null ? CollectionsKt___CollectionsKt.toMutableList((Collection) selectedTagIdList) : null));
            noteModel.setTitle((String) AnyKt.getOrElseNull(importSelectedContext.getModifyName(), new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$setSelectedInfo$1$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @Nullable
                public final String invoke() {
                    return SyncNoteModel.this.getTitle();
                }
            }));
            noteModel.setParentUniqueId(importSelectedContext.getSelectedFolderId());
        }
    }

    /* renamed from: p0 */
    public final String m39173p0(String name) {
        return name + f49815p;
    }

    /* renamed from: q0 */
    public final void m39174q0(ZipFile zipFile, NoteImportArgs noteImportArgs) {
        boolean endsWith$default;
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            String name = nextElement.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(name, "note", false, 2, null);
            if (!endsWith$default) {
                ZipUtils zipUtils = ZipUtils.INSTANCE;
                Intrinsics.checkNotNull(nextElement);
                zipUtils.unzipZipEntry(zipFile, nextElement, noteImportArgs.getImportCacheDir().getAbsolutePath());
            }
        }
    }

    /* renamed from: r0 */
    public final void m39175r0(ZipFile zipFile, ZipEntry zipEntry, NoteImportArgs noteImportArgs) {
        ZipUtils.INSTANCE.unzipZipEntry(zipFile, zipEntry, noteImportArgs.getImportCacheDir().getAbsolutePath());
    }

    /* renamed from: s0 */
    public final Observable<?> m39176s0(File zipFile, String unzipDirPath, final NoteImportArgs noteImportArgs) {
        final Benchmark benchmark = new Benchmark();
        String name = zipFile.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        final String m39173p0 = m39173p0(name);
        Observable<Integer> doOnComplete = ZipUtils.INSTANCE.unzipObservable(zipFile, unzipDirPath, null, f49816q ? CollectionsKt__CollectionsKt.emptyList() : CollectionsKt__CollectionsJVMKt.listOf("stash/archivedShape")).doOnSubscribe(new C9522g0(noteImportArgs, m39173p0)).doOnNext(new C9524h0(noteImportArgs, m39173p0)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.xii
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ImportFromNoteFileAction.m39138t0(ImportFromNoteFileAction.this, noteImportArgs, m39173p0);
            }
        }).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.yii
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ImportFromNoteFileAction.m39140u0(Benchmark.this, m39173p0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        return doOnComplete;
    }

    /* renamed from: v0 */
    public final Observable<NoteImportArgs> m39177v0(NoteImportArgs noteImportArgs) {
        File file = new File(noteImportArgs.getImportCacheDir(), UUIDUtils.INSTANCE.rawUUID());
        Observable concatMap = Observable.fromIterable(noteImportArgs.getFileList()).concatMap(new C9526i0(file, noteImportArgs));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<NoteImportArgs> map = RxjavaKt.takeLastOne(concatMap).doOnNext(new C9528j0(noteImportArgs, file)).map(new C9530k0(noteImportArgs));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: w */
    public final boolean m39178w(File importFile) {
        Iterator it2;
        Sequence asSequence;
        Object obj;
        boolean endsWith$default;
        ZipFile zipFile = new ZipFile(importFile);
        try {
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            Intrinsics.checkNotNullExpressionValue(entries, "entries(...)");
            it2 = CollectionsKt__IteratorsJVMKt.iterator(entries);
            asSequence = SequencesKt__SequencesKt.asSequence(it2);
            Iterator it3 = asSequence.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it3.next();
                String name = ((ZipEntry) obj).getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(name, NoteTreePBDocument.NOTE_TREE_FILE_NAME, false, 2, null);
                if (endsWith$default) {
                    break;
                }
            }
            boolean z = obj != null;
            CloseableKt.closeFinally(zipFile, null);
            return z;
        } finally {
        }
    }

    /* renamed from: w0 */
    public final void m39179w0(NoteImportArgs noteImportArgs, File importFile) {
        Iterator it2;
        Sequence asSequence;
        Sequence<ZipEntry> filter;
        ZipFile zipFile = new ZipFile(importFile);
        try {
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            Intrinsics.checkNotNullExpressionValue(entries, "entries(...)");
            it2 = CollectionsKt__IteratorsJVMKt.iterator(entries);
            asSequence = SequencesKt__SequencesKt.asSequence(it2);
            filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<ZipEntry, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$unzipOnyxNoteTreeFiles$1$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(ZipEntry zipEntry) {
                    boolean endsWith$default;
                    String name = zipEntry.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(name, NoteTreePBDocument.NOTE_TREE_FILE_NAME, false, 2, null);
                    return Boolean.valueOf(endsWith$default);
                }
            });
            for (ZipEntry zipEntry : filter) {
                ZipUtils zipUtils = ZipUtils.INSTANCE;
                Intrinsics.checkNotNull(zipEntry);
                zipUtils.unzipZipEntry(zipFile, zipEntry, noteImportArgs.getImportCacheDir().getAbsolutePath());
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(zipFile, null);
        } finally {
        }
    }

    /* renamed from: x */
    public final boolean m39180x() {
        long usableSpace = ResManager.INSTANCE.getAppContext().getCacheDir().getUsableSpace();
        Iterator<T> it2 = this.list.iterator();
        long j = 0;
        while (it2.hasNext()) {
            j += UriKt.getFileSize(((NoteImportArgs) it2.next()).getImportFileUri(), ResManager.INSTANCE.getAppContext());
        }
        if (j * 2 <= usableSpace) {
            return true;
        }
        throw new SpaceNotEnoughException();
    }

    /* renamed from: x0 */
    public final void m39181x0(NoteImportArgs noteImportArgs, ZipFile zip, String topLevelDir, Map.Entry<String, ? extends List<? extends ZipEntry>> data) {
        String key;
        List<File> mutableListOf;
        Iterator<? extends ZipEntry> it2 = data.getValue().iterator();
        while (it2.hasNext()) {
            ZipUtils.INSTANCE.unzipZipEntry(zip, it2.next(), noteImportArgs.getImportCacheDir().getAbsolutePath());
        }
        if (topLevelDir.length() > 0) {
            key = topLevelDir + File.separator + data.getKey();
        } else {
            key = data.getKey();
        }
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new File(noteImportArgs.getImportCacheDir(), key));
        noteImportArgs.setFileList(mutableListOf);
    }

    /* renamed from: y */
    public final boolean m39182y(NoteImportArgs noteImportArgs) {
        String extension;
        long usableSpace = ResManager.INSTANCE.getAppContext().getCacheDir().getUsableSpace();
        List<File> fileList = noteImportArgs.getFileList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : fileList) {
            extension = FilesKt__UtilsKt.getExtension((File) obj);
            if (Intrinsics.areEqual(extension, "note")) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        long j = 0;
        while (it2.hasNext()) {
            j = ZipUtils.INSTANCE.getUnCompressedSize(new ZipFile((File) it2.next()));
        }
        if (j + NoteConstant.EXPORT_LIMIT_STORAGE_SIZE <= usableSpace) {
            return true;
        }
        throw new SpaceNotEnoughException();
    }

    /* renamed from: z */
    public final void m39183z() {
        Iterator<T> it2 = this.list.iterator();
        while (it2.hasNext()) {
            com.onyx.android.sdk.base.utils.FileUtils.deleteDirectoryQuietly$default(com.onyx.android.sdk.base.utils.FileUtils.INSTANCE, ((NoteImportArgs) it2.next()).getImportCacheDir(), null, null, 3, null);
        }
    }

    public ImportFromNoteFileAction(@NotNull EditorBundle editorBundle, @NotNull List<NoteImportArgs> list, boolean z) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(list, "list");
        this.editorBundle = editorBundle;
        this.list = list;
        this.interruptIfException = z;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<NoteProvider>() { // from class: com.onyx.android.sdk.universal.editor.action.import.ImportFromNoteFileAction$noteProvider$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteProvider invoke() {
                return KSyncBundle.INSTANCE.getUserNoteProvider();
            }
        });
        this.noteProvider = lazy;
        this.noteTreeMap = new LinkedHashMap();
        this.libraryMap = new LinkedHashMap();
        this.documentMap = new LinkedHashMap();
        this.userPBDataContextMap = new LinkedHashMap();
    }
}
